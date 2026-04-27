inline.NumInlined: 5367
inline.NumDeleted: 2188
begin_hunk_0_@_ZN8facebook5velox6memory10MemoryPool16getPreferredSizeEm:bb.a
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true) ; 3 uses
  %1 = lshr exact i64 -9223372036854775808, %i.b  ; 2 uses
  %i.c = icmp eq i64 %1, %0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = xor i64 %i.b, 63
  %i.d = lshr i64 4611686018427387904, %i.b
  %i.e = add nuw i64 %1, %i.d                     ; 2 uses
  %.not = icmp ult i64 %i.e, %0
  %i.f = shl i64 2, %2
  %spec.select = select i1 %.not, i64 %i.f, i64 %i.e
  br label %bb.d

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFmmEZN8facebook5velox6memory10MemoryPoolC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_4KindESt10shared_ptrIS4_ERKNS4_7OptionsEE3$_0E9_M_invokeERKSt9_Any_dataOm":bb.a
  br i1 %i.a, label %"_ZSt10__invoke_rImRZN8facebook5velox6memory10MemoryPoolC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_4KindESt10shared_ptrIS3_ERKNS3_7OptionsEE3$_0JmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val, i1 true) ; 3 uses
  %2 = lshr exact i64 -9223372036854775808, %i.b  ; 2 uses
  %i.c = icmp eq i64 %2, %.val
  br i1 %i.c, label %"_ZSt10__invoke_rImRZN8facebook5velox6memory10MemoryPoolC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_4KindESt10shared_ptrIS3_ERKNS3_7OptionsEE3$_0JmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = xor i64 %i.b, 63
  %i.d = lshr i64 4611686018427387904, %i.b
  %i.e = add nuw i64 %2, %i.d                     ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.e, %.val
  %i.f = shl i64 2, %3
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.f, i64 %i.e
  br label %"_ZSt10__invoke_rImRZN8facebook5velox6memory10MemoryPoolC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_4KindESt10shared_ptrIS3_ERKNS3_7OptionsEE3$_0JmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

end_hunk_1
