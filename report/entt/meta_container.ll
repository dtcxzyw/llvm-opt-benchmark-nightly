Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEPKvNS_8internal11any_requestERKS1_SE_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 56) #30, !inline_history !2267
  resume { ptr, i32 } %i.au

_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEJRKSC_EEEvDpOT0_.exit: ; preds = %bb.j
  store ptr %i.at, ptr %2, align 8, !tbaa !98
  br label %_ZN4entt7type_idINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.i, %bb.h, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEaSEOS9_.exit, %_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEJRKSC_EEEvDpOT0_.exit, %bb.a
  %i.av = phi ptr [ null, %_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEJRKSC_EEEvDpOT0_.exit ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.ao, %bb.i ], [ %2, %bb.h ], [ %2, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEaSEOS9_.exit ]
  ret ptr %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value, align 4, !tbaa !134
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value) #27
  br label %_ZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEv.exit

_ZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5valueEvE5value, align 4, !tbaa !134
  store i32 %i.g, ptr %0, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1085937555, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.252, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.c = load ptr, ptr %1, align 8, !tbaa !271    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272
  %i.i = load ptr, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !228

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !341

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !162
  store i64 %i.r, ptr %i.o, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !272
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !306  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !341

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !162
  store i64 %i.z, ptr %i.i, align 8, !tbaa !162
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !341

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !271
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !306 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !271
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !306
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !162
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !162
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
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !341

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !162
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !162
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !271
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !306
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !372  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !269    ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270
  %i.j = load ptr, ptr %0, align 8, !tbaa !269    ; 17 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !228

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #30
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !269
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !270
  br label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.z = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !375
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !375
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !377
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !377
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !378
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !378
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aj = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp eq i64 %i.f, 16
  br i1 %i.ak, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.al = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !375
  store i64 %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !375
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !377
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !377
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !378
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !378
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.au = load i64, ptr %i.as, align 8, !tbaa !375
  store i64 %i.au, ptr %i.at, align 8, !tbaa !375
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !377
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !377
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 28
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !378
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 28
  store i8 %i.az, ptr %i.ba, align 4, !tbaa !378
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -2
  %i.be = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !2268

bb.h:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.bg = ashr exact i64 %i.x, 4                  ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %i.bi = and i64 %i.x, 16
  %lcmp.mod46.not = icmp eq i64 %i.bi, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !375
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !375
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !377
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !377
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !378
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !378
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bs = add nsw i64 %i.bg, -1
  br label %.lr.ph.i.i.i.i.i26.prol.loopexit

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bt = icmp eq i64 %i.x, 16
  br i1 %i.bt, label %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 7 uses
  %i.bu = load i64, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !375
  store i64 %i.bu, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !375
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !377
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !377
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 12
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !378
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 12
  store i8 %i.bz, ptr %i.ca, align 4, !tbaa !378
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !375
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !375
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !377
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !377
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 28
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !378
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 28
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !378
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.cm = add nsw i64 %.012.i.i.i.i.i27, -2
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i27, 2
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit, !llvm.loop !2269

_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2270

_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !269
  br label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.cq = phi ptr [ %2, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPN4entt8internal14dense_map_nodeIicEES4_ET0_T_S6_S5_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.f
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !372
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeIicEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8
  %i.e = select i1 %i.c, ptr %0, ptr %i.d         ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIicEESaIS4_EELm0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIicEESaIS4_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIicEESaIS4_EELm0EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !271  ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvNS_8internal11meta_traitsERKS0_Pv:bb.a
  %.sroa.5.0 = select i1 %.not, ptr %1, ptr %i.h
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !tbaa !114
  store ptr %.sroa.0.0, ptr %2, align 8, !tbaa !140
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !136
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !136
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4sizeEPKv, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !136
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5clearEPv, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !136
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE7reserveEPvm, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !136
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4iterERKNS_8meta_ctxEPvPKvb, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !136
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE6insertEPvPKvSB_, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !136
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5eraseEPvPKv, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !136
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4findERKNS_8meta_ctxEPvPKvSE_, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !136
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i8 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEPKvNS_8internal11any_requestERKS1_SB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 11 uses
  switch i8 %0, label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit, !prof !295

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance) #27
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !271  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !179
  store <2 x ptr> %i.m, ptr %i.e, align 8, !tbaa !179
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !272
  store ptr %i.o, ptr %i.k, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt4hashIiEEaSEOS6_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #30
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt4hashIiEEaSEOS6_.exit.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt4hashIiEEaSEOS6_.exit.i: ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !282  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !283
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !386
  store <2 x ptr> %i.x, ptr %i.s, align 8, !tbaa !386
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !283
  store ptr %i.z, ptr %i.v, align 8, !tbaa !283
  %.not.i.i.i.i.i.i.i4.i = icmp eq ptr %i.u, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i4.i, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEaSEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt4hashIiEEaSEOS6_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #30
  br label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEaSEOS6_.exit

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEaSEOS6_.exit: ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt4hashIiEEaSEOS6_.exit.i, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !281
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store float %i.ae, ptr %i.af, align 8, !tbaa !281
  br label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(52) %i.e, ptr noundef nonnull align 8 dereferenceable(52) %2) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImiESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = load float, ptr %i.ak, align 8, !tbaa !281
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store float %i.al, ptr %i.am, align 8, !tbaa !281
  br label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit

bb.i:                                             ; preds = %bb.a
  %i.an = icmp eq ptr %i.e, %2
  %i.ao = select i1 %i.an, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit

bb.j:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.ap, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 845418859, ptr %i.aq, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvRKS1_, ptr %i.ar, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 1, ptr %i.as, align 4, !tbaa !111
  %i.at = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !inline_history !2307 ; 3 uses
  invoke void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.at, ptr noundef nonnull align 8 dereferenceable(52) %i.e)
          to label %_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEJRKS9_EEEvDpOT0_.exit unwind label %bb.k, !inline_history !2307

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 56) #30, !inline_history !2307
  resume { ptr, i32 } %i.au

_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEJRKS9_EEEvDpOT0_.exit: ; preds = %bb.j
  store ptr %i.at, ptr %2, align 8, !tbaa !98
  br label %_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.i, %bb.h, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEaSEOS6_.exit, %_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEJRKS9_EEEvDpOT0_.exit, %bb.a
  %i.av = phi ptr [ null, %_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEJRKS9_EEEvDpOT0_.exit ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.ao, %bb.i ], [ %2, %bb.h ], [ %2, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEaSEOS6_.exit ]
  ret ptr %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value, align 4, !tbaa !134
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value) #27
  br label %_ZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEv.exit

_ZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5valueEvE5value, align 4, !tbaa !134
  store i32 %i.g, ptr %0, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 845418859, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 20, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.255, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImiESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !282    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.j = load ptr, ptr %0, align 8, !tbaa !282    ; 11 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !228

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #30
  br label %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !283
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !383  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.z = load i64, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !385
  store i64 %i.z, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !385
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !387
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !387
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2308

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.g, 4
  br i1 %i.ag, label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !385
  store i64 %i.ah, ptr %.0811.i.i.i.i.i, align 8, !tbaa !385
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !387
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !387
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.an = load i64, ptr %i.al, align 8, !tbaa !385
  store i64 %i.an, ptr %i.am, align 8, !tbaa !385
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !387
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !387
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !385
  store i64 %i.at, ptr %i.as, align 8, !tbaa !385
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.av = load i32, ptr %i.au, align 8, !tbaa !387
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !387
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !385
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !385
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !387
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bf = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bg = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !2309

bb.h:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.bi = ashr exact i64 %i.x, 4                  ; 5 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter45 = and i64 %i.bi, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bk = load i64, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !385
  store i64 %i.bk, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !385
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !387
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !387
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bq = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !2310

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ]
  %i.br = icmp ult i64 %i.bi, 4
  br i1 %i.br, label %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bs = load i64, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !385
  store i64 %i.bs, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !385
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !387
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !387
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !385
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !385
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !387
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !387
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !385
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !385
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !387
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 40
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !387
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !385
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !385
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !387
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 56
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !387
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cq = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit, !llvm.loop !2311

_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bh, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2312

_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !282
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cu = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairImiES2_ET0_T_S4_S3_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !383
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairImiES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8
  %i.e = select i1 %i.c, ptr %0, ptr %i.d         ; 6 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_1
