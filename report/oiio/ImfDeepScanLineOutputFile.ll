inline.NumInlined: 720
inline.NumDeleted: 346
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile10initializeERKNS_6HeaderE:bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull align 8 dereferenceable(49) %1) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header7setTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E)
  %i.e = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %1) ; 4 uses
  %i.f = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = icmp eq i32 %i.g, 0
  %. = select i1 %i.h, i64 4, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store i32 %i.j, ptr %i.l, align 8, !tbaa !106
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.m = load i32, ptr %2, align 4, !tbaa !107
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %3, align 4, !tbaa !110
  %i.o = add i32 %i.m, 1
  %i.p = sub i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 180
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
.preheader:                                       ; preds = %bb.ar, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 25 uses
  %i.by = phi ptr [ %i.ev, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 10 uses
  %i.bz = phi ptr [ %4, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 7 uses
  %.sroa.090.0 = phi ptr [ %i.ex, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ %i.bx, %bb.ar ] ; 5 uses
  %i.ca = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.as unwind label %bb.au
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a

bb.ba:                                            ; preds = %bb.az
  store ptr %i.cq, ptr %i.bz, align 8, !tbaa !89
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bb:                                            ; preds = %bb.az
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i: ; preds = %bb.bd, %.noexc64
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.be

end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.dp, ptr %i.bz, align 8, !tbaa !89
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70: ; preds = %bb.bm, %.noexc74
  %.not.i21.i.i.i71 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i71, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72, label %bb.bn

end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.bj, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72, %bb.ba, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.dj, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ba ], [ %i.er, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %.sroa.0.0, %bb.bj ]
  %i.ev = phi ptr [ %i.dm, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.by, %bb.ba ], [ %i.eu, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %i.by, %bb.bj ]
  %i.ew = phi ptr [ %i.dk, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.bz, %bb.ba ], [ %i.es, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %i.bz, %bb.bj ]
  %4 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ex = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.0) #29
  br label %.preheader, !llvm.loop !165

end_hunk_6
