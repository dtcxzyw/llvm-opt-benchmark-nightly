inline.NumInlined: 622
inline.NumDeleted: 240
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 76, ptr %i.s, align 1, !tbaa !12
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.c:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.d:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.e:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.f:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE:bb.a
  ]

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.n:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.o:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.p:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

bb.q:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.t = load i8, ptr %1, align 4, !tbaa !13      ; 2 uses
  %i.u = icmp ult i8 %i.t, 19
end_hunk_3
