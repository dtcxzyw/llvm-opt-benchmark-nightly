Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Comparisons?download=true
inline.NumInlined: 6772
inline.NumDeleted: 1981
loop-unroll.NumCompletelyUnrolled: 188
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.bup = load i64, ptr %i.buo, align 8, !tbaa !31
  %i.buq = icmp eq i64 %i.bup, 4
  br i1 %i.buq, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, label %.loopexit44.i.i.i.i.i.i.i.i432

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434:    ; preds = %bb.ot
  %i.bur = load i8, ptr %i.bun, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435 = icmp eq i8 %i.bur, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bun, i64 1
  %i.but = load i8, ptr %i.bus, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437 = icmp eq i8 %i.but, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bun, i64 2
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439 = icmp eq i8 %i.buv, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bun, i64 3
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441 = icmp eq i8 %i.bux, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i432:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.buy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buz = icmp eq i32 %i.bug, %i.buy
  br i1 %i.buz, label %bb.ov, label %.body49.i383

bb.ov:                                            ; preds = %bb.ou
  %i.bva = call ptr @__cxa_begin_catch(ptr %i.buf) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.bvb = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i428 = icmp eq ptr %i.bvb, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i428, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  %i.bvd = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i426 = icmp eq ptr %i.bvd, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i426, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  %i.bve = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvf = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i445 = icmp eq ptr %i.bvf, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i445, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvg = landingpad { ptr, i32 }
          cleanup
  %i.bvh = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i443 = icmp eq ptr %i.bvh, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i443, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i433 = phi { ptr, i32 } [ %i.bvg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444 ], [ %i.bve, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427
  %i.bvi = landingpad { ptr, i32 }
          catch ptr null
  %i.bvj = extractvalue { ptr, i32 } %i.bvi, 0
  call void @__clang_call_terminate(ptr %i.bvj) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i430

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bvk = add i64 %.01558.i.i.i.i.i.i.i.i423, -1
  %i.bvl = and i64 %i.bvk, %.01558.i.i.i.i.i.i.i.i423 ; 2 uses
  %.not.i.i.i.i.i.i.i.i431 = icmp eq i64 %i.bvl, 0
  br i1 %.not.i.i.i.i.i.i.i.i431, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !453

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i387
  %i.bvm = add nsw i32 %i.bow, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i389 = icmp sgt i32 %i.bvm, %i.boa
  br i1 %.not33.i.i.i.i.i.i.i389, label %._crit_edge.i.i.i.i.i.i.i390, label %.lr.ph.i.i.i.i.i.i.i387, !llvm.loop !454

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i390
  %i.bvn = and i32 %i.bnw, 63
  %i.bvo = zext nneg i32 %i.bvn to i64
  %notmask.i36.i.i.i.i.i.i.i392 = shl nsw i64 -1, %i.bvo
  %i.bvp = xor i64 %notmask.i36.i.i.i.i.i.i.i392, -1
  br label %.invoke.i393

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i390, %.invoke.i393, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i457:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i458 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.i430:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.i406: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt8equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381: ; preds = %bb.nm, %.invoke.i393
  %lpad.loopexit.split-lp.i382 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !290
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !290
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !293 ; 13 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !302 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp eq <4 x i64> %i.bwg, %i.bwh
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = xor i32 %i.bvv, -1
  %i.bwo = add i32 %i.bvz, %i.bwn                 ; 3 uses
  %i.bwp = lshr i32 %i.bwo, 3
  %i.bwq = add nuw nsw i32 %i.bwp, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1431 = icmp ult i32 %i.bwo, 248
  br i1 %min.iters.check1431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bwr = and i32 %i.bwq, 24
  %n.vec = and i32 %i.bwq, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1434 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1435 = shufflevector <32 x i32> %broadcast.splatinsert1434, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1437 = shufflevector <32 x i32> %broadcast.splatinsert1436, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1437, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1435
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1433, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !33
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !33
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !33
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !33
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !33
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !33
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !33
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !33
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !33
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !33
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !33
  %i.ccb = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %i.ccb, ptr %i.bzn, align 1, !tbaa !33
  %i.ccc = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %i.ccc, ptr %i.bzq, align 1, !tbaa !33
  %i.ccd = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %i.ccd, ptr %i.bzt, align 1, !tbaa !33
  %i.cce = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %i.cce, ptr %i.bzw, align 1, !tbaa !33
  %i.ccf = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %i.ccf, ptr %i.bzz, align 1, !tbaa !33
  %i.ccg = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %i.ccg, ptr %i.cac, align 1, !tbaa !33
  %i.cch = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %i.cch, ptr %i.caf, align 1, !tbaa !33
  %i.cci = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %i.cci, ptr %i.cai, align 1, !tbaa !33
  %i.ccj = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %i.ccj, ptr %i.cal, align 1, !tbaa !33
  %i.cck = extractelement <32 x i8> %i.cbk, i64 25
end_hunk_0
begin_hunk_1_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !31
  %i.bty = icmp eq i64 %i.btx, 4
  br i1 %i.bty, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, label %.loopexit44.i.i.i.i.i.i.i.i442

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444:    ; preds = %bb.ot
  %i.btz = load i8, ptr %i.btv, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445 = icmp eq i8 %i.btz, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btv, i64 1
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447 = icmp eq i8 %i.bub, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btv, i64 2
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449 = icmp eq i8 %i.bud, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btv, i64 3
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451 = icmp eq i8 %i.buf, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i442:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.bug = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buh = icmp eq i32 %i.bto, %i.bug
  br i1 %i.buh, label %bb.ov, label %.body49.i393

bb.ov:                                            ; preds = %bb.ou
  %i.bui = call ptr @__cxa_begin_catch(ptr %i.btn) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.buj = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i438 = icmp eq ptr %i.buj, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i438, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.buk = landingpad { ptr, i32 }
          cleanup
  %i.bul = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i436 = icmp eq ptr %i.bul, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i436, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  %i.bum = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.bun = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i455 = icmp eq ptr %i.bun, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i455, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.buo = landingpad { ptr, i32 }
          cleanup
  %i.bup = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i453 = icmp eq ptr %i.bup, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i443 = phi { ptr, i32 } [ %i.buo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454 ], [ %i.bum, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437
  %i.buq = landingpad { ptr, i32 }
          catch ptr null
  %i.bur = extractvalue { ptr, i32 } %i.buq, 0
  call void @__clang_call_terminate(ptr %i.bur) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i440

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bus = add i64 %.01558.i.i.i.i.i.i.i.i433, -1
  %i.but = and i64 %i.bus, %.01558.i.i.i.i.i.i.i.i433 ; 2 uses
  %.not.i.i.i.i.i.i.i.i441 = icmp eq i64 %i.but, 0
  br i1 %.not.i.i.i.i.i.i.i.i441, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !900

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i397
  %i.buu = add nsw i32 %i.boe, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i399 = icmp sgt i32 %i.buu, %i.bni
  br i1 %.not33.i.i.i.i.i.i.i399, label %._crit_edge.i.i.i.i.i.i.i400, label %.lr.ph.i.i.i.i.i.i.i397, !llvm.loop !901

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i400
  %i.buv = and i32 %i.bne, 63
  %i.buw = zext nneg i32 %i.buv to i64
  %notmask.i36.i.i.i.i.i.i.i402 = shl nsw i64 -1, %i.buw
  %i.bux = xor i64 %notmask.i36.i.i.i.i.i.i.i402, -1
  br label %.invoke.i403

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i400, %.invoke.i403, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i467:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i468 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.i440:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.i416: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt12not_equal_toIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391: ; preds = %bb.nm, %.invoke.i403
  %lpad.loopexit.split-lp.i392 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !290
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !290
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !293 ; 13 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !302 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp ne i64 %i.bvl, %i.bvn
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = xor i32 %i.bvd, -1
  %i.bvu = add i32 %i.bvh, %i.bvt                 ; 3 uses
  %i.bvv = lshr i32 %i.bvu, 3
  %i.bvw = add nuw nsw i32 %i.bvv, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1442 = icmp ult i32 %i.bvu, 248
  br i1 %min.iters.check1442, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvx = and i32 %i.bvw, 24
  %n.vec = and i32 %i.bvw, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1444 = shufflevector <32 x i8> %broadcast.splatinsert1443, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1446 = shufflevector <32 x i32> %broadcast.splatinsert1445, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1448 = shufflevector <32 x i32> %broadcast.splatinsert1447, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1448, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1446
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1444, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !33
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !33
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !33
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !33
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !33
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !33
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !33
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !33
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !33
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !33
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !33
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !33
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !33
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !33
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !33
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !33
  %i.cbh = extractelement <32 x i8> %i.caq, i64 16
  store i8 %i.cbh, ptr %i.byt, align 1, !tbaa !33
  %i.cbi = extractelement <32 x i8> %i.caq, i64 17
  store i8 %i.cbi, ptr %i.byw, align 1, !tbaa !33
  %i.cbj = extractelement <32 x i8> %i.caq, i64 18
  store i8 %i.cbj, ptr %i.byz, align 1, !tbaa !33
  %i.cbk = extractelement <32 x i8> %i.caq, i64 19
  store i8 %i.cbk, ptr %i.bzc, align 1, !tbaa !33
  %i.cbl = extractelement <32 x i8> %i.caq, i64 20
  store i8 %i.cbl, ptr %i.bzf, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.caq, i64 21
  store i8 %i.cbm, ptr %i.bzi, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.caq, i64 22
  store i8 %i.cbn, ptr %i.bzl, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.caq, i64 23
  store i8 %i.cbo, ptr %i.bzo, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.caq, i64 24
  store i8 %i.cbp, ptr %i.bzr, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.caq, i64 25
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.bup = load i64, ptr %i.buo, align 8, !tbaa !31
  %i.buq = icmp eq i64 %i.bup, 4
  br i1 %i.buq, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, label %.loopexit44.i.i.i.i.i.i.i.i432

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434:    ; preds = %bb.ot
  %i.bur = load i8, ptr %i.bun, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435 = icmp eq i8 %i.bur, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bun, i64 1
  %i.but = load i8, ptr %i.bus, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437 = icmp eq i8 %i.but, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bun, i64 2
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439 = icmp eq i8 %i.buv, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bun, i64 3
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441 = icmp eq i8 %i.bux, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i432:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.buy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buz = icmp eq i32 %i.bug, %i.buy
  br i1 %i.buz, label %bb.ov, label %.body49.i383

bb.ov:                                            ; preds = %bb.ou
  %i.bva = call ptr @__cxa_begin_catch(ptr %i.buf) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.bvb = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i428 = icmp eq ptr %i.bvb, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i428, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  %i.bvd = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i426 = icmp eq ptr %i.bvd, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i426, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  %i.bve = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvf = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i445 = icmp eq ptr %i.bvf, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i445, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvg = landingpad { ptr, i32 }
          cleanup
  %i.bvh = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i443 = icmp eq ptr %i.bvh, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i443, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i433 = phi { ptr, i32 } [ %i.bvg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444 ], [ %i.bve, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427
  %i.bvi = landingpad { ptr, i32 }
          catch ptr null
  %i.bvj = extractvalue { ptr, i32 } %i.bvi, 0
  call void @__clang_call_terminate(ptr %i.bvj) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i430

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bvk = add i64 %.01558.i.i.i.i.i.i.i.i423, -1
  %i.bvl = and i64 %i.bvk, %.01558.i.i.i.i.i.i.i.i423 ; 2 uses
  %.not.i.i.i.i.i.i.i.i431 = icmp eq i64 %i.bvl, 0
  br i1 %.not.i.i.i.i.i.i.i.i431, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !1059

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i387
  %i.bvm = add nsw i32 %i.bow, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i389 = icmp sgt i32 %i.bvm, %i.boa
  br i1 %.not33.i.i.i.i.i.i.i389, label %._crit_edge.i.i.i.i.i.i.i390, label %.lr.ph.i.i.i.i.i.i.i387, !llvm.loop !1060

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i390
  %i.bvn = and i32 %i.bnw, 63
  %i.bvo = zext nneg i32 %i.bvn to i64
  %notmask.i36.i.i.i.i.i.i.i392 = shl nsw i64 -1, %i.bvo
  %i.bvp = xor i64 %notmask.i36.i.i.i.i.i.i.i392, -1
  br label %.invoke.i393

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i390, %.invoke.i393, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i457:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i458 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.i430:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.i406: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt4lessIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381: ; preds = %bb.nm, %.invoke.i393
  %lpad.loopexit.split-lp.i382 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !290
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !290
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !293 ; 13 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !302 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp sgt <4 x i64> %i.bwh, %i.bwg
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = xor i32 %i.bvv, -1
  %i.bwo = add i32 %i.bvz, %i.bwn                 ; 3 uses
  %i.bwp = lshr i32 %i.bwo, 3
  %i.bwq = add nuw nsw i32 %i.bwp, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1431 = icmp ult i32 %i.bwo, 248
  br i1 %min.iters.check1431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bwr = and i32 %i.bwq, 24
  %n.vec = and i32 %i.bwq, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1434 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1435 = shufflevector <32 x i32> %broadcast.splatinsert1434, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1437 = shufflevector <32 x i32> %broadcast.splatinsert1436, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1437, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1435
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1433, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !33
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !33
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !33
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !33
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !33
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !33
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !33
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !33
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !33
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !33
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !33
  %i.ccb = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %i.ccb, ptr %i.bzn, align 1, !tbaa !33
  %i.ccc = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %i.ccc, ptr %i.bzq, align 1, !tbaa !33
  %i.ccd = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %i.ccd, ptr %i.bzt, align 1, !tbaa !33
  %i.cce = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %i.cce, ptr %i.bzw, align 1, !tbaa !33
  %i.ccf = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %i.ccf, ptr %i.bzz, align 1, !tbaa !33
  %i.ccg = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %i.ccg, ptr %i.cac, align 1, !tbaa !33
  %i.cch = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %i.cch, ptr %i.caf, align 1, !tbaa !33
  %i.cci = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %i.cci, ptr %i.cai, align 1, !tbaa !33
  %i.ccj = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %i.ccj, ptr %i.cal, align 1, !tbaa !33
  %i.cck = extractelement <32 x i8> %i.cbk, i64 25
end_hunk_2
begin_hunk_3_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.bup = load i64, ptr %i.buo, align 8, !tbaa !31
  %i.buq = icmp eq i64 %i.bup, 4
  br i1 %i.buq, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, label %.loopexit44.i.i.i.i.i.i.i.i432

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434:    ; preds = %bb.ot
  %i.bur = load i8, ptr %i.bun, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435 = icmp eq i8 %i.bur, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i435, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bun, i64 1
  %i.but = load i8, ptr %i.bus, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437 = icmp eq i8 %i.but, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i437, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bun, i64 2
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439 = icmp eq i8 %i.buv, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i439, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bun, i64 3
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441 = icmp eq i8 %i.bux, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i441, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442, label %.loopexit44.i.i.i.i.i.i.i.i432

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i432:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i440, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i438, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i436, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i434, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.buy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buz = icmp eq i32 %i.bug, %i.buy
  br i1 %i.buz, label %bb.ov, label %.body49.i383

bb.ov:                                            ; preds = %bb.ou
  %i.bva = call ptr @__cxa_begin_catch(ptr %i.buf) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bhs, i32 noundef %i.bsk, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.bvb = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i428 = icmp eq ptr %i.bvb, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i428, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  %i.bvd = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i426 = icmp eq ptr %i.bvd, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i426, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  %i.bve = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvf = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i445 = icmp eq ptr %i.bvf, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i445, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i442
  %i.bvg = landingpad { ptr, i32 }
          cleanup
  %i.bvh = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i443 = icmp eq ptr %i.bvh, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i443, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i433 = phi { ptr, i32 } [ %i.bvg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i444 ], [ %i.bve, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i383 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427
  %i.bvi = landingpad { ptr, i32 }
          catch ptr null
  %i.bvj = extractvalue { ptr, i32 } %i.bvi, 0
  call void @__clang_call_terminate(ptr %i.bvj) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i432
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i446, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i429
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i430

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bvk = add i64 %.01558.i.i.i.i.i.i.i.i423, -1
  %i.bvl = and i64 %i.bvk, %.01558.i.i.i.i.i.i.i.i423 ; 2 uses
  %.not.i.i.i.i.i.i.i.i431 = icmp eq i64 %i.bvl, 0
  br i1 %.not.i.i.i.i.i.i.i.i431, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !1218

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i387
  %i.bvm = add nsw i32 %i.bow, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i389 = icmp sgt i32 %i.bvm, %i.boa
  br i1 %.not33.i.i.i.i.i.i.i389, label %._crit_edge.i.i.i.i.i.i.i390, label %.lr.ph.i.i.i.i.i.i.i387, !llvm.loop !1219

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i390
  %i.bvn = and i32 %i.bnw, 63
  %i.bvo = zext nneg i32 %i.bvn to i64
  %notmask.i36.i.i.i.i.i.i.i392 = shl nsw i64 -1, %i.bvo
  %i.bvp = xor i64 %notmask.i36.i.i.i.i.i.i.i392, -1
  br label %.invoke.i393

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i390, %.invoke.i393, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i457:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i458 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.i430:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.i406: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt7greaterIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381: ; preds = %bb.nm, %.invoke.i393
  %lpad.loopexit.split-lp.i382 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i383

.body49.i383:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406, %.loopexit.split-lp.loopexit.i430, %.loopexit.i457, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454
  %eh.lpad-body50.i384 = phi { ptr, i32 } [ %i.bue, %bb.ou ], [ %.pn.i.i.i.i.i463, %bb.nf ], [ %i.bnk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i454 ], [ %i.bmm, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i408, %bb.oi ], [ %i.bry, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i403 ], [ %.pn.i.i.i.i.i.i.i.i.i433, %bb.pf ], [ %i.bvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i427 ], [ %lpad.loopexit.split-lp.i382, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i381 ], [ %lpad.loopexit.i458, %.loopexit.i457 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i430 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i406 ], [ %i.bra, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i364

.body.i364:                                       ; preds = %.body49.i383, %bb.md
  %.pn.i365 = phi { ptr, i32 } [ %eh.lpad-body50.i384, %.body49.i383 ], [ %i.bjk, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i357
  %i.bvq = load i32, ptr %i.bhw, align 4, !tbaa !290
  %i.bvr = icmp eq i32 %i.bvq, 1
  %i.bvs = load i32, ptr %i.bhy, align 4, !tbaa !290
  %i.bvt = icmp eq i32 %i.bvs, 1                  ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bho, i64 28
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !293 ; 13 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bho, i64 32
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !302 ; 9 uses
  %i.bvy = sub i32 %i.bvx, %i.bvv
  %i.bvz = and i32 %i.bvy, -4                     ; 17 uses
  %i.bwa = sext i32 %i.bvz to i64                 ; 5 uses
  %i.bwb = icmp ult i32 %i.bvv, %i.bvz            ; 4 uses
  br i1 %i.bvr, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bwd = load i64, ptr %i.bwc, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvt, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bhq, i64 168
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bwb, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %i.bwg = insertelement <4 x i64> poison, i64 %i.bwd, i64 0
  %i.bwh = insertelement <4 x i64> poison, i64 %i.bwf, i64 0
  %i.bwi = icmp sgt <4 x i64> %i.bwg, %i.bwh
  %i.bwj = shufflevector <4 x i1> %i.bwi, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bwk = bitcast <4 x i1> %i.bwj to i4
  %i.bwl = zext i4 %i.bwk to i8                   ; 4 uses
  %i.bwm = shl nuw i8 %i.bwl, 4                   ; 3 uses
  %i.bwn = xor i32 %i.bvv, -1
  %i.bwo = add i32 %i.bvz, %i.bwn                 ; 3 uses
  %i.bwp = lshr i32 %i.bwo, 3
  %i.bwq = add nuw nsw i32 %i.bwp, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i490.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1404 = icmp ult i32 %i.bwo, 248
  br i1 %min.iters.check1404, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bwr = and i32 %i.bwq, 24
  %n.vec = and i32 %i.bwq, 1073741792             ; 4 uses
  %i.bws = shl i32 %n.vec, 3
  %i.bwt = add i32 %i.bvv, %i.bws                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bwl, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1405 = insertelement <32 x i8> poison, i8 %i.bwm, i64 0
  %broadcast.splat1406 = shufflevector <32 x i8> %broadcast.splatinsert1405, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <32 x i32> poison, i32 %i.bvz, i64 0
  %broadcast.splat1408 = shufflevector <32 x i32> %broadcast.splatinsert1407, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1409 = insertelement <32 x i32> poison, i32 %i.bvv, i64 0
  %broadcast.splat1410 = shufflevector <32 x i32> %broadcast.splatinsert1409, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1410, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwu = shl i32 %index, 3
  %i.bwv = add i32 %i.bvv, %i.bwu                 ; 5 uses
  %i.bww = add i32 %i.bwv, 8
  %i.bwx = add i32 %i.bwv, 16
  %i.bwy = add i32 %i.bwv, 24
  %i.bwz = sdiv i32 %i.bwv, 8
  %i.bxa = sdiv i32 %i.bww, 8
  %i.bxb = sdiv i32 %i.bwx, 8
  %i.bxc = sdiv i32 %i.bwy, 8
  %i.bxd = sext i32 %i.bwz to i64
  %i.bxe = sext i32 %i.bxa to i64
  %i.bxf = sext i32 %i.bxb to i64
  %i.bxg = sext i32 %i.bxc to i64
  %i.bxh = insertelement <4 x i32> poison, i32 %i.bwv, i64 0
  %i.bxi = shufflevector <4 x i32> %i.bxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bxj = add <4 x i32> %i.bxi, <i32 32, i32 40, i32 48, i32 56>
  %i.bxk = sdiv <4 x i32> %i.bxj, splat (i32 8)   ; 4 uses
  %i.bxl = add <4 x i32> %i.bxi, <i32 64, i32 72, i32 80, i32 88>
  %i.bxm = sdiv <4 x i32> %i.bxl, splat (i32 8)   ; 4 uses
  %i.bxn = add <4 x i32> %i.bxi, <i32 96, i32 104, i32 112, i32 120>
  %i.bxo = sdiv <4 x i32> %i.bxn, splat (i32 8)   ; 4 uses
  %i.bxp = add <4 x i32> %i.bxi, <i32 128, i32 136, i32 144, i32 152>
  %i.bxq = sdiv <4 x i32> %i.bxp, splat (i32 8)   ; 4 uses
  %i.bxr = add <4 x i32> %i.bxi, <i32 160, i32 168, i32 176, i32 184>
  %i.bxs = sdiv <4 x i32> %i.bxr, splat (i32 8)   ; 4 uses
  %i.bxt = add <4 x i32> %i.bxi, <i32 192, i32 200, i32 208, i32 216>
  %i.bxu = sdiv <4 x i32> %i.bxt, splat (i32 8)   ; 4 uses
  %i.bxv = add <4 x i32> %i.bxi, <i32 224, i32 232, i32 240, i32 248>
  %i.bxw = sdiv <4 x i32> %i.bxv, splat (i32 8)   ; 4 uses
  %i.bxx = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxd
  %i.bxy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxe
  %i.bxz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxf
  %i.bya = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bxg
  %i.byb = extractelement <4 x i32> %i.bxk, i64 0
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byc
  %i.bye = extractelement <4 x i32> %i.bxk, i64 1
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byf
  %i.byh = extractelement <4 x i32> %i.bxk, i64 2
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byi
  %i.byk = extractelement <4 x i32> %i.bxk, i64 3
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byl
  %i.byn = extractelement <4 x i32> %i.bxm, i64 0
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byo
  %i.byq = extractelement <4 x i32> %i.bxm, i64 1
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byr
  %i.byt = extractelement <4 x i32> %i.bxm, i64 2
  %i.byu = sext i32 %i.byt to i64
  %i.byv = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byu
  %i.byw = extractelement <4 x i32> %i.bxm, i64 3
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %i.bhv, i64 %i.byx
  %i.byz = extractelement <4 x i32> %i.bxo, i64 0
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bza
  %i.bzc = extractelement <4 x i32> %i.bxo, i64 1
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzd
  %i.bzf = extractelement <4 x i32> %i.bxo, i64 2
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzg
  %i.bzi = extractelement <4 x i32> %i.bxo, i64 3
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzj
  %i.bzl = extractelement <4 x i32> %i.bxq, i64 0
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzm
  %i.bzo = extractelement <4 x i32> %i.bxq, i64 1
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzp
  %i.bzr = extractelement <4 x i32> %i.bxq, i64 2
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzs
  %i.bzu = extractelement <4 x i32> %i.bxq, i64 3
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzv
  %i.bzx = extractelement <4 x i32> %i.bxs, i64 0
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.bhv, i64 %i.bzy
  %i.caa = extractelement <4 x i32> %i.bxs, i64 1
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cab
  %i.cad = extractelement <4 x i32> %i.bxs, i64 2
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cae
  %i.cag = extractelement <4 x i32> %i.bxs, i64 3
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cah
  %i.caj = extractelement <4 x i32> %i.bxu, i64 0
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cak
  %i.cam = extractelement <4 x i32> %i.bxu, i64 1
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds i8, ptr %i.bhv, i64 %i.can
  %i.cap = extractelement <4 x i32> %i.bxu, i64 2
  %i.caq = sext i32 %i.cap to i64
  %i.car = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caq
  %i.cas = extractelement <4 x i32> %i.bxu, i64 3
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cat
  %i.cav = extractelement <4 x i32> %i.bxw, i64 0
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caw
  %i.cay = extractelement <4 x i32> %i.bxw, i64 1
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %i.bhv, i64 %i.caz
  %i.cbb = extractelement <4 x i32> %i.bxw, i64 2
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbc
  %i.cbe = extractelement <4 x i32> %i.bxw, i64 3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = getelementptr inbounds i8, ptr %i.bhv, i64 %i.cbf
  %i.cbh = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cbi = icmp ult <32 x i32> %i.cbh, %broadcast.splat1408
  %i.cbj = select <32 x i1> %i.cbi, <32 x i8> %broadcast.splat1406, <32 x i8> zeroinitializer
  %i.cbk = or disjoint <32 x i8> %i.cbj, %broadcast.splat ; 32 uses
  %i.cbl = extractelement <32 x i8> %i.cbk, i64 0
  store i8 %i.cbl, ptr %i.bxx, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.cbk, i64 1
  store i8 %i.cbm, ptr %i.bxy, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.cbk, i64 2
  store i8 %i.cbn, ptr %i.bxz, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.cbk, i64 3
  store i8 %i.cbo, ptr %i.bya, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.cbk, i64 4
  store i8 %i.cbp, ptr %i.byd, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.cbk, i64 5
  store i8 %i.cbq, ptr %i.byg, align 1, !tbaa !33
  %i.cbr = extractelement <32 x i8> %i.cbk, i64 6
  store i8 %i.cbr, ptr %i.byj, align 1, !tbaa !33
  %i.cbs = extractelement <32 x i8> %i.cbk, i64 7
  store i8 %i.cbs, ptr %i.bym, align 1, !tbaa !33
  %i.cbt = extractelement <32 x i8> %i.cbk, i64 8
  store i8 %i.cbt, ptr %i.byp, align 1, !tbaa !33
  %i.cbu = extractelement <32 x i8> %i.cbk, i64 9
  store i8 %i.cbu, ptr %i.bys, align 1, !tbaa !33
  %i.cbv = extractelement <32 x i8> %i.cbk, i64 10
  store i8 %i.cbv, ptr %i.byv, align 1, !tbaa !33
  %i.cbw = extractelement <32 x i8> %i.cbk, i64 11
  store i8 %i.cbw, ptr %i.byy, align 1, !tbaa !33
  %i.cbx = extractelement <32 x i8> %i.cbk, i64 12
  store i8 %i.cbx, ptr %i.bzb, align 1, !tbaa !33
  %i.cby = extractelement <32 x i8> %i.cbk, i64 13
  store i8 %i.cby, ptr %i.bze, align 1, !tbaa !33
  %i.cbz = extractelement <32 x i8> %i.cbk, i64 14
  store i8 %i.cbz, ptr %i.bzh, align 1, !tbaa !33
  %i.cca = extractelement <32 x i8> %i.cbk, i64 15
  store i8 %i.cca, ptr %i.bzk, align 1, !tbaa !33
  %i.ccb = extractelement <32 x i8> %i.cbk, i64 16
  store i8 %i.ccb, ptr %i.bzn, align 1, !tbaa !33
  %i.ccc = extractelement <32 x i8> %i.cbk, i64 17
  store i8 %i.ccc, ptr %i.bzq, align 1, !tbaa !33
  %i.ccd = extractelement <32 x i8> %i.cbk, i64 18
  store i8 %i.ccd, ptr %i.bzt, align 1, !tbaa !33
  %i.cce = extractelement <32 x i8> %i.cbk, i64 19
  store i8 %i.cce, ptr %i.bzw, align 1, !tbaa !33
  %i.ccf = extractelement <32 x i8> %i.cbk, i64 20
  store i8 %i.ccf, ptr %i.bzz, align 1, !tbaa !33
  %i.ccg = extractelement <32 x i8> %i.cbk, i64 21
  store i8 %i.ccg, ptr %i.cac, align 1, !tbaa !33
  %i.cch = extractelement <32 x i8> %i.cbk, i64 22
  store i8 %i.cch, ptr %i.caf, align 1, !tbaa !33
  %i.cci = extractelement <32 x i8> %i.cbk, i64 23
  store i8 %i.cci, ptr %i.cai, align 1, !tbaa !33
  %i.ccj = extractelement <32 x i8> %i.cbk, i64 24
  store i8 %i.ccj, ptr %i.cal, align 1, !tbaa !33
  %i.cck = extractelement <32 x i8> %i.cbk, i64 25
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !31
  %i.bty = icmp eq i64 %i.btx, 4
  br i1 %i.bty, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, label %.loopexit44.i.i.i.i.i.i.i.i442

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444:    ; preds = %bb.ot
  %i.btz = load i8, ptr %i.btv, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445 = icmp eq i8 %i.btz, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btv, i64 1
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447 = icmp eq i8 %i.bub, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btv, i64 2
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449 = icmp eq i8 %i.bud, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btv, i64 3
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451 = icmp eq i8 %i.buf, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i442:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.bug = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buh = icmp eq i32 %i.bto, %i.bug
  br i1 %i.buh, label %bb.ov, label %.body49.i393

bb.ov:                                            ; preds = %bb.ou
  %i.bui = call ptr @__cxa_begin_catch(ptr %i.btn) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.buj = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i438 = icmp eq ptr %i.buj, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i438, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.buk = landingpad { ptr, i32 }
          cleanup
  %i.bul = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i436 = icmp eq ptr %i.bul, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i436, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  %i.bum = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.bun = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i455 = icmp eq ptr %i.bun, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i455, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.buo = landingpad { ptr, i32 }
          cleanup
  %i.bup = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i453 = icmp eq ptr %i.bup, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i443 = phi { ptr, i32 } [ %i.buo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454 ], [ %i.bum, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437
  %i.buq = landingpad { ptr, i32 }
          catch ptr null
  %i.bur = extractvalue { ptr, i32 } %i.buq, 0
  call void @__clang_call_terminate(ptr %i.bur) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i440

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bus = add i64 %.01558.i.i.i.i.i.i.i.i433, -1
  %i.but = and i64 %i.bus, %.01558.i.i.i.i.i.i.i.i433 ; 2 uses
  %.not.i.i.i.i.i.i.i.i441 = icmp eq i64 %i.but, 0
  br i1 %.not.i.i.i.i.i.i.i.i441, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !1377

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i397
  %i.buu = add nsw i32 %i.boe, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i399 = icmp sgt i32 %i.buu, %i.bni
  br i1 %.not33.i.i.i.i.i.i.i399, label %._crit_edge.i.i.i.i.i.i.i400, label %.lr.ph.i.i.i.i.i.i.i397, !llvm.loop !1378

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i400
  %i.buv = and i32 %i.bne, 63
  %i.buw = zext nneg i32 %i.buv to i64
  %notmask.i36.i.i.i.i.i.i.i402 = shl nsw i64 -1, %i.buw
  %i.bux = xor i64 %notmask.i36.i.i.i.i.i.i.i402, -1
  br label %.invoke.i403

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i400, %.invoke.i403, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i467:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i468 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.i440:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.i416: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt10less_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391: ; preds = %bb.nm, %.invoke.i403
  %lpad.loopexit.split-lp.i392 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !290
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !290
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !293 ; 13 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !302 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvn, %i.bvl
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = xor i32 %i.bvd, -1
  %i.bvu = add i32 %i.bvh, %i.bvt                 ; 3 uses
  %i.bvv = lshr i32 %i.bvu, 3
  %i.bvw = add nuw nsw i32 %i.bvv, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1434 = icmp ult i32 %i.bvu, 248
  br i1 %min.iters.check1434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvx = and i32 %i.bvw, 24
  %n.vec = and i32 %i.bvw, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1438 = shufflevector <32 x i32> %broadcast.splatinsert1437, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1439 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1440 = shufflevector <32 x i32> %broadcast.splatinsert1439, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1440, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1438
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1436, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !33
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !33
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !33
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !33
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !33
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !33
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !33
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !33
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !33
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !33
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !33
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !33
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !33
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !33
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !33
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !33
  %i.cbh = extractelement <32 x i8> %i.caq, i64 16
  store i8 %i.cbh, ptr %i.byt, align 1, !tbaa !33
  %i.cbi = extractelement <32 x i8> %i.caq, i64 17
  store i8 %i.cbi, ptr %i.byw, align 1, !tbaa !33
  %i.cbj = extractelement <32 x i8> %i.caq, i64 18
  store i8 %i.cbj, ptr %i.byz, align 1, !tbaa !33
  %i.cbk = extractelement <32 x i8> %i.caq, i64 19
  store i8 %i.cbk, ptr %i.bzc, align 1, !tbaa !33
  %i.cbl = extractelement <32 x i8> %i.caq, i64 20
  store i8 %i.cbl, ptr %i.bzf, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.caq, i64 21
  store i8 %i.cbm, ptr %i.bzi, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.caq, i64 22
  store i8 %i.cbn, ptr %i.bzl, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.caq, i64 23
  store i8 %i.cbo, ptr %i.bzo, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.caq, i64 24
  store i8 %i.cbp, ptr %i.bzr, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.caq, i64 25
end_hunk_4
begin_hunk_5_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !31
  %i.bty = icmp eq i64 %i.btx, 4
  br i1 %i.bty, label %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, label %.loopexit44.i.i.i.i.i.i.i.i442

.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444:    ; preds = %bb.ot
  %i.btz = load i8, ptr %i.btv, align 1, !tbaa !33
  %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445 = icmp eq i8 %i.btz, 85
  br i1 %or.cond.not.i.i.i31.i.i.i.i.i.i.i.i445, label %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446:         ; preds = %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btv, i64 1
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !33
  %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447 = icmp eq i8 %i.bub, 83
  br i1 %or.cond.not.i.i.i31.1.i.i.i.i.i.i.i.i447, label %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448:       ; preds = %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btv, i64 2
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !33
  %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449 = icmp eq i8 %i.bud, 69
  br i1 %or.cond.not.i.i.i31.2.i.i.i.i.i.i.i.i449, label %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450:       ; preds = %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btv, i64 3
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !33
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451 = icmp eq i8 %i.buf, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i.i451, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452, label %.loopexit44.i.i.i.i.i.i.i.i442

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452:       ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %27) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.pb unwind label %bb.pd

.loopexit44.i.i.i.i.i.i.i.i442:                   ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i.i450, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i.i448, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i.i446, %.lr.ph.i.i.i.i29.preheader.i.i.i.i.i.i.i.i444, %bb.ot
  invoke void @__cxa_rethrow() #29
          to label %bb.ph unwind label %bb.pa

bb.ou:                                            ; preds = %bb.os
  %i.bug = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.buh = icmp eq i32 %i.bto, %i.bug
  br i1 %i.buh, label %bb.ov, label %.body49.i393

bb.ov:                                            ; preds = %bb.ou
  %i.bui = call ptr @__cxa_begin_catch(ptr %i.btn) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, i32 noundef %i.brs, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  %i.buj = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i34.i.i.i.i.i.i.i.i438 = icmp eq ptr %i.buj, null
  br i1 %.not.i34.i.i.i.i.i.i.i.i438, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439: ; preds = %bb.ox, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.oy:                                            ; preds = %bb.ov
  %i.buk = landingpad { ptr, i32 }
          cleanup
  %i.bul = load ptr, ptr %26, align 8, !tbaa !342
  %.not.i36.i.i.i.i.i.i.i.i436 = icmp eq ptr %i.bul, null
  br i1 %.not.i36.i.i.i.i.i.i.i.i436, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437: ; preds = %bb.oz, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pa:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  %i.bum = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.pb:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.bun = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i38.i.i.i.i.i.i.i.i455 = icmp eq ptr %i.bun, null
  br i1 %.not.i38.i.i.i.i.i.i.i.i455, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456: ; preds = %bb.pc, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pd:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i.i452
  %i.buo = landingpad { ptr, i32 }
          cleanup
  %i.bup = load ptr, ptr %27, align 8, !tbaa !342
  %.not.i40.i.i.i.i.i.i.i.i453 = icmp eq ptr %i.bup, null
  br i1 %.not.i40.i.i.i.i.i.i.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454: ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.pf

bb.pf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454, %bb.pa
  %.pn.i.i.i.i.i.i.i.i.i443 = phi { ptr, i32 } [ %i.buo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i454 ], [ %i.bum, %bb.pa ]
  invoke void @__cxa_end_catch()
          to label %.body49.i393 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437
  %i.buq = landingpad { ptr, i32 }
          catch ptr null
  %i.bur = extractvalue { ptr, i32 } %i.buq, 0
  call void @__clang_call_terminate(ptr %i.bur) #32
  unreachable

bb.ph:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i.i442
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i.i456, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i439
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i440

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit6.i27.i.i.i.i.i.i.i.i
  %i.bus = add i64 %.01558.i.i.i.i.i.i.i.i433, -1
  %i.but = and i64 %i.bus, %.01558.i.i.i.i.i.i.i.i433 ; 2 uses
  %.not.i.i.i.i.i.i.i.i441 = icmp eq i64 %i.but, 0
  br i1 %.not.i.i.i.i.i.i.i.i441, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ol, !llvm.loop !1536

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i.i.i.i, %bb.nn, %.lr.ph.i.i.i.i.i.i.i397
  %i.buu = add nsw i32 %i.boe, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i399 = icmp sgt i32 %i.buu, %i.bni
  br i1 %.not33.i.i.i.i.i.i.i399, label %._crit_edge.i.i.i.i.i.i.i400, label %.lr.ph.i.i.i.i.i.i.i397, !llvm.loop !1537

bb.pi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i400
  %i.buv = and i32 %i.bne, 63
  %i.buw = zext nneg i32 %i.buv to i64
  %notmask.i36.i.i.i.i.i.i.i402 = shl nsw i64 -1, %i.buw
  %i.bux = xor i64 %notmask.i36.i.i.i.i.i.i.i402, -1
  br label %.invoke.i403

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i400, %.invoke.i403, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiiSX_.exit.i.i.i.i, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSC_0EeqT_LSC_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESN_RNS0_4exec7EvalCtxERSt10shared_ptrISM_E.exit

.loopexit.i467:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i468 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.i440:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.i416: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE4ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clImEEDaSV_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391: ; preds = %bb.nm, %.invoke.i403
  %lpad.loopexit.split-lp.i392 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i393

.body49.i393:                                     ; preds = %bb.nx, %bb.ou, %bb.mu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416, %.loopexit.split-lp.loopexit.i440, %.loopexit.i467, %bb.pf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437, %bb.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413, %bb.nf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464
  %eh.lpad-body50.i394 = phi { ptr, i32 } [ %i.btm, %bb.ou ], [ %.pn.i.i.i.i.i473, %bb.nf ], [ %i.bms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i464 ], [ %i.blu, %bb.mu ], [ %.pn.i18.i.i.i.i.i.i.i.i418, %bb.oi ], [ %i.brg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i413 ], [ %.pn.i.i.i.i.i.i.i.i.i443, %bb.pf ], [ %i.buk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.i437 ], [ %lpad.loopexit.split-lp.i392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i391 ], [ %lpad.loopexit.i468, %.loopexit.i467 ], [ %lpad.loopexit14.i, %.loopexit.split-lp.loopexit.i440 ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i416 ], [ %i.bqi, %bb.nx ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #28
  br label %.body.i374

.body.i374:                                       ; preds = %.body49.i393, %bb.md
  %.pn.i375 = phi { ptr, i32 } [ %eh.lpad-body50.i394, %.body49.i393 ], [ %i.bis, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

bb.pj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i367
  %i.buy = load i32, ptr %i.bhe, align 4, !tbaa !290
  %i.buz = icmp eq i32 %i.buy, 1
  %i.bva = load i32, ptr %i.bhg, align 4, !tbaa !290
  %i.bvb = icmp eq i32 %i.bva, 1                  ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bgw, i64 28
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !293 ; 13 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bgw, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8, !tbaa !302 ; 9 uses
  %i.bvg = sub i32 %i.bvf, %i.bvd
  %i.bvh = and i32 %i.bvg, -4                     ; 17 uses
  %i.bvi = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvj = icmp ult i32 %i.bvd, %i.bvh            ; 4 uses
  br i1 %i.buz, label %bb.pk, label %bb.pr

bb.pk:                                            ; preds = %bb.pj
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.bvl = load i64, ptr %i.bvk, align 8, !tbaa !455 ; 4 uses
  br i1 %i.bvb, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bgy, i64 168
  %i.bvn = load i64, ptr %i.bvm, align 8, !tbaa !455 ; 2 uses
  br i1 %i.bvj, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvl, %i.bvn
  %i.bvo = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %i.bvp = shufflevector <4 x i1> %i.bvo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bvq = bitcast <4 x i1> %i.bvp to i4
  %i.bvr = zext i4 %i.bvq to i8                   ; 4 uses
  %i.bvs = shl nuw i8 %i.bvr, 4                   ; 3 uses
  %i.bvt = xor i32 %i.bvd, -1
  %i.bvu = add i32 %i.bvh, %i.bvt                 ; 3 uses
  %i.bvv = lshr i32 %i.bvu, 3
  %i.bvw = add nuw nsw i32 %i.bvv, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bvu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i502.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1434 = icmp ult i32 %i.bvu, 248
  br i1 %min.iters.check1434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvx = and i32 %i.bvw, 24
  %n.vec = and i32 %i.bvw, 1073741792             ; 4 uses
  %i.bvy = shl i32 %n.vec, 3
  %i.bvz = add i32 %i.bvd, %i.bvy                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %i.bvr, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvs, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <32 x i32> poison, i32 %i.bvh, i64 0
  %broadcast.splat1438 = shufflevector <32 x i32> %broadcast.splatinsert1437, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1439 = insertelement <32 x i32> poison, i32 %i.bvd, i64 0
  %broadcast.splat1440 = shufflevector <32 x i32> %broadcast.splatinsert1439, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add nsw <32 x i32> %broadcast.splat1440, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bwa = shl i32 %index, 3
  %i.bwb = add i32 %i.bvd, %i.bwa                 ; 5 uses
  %i.bwc = add i32 %i.bwb, 8
  %i.bwd = add i32 %i.bwb, 16
  %i.bwe = add i32 %i.bwb, 24
  %i.bwf = sdiv i32 %i.bwb, 8
  %i.bwg = sdiv i32 %i.bwc, 8
  %i.bwh = sdiv i32 %i.bwd, 8
  %i.bwi = sdiv i32 %i.bwe, 8
  %i.bwj = sext i32 %i.bwf to i64
  %i.bwk = sext i32 %i.bwg to i64
  %i.bwl = sext i32 %i.bwh to i64
  %i.bwm = sext i32 %i.bwi to i64
  %i.bwn = insertelement <4 x i32> poison, i32 %i.bwb, i64 0
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.bwp = add <4 x i32> %i.bwo, <i32 32, i32 40, i32 48, i32 56>
  %i.bwq = sdiv <4 x i32> %i.bwp, splat (i32 8)   ; 4 uses
  %i.bwr = add <4 x i32> %i.bwo, <i32 64, i32 72, i32 80, i32 88>
  %i.bws = sdiv <4 x i32> %i.bwr, splat (i32 8)   ; 4 uses
  %i.bwt = add <4 x i32> %i.bwo, <i32 96, i32 104, i32 112, i32 120>
  %i.bwu = sdiv <4 x i32> %i.bwt, splat (i32 8)   ; 4 uses
  %i.bwv = add <4 x i32> %i.bwo, <i32 128, i32 136, i32 144, i32 152>
  %i.bww = sdiv <4 x i32> %i.bwv, splat (i32 8)   ; 4 uses
  %i.bwx = add <4 x i32> %i.bwo, <i32 160, i32 168, i32 176, i32 184>
  %i.bwy = sdiv <4 x i32> %i.bwx, splat (i32 8)   ; 4 uses
  %i.bwz = add <4 x i32> %i.bwo, <i32 192, i32 200, i32 208, i32 216>
  %i.bxa = sdiv <4 x i32> %i.bwz, splat (i32 8)   ; 4 uses
  %i.bxb = add <4 x i32> %i.bwo, <i32 224, i32 232, i32 240, i32 248>
  %i.bxc = sdiv <4 x i32> %i.bxb, splat (i32 8)   ; 4 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwj
  %i.bxe = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwk
  %i.bxf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwl
  %i.bxg = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bwm
  %i.bxh = extractelement <4 x i32> %i.bwq, i64 0
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxi
  %i.bxk = extractelement <4 x i32> %i.bwq, i64 1
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxl
  %i.bxn = extractelement <4 x i32> %i.bwq, i64 2
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxo
  %i.bxq = extractelement <4 x i32> %i.bwq, i64 3
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxr
  %i.bxt = extractelement <4 x i32> %i.bws, i64 0
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxu
  %i.bxw = extractelement <4 x i32> %i.bws, i64 1
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bxx
  %i.bxz = extractelement <4 x i32> %i.bws, i64 2
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bya
  %i.byc = extractelement <4 x i32> %i.bws, i64 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byd
  %i.byf = extractelement <4 x i32> %i.bwu, i64 0
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byg
  %i.byi = extractelement <4 x i32> %i.bwu, i64 1
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byj
  %i.byl = extractelement <4 x i32> %i.bwu, i64 2
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bym
  %i.byo = extractelement <4 x i32> %i.bwu, i64 3
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byp
  %i.byr = extractelement <4 x i32> %i.bww, i64 0
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bys
  %i.byu = extractelement <4 x i32> %i.bww, i64 1
  %i.byv = sext i32 %i.byu to i64
  %i.byw = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byv
  %i.byx = extractelement <4 x i32> %i.bww, i64 2
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.bhd, i64 %i.byy
  %i.bza = extractelement <4 x i32> %i.bww, i64 3
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzb
  %i.bzd = extractelement <4 x i32> %i.bwy, i64 0
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bze
  %i.bzg = extractelement <4 x i32> %i.bwy, i64 1
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzh
  %i.bzj = extractelement <4 x i32> %i.bwy, i64 2
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzk
  %i.bzm = extractelement <4 x i32> %i.bwy, i64 3
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzn
  %i.bzp = extractelement <4 x i32> %i.bxa, i64 0
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzq
  %i.bzs = extractelement <4 x i32> %i.bxa, i64 1
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzt
  %i.bzv = extractelement <4 x i32> %i.bxa, i64 2
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzw
  %i.bzy = extractelement <4 x i32> %i.bxa, i64 3
  %i.bzz = sext i32 %i.bzy to i64
  %i.caa = getelementptr inbounds i8, ptr %i.bhd, i64 %i.bzz
  %i.cab = extractelement <4 x i32> %i.bxc, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cac
  %i.cae = extractelement <4 x i32> %i.bxc, i64 1
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds i8, ptr %i.bhd, i64 %i.caf
  %i.cah = extractelement <4 x i32> %i.bxc, i64 2
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cai
  %i.cak = extractelement <4 x i32> %i.bxc, i64 3
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds i8, ptr %i.bhd, i64 %i.cal
  %i.can = add nuw <32 x i32> %vec.ind, splat (i32 4)
  %i.cao = icmp ult <32 x i32> %i.can, %broadcast.splat1438
  %i.cap = select <32 x i1> %i.cao, <32 x i8> %broadcast.splat1436, <32 x i8> zeroinitializer
  %i.caq = or disjoint <32 x i8> %i.cap, %broadcast.splat ; 32 uses
  %i.car = extractelement <32 x i8> %i.caq, i64 0
  store i8 %i.car, ptr %i.bxd, align 1, !tbaa !33
  %i.cas = extractelement <32 x i8> %i.caq, i64 1
  store i8 %i.cas, ptr %i.bxe, align 1, !tbaa !33
  %i.cat = extractelement <32 x i8> %i.caq, i64 2
  store i8 %i.cat, ptr %i.bxf, align 1, !tbaa !33
  %i.cau = extractelement <32 x i8> %i.caq, i64 3
  store i8 %i.cau, ptr %i.bxg, align 1, !tbaa !33
  %i.cav = extractelement <32 x i8> %i.caq, i64 4
  store i8 %i.cav, ptr %i.bxj, align 1, !tbaa !33
  %i.caw = extractelement <32 x i8> %i.caq, i64 5
  store i8 %i.caw, ptr %i.bxm, align 1, !tbaa !33
  %i.cax = extractelement <32 x i8> %i.caq, i64 6
  store i8 %i.cax, ptr %i.bxp, align 1, !tbaa !33
  %i.cay = extractelement <32 x i8> %i.caq, i64 7
  store i8 %i.cay, ptr %i.bxs, align 1, !tbaa !33
  %i.caz = extractelement <32 x i8> %i.caq, i64 8
  store i8 %i.caz, ptr %i.bxv, align 1, !tbaa !33
  %i.cba = extractelement <32 x i8> %i.caq, i64 9
  store i8 %i.cba, ptr %i.bxy, align 1, !tbaa !33
  %i.cbb = extractelement <32 x i8> %i.caq, i64 10
  store i8 %i.cbb, ptr %i.byb, align 1, !tbaa !33
  %i.cbc = extractelement <32 x i8> %i.caq, i64 11
  store i8 %i.cbc, ptr %i.bye, align 1, !tbaa !33
  %i.cbd = extractelement <32 x i8> %i.caq, i64 12
  store i8 %i.cbd, ptr %i.byh, align 1, !tbaa !33
  %i.cbe = extractelement <32 x i8> %i.caq, i64 13
  store i8 %i.cbe, ptr %i.byk, align 1, !tbaa !33
  %i.cbf = extractelement <32 x i8> %i.caq, i64 14
  store i8 %i.cbf, ptr %i.byn, align 1, !tbaa !33
  %i.cbg = extractelement <32 x i8> %i.caq, i64 15
  store i8 %i.cbg, ptr %i.byq, align 1, !tbaa !33
  %i.cbh = extractelement <32 x i8> %i.caq, i64 16
  store i8 %i.cbh, ptr %i.byt, align 1, !tbaa !33
  %i.cbi = extractelement <32 x i8> %i.caq, i64 17
  store i8 %i.cbi, ptr %i.byw, align 1, !tbaa !33
  %i.cbj = extractelement <32 x i8> %i.caq, i64 18
  store i8 %i.cbj, ptr %i.byz, align 1, !tbaa !33
  %i.cbk = extractelement <32 x i8> %i.caq, i64 19
  store i8 %i.cbk, ptr %i.bzc, align 1, !tbaa !33
  %i.cbl = extractelement <32 x i8> %i.caq, i64 20
  store i8 %i.cbl, ptr %i.bzf, align 1, !tbaa !33
  %i.cbm = extractelement <32 x i8> %i.caq, i64 21
  store i8 %i.cbm, ptr %i.bzi, align 1, !tbaa !33
  %i.cbn = extractelement <32 x i8> %i.caq, i64 22
  store i8 %i.cbn, ptr %i.bzl, align 1, !tbaa !33
  %i.cbo = extractelement <32 x i8> %i.caq, i64 23
  store i8 %i.cbo, ptr %i.bzo, align 1, !tbaa !33
  %i.cbp = extractelement <32 x i8> %i.caq, i64 24
  store i8 %i.cbp, ptr %i.bzr, align 1, !tbaa !33
  %i.cbq = extractelement <32 x i8> %i.caq, i64 25
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INSB_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSH_0EeqT_LSH_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESS_RS4_RSt10shared_ptrISR_EEUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSQ_SX_EUlSX_E_EEvSQ_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !336
  %i.be = sext i32 %i.q to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit6.i: ; preds = %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %.0.i.i5.i = phi i32 [ %i.bg, %bb.h ], [ %i.bb, %bb.g ], [ %i.q, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i ]
  %i.bh = sext i32 %.0.i.i5.i to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !487
  %i.bk = fcmp uno double %i.an, 0.000000e+00
  %i.bl = fcmp oge double %i.an, %i.bj
  %.0.i.i7.i = select i1 %i.bk, i1 true, i1 %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1559, !nonnull !59, !align !320
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !288
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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !339 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31
  %i.cb = icmp eq i64 %i.ca, 4
  br i1 %i.cb, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !33
  %or.cond.not.i.i.i = icmp eq i8 %i.cc, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ce, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !33
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cg, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !33
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ci, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #28
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.t

.loopexit:                                        ; preds = %bb.j, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
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
  %i.cm = load ptr, ptr %3, align 8, !tbaa !342
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
  %i.co = load ptr, ptr %3, align 8, !tbaa !342
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
  %i.cq = load ptr, ptr %4, align 8, !tbaa !342
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
  %i.cs = load ptr, ptr %4, align 8, !tbaa !342
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
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !1615

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_114SimdComparatorISt13greater_equalIvEN5xsimd4fma3INS9_4avx2EEEE15applyComparisonILNS0_8TypeKindE6ETnNSt9enable_ifIXooaasr5xsimd17has_simd_registerINS0_10TypeTraitsIXT_EE10NativeTypeEEE5valueneT_LSF_0EeqT_LSF_10EEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_10BaseVectorESQ_RS2_RSt10shared_ptrISP_EEUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSO_SV_EUlSV_E_EEvSO_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit, %bb.a
  ret void
}

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
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!10 = distinct !{!10, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !13, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!13 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!18 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!19 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !20, i64 0, !16, i64 8}
!20 = !{!"float", !6, i64 0}
!21 = !{!12, !16, i64 8}
!22 = !{!19, !20, i64 0}
!23 = !{!24, !27, i64 32}
!24 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !25, i64 0, !25, i64 16, !27, i64 32}
!25 = !{!"_ZTSSt13_Bit_iterator", !26, i64 0}
!26 = !{!"_ZTSSt18_Bit_iterator_base", !27, i64 0, !5, i64 8}
!27 = !{!"p1 long", !15, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !15, i64 0}
!31 = !{!32, !16, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !16, i64 8, !6, i64 16}
!33 = !{!6, !6, i64 0}
!34 = !{!35, !36, i64 32}
!35 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !36, i64 32}
!36 = !{!"bool", !6, i64 0}
!37 = !{!30, !30, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!32, !30, i64 0}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !15, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!47 = !{!15, !15, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0, !45, i64 8}
!50 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !15, i64 0}
!51 = !{!52, !5, i64 8}
!52 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!53 = !{!52, !5, i64 12}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !7, i64 0}
!56 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!57 = !{!5, !5, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!62 = distinct !{!62, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !65, i64 0}
!65 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !15, i64 0}
!66 = !{!36, !36, i64 0}
!67 = !{!68, !16, i64 0}
!68 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0, !30, i64 8}
!69 = !{!68, !30, i64 8}
!70 = !{!65, !65, i64 0}
!71 = distinct !{null, null}
!72 = !{!41, !42, i64 0}
!73 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!79 = distinct !{!79, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!80 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!83 = distinct !{!83, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!86 = distinct !{!86, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!87 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!90 = distinct !{!90, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!93 = distinct !{!93, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!94 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!97 = distinct !{!97, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!100 = distinct !{!100, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!101 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv: argument 0"}
!107 = distinct !{!107, !"_ZN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE10signaturesEv"}
!108 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!111 = distinct !{!111, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS7_4avx2EEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!112 = distinct !{null, null}
!113 = distinct !{null}
!114 = !{!115, !36, i64 104}
!115 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !6, i64 0, !36, i64 104}
!116 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !15, i64 0}
!120 = !{!118, !119, i64 8}
!121 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!122 = distinct !{!122, !75}
!123 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!124 = !{!118, !119, i64 16}
!125 = !{!26, !27, i64 0}
!126 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!127 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!128 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!131 = distinct !{!131, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!137 = distinct !{!137, !75, !138, !139}
!138 = !{!"llvm.loop.isvectorized", i32 1}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = distinct !{!140, !75, !138}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!143 = distinct !{!143, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!146 = distinct !{!146, !75, !138, !139}
!147 = distinct !{!147, !75, !138}
!148 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!149 = !{!150, !36, i64 96}
!150 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !32, i64 0, !151, i64 32, !154, i64 56, !36, i64 96}
!151 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !152, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !153, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !118, i64 0}
!154 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !155, i64 0}
!155 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !156, i64 0}
!156 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !157, i64 0}
!157 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !35, i64 0}
!158 = !{!119, !119, i64 0}
!159 = distinct !{null, null, null, null}
!160 = distinct !{!160, !75}
!161 = distinct !{null, null, null}
end_hunk_6
