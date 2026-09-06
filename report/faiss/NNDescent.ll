Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss9nndescent5NhoodaSERKS1_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !50
  store i32 %i.r, ptr %i.o, align 4, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !50
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !50
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !55

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !37
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !38 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !37
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !50
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !50
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !55

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !50
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !50
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 12
  %i.n = icmp ugt i64 %2, 768614336404564650
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  %3 = icmp sgt i64 %i.f, 12
  br i1 %3, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %bb.e, !prof !55

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %i.p = icmp eq i64 %i.f, 12
  br i1 %i.p, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i ], [ 9, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.o, ptr noundef nonnull align 4 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #25
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !41
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp sgt i64 %i.f, 12
  br i1 %i.aa, label %bb.i, label %bb.j, !prof !55

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.f, 12
  br i1 %i.ab, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.c, i64 9, i1 false), !tbaa.struct !61
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.z, 12
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !55

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp eq i64 %i.z, 12
  br i1 %i.ad, label %bb.o, label %_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.c, i64 9, i1 false), !tbaa.struct !61
  br label %_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.ae = load ptr, ptr %1, align 8, !tbaa !40
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !56  ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !40
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 12
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !55

bb.p:                                             ; preds = %_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.af, ptr align 4 %i.ak, i64 %i.ao, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.q:                                             ; preds = %_ZSt4copyIPN5faiss9nndescent8NeighborES3_ET0_T_S5_S4_.exit
  %i.aq = icmp eq i64 %i.ao, 12
  br i1 %i.aq, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, ptr noundef nonnull align 4 dereferenceable(9) %i.ak, i64 9, i1 false), !tbaa.struct !61
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9nndescent5NhoodC2ERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.h, 12
  %i.i = icmp ugt i64 %2, 768614336404564650
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5faiss9nndescent8NeighborEE8allocateEmPKv.exit.i.i.i.i, !prof !54

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss9nndescent8NeighborEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss9nndescent8NeighborEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN5faiss9nndescent8NeighborEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 12
  br i1 %i.t, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 12
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.k, ptr noundef nonnull align 4 dereferenceable(9) %i.o, i64 9, i1 false), !tbaa.struct !61
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.v, ptr %i.l, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36
  store i32 %i.y, ptr %i.w, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i14, label %.noexc16, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !54

.noexc.i.i15:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc16 unwind label %bb.aa

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit
  %i.aj = phi ptr [ null, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !39
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 3 uses
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %.noexc16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.an, i64 %i.ar, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc16
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.an, align 4, !tbaa !50
  store i32 %i.au, ptr %i.aj, align 4, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %i.ar
  store ptr %i.av, ptr %i.ak, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i17, label %.noexc21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = icmp ugt i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %.noexc.i.i19, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i18, !prof !54

.noexc.i.i19:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc20 unwind label %bb.ab

.noexc20:                                         ; preds = %.noexc.i.i19
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.l
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #27
          to label %.noexc21 unwind label %bb.ab

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i18, %bb.k
  %i.bg = phi ptr [ null, %bb.k ], [ %i.bf, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i18 ] ; 6 uses
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !39
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 3 uses
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp sgt i64 %i.bo, 4
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !55

bb.m:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bg, ptr align 4 %i.bk, i64 %i.bo, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc21
  %i.bq = icmp eq i64 %i.bo, 4
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load i32, ptr %i.bk, align 4, !tbaa !50
  store i32 %i.br, ptr %i.bg, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bs = getelementptr inbounds i8, ptr %i.bg, i64 %i.bo
  store ptr %i.bs, ptr %i.bh, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !38 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i23 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i23, label %.noexc27, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp ugt i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %.noexc.i.i25, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24, !prof !54

.noexc.i.i25:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc26 unwind label %bb.ac

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24: ; preds = %bb.q
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #27
          to label %.noexc27 unwind label %bb.ac

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24, %bb.p
  %i.cd = phi ptr [ null, %bb.p ], [ %i.cc, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24 ] ; 6 uses
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !39
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !63
end_hunk_0
