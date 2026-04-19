inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb:bb.a
  br i1 %i.n, label %_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %.03184.i = phi i1 [ %.4.ph.i, %.thread.i ], [ true, %bb.b ]
  %.03583.i = phi i64 [ %.6.ph.i, %.thread.i ], [ -1, %bb.b ] ; 8 uses
  %.sroa.051.082.i = phi ptr [ %i.y, %.thread.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.051.082.i, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !76
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb:bb.a
  %i.q = load ptr, ptr %.sroa.051.082.i, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !211  ; 2 uses
  %i.t = icmp slt i64 %.03583.i, 0
  br i1 %i.t, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i
  %.not48.i = icmp eq i64 %.03583.i, %i.s
  br i1 %.not48.i, label %.thread.i, label %_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit

_ZNK5arrow5Datum13chunked_arrayEv.exit.i:         ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %.sroa.051.082.i, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !230  ; 2 uses
  %i.x = icmp slt i64 %.03583.i, 0
  br i1 %i.x, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  %.not.i = icmp eq i64 %.03583.i, %i.w
  br i1 %.not.i, label %.thread.i, label %_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit

.thread.i:                                        ; preds = %bb.d, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i, %bb.c, %_ZNK5arrow5Datum5arrayEv.exit.i, %.lr.ph.i
  %.6.ph.i = phi i64 [ %.03583.i, %.lr.ph.i ], [ %.03583.i, %bb.c ], [ %i.s, %_ZNK5arrow5Datum5arrayEv.exit.i ], [ %i.w, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i ], [ %.03583.i, %bb.d ] ; 2 uses
  %.4.ph.i = phi i1 [ %.03184.i, %.lr.ph.i ], [ false, %bb.c ], [ false, %_ZNK5arrow5Datum5arrayEv.exit.i ], [ false, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i ], [ false, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.051.082.i, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.thread.i
  %i.aa = tail call i64 @llvm.smax.i64(i64 %.6.ph.i, i64 0)
  br label %_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit.thread

_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %.not = icmp eq i64 %.03583.i, %i.ac
  br i1 %.not, label %bb.f, label %bb.e

_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb.exit.thread: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.035.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aa, %._crit_edge.loopexit.i ]
  %.031.lcssa.i = phi i1 [ true, %bb.b ], [ %.4.ph.i, %._crit_edge.loopexit.i ]
  %.not49.i = icmp ne ptr %i.f, %i.g
  %or.cond.not.i = and i1 %.not49.i, %.031.lcssa.i
  %.8.i = select i1 %or.cond.not.i, i64 1, i64 %.035.lcssa.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %.not55 = icmp eq i64 %.8.i, %i.ae
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb:bb.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.03184 = phi i1 [ %.4.ph, %.thread ], [ true, %bb.a ]
  %.03583 = phi i64 [ %.6.ph, %.thread ], [ -1, %bb.a ] ; 9 uses
  %.sroa.051.082 = phi ptr [ %i.o, %.thread ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.051.082, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !76
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail16InferBatchLengthERKSt6vectorINS_5DatumESaIS3_EEPb:bb.a
  %i.g = load ptr, ptr %.sroa.051.082, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %i.j = icmp slt i64 %.03583, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %.not48 = icmp eq i64 %.03583, %i.i
  br i1 %.not48, label %.thread, label %.thread74

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %.lr.ph
  %i.k = load ptr, ptr %.sroa.051.082, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !230  ; 2 uses
  %i.n = icmp slt i64 %.03583, 0
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %.not = icmp eq i64 %.03583, %i.m
  br i1 %.not, label %.thread, label %.thread74

.thread:                                          ; preds = %.lr.ph, %bb.c, %_ZNK5arrow5Datum13chunked_arrayEv.exit, %bb.b, %_ZNK5arrow5Datum5arrayEv.exit
  %.6.ph = phi i64 [ %.03583, %.lr.ph ], [ %.03583, %bb.b ], [ %i.i, %_ZNK5arrow5Datum5arrayEv.exit ], [ %i.m, %_ZNK5arrow5Datum13chunked_arrayEv.exit ], [ %.03583, %bb.c ] ; 2 uses
  %.4.ph = phi i1 [ %.03184, %.lr.ph ], [ false, %bb.b ], [ false, %_ZNK5arrow5Datum5arrayEv.exit ], [ false, %_ZNK5arrow5Datum13chunked_arrayEv.exit ], [ false, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.051.082, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread
  %i.q = tail call i64 @llvm.smax.i64(i64 %.6.ph, i64 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %.031.lcssa = phi i1 [ true, %bb.a ], [ %.4.ph, %._crit_edge.loopexit ]
  %.not49 = icmp ne ptr %i.c, %i.a
  %or.cond.not = and i1 %.not49, %.031.lcssa
  %.8 = select i1 %or.cond.not, i64 1, i64 %.035.lcssa
  br label %.thread74

.thread74:                                        ; preds = %bb.c, %bb.b, %._crit_edge
  %.sink = phi i8 [ 1, %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.6 = phi i64 [ %.8, %._crit_edge ], [ %.03583, %bb.b ], [ %.03583, %bb.c ]
  store i8 %.sink, ptr %1, align 1, !tbaa !117
  ret i64 %.6
}
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit
  %.017107 = phi i1 [ %spec.select, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ false, %bb.b ]
  %.sroa.056.0106 = phi ptr [ %i.aj, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.15.0105 = phi ptr [ %.sroa.056.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 7 uses
  %.sroa.21.0104 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 5 uses
  %.sroa.053.0103 = phi ptr [ %.sroa.21.1.a, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 9 uses
  %i.o = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.056.0106) ; 2 uses
  %i.p = icmp eq i32 %i.o, 2
  %spec.select = select i1 %i.p, i1 true, i1 %.017107 ; 2 uses
  %.not28 = icmp eq i32 %i.o, 1
  br i1 %.not28, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.056.0106, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.21.0104, %.sroa.15.0105
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.056.0106, ptr %.sroa.21.0104, align 8, !tbaa !336
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.21.0104, i64 8
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %.sroa.15.0105 to i64
  %i.v = ptrtoint ptr %.sroa.053.0103 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a

.noexc45:                                         ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %.sroa.056.0106, ptr %i.af, align 8, !tbaa !336
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.053.0103, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %.noexc45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.053.0103, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0103, i64 noundef %i.w) #32
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
  br label %bb.v

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c, %.lr.ph
  %.sroa.21.1.a = phi ptr [ %.sroa.053.0103, %.lr.ph ], [ %.sroa.053.0103, %bb.c ], [ %i.ae, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.053.0103, %bb.e ] ; 15 uses
  %.sroa.15.1 = phi ptr [ %.sroa.21.0104, %.lr.ph ], [ %.sroa.21.0104, %bb.c ], [ %i.ah, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.t, %bb.e ] ; 3 uses
  %.sroa.056.1 = phi ptr [ %.sroa.15.0105, %.lr.ph ], [ %.sroa.15.0105, %bb.c ], [ %i.ai, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.15.0105, %bb.e ] ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.056.0106, i64 136 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.h
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
bb.l:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 -1, ptr %i.ar, align 8, !tbaa !311
  %i.as = icmp eq ptr %.sroa.21.1.a, %.sroa.15.1
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread140, %bb.l
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a

bb.o:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %.sroa.15.1 to i64
  %i.ba = ptrtoint ptr %.sroa.21.1.a to i64       ; 7 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 8
  %i.be = load ptr, ptr %.sroa.21.1.a, align 8, !tbaa !336 ; 6 uses
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
  br label %.thread83

bb.r:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.21.1.a, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 24
  %.val39 = load i64, ptr %i.bs, align 8, !tbaa !292
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a

.lr.ph112:                                        ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48"
  %.0111 = phi i64 [ %i.ce, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ], [ 2, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.21.1.a, i64 %.0111
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !336 ; 2 uses
  %.val33 = load i64, ptr %i.bx, align 8, !tbaa !292 ; 2 uses
  %.val34 = load ptr, ptr %i.m, align 8, !tbaa !312
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
  br label %.thread83

bb.u:                                             ; preds = %bb.n, %bb.m, %bb.j
  %.sroa.056.0.lcssa137 = phi ptr [ %.sroa.056.0.lcssa136144, %bb.n ], [ %.sroa.056.0.lcssa136144, %bb.m ], [ %.sroa.056.1, %bb.j ]
  %.sroa.21.0.lcssa134 = phi ptr [ %.sroa.21.0.lcssa131145, %bb.n ], [ %.sroa.21.0.lcssa131145, %bb.m ], [ %.sroa.21.1.a, %bb.j ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.21.0.lcssa134, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.u
  %.pre = ptrtoint ptr %.sroa.21.0.lcssa134 to i64
  br label %.thread

.thread:                                          ; preds = %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48", %..thread_crit_edge, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader", %bb.p
  %.sroa.056.0.lcssa138 = phi ptr [ %.sroa.056.0.lcssa137, %..thread_crit_edge ], [ %.sroa.056.1, %bb.p ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.056.1, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.sroa.21.0.lcssa133 = phi ptr [ %.sroa.21.0.lcssa134, %..thread_crit_edge ], [ %.sroa.21.1.a, %bb.p ], [ %.sroa.21.1.a, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %.sroa.21.1.a, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ba, %bb.p ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit.preheader" ], [ %i.ba, %"_ZZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanEENK3$_0clERKS5_S9_.exit48" ]
  %i.cg = ptrtoint ptr %.sroa.056.0.lcssa138 to i64
  %i.ch = sub i64 %i.cg, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.21.0.lcssa133, i64 noundef %i.ch) #32
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit: ; preds = %.thread, %bb.u, %bb.a
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.sroa.21.0100 = phi ptr [ %.sroa.21.0.lcssa132, %bb.k ], [ %.sroa.053.0103, %.loopexit ], [ %.sroa.053.0103, %.loopexit.split-lp ] ; 3 uses
  %.sroa.056.092 = phi ptr [ %.sroa.056.0.lcssa139, %bb.k ], [ %.sroa.15.0105, %.loopexit ], [ %.sroa.15.0105, %.loopexit.split-lp ]
  %.pn29.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.sroa.21.0100, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50, label %..thread83_crit_edge

..thread83_crit_edge:                             ; preds = %bb.v
  %.pre119 = ptrtoint ptr %.sroa.21.0100 to i64
  br label %.thread83

.thread83:                                        ; preds = %..thread83_crit_edge, %bb.s, %bb.t, %bb.q
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE:bb.a
  %.sroa.21.099 = phi ptr [ %.sroa.21.0100, %..thread83_crit_edge ], [ %.sroa.21.1.a, %bb.s ], [ %.sroa.21.1.a, %bb.t ], [ %.sroa.21.1.a, %bb.q ]
  %.sroa.056.094 = phi ptr [ %.sroa.056.092, %..thread83_crit_edge ], [ %.sroa.056.1, %bb.s ], [ %.sroa.056.1, %bb.t ], [ %.sroa.056.1, %bb.q ]
  %.pn29.pn86 = phi { ptr, i32 } [ %.pn29.pn, %..thread83_crit_edge ], [ %i.bz, %bb.s ], [ %i.cf, %bb.t ], [ %i.bp, %bb.q ]
  %i.ci = ptrtoint ptr %.sroa.056.094 to i64
  %i.cj = sub i64 %i.ci, %.pre-phi120
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.21.099, i64 noundef %i.cj) #32
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit50: ; preds = %bb.v, %.thread83
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !311  ; 2 uses
  %1 = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %2 = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %1, i1 %2, i1 false
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %i.o = icmp eq i64 %i.l, %4
  %.011 = select i1 %i.o, i32 2, i32 0
  %spec.select = select i1 %or.cond.not, i32 %.011, i32 1
  br label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit

_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit.fold.split: ; preds = %bb.a, %bb.a, %bb.a
  br label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit

_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit: ; preds = %bb.a, %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit.fold.split, %bb.d, %bb.c
  %.1 = phi i32 [ 2, %bb.a ], [ %i.j, %bb.c ], [ %spec.select, %bb.d ], [ 1, %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit.fold.split ]
  ret i32 %.1
}

end_hunk_13
