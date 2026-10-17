Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/resource_cache?download=true
inline.NumInlined: 4642
inline.NumDeleted: 1659
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4entt9dense_mapIjSt10shared_ptrImESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEC2ERKSA_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !102
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !102
  br label %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.ak
  br i1 %i.bc, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17

.loopexit:                                        ; preds = %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc7 ], [ %i.bb, %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load float, ptr %i.be, align 8, !tbaa !127
  store float %i.bf, ptr %i.bd, align 8, !tbaa !127
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i6
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !106

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !176

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !101
  store i64 %i.r, ptr %i.o, align 8, !tbaa !101
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !71
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !176

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !101
  store i64 %i.z, ptr %i.i, align 8, !tbaa !101
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !176

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !70
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !100 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !70
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !100
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !101
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !101
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !176

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !101
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !101
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !128    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.j = load ptr, ptr %0, align 8, !tbaa !128    ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i, !prof !106

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 3 uses
  %2 = icmp eq ptr %i.c, %i.b
  br i1 %2, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i ] ; 5 uses
  %i.q = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !150
  store i64 %i.q, ptr %.08.i.i.i.i.i, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !179
  store i32 %i.t, ptr %i.r, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !75
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !102
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !102
  br label %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit.loopexit, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i
  %3 = phi ptr [ %.pre58, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130 ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.ai
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 8, !tbaa !112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !113
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !705
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !705
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.m, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i, !prof !106

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ba, %i.ai
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exit

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exitthread-pre-split, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit
  %i.bb = phi ptr [ %.pr, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exitthread-pre-split ], [ %3, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exit
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvT_S7_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !178
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.o:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bk, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp sgt i64 %i.g, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cu, %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ct, %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cs, %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 5 uses
  %i.bm = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !150
  store i64 %i.bm, ptr %.0811.i.i.i.i.i, align 8, !tbaa !150
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !179
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !179
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !132
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !132
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 4 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !102
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !116
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.cc = phi ptr [ %i.bw, %bb.q ], [ %i.bw, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cd, align 8, !tbaa !112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !113
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !706
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26, !inline_history !706
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.x ], [ %i.cq, %bb.y ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !106

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !116
  br label %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i

_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.cu = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cv = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !707

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %_ZN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEaSERKS4_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !129
  %.pre64 = ptrtoint ptr %i.ct to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.p
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cw = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.bi, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ct, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.p ]
  %i.cx = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.cy = sub i64 %.pre-phi65, %i.l
  %i.cz = getelementptr inbounds i8, ptr %i.j, i64 %i.cy
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33
  %.sroa.01.04.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33 ], [ %i.cz, %.lr.ph.i.i28.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !116 ; 8 uses
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dc, align 8, !tbaa !112
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !113
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #26, !inline_history !708
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #26, !inline_history !708
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33

bb.ac:                                            ; preds = %bb.aa
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i31

bb.ae:                                            ; preds = %bb.ac
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i31: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.df, %bb.ad ], [ %i.dp, %bb.ae ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i32, 1
  br i1 %i.dq, label %bb.af, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33, !prof !106

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #26
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrImEEEEvPT_.exit.i.i33: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i31, %bb.ab, %.lr.ph.i.i28
end_hunk_0
