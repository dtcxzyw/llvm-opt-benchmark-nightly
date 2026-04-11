inline.NumInlined: 605
inline.NumDeleted: 305
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10initializeERKNS_6HeaderE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %1) ; 4 uses
  %i.h = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  %i.i = load i32, ptr %i.h, align 4, !tbaa !90
  %i.j = icmp eq i32 %i.i, 0
  %. = select i1 %i.j, i64 4, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i32 %i.l, ptr %i.n, align 8, !tbaa !91
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !92
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !95
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 124
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10initializeERKNS_6HeaderE:bb.a
._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %._crit_edge
  %i.cc = phi i32 [ %i.am, %._crit_edge ], [ %.pre61, %._crit_edge54.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.an, %._crit_edge ], [ %i.di, %._crit_edge54.loopexit ] ; 5 uses
  %i.cd = load i32, ptr %2, align 4, !tbaa !92
  %i.ce = load i32, ptr %3, align 4, !tbaa !95
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.cc
  %i.ch = sdiv i32 %i.cg, %i.cc
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 25 uses
  %i.bl = phi ptr [ %i.dx, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 12 uses
  %i.bm = phi ptr [ %4, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 20 uses
  %.sroa.0118.0 = phi ptr [ %i.dz, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ %i.j, %bb.e ] ; 6 uses
  %i.bn = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.am unwind label %bb.ao
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  store i32 %i.cc, ptr %.sroa.10101.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 1, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !135
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.au:                                            ; preds = %bb.as
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.co, %.noexc45 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ]
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aw

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  store i32 %i.dg, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !135
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.bb:                                            ; preds = %bb.az
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i51, %.noexc60
  %.0.lcssa.i.i.i.i.i.i56 = phi ptr [ %i.ds, %.noexc60 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i51 ]
  %.not.i27.i.i.i57 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i57, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, label %bb.bd

end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ba, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, %bb.at, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.co, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.at ], [ %i.ds, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %.sroa.0.0, %bb.ba ]
  %i.dx = phi ptr [ %i.cs, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bl, %bb.at ], [ %i.dw, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.bl, %bb.ba ]
  %i.dy = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bm, %bb.at ], [ %.0.lcssa.i.i.i.i.i.i56, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.bm, %bb.ba ]
  %4 = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.dz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0118.0) #29
  br label %.preheader, !llvm.loop !150

end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTask7executeEv:bb.a
  %i.i = load i32, ptr %i.h, align 8, !tbaa !97
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !167
  %i.o = add nsw i32 %i.n, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !166
  %i.r = add nsw i32 %i.q, -1
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTask7executeEv:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ -1, %bb.c ]
  %.043 = phi i32 [ %i.o, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %.pn126 = phi i64 [ 48, %bb.b ], [ 52, %bb.c ]
  %.0.in = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pn126
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !3   ; 2 uses
  %.not76 = icmp eq i32 %.0, %.043
  br i1 %.not76, label %._crit_edge80, label %.lr.ph79
end_hunk_9
