Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_subdiv_mesh?download=true
inline.NumInlined: 3044
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE4sortEm:bb.a
  br i1 %.not.i.i5, label %_ZSt16__insertion_sortIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_.exit.i, label %bb.e, !llvm.loop !165

_ZSt16__insertion_sortIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i ], [ %i.t, %_ZSt16__insertion_sortIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_.exit.i ] ; 6 uses
  %.sroa.011.0.copyload = load i64, ptr %.08.i.i, align 8 ; 3 uses
  %.sroa.614.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.614.0.copyload = load ptr, ptr %.sroa.614.0..08.i.i.sroa_idx, align 8
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 2 uses
  %i.u = load i64, ptr %.010.i.i.i, align 8
  %i.v = icmp ult i64 %.sroa.011.0.copyload, %i.u
  br i1 %i.v, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.010.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i15.i, i64 16, i1 false)
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16 ; 2 uses
  %i.w = load i64, ptr %.0.i.i17.i, align 8
  %i.x = icmp ult i64 %.sroa.011.0.copyload, %i.w
  br i1 %i.x, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i, !llvm.loop !164

_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %.sroa.011.0.copyload, ptr %.09.lcssa.i.i12.i, align 8
  %.sroa.614.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store ptr %.sroa.614.0.copyload, ptr %.sroa.614.0..09.lcssa.i.i12.i.sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.y, %i.e
  br i1 %.not.i13.i, label %_ZSt4sortIPN6embree10SubdivMesh11KeyHalfEdgeEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i, !llvm.loop !166

bb.k:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i64 %i.b, 1
  br i1 %.not18.i.i, label %_ZSt4sortIPN6embree10SubdivMesh11KeyHalfEdgeEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.q
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.q ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.q ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 4 uses
  %i.z = load i64, ptr %.020.i20.i, align 8       ; 4 uses
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.020.i20.i, i64 16, i1 false)
  %i.ac = ptrtoint ptr %.020.i20.i to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %bb.n, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 32
  %i.ah = sub nsw i64 0, %i.ae
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ad, i1 false)
  br label %_ZSt13move_backwardIPN6embree10SubdivMesh11KeyHalfEdgeES3_ET0_T_S5_S4_.exit.i30.i

bb.n:                                             ; preds = %bb.l
  %i.aj = icmp eq i64 %i.ad, 16
  br i1 %i.aj, label %bb.o, label %_ZSt13move_backwardIPN6embree10SubdivMesh11KeyHalfEdgeES3_ET0_T_S5_S4_.exit.i30.i

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %_ZSt13move_backwardIPN6embree10SubdivMesh11KeyHalfEdgeES3_ET0_T_S5_S4_.exit.i30.i

_ZSt13move_backwardIPN6embree10SubdivMesh11KeyHalfEdgeES3_ET0_T_S5_S4_.exit.i30.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i19.i
  %.sroa.619.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.619.0.copyload = load ptr, ptr %.sroa.619.0..020.i20.i.sroa_idx, align 8
  %i.al = load i64, ptr %.pn19.i21.i, align 8
  %i.am = icmp ult i64 %i.z, %i.al
  br i1 %i.am, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.p, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.p ] ; 4 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i27.i, i64 16, i1 false)
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16 ; 2 uses
  %i.an = load i64, ptr %.0.i.i29.i, align 8
  %i.ao = icmp ult i64 %i.z, %i.an
  br i1 %i.ao, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i22.i, !llvm.loop !164

_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.p
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.p ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.z, ptr %.09.lcssa.i.i23.i, align 8
  %.sroa.619.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store ptr %.sroa.619.0.copyload, ptr %.sroa.619.0..09.lcssa.i.i23.i.sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN6embree10SubdivMesh11KeyHalfEdgeES3_ET0_T_S5_S4_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZSt4sortIPN6embree10SubdivMesh11KeyHalfEdgeEPFbRKS2_S5_EEvT_S8_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !165

bb.r:                                             ; preds = %bb.a
  %i.ap = add i64 %1, -1
  %i.aq = add i64 %i.ap, %i.b
  %i.ar = udiv i64 %i.aq, %1
  %i.as = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as)
  %i.au = tail call noundef i64 @llvm.umin.i64(i64 %i.at, i64 64)
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE12tbbRadixSortEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au)
  br label %_ZSt4sortIPN6embree10SubdivMesh11KeyHalfEdgeEPFbRKS2_S5_EEvT_S8_T0_.exit

_ZSt4sortIPN6embree10SubdivMesh11KeyHalfEdgeEPFbRKS2_S5_EEvT_S8_T0_.exit: ; preds = %bb.q, %_ZSt25__unguarded_linear_insertIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_.exit.i11.i, %bb.b, %bb.k, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE7compareIS2_EEbRKT_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp ult i64 %i.a, %i.b
  ret i1 %i.c
}

declare noundef i64 @_ZN6embree13TaskScheduler11threadCountEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE12tbbRadixSortEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 65536, i64 noundef 64)
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i1 noundef zeroext false, ptr noundef %i.c, ptr noundef %i.e, i64 noundef %1)
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 8, i1 noundef zeroext false, ptr noundef %i.f, ptr noundef %i.g, i64 noundef %1)
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 16, i1 noundef zeroext false, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %1)
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 24, i1 noundef zeroext false, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %1)
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 32, i1 noundef zeroext false, ptr noundef %i.l, ptr noundef %i.m, i64 noundef %1)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 40, i1 noundef zeroext false, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %1)
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 48, i1 noundef zeroext false, ptr noundef %i.p, ptr noundef %i.q, i64 noundef %1)
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_10SubdivMesh11KeyHalfEdgeEmE17tbbRadixIterationEmbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 56, i1 noundef zeroext true, ptr noundef %i.r, ptr noundef %i.s, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree10SubdivMesh11KeyHalfEdgeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 6 uses
  %5 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %6 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %7 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %8 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %9 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %10 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %11 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 4 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.am, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %3, ptr %12, align 8
  %i.h = lshr exact i64 %.lcssa30, 4              ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa30, 16
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.015.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ak, %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.015.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.s = icmp slt i64 %.015.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.032.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.015.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.032.i.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [16 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !168
  %i.z = or disjoint i64 %i.t, 1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.u ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.032.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !22

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.015.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.02.0.copyload.i.i, ptr %4, align 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.o, align 8
  %i.ae = icmp sgt i64 %.1.i.i.i, %.015.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.01316.i.i.i.i = phi i64 [ %.017.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i.i.i = sdiv i64 %.017.in.i.i.i.i, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i.i.i ; 2 uses
  %i.ag = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !169
  br i1 %i.ag, label %bb.f, label %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01316.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ai = icmp sgt i64 %.017.i.i.i.i, %.015.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !23

_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.017.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.015.i.i, 0
  %i.ak = add nsw i64 %.015.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit, label %bb.c, !llvm.loop !170

_ZSt13__heap_selectIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt13__adjust_heapIPN6embree10SubdivMesh11KeyHalfEdgeElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef nonnull %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %.0151933 = phi i64 [ %i.am, %bb.b ], [ %2, %.lr.ph ]
  %.02032 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.al = phi i64 [ %i.ba, %bb.b ], [ %i.c, %.lr.ph ]
  %i.am = add nsw i64 %.0151933, -1               ; 3 uses
  %i.an = lshr i64 %i.al, 5
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.an ; 7 uses
  %i.ap = getelementptr inbounds i8, ptr %.02032, i64 -16 ; 8 uses
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ao), !inline_history !171
  br i1 %i.aq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph34
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap), !inline_history !171
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ap), !inline_history !171
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph34
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ap), !inline_history !171
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.au = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap), !inline_history !171
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02032, %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.aw, %bb.q ] ; 9 uses
  %i.av = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !172
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  br i1 %i.av, label %bb.q, label %.preheader.i.i, !llvm.loop !173

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.q ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 6 uses
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.114.i.i), !inline_history !172
  br i1 %i.ax, label %.preheader.i.i, label %bb.r, !llvm.loop !174

bb.r:                                             ; preds = %.preheader.i.i
  %i.ay = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ay, label %bb.s, label %_ZSt27__unguarded_partition_pivotIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.114.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !175

_ZSt27__unguarded_partition_pivotIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIPN6embree10SubdivMesh11KeyHalfEdgeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02032, i64 noundef %i.am, ptr %3)
  %i.az = ptrtoint ptr %.1.i.i to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 256
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !167

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit, %bb.a, %_ZSt13__heap_selectIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.embree::SubdivMesh::KeyHalfEdge", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPN6embree10SubdivMesh11KeyHalfEdgeEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.07, i64 -8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.032.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.032.i.i, 1                     ; 3 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr [16 x i8], ptr %0, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.q), !inline_history !176
  %i.s = or disjoint i64 %i.m, 1
  %spec.select.i.i = select i1 %i.r, i64 %i.s, i64 %i.n ; 4 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.032.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.v = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !22

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPN6embree12parallel_mapIjfE8KeyValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %i.t), !inline_history !276
  %i.v = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.q ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  %i.y = load i64, ptr %i.w, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.aa = and i64 %i.k, 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nsw i64 %i.l, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ad
  br i1 %i.ae, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.e ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %5), !inline_history !277
  br i1 %i.al, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZSt10__pop_heapIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i

_ZSt10__pop_heapIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %.sroa.02.0.copyload.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !278

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0152030, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 8 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !279
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !279
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %0, align 4
  %i.az = load i64, ptr %i.au, align 4
  store i64 %i.az, ptr %0, align 4
  store i64 %i.ay, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !279
  %i.bb = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.av, align 4
  store i64 %i.bc, ptr %0, align 4
  store i64 %i.bb, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.e, align 4
  store i64 %i.bd, ptr %0, align 4
  store i64 %i.bb, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.be = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !279
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load <2 x i64>, ptr %0, align 4
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bg, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !279
  %i.bi = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.av, align 4
  store i64 %i.bj, ptr %0, align 4
  store i64 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.au, align 4
  store i64 %i.bk, ptr %0, align 4
  store i64 %i.bi, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.bm, %bb.p ] ; 9 uses
  %i.bl = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(8) %0), !inline_history !280
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !281

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %.114.i.i), !inline_history !280
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !282

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %.1.i.i, align 4
  %i.bq = load i64, ptr %.114.i.i, align 4
  store i64 %i.bq, ptr %.1.i.i, align 4
  store i64 %i.bp, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !283

_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN6embree12parallel_mapIjfE8KeyValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.as, ptr %3)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !275

_ZSt14__partial_sortIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree12parallel_mapIjfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.embree::parallel_map<unsigned int, float>::KeyValue", align 8 ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.o, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %i.u), !inline_history !284
  %i.w = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.v, i64 %i.w, i64 %i.r ; 6 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.z = load i64, ptr %i.x, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !27

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ab = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ad = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !285
  br i1 %i.ad, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.af = load i64, ptr %i.ac, align 4
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !28

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ah = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ah, ptr %i.ai, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.aj = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !286

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit
  %.015 = phi i64 [ %i.bh, %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.ak, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.al = icmp slt i64 %.015, %i.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.am = shl i64 %.031.i, 1                      ; 3 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(8) %i.aq), !inline_history !284
  %i.as = or disjoint i64 %i.am, 1
  %spec.select.i = select i1 %i.ar, i64 %i.as, i64 %i.an ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.av = load i64, ptr %i.at, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ax = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = load i64, ptr %i.m, align 4
  store i64 %i.ay, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %4, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.az = icmp sgt i64 %.1.i, %.015
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bb = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !285
  br i1 %i.bb, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.bd = load i64, ptr %i.ba, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.be, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !28

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bf = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bf, ptr %i.bg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bh = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !286

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN6embree12parallel_mapIjfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortINS_12parallel_mapIjfE8KeyValueEjE17tbbRadixIterationEjbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %7 = alloca %class.anon.185, align 8            ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %9 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %10 = alloca %class.anon.182, align 8           ; 5 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %12 = alloca %class.anon.180, align 8           ; 9 uses
  %13 = alloca %class.anon.181, align 8           ; 9 uses
  store i32 %1, ptr %i.a, align 4
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  store i64 %5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr %0, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.d, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_12parallel_mapIjfE8KeyValueEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE_EEvT_RKT0_.exit.thread, label %bb.b

_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_12parallel_mapIjfE8KeyValueEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE_EEvT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_12parallel_mapIjfE8KeyValueEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE0_EEvT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr null, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %12, ptr %10, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_17ParallelRadixSortINS_12parallel_mapIjfE8KeyValueEjE17tbbRadixIterationEjbPKS6_PS6_mEUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSC_SC_SC_SF_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.f

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.c
  %i.i = load ptr, ptr %9, align 8                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE4sortEm:bb.a
  br i1 %.not.i.i5, label %_ZSt16__insertion_sortIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_.exit.i, label %bb.e, !llvm.loop !330

_ZSt16__insertion_sortIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_.exit.i: ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i ], [ %i.u, %_ZSt16__insertion_sortIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_.exit.i ] ; 6 uses
  %.sroa.010.0.copyload = load i64, ptr %.08.i.i, align 8 ; 3 uses
  %.sroa.613.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.v = load i64, ptr %.sroa.613.0..08.i.i.sroa_idx, align 8
  %.sroa.613.sroa.0.0.extract.trunc = trunc i64 %i.v to i32
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 2 uses
  %i.w = load i64, ptr %.010.i.i.i, align 8
  %i.x = icmp ult i64 %.sroa.010.0.copyload, %i.w
  br i1 %i.x, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.010.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(12) %.012.i.i15.i, i64 12, i1 false)
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16 ; 2 uses
  %i.y = load i64, ptr %.0.i.i17.i, align 8
  %i.z = icmp ult i64 %.sroa.010.0.copyload, %i.y
  br i1 %i.z, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i, !llvm.loop !329

_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %.sroa.010.0.copyload, ptr %.09.lcssa.i.i12.i, align 8
  %.sroa.613.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store i32 %.sroa.613.sroa.0.0.extract.trunc, ptr %.sroa.613.0..09.lcssa.i.i12.i.sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.aa, %i.e
  br i1 %.not.i13.i, label %_ZSt4sortIPN6embree12parallel_mapImfE8KeyValueEPFbRKS3_S6_EEvT_S9_T0_.exit, label %.lr.ph.i.i, !llvm.loop !331

bb.k:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i64 %i.b, 1
  br i1 %.not18.i.i, label %_ZSt4sortIPN6embree12parallel_mapImfE8KeyValueEPFbRKS3_S6_EEvT_S9_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.q
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.q ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.q ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 4 uses
  %i.ab = load i64, ptr %.020.i20.i, align 8      ; 4 uses
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.020.i20.i, i64 16, i1 false)
  %i.ae = ptrtoint ptr %.020.i20.i to i64
  %i.af = sub i64 %i.ae, %i.f                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 32
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIPN6embree12parallel_mapImfE8KeyValueES4_ET0_T_S6_S5_.exit.i30.i

bb.n:                                             ; preds = %bb.l
  %i.al = icmp eq i64 %i.af, 16
  br i1 %i.al, label %bb.o, label %_ZSt13move_backwardIPN6embree12parallel_mapImfE8KeyValueES4_ET0_T_S6_S5_.exit.i30.i

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %_ZSt13move_backwardIPN6embree12parallel_mapImfE8KeyValueES4_ET0_T_S6_S5_.exit.i30.i

_ZSt13move_backwardIPN6embree12parallel_mapImfE8KeyValueES4_ET0_T_S6_S5_.exit.i30.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i19.i
  %.sroa.617.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %i.an = load i64, ptr %.sroa.617.0..020.i20.i.sroa_idx, align 8
  %.sroa.617.sroa.0.0.extract.trunc = trunc i64 %i.an to i32
  %i.ao = load i64, ptr %.pn19.i21.i, align 8
  %i.ap = icmp ult i64 %i.ab, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.p, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.p ] ; 4 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(12) %.012.i.i27.i, i64 12, i1 false)
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16 ; 2 uses
  %i.aq = load i64, ptr %.0.i.i29.i, align 8
  %i.ar = icmp ult i64 %i.ab, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i, !llvm.loop !329

_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.p
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.p ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.ab, ptr %.09.lcssa.i.i23.i, align 8
  %.sroa.617.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i32 %.sroa.617.sroa.0.0.extract.trunc, ptr %.sroa.617.0..09.lcssa.i.i23.i.sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN6embree12parallel_mapImfE8KeyValueES4_ET0_T_S6_S5_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZSt4sortIPN6embree12parallel_mapImfE8KeyValueEPFbRKS3_S6_EEvT_S9_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !330

bb.r:                                             ; preds = %bb.a
  %i.as = add i64 %1, -1
  %i.at = add i64 %i.as, %i.b
  %i.au = udiv i64 %i.at, %1
  %i.av = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.aw = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.av)
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 64)
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE12tbbRadixSortEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ax)
  br label %_ZSt4sortIPN6embree12parallel_mapImfE8KeyValueEPFbRKS3_S6_EEvT_S9_T0_.exit

_ZSt4sortIPN6embree12parallel_mapImfE8KeyValueEPFbRKS3_S6_EEvT_S9_T0_.exit: ; preds = %bb.q, %_ZSt25__unguarded_linear_insertIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i11.i, %bb.b, %bb.k, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE7compareIS3_EEbRKT_S8_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp ult i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE12tbbRadixSortEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 65536, i64 noundef 64)
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i1 noundef zeroext false, ptr noundef %i.c, ptr noundef %i.e, i64 noundef %1)
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 8, i1 noundef zeroext false, ptr noundef %i.f, ptr noundef %i.g, i64 noundef %1)
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 16, i1 noundef zeroext false, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %1)
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 24, i1 noundef zeroext false, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %1)
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 32, i1 noundef zeroext false, ptr noundef %i.l, ptr noundef %i.m, i64 noundef %1)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 40, i1 noundef zeroext false, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %1)
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.d, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 48, i1 noundef zeroext false, ptr noundef %i.p, ptr noundef %i.q, i64 noundef %1)
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.b, align 8
  tail call void @_ZN6embree17ParallelRadixSortINS_12parallel_mapImfE8KeyValueEmE17tbbRadixIterationEmbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 56, i1 noundef zeroext true, ptr noundef %i.r, ptr noundef %i.s, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree12parallel_mapImfE8KeyValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 6 uses
  %5 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %6 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %7 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %8 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %9 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %10 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %11 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 4 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.192", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit
  %i.g = icmp eq i64 %i.am, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %3, ptr %12, align 8
  %i.h = lshr exact i64 %.lcssa30, 4              ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa30, 16
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.015.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ak, %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.015.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.s = icmp slt i64 %.015.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.032.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.015.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.032.i.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [16 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.x), !inline_history !333
  %i.z = or disjoint i64 %i.t, 1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.u ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.032.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !29

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.015.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.02.0.copyload.i.i, ptr %4, align 8
  store float %.sroa.4.0.copyload.i.i, ptr %i.o, align 8
  %i.ae = icmp sgt i64 %.1.i.i.i, %.015.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.01316.i.i.i.i = phi i64 [ %.017.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i.i.i = sdiv i64 %.017.in.i.i.i.i, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i.i.i ; 2 uses
  %i.ag = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %4), !inline_history !334
  br i1 %i.ag, label %bb.f, label %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01316.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false)
  %i.ai = icmp sgt i64 %.017.i.i.i.i, %.015.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !30

_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.017.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.015.i.i, 0
  %i.ak = add nsw i64 %.015.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, label %bb.c, !llvm.loop !335

_ZSt13__heap_selectIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt13__adjust_heapIPN6embree12parallel_mapImfE8KeyValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef nonnull %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %.0151933 = phi i64 [ %i.am, %bb.b ], [ %2, %.lr.ph ]
  %.02032 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.al = phi i64 [ %i.ba, %bb.b ], [ %i.c, %.lr.ph ]
  %i.am = add nsw i64 %.0151933, -1               ; 3 uses
  %i.an = lshr i64 %i.al, 5
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.an ; 7 uses
  %i.ap = getelementptr inbounds i8, ptr %.02032, i64 -16 ; 8 uses
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.ao), !inline_history !336
  br i1 %i.aq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph34
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.ap), !inline_history !336
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ao, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.ap), !inline_history !336
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph34
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.ap), !inline_history !336
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.au = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.ap), !inline_history !336
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ao, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02032, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.aw, %bb.q ] ; 9 uses
  %i.av = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %0), !inline_history !337
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  br i1 %i.av, label %bb.q, label %.preheader.i.i, !llvm.loop !338

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.q ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 6 uses
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %.114.i.i), !inline_history !337
  br i1 %i.ax, label %.preheader.i.i, label %bb.r, !llvm.loop !339

bb.r:                                             ; preds = %.preheader.i.i
  %i.ay = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ay, label %bb.s, label %_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.114.i.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !340

_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIPN6embree12parallel_mapImfE8KeyValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02032, i64 noundef %i.am, ptr %3)
  %i.az = ptrtoint ptr %.1.i.i to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 256
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit, %bb.a, %_ZSt13__heap_selectIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.embree::parallel_map<unsigned long, float>::KeyValue", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPN6embree12parallel_mapImfE8KeyValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.07, i64 -8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.032.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.032.i.i, 1                     ; 3 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr [16 x i8], ptr %0, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.q), !inline_history !341
  %i.s = or disjoint i64 %i.m, 1
  %spec.select.i.i = select i1 %i.r, i64 %i.s, i64 %i.n ; 4 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.032.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false)
  %i.v = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_T0_T1_:bb.a
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.v), !inline_history !385
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.s ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !31

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.j, ptr %i.a, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.j, ptr %i.a, align 4
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i78.i.i.i, %bb.e ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i78.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.i.i ; 2 uses
  %i.an = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !386
  br i1 %i.an, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.i.i
  store i32 %i.ao, ptr %i.ap, align 4
  %.not9.i.i.i = icmp eq i64 %.017.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !32

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i32, ptr %i.a, align 4
  br label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_RT0_.exit.i.i

_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.aq = phi i32 [ %i.j, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.aq, ptr %i.ar, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_T0_.exit, !llvm.loop !387

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.0152030, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %.02129, i64 -4 ; 8 uses
  %i.ay = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.aw), !inline_history !388
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.az = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax), !inline_history !388
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %0, align 4
  %i.bb = load i32, ptr %i.aw, align 4
  store i32 %i.bb, ptr %0, align 4
  store i32 %i.ba, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.ax), !inline_history !388
  %i.bd = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.ax, align 4
  store i32 %i.be, ptr %0, align 4
  store i32 %i.bd, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.f, align 4
  store i32 %i.bf, ptr %0, align 4
  store i32 %i.bd, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bg = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.ax), !inline_history !388
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load <2 x i32>, ptr %0, align 4
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bi, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bj = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax), !inline_history !388
  %i.bk = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %i.ax, align 4
  store i32 %i.bl, ptr %0, align 4
  store i32 %i.bk, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.aw, align 4
  store i32 %i.bm, ptr %0, align 4
  store i32 %i.bk, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bo, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bo, %bb.p ] ; 9 uses
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(4) %0), !inline_history !389
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bn, label %bb.p, label %.preheader.i.i, !llvm.loop !390

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 6 uses
  %i.bp = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %.114.i.i), !inline_history !389
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !391

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %.1.i.i, align 4
  %i.bs = load i32, ptr %.114.i.i, align 4
  store i32 %i.bs, ptr %.1.i.i, align 4
  store i32 %i.br, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !392

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.au, ptr %3)
  %i.bt = ptrtoint ptr %.1.i.i to i64
  %i.bu = sub i64 %i.bt, %i.b                     ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 64
  br i1 %i.bv, label %bb.b, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_T0_.exit, !llvm.loop !384

_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 4 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2                     ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %i.i = add nsw i64 %i.e, -1
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = and i64 %i.d, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.g, 1                   ; 2 uses
  br i1 %i.l, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us ], [ %i.h, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.j
  br i1 %i.r, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.w), !inline_history !393
  %i.y = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.x, i64 %i.y, i64 %i.t ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i.us
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = icmp slt i64 %spec.select.i.us, %i.j
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !31

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.q, ptr %i.a, align 4
  %i.ad = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.af = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !394
  br i1 %i.af, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01316.i.i.us
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = icmp sgt i64 %.017.i.i.us, %.014.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !32

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i32, ptr %i.a, align 4
  br label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.aj = phi i32 [ %i.q, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %i.q, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.014.us, %._crit_edge.i.us.thread ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.aj, ptr %i.ak, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us = icmp eq i64 %.014.us, 0
  %i.al = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !395

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit
  %.014 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit ], [ %i.h, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.ao = icmp slt i64 %.014, %i.j
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ap = shl i64 %.031.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.at), !inline_history !393
  %i.av = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.au, i64 %i.av, i64 %i.aq ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = icmp slt i64 %spec.select.i, %i.j
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.m
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i32, ptr %i.n, align 4
  store i32 %i.bb, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.an, ptr %i.a, align 4
  %i.bc = icmp sgt i64 %.128.i, %.014
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.be = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !394
  br i1 %i.be, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = load i32, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01316.i.i
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.bh, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !32

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i32, ptr %i.a, align 4
  br label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bi = phi i32 [ %i.an, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.bi, ptr %i.bj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.014, 0
  %i.bk = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !395

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKjS5_EEEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortIjjE17tbbRadixIterationEjbPKjPjm(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %7 = alloca %class.anon.215, align 8            ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %9 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %10 = alloca %class.anon.212, align 8           ; 5 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %12 = alloca %class.anon.210, align 8           ; 9 uses
  %13 = alloca %class.anon.211, align 8           ; 9 uses
  store i32 %1, ptr %i.a, align 4
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  store i64 %5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr %0, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.d, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortIjjE17tbbRadixIterationEjbPKjPjmEUlmE_EEvT_RKT0_.exit.thread, label %bb.b

_ZN6embree12parallel_forImZNS_17ParallelRadixSortIjjE17tbbRadixIterationEjbPKjPjmEUlmE_EEvT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortIjjE17tbbRadixIterationEjbPKjPjmEUlmE0_EEvT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr null, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %12, ptr %10, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_17ParallelRadixSortIjjE17tbbRadixIterationEjbPKjPjmEUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvS9_S9_S9_SC_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.f

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.c
  %i.i = load ptr, ptr %9, align 8                ; 2 uses
end_hunk_3
