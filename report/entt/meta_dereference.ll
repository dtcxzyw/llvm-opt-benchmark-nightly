Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_dereference?download=true
inline.NumInlined: 5647
inline.NumDeleted: 1809
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10shared_ptrEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES7_S8_SA_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.j, align 8, !tbaa !58, !alias.scope !779
  store i32 2087454433, ptr %i.l, align 8, !tbaa !59, !alias.scope !779
  store ptr null, ptr %i.k, align 8, !tbaa !60, !alias.scope !779
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !61, !alias.scope !779
  store ptr %2, ptr %0, align 8, !tbaa !54, !alias.scope !779
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !779
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !779
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !66, !alias.scope !779
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10shared_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !61, !alias.scope !779
  store ptr %3, ptr %0, align 8, !tbaa !54, !alias.scope !779
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !779
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !779
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !66, !alias.scope !779
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10shared_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10shared_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit: ; preds = %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt10shared_ptrEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !61
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZZN4entt8internal14setup_node_forISt10shared_ptrIiEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES6_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #26
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedESt8optionalIiEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.k [
    i32 0, label %bb.b
    i32 256, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #26
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = select i1 %i.f, ptr %1, ptr %i.g         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !140, !range !105, !noundef !106
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i8 %i.e, 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !18
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.o, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.p, align 8, !tbaa !59
  store ptr null, ptr %i.m, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.q, align 4, !tbaa !61
  store ptr %i.g, ptr %2, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.r, align 8, !tbaa !111
  %i.t = icmp eq ptr %i.s, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.t, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !19
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i: ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.x, align 8, !tbaa !59
  store ptr null, ptr %i.m, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 3, ptr %i.y, align 4, !tbaa !61
  store ptr %i.h, ptr %2, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.z, align 8, !tbaa !111
  %i.ab = icmp eq ptr %i.aa, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.ab, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i, %bb.g, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.b
  %.sink13 = phi ptr [ %1, %bb.b ], [ %2, %bb.g ], [ %2, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ], [ %2, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i ], [ %2, %bb.j ]
  %.sink = phi ptr [ %i.c, %bb.b ], [ %i.v, %bb.g ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRiJS3_EEEvDpOT0_.exit.i ], [ %i.ad, %bb.j ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink13, i64 48
  store ptr %.sink, ptr %i.ae, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt8optionalIiEEEPKvNS_8internal11any_requestERKS1_S6_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !61
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 6 uses
  switch i8 %0, label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit, !prof !185

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2ISt8optionalIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 4
  store i64 %i.j, ptr %i.e, align 4
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 4
  store i64 %i.k, ptr %i.e, align 4
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !140, !range !105, !noundef !106 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i8, ptr %i.n, align 4, !tbaa !140, !range !105, !noundef !106
  %3 = icmp ne i8 %i.m, %i.o                      ; 2 uses
  %i.p = icmp eq i8 %i.m, 0
  %brmerge.i = or i1 %i.p, %3
  %not..i = xor i1 %3, true
  %i.q = load i32, ptr %i.e, align 4
  %i.r = load i32, ptr %2, align 4
  %i.s = icmp eq i32 %i.q, %i.r
  %i.t = select i1 %brmerge.i, i1 %not..i, i1 %i.s
  %i.u = select i1 %i.t, ptr %2, ptr null
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt8optionalIiEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.v, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -898192669, ptr %i.w, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.y, align 4, !tbaa !61
  %i.z = load i64, ptr %i.e, align 4
  store i64 %i.z, ptr %2, align 8
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

bb.i:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.e, align 4
  store i64 %i.aa, ptr %2, align 8
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.a
  %i.ab = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.u, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.i ]
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt8optionalIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt8optionalIiEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt8optionalIiEE5valueEv.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt8optionalIiEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt8optionalIiEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !62 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !62
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt8optionalIiEE5valueEvE5value, align 4, !tbaa !62
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt8optionalIiEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt8optionalIiEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt8optionalIiEE5valueEv.exit

_ZN4entt10type_indexISt8optionalIiEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt8optionalIiEE5valueEvE5value, align 4, !tbaa !62
  store i32 %i.g, ptr %0, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -898192669, ptr %i.h, align 4, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 18, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.159, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forISt8optionalIiEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.07.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.f ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !180
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forISt8optionalIiEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2ISt8optionalIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !185

bb.d:                                             ; preds = %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2ISt8optionalIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !189
  store ptr @_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 8, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forISt8optionalIiEEEDavENUlRKNS_8meta_ctxEE_8__invokeES6_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forISt8optionalIiEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES6_S7_S9_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt8optionalEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZZN4entt8internal14setup_node_forISt8optionalIiEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES6_m, ptr %.sroa.18.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !202
end_hunk_0
