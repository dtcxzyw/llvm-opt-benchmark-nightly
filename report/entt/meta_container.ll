Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE5clearEPv:bb.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !103
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.d = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %1, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.o, ptr %0, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %1
  store ptr %i.r, ptr %i.b, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE6resizeEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !103
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 4 uses
  %.sroa.01.0.in.idx = select i1 %4, i64 8, i64 0
  %. = select i1 %i.a, ptr %3, ptr %2
  %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE = select i1 %i.a, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_ = select i1 %i.a, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_
  %.11 = select i1 %i.a, i32 -1499114772, i32 -89194371
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %., i64 %.sroa.01.0.in.idx
  %.sink.in = load ptr, ptr %.sroa.0.0.in, align 8, !tbaa !104
  %.sink = ptrtoint ptr %.sink.in to i64
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.b, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.11, ptr %i.d, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 2, ptr %i.f, align 4, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE6insertERKNS_8meta_ctxEPvPKvSA_RKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = icmp ne i32 %i.c, -89194371
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = select i1 %i.g, ptr %i.a, ptr %i.h       ; 3 uses
  %.not10 = icmp eq ptr %i.i, null
  %.not = select i1 %i.d, i1 true, i1 %.not10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !104
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.not9 = icmp eq ptr %3, null
  %i.m = select i1 %.not9, ptr %4, ptr %3
  %i.n = tail call ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.o, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.q, align 8, !tbaa !108
  store i32 -89194371, ptr %i.s, align 8, !tbaa !109
  store ptr null, ptr %i.r, align 8, !tbaa !110
  store i8 2, ptr %i.t, align 4, !tbaa !111
  %i.u = ptrtoint ptr %i.n to i64
  store i64 %i.u, ptr %i.p, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE5eraseERKNS_8meta_ctxEPvRKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = icmp ne i32 %i.c, -89194371
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = select i1 %i.g, ptr %i.a, ptr %i.h       ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  %.not = select i1 %i.d, i1 true, i1 %.not6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %.sroa.0.0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 5 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 4
  br i1 %i.x, label %bb.f, label %bb.g, !prof !341

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.p, ptr nonnull align 4 %i.q, i64 %i.w, i1 false)
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !103
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.h, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.q, align 4, !tbaa !134
  store i32 %i.z, ptr %i.p, align 4, !tbaa !134
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %.pre.i.i, %bb.f ], [ %i.s, %bb.d ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !103
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.ac, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.ae, align 8, !tbaa !108
  store i32 -89194371, ptr %i.ag, align 8, !tbaa !109
  store ptr null, ptr %i.af, align 8, !tbaa !110
  store i8 2, ptr %i.ah, align 4, !tbaa !111
  %4 = ptrtoint ptr %i.p to i64
  store i64 %4, ptr %i.ad, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !134
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !103
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #31
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !134
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !134
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !103
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE(ptr noundef %0, i64 noundef %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !1629   ; 2 uses
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.e, align 8, !tbaa !109
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.f, align 4, !tbaa !111
  store ptr %i.a, ptr %2, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !136
  %i.i = icmp eq ptr %i.h, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.i, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !115
  br label %bb.e

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds [4 x i8], ptr %i.a, i64 %1
  store ptr %i.n, ptr %0, align 8, !tbaa !1629
  br label %bb.e

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit, !prof !295

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #27
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !104
  store i64 %i.j, ptr %i.e, align 8, !tbaa !104
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !104
  store i64 %i.k, ptr %i.e, align 8, !tbaa !104
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !104
end_hunk_0
begin_hunk_1_@_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEJEEEvDpOT0_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !272
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #30
  br label %.body

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEC2Ev.exit: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !98
  ret void

.body:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIicEESaIS4_EELm0EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 56) #30
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeESE_SF_SH_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2INS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2INS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEPKvNS_8internal11any_requestERKS1_SE_, ptr %i.f, align 8, !tbaa !108, !alias.scope !2278
  store i32 -1085937555, ptr %i.d, align 8, !tbaa !109, !alias.scope !2278
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEvRKS1_, ptr %i.e, align 8, !tbaa !110, !alias.scope !2278
  store i8 1, ptr %i.c, align 4, !tbaa !111, !alias.scope !2278
  store ptr %2, ptr %0, align 8, !tbaa !98, !alias.scope !2278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !114, !alias.scope !2278
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !115, !alias.scope !2278
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !116, !alias.scope !2278
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESE_SF_SH_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEPKvNS_8internal11any_requestERKS1_SE_, ptr %i.j, align 8, !tbaa !108, !alias.scope !2278
  store i32 -1085937555, ptr %i.l, align 8, !tbaa !109, !alias.scope !2278
  store ptr null, ptr %i.k, align 8, !tbaa !110, !alias.scope !2278
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !111, !alias.scope !2278
  store ptr %2, ptr %0, align 8, !tbaa !98, !alias.scope !2278
  store ptr %1, ptr %i.n, align 8, !tbaa !114, !alias.scope !2278
  store ptr null, ptr %i.o, align 8, !tbaa !115, !alias.scope !2278
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !116, !alias.scope !2278
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESE_SF_SH_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !111, !alias.scope !2278
  store ptr %3, ptr %0, align 8, !tbaa !98, !alias.scope !2278
  store ptr %1, ptr %i.n, align 8, !tbaa !114, !alias.scope !2278
  store ptr null, ptr %i.o, align 8, !tbaa !115, !alias.scope !2278
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !116, !alias.scope !2278
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESE_SF_SH_.exit

_ZZN4entt8internal14setup_node_forINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESE_SF_SH_.exit: ; preds = %_ZN4entt8meta_anyC2INS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE4sizeEPKv(ptr noundef %0) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !372
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5clearEPv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !306
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !269  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !372
  %.not.i.i1.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIicEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIicEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !372
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIicEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef 0)
          to label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE5clearEv.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE5clearEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE5clearEv.exit.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !269  ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE7reserveEm.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !372  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !2282
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !51

_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #30
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIicEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !269
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.s, ptr %i.k, align 8, !tbaa !372
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %1
  store ptr %i.t, ptr %i.c, align 8, !tbaa !270
  br label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE7reserveEm.exit

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIicEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i
  %i.u = uitofp nneg i64 %1 to float
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load float, ptr %i.v, align 8, !tbaa !268
  %i.x = fdiv float %i.u, %i.w
  %i.y = tail call noundef float @llvm.ceil.f32(float %i.x)
  %i.z = fptoui float %i.y to i64
  tail call void @_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.z)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_associative_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !269      ; 2 uses
  br i1 %4, label %.sink.split, label %bb.a

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !269    ; 2 uses
  br i1 %4, label %.sink.split, label %bb.a

.sink.split:                                      ; preds = %10, %7
  %.sink20 = phi ptr [ %3, %7 ], [ %2, %10 ]
  %.sink17 = phi ptr [ %9, %7 ], [ %12, %10 ]     ; 2 uses
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E.sink.ph = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E, %7 ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E, %10 ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_.sink.ph = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_, %7 ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_, %10 ]
  %.sink11.ph = phi i32 [ 1133277029, %7 ], [ -1214504068, %10 ]
  %13 = getelementptr inbounds nuw i8, ptr %.sink20, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %.sink17 to i64
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds nuw i8, ptr %.sink17, i64 %17
  br label %bb.a

bb.a:                                             ; preds = %.sink.split, %10, %7
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E.sink = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E, %10 ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E, %7 ], [ %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E.sink.ph, %.sink.split ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_.sink = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_, %10 ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_, %7 ], [ %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_.sink.ph, %.sink.split ]
  %.sink11 = phi i32 [ -1214504068, %10 ], [ 1133277029, %7 ], [ %.sink11.ph, %.sink.split ]
  %.sroa.0.0.sink = phi ptr [ %12, %10 ], [ %9, %7 ], [ %18, %.sink.split ]
  store ptr %1, ptr %0, align 8, !tbaa !232
  %.sroa.0.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E.sink, ptr %.sroa.0.0.in.in, align 8, !tbaa !233
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_.sink, ptr %i.b, align 8, !tbaa !108
  store i32 %.sink11, ptr %i.c, align 8, !tbaa !109
  store ptr null, ptr %19, align 8, !tbaa !110
  store i8 2, ptr %20, align 4, !tbaa !111
  %21 = ptrtoint ptr %.sroa.0.0.sink to i64
  store i64 %21, ptr %i.a, align 8, !tbaa !376
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE6insertEPvPKvSE_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE20insert_or_do_nothingIRS6_JRKcEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.a, 1
  %i.b = trunc i8 %.fca.1.extract to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE5eraseEPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !134    ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = and i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.012.i = phi ptr [ %i.l, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = load i64, ptr %.012.i, align 8, !tbaa !162 ; 4 uses
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE5eraseERS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %i.a
  br i1 %i.s, label %bb.d, label %bb.b, !llvm.loop !2283

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.p, align 8, !tbaa !375
  store i64 %i.t, ptr %.012.i, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 5 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = add nsw i64 %i.z, -1                    ; 3 uses
  %.not.i.i = icmp eq i64 %i.o, %i.aa
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = and i64 %i.j, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !375
  store i64 %i.ai, ptr %i.p, align 8, !tbaa !375
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !377
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.ak, ptr %i.al, align 4, !tbaa !378
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !162 ; 2 uses
  %.not1011.i.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not1011.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.an = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %i.am, %bb.e ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !162 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.ap, %i.aa
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2284

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ao, %.lr.ph.i.i ]
  store i64 %i.o, ptr %.0.lcssa.i.i, align 8, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.v, i64 -16
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !372
  br label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE5eraseERS6_.exit

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE5eraseERS6_.exit: ; preds = %bb.b, %bb.f
  %i.ar = phi i64 [ 1, %bb.f ], [ 0, %bb.b ]
  ret i64 %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEEEE4findERKNS_8meta_ctxEPvPKvSH_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_associative_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load i32, ptr %4, align 4, !tbaa !134    ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = load ptr, ptr %2, align 8, !tbaa !271    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.07.in.i.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.d ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.07.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !134
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit, label %bb.c, !llvm.loop !52

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306
  %i.u = load ptr, ptr %3, align 8, !tbaa !271    ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %i.z, %i.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.07.in.i.i8 = phi ptr [ %i.ab, %bb.e ], [ %i.ae, %bb.g ]
  %.07.i.i9 = load i64, ptr %.07.in.i.i8, align 8, !tbaa !162 ; 2 uses
  %.not.i.i10 = icmp eq i64 %.07.i.i9, -1
  br i1 %.not.i.i10, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.07.i.i9 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !134
  %i.ah = icmp eq i32 %i.ag, %i.a
  br i1 %i.ah, label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit, label %bb.f, !llvm.loop !2285

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split: ; preds = %bb.c, %bb.f
  %.sink20 = phi ptr [ %3, %bb.f ], [ %2, %bb.c ]
  %.sink23 = phi ptr [ %i.ad, %bb.f ], [ %i.n, %bb.c ] ; 2 uses
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E.sink.ph = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E, %bb.f ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E, %bb.c ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_.sink.ph = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_, %bb.f ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_, %bb.c ]
  %.sink17.ph = phi i32 [ 1133277029, %bb.f ], [ -1214504068, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink20, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !372
  %5 = ptrtoint ptr %i.aj to i64
  %6 = ptrtoint ptr %.sink23 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %.sink23, i64 %7
  br label %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit

_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit: ; preds = %bb.d, %bb.g, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E.sink = phi ptr [ %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E.sink.ph, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E, %bb.g ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESC_E, %bb.d ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_.sink = phi ptr [ %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_.sink.ph, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_, %bb.g ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SA_, %bb.d ]
  %.sink17 = phi i32 [ %.sink17.ph, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split ], [ 1133277029, %bb.g ], [ -1214504068, %bb.d ]
  %.sroa.0.1.i.i11.sink = phi ptr [ %8, %_ZN4entt9dense_mapIicSt4hashIiESt8equal_toIvESaISt4pairIKicEEE4findERS6_.exit.sink.split ], [ %i.ae, %bb.g ], [ %i.o, %bb.d ]
  store ptr %1, ptr %0, align 8, !tbaa !232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E.sink, ptr %i.ak, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_.sink, ptr %i.am, align 8, !tbaa !108
  store i32 %.sink17, ptr %i.ao, align 8, !tbaa !109
  store ptr null, ptr %i.an, align 8, !tbaa !110
  store i8 2, ptr %i.ap, align 4, !tbaa !111
  %9 = ptrtoint ptr %.sroa.0.1.i.i11.sink to i64
  store i64 %9, ptr %i.al, align 8, !tbaa !376
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEvPKvPSt4pairINS_8meta_anyESD_E(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !380    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1779859874, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 4, ptr %i.g, align 4, !tbaa !111
  store ptr %i.b, ptr %1, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.h, align 8, !tbaa !136
  %i.j = icmp eq ptr %i.i, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.j, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !380
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i9, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.o), !inline_history !35
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i: ; preds = %bb.e, %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEcEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.t, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 -1471413475, ptr %i.u, align 8, !tbaa !109
  store ptr null, ptr %i.r, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 4, ptr %i.v, align 4, !tbaa !111
  store ptr %i.q, ptr %i.o, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEcEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.w, align 8, !tbaa !136
  %i.y = icmp eq ptr %i.x, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEcEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.y, label %bb.f, label %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit

bb.f:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !115
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %0, align 8, !tbaa !380
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit, !prof !295

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_8internal18dense_map_iteratorIPKNS2_14dense_map_nodeIicEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance) #27
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !376
  store i64 %i.j, ptr %i.e, align 8, !tbaa !376
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !376
  store i64 %i.k, ptr %i.e, align 8, !tbaa !376
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !380
  %i.m = load ptr, ptr %2, align 8, !tbaa !380
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = select i1 %i.n, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_map_iteratorIPKNS3_14dense_map_nodeIicEEEEEEPKvNS3_11any_requestERKS1_SB_, ptr %i.p, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1133277029, ptr %i.q, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.s, align 4, !tbaa !111
  %i.t = load i64, ptr %i.e, align 8, !tbaa !376
  store i64 %i.t, ptr %2, align 8, !tbaa !376
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

bb.i:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.e, align 8, !tbaa !376
  store i64 %i.u, ptr %2, align 8, !tbaa !376
  br label %_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.a
  %i.v = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.o, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.i ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_8internal18dense_map_iteratorIPKNS2_14dense_map_nodeIicEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value, align 4, !tbaa !134
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value) #27
  br label %_ZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEv.exit

_ZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_8internal18dense_map_iteratorIPKNS1_14dense_map_nodeIicEEEEE5valueEvE5value, align 4, !tbaa !134
  store i32 %i.g, ptr %0, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1133277029, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 85, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.253, i64 54), ptr %i.j, align 8
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN4entt9basic_anyILm16ELm8EE10initializeINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEJEEEvDpOT0_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !272
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #30
  br label %.body

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !98
  ret void

.body:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 56) #30
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeESB_SC_SE_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2INS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2INS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.f, align 8, !tbaa !108, !alias.scope !2320
  store i32 845418859, ptr %i.d, align 8, !tbaa !109, !alias.scope !2320
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvRKS1_, ptr %i.e, align 8, !tbaa !110, !alias.scope !2320
  store i8 1, ptr %i.c, align 4, !tbaa !111, !alias.scope !2320
  store ptr %2, ptr %0, align 8, !tbaa !98, !alias.scope !2320
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !114, !alias.scope !2320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !115, !alias.scope !2320
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !116, !alias.scope !2320
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.j, align 8, !tbaa !108, !alias.scope !2320
  store i32 845418859, ptr %i.l, align 8, !tbaa !109, !alias.scope !2320
  store ptr null, ptr %i.k, align 8, !tbaa !110, !alias.scope !2320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !111, !alias.scope !2320
  store ptr %2, ptr %0, align 8, !tbaa !98, !alias.scope !2320
  store ptr %1, ptr %i.n, align 8, !tbaa !114, !alias.scope !2320
  store ptr null, ptr %i.o, align 8, !tbaa !115, !alias.scope !2320
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !116, !alias.scope !2320
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !111, !alias.scope !2320
  store ptr %3, ptr %0, align 8, !tbaa !98, !alias.scope !2320
  store ptr %1, ptr %i.n, align 8, !tbaa !114, !alias.scope !2320
  store ptr null, ptr %i.o, align 8, !tbaa !115, !alias.scope !2320
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !116, !alias.scope !2320
  br label %_ZZN4entt8internal14setup_node_forINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

_ZZN4entt8internal14setup_node_forINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit: ; preds = %_ZN4entt8meta_anyC2INS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4sizeEPKv(ptr noundef %0) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !383
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5clearEPv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !306
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !282  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !383
  %.not.i.i1.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImiESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !383
  br label %_ZNSt6vectorISt4pairImiESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt4pairImiESaIS1_EE5clearEv.exit.i:  ; preds = %_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef 0)
          to label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EE5clearEv.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EE5clearEv.exit.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !282  ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !2324
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !53

_ZNSt6vectorISt4pairImiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #30
  br label %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairImiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !282
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.s, ptr %i.k, align 8, !tbaa !383
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %1
  store ptr %i.t, ptr %i.c, align 8, !tbaa !283
  br label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7reserveEm.exit

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt4pairImiESaIS1_EE13_M_deallocateEPS1_m.exit.i.i
  %i.u = uitofp nneg i64 %1 to float
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load float, ptr %i.v, align 8, !tbaa !281
  %i.x = fdiv float %i.u, %i.w
  %i.y = tail call noundef float @llvm.ceil.f32(float %i.x)
  %i.z = fptoui float %i.y to i64
  tail call void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.z)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_associative_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !282      ; 2 uses
  br i1 %4, label %.sink.split, label %bb.a

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !282    ; 2 uses
  br i1 %4, label %.sink.split, label %bb.a

.sink.split:                                      ; preds = %10, %7
  %.sink20 = phi ptr [ %3, %7 ], [ %2, %10 ]
  %.sink17 = phi ptr [ %9, %7 ], [ %12, %10 ]     ; 2 uses
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E.sink.ph = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E, %7 ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E, %10 ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_.sink.ph = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_, %7 ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_, %10 ]
  %.sink11.ph = phi i32 [ -604416324, %7 ], [ 1934432389, %10 ]
  %13 = getelementptr inbounds nuw i8, ptr %.sink20, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !383
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %.sink17 to i64
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds nuw i8, ptr %.sink17, i64 %17
  br label %bb.a

bb.a:                                             ; preds = %.sink.split, %10, %7
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E.sink = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E, %10 ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E, %7 ], [ %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E.sink.ph, %.sink.split ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_.sink = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_, %10 ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_, %7 ], [ %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_.sink.ph, %.sink.split ]
  %.sink11 = phi i32 [ 1934432389, %10 ], [ -604416324, %7 ], [ %.sink11.ph, %.sink.split ]
  %.sroa.0.0.sink = phi ptr [ %12, %10 ], [ %9, %7 ], [ %18, %.sink.split ]
  store ptr %1, ptr %0, align 8, !tbaa !232
  %.sroa.0.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E.sink, ptr %.sroa.0.0.in.in, align 8, !tbaa !233
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_.sink, ptr %i.b, align 8, !tbaa !108
  store i32 %.sink11, ptr %i.c, align 8, !tbaa !109
  store ptr null, ptr %19, align 8, !tbaa !110
  store i8 2, ptr %20, align 4, !tbaa !111
  %21 = ptrtoint ptr %.sroa.0.0.sink to i64
  store i64 %21, ptr %i.a, align 8, !tbaa !386
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE6insertEPvPKvSB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE20insert_or_do_nothingIRKiEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.a, 1
  %i.b = trunc i8 %.fca.1.extract to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE5eraseEPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !134    ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = and i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.012.i = phi ptr [ %i.l, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = load i64, ptr %.012.i, align 8, !tbaa !162 ; 4 uses
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE5eraseERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %i.a
  br i1 %i.s, label %bb.d, label %bb.b, !llvm.loop !2325

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.p, align 8, !tbaa !385
  store i64 %i.t, ptr %.012.i, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !383  ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = add nsw i64 %i.z, -1                    ; 3 uses
  %.not.i.i = icmp eq i64 %i.o, %i.aa
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = and i64 %i.j, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !162
  store i64 %i.ai, ptr %i.p, align 8, !tbaa !385
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !387
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !162 ; 2 uses
  %.not1011.i.i = icmp eq i64 %i.aj, %i.aa
  br i1 %.not1011.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ak = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.aj, %bb.e ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !162 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2326

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.al, %.lr.ph.i.i ]
  store i64 %i.o, ptr %.0.lcssa.i.i, align 8, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.an = getelementptr inbounds i8, ptr %i.v, i64 -16
  store ptr %i.an, ptr %i.u, align 8, !tbaa !383
  br label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE5eraseERKi.exit

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE5eraseERKi.exit: ; preds = %bb.b, %bb.f
  %i.ao = phi i64 [ 1, %bb.f ], [ 0, %bb.b ]
  ret i64 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt39basic_meta_associative_container_traitsINS_9dense_setIiSt4hashIiESt8equal_toIvESaIiEEEE4findERKNS_8meta_ctxEPvPKvSE_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_associative_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load i32, ptr %4, align 4, !tbaa !134    ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = load ptr, ptr %2, align 8, !tbaa !271    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.07.in.i.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.d ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.07.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !134
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit, label %bb.c, !llvm.loop !54

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306
  %i.u = load ptr, ptr %3, align 8, !tbaa !271    ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %i.z, %i.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.07.in.i.i8 = phi ptr [ %i.ab, %bb.e ], [ %i.ae, %bb.g ]
  %.07.i.i9 = load i64, ptr %.07.in.i.i8, align 8, !tbaa !162 ; 2 uses
  %.not.i.i10 = icmp eq i64 %.07.i.i9, -1
  br i1 %.not.i.i10, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.07.i.i9 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !134
  %i.ah = icmp eq i32 %i.ag, %i.a
  br i1 %i.ah, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit, label %bb.f, !llvm.loop !2327

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split: ; preds = %bb.c, %bb.f
  %.sink20 = phi ptr [ %3, %bb.f ], [ %2, %bb.c ]
  %.sink23 = phi ptr [ %i.ad, %bb.f ], [ %i.n, %bb.c ] ; 2 uses
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E.sink.ph = phi ptr [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E, %bb.f ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E, %bb.c ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_.sink.ph = phi ptr [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_, %bb.f ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_, %bb.c ]
  %.sink17.ph = phi i32 [ -604416324, %bb.f ], [ 1934432389, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink20, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !383
  %5 = ptrtoint ptr %i.aj to i64
  %6 = ptrtoint ptr %.sink23 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %.sink23, i64 %7
  br label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit: ; preds = %bb.d, %bb.g, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split
  %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E.sink = phi ptr [ %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E.sink.ph, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E, %bb.g ], [ @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E, %bb.d ]
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_.sink = phi ptr [ %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_.sink.ph, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_, %bb.g ], [ @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SA_, %bb.d ]
  %.sink17 = phi i32 [ %.sink17.ph, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split ], [ -604416324, %bb.g ], [ 1934432389, %bb.d ]
  %.sroa.0.1.i.i11.sink = phi ptr [ %8, %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE4findERKi.exit.sink.split ], [ %i.ae, %bb.g ], [ %i.o, %bb.d ]
  store ptr %1, ptr %0, align 8, !tbaa !232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E.sink, ptr %i.ak, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_.sink, ptr %i.am, align 8, !tbaa !108
  store i32 %.sink17, ptr %i.ao, align 8, !tbaa !109
  store ptr null, ptr %i.an, align 8, !tbaa !110
  store i8 2, ptr %i.ap, align 4, !tbaa !111
  %9 = ptrtoint ptr %.sroa.0.1.i.i11.sink to i64
  store i64 %9, ptr %i.al, align 8, !tbaa !386
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESC_E(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !389    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1779859874, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 4, ptr %i.g, align 4, !tbaa !111
  store ptr %i.b, ptr %1, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.h, align 8, !tbaa !136
  %i.j = icmp eq ptr %i.i, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.j, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !115
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !389
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit, !prof !295

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance) #27
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_8internal18dense_set_iteratorIPKSt4pairImiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance) #27
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance) #27
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !386
  store i64 %i.j, ptr %i.e, align 8, !tbaa !386
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !386
  store i64 %i.k, ptr %i.e, align 8, !tbaa !386
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !389
  %i.m = load ptr, ptr %2, align 8, !tbaa !389
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = select i1 %i.n, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_8internal18dense_set_iteratorIPKSt4pairImiEEEEEPKvNS3_11any_requestERKS1_SB_, ptr %i.p, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -604416324, ptr %i.q, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.s, align 4, !tbaa !111
  %i.t = load i64, ptr %i.e, align 8, !tbaa !386
  store i64 %i.t, ptr %2, align 8, !tbaa !386
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

bb.i:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.e, align 8, !tbaa !386
  store i64 %i.u, ptr %2, align 8, !tbaa !386
  br label %_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.a
  %i.v = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_8internal18dense_set_iteratorIPKSt4pairImiEEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.o, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.i ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_8internal18dense_set_iteratorIPKSt4pairImiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEv.exit, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !134
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value, align 4, !tbaa !134
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value) #27
  br label %_ZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEv.exit

_ZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_8internal18dense_set_iteratorIPKSt4pairImiEEEE5valueEvE5value, align 4, !tbaa !134
  store i32 %i.g, ptr %0, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -604416324, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 73, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.256, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb1ENS_8internal18dense_set_iteratorIPSt4pairImiEEEEEvPKvPS5_INS_8meta_anyESB_E(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1779859874, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 4, ptr %i.g, align 4, !tbaa !111
  store ptr %i.b, ptr %1, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.h, align 8, !tbaa !136
  %i.j = icmp eq ptr %i.i, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.j, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

end_hunk_2
