Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_type?download=true
inline.NumInlined: 12374
inline.NumDeleted: 3212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE5clearEPv:bb.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !342
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.469) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341
  %i.d = load ptr, ptr %0, align 8, !tbaa !340    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !342
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 3 uses
  %i.n = shl nuw nsw i64 %1, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #33 ; 4 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.d, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.o, ptr %0, align 8, !tbaa !340
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !342
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %1
  store ptr %i.r, ptr %i.b, align 8, !tbaa !341
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE6resizeEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !340    ; 2 uses
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
  store ptr %i.k, ptr %i.a, align 8, !tbaa !342
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 4 uses
  %.sroa.01.0.in.idx = select i1 %4, i64 8, i64 0
  %. = select i1 %i.a, ptr %3, ptr %2
  %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE = select i1 %i.a, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_ = select i1 %i.a, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_
  %.11 = select i1 %i.a, i32 -1499114772, i32 -89194371
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %., i64 %.sroa.01.0.in.idx
  %.sink.in = load ptr, ptr %.sroa.0.0.in, align 8, !tbaa !228
  %.sink = ptrtoint ptr %.sink.in to i64
  store ptr %1, ptr %0, align 8, !tbaa !344
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.b, align 8, !tbaa !345
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.11, ptr %i.d, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 2, ptr %i.f, align 4, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE6insertERKNS_8meta_ctxEPvPKvSA_RKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !177
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !228
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.not9 = icmp eq ptr %3, null
  %i.m = select i1 %.not9, ptr %4, ptr %3
  %i.n = tail call ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  store ptr %1, ptr %0, align 8, !tbaa !344
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.o, align 8, !tbaa !345
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.q, align 8, !tbaa !176
  store i32 -89194371, ptr %i.s, align 8, !tbaa !177
  store ptr null, ptr %i.r, align 8, !tbaa !143
  store i8 2, ptr %i.t, align 4, !tbaa !178
  %i.u = ptrtoint ptr %i.n to i64
  store i64 %i.u, ptr %i.p, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsISt6vectorIiSaIiEEE5eraseERKNS_8meta_ctxEPvRKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !177
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !228
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !228    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %.sroa.0.0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228  ; 5 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 4
  br i1 %i.x, label %bb.f, label %bb.g, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.p, ptr nonnull align 4 %i.q, i64 %i.w, i1 false)
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !342
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.h, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.q, align 4, !tbaa !75
  store i32 %i.z, ptr %i.p, align 4, !tbaa !75
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %.pre.i.i, %bb.f ], [ %i.s, %bb.d ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !342
  store ptr %1, ptr %0, align 8, !tbaa !344
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE, ptr %i.ac, align 8, !tbaa !345
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.ae, align 8, !tbaa !176
  store i32 -89194371, ptr %i.ag, align 8, !tbaa !177
  store ptr null, ptr %i.af, align 8, !tbaa !143
  store i8 2, ptr %i.ah, align 4, !tbaa !178
  %4 = ptrtoint ptr %i.p to i64
  store i64 %4, ptr %i.ad, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !340    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341
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
  store i32 0, ptr %i.b, align 4, !tbaa !75
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !342
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.418) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !75
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !75
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !342
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !341
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEvPKvlPNS_8meta_anyE(ptr noundef %0, i64 noundef %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !1643   ; 2 uses
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !38
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.d, align 8, !tbaa !176
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.e, align 8, !tbaa !177
  store ptr null, ptr %i.b, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.f, align 4, !tbaa !178
  store ptr %i.a, ptr %2, align 8, !tbaa !119
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !137
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !137
  %i.i = icmp eq ptr %i.h, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.i, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !180
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !180
  br label %bb.e

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds [4 x i8], ptr %i.a, i64 %1
  store ptr %i.n, ptr %0, align 8, !tbaa !1643
  br label %bb.e

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEEPKvNS_8internal11any_requestERKS1_SC_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !178
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
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit, !prof !120

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #29
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !228
  store i64 %i.j, ptr %i.e, align 8, !tbaa !228
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !228
  store i64 %i.k, ptr %i.e, align 8, !tbaa !228
  br label %_ZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !228
end_hunk_0
