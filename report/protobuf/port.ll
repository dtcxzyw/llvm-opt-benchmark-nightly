inline.NumInlined: 602
inline.NumDeleted: 355
begin_hunk_0_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %5) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !32   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #28
  br label %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %6) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %.not.i.i5 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i5, label %bb.j, label %bb.i
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !32 ; 4 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal16RealDebugCounter8RegisterESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i17.i.i.i10, label %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i11, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i9
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i11

_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i11: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i9
end_hunk_5
