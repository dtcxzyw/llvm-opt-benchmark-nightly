inline.NumInlined: 14589
inline.NumDeleted: 3684
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  %.sroa.0128.0178 = phi ptr [ null, %.lr.ph ], [ %.sroa.0128.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 12 uses
  %.0177 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.sroa.17.0176 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %.sroa.11.0175 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  br i1 %.not, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

bb.q:                                             ; preds = %bb.p
  store i32 %.0177, ptr %.sroa.11.0175, align 4, !tbaa !3
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.11.0175, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.r:                                             ; preds = %bb.p
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc71
  %19 = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0128.0178, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

bb.x:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit76
  store i32 %.0.i74, ptr %.sroa.11.0175, align 4, !tbaa !3
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.11.0175, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit76
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i81

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i81: ; preds = %bb.z, %.noexc85
  %21 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.not.i17.i.i82 = icmp eq ptr %.sroa.0128.0178, null
  br i1 %.not.i17.i.i82, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83, label %bb.aa

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83, %bb.x, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.q
  %.sroa.11.1.a = phi ptr [ %18, %bb.q ], [ %19, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %21, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83 ], [ %20, %bb.x ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.0176, %bb.q ], [ %i.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83 ], [ %.sroa.17.0176, %bb.x ] ; 2 uses
  %.1 = phi i32 [ %.0177, %bb.q ], [ %.0177, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.0.i74, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83 ], [ %.0.i74, %bb.x ]
  %.sroa.0128.1 = phi ptr [ %.sroa.0128.0178, %bb.q ], [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ck, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i83 ], [ %.sroa.0128.0178, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !641
end_hunk_5
