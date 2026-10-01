Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/custom_identifier?download=true
inline.NumInlined: 2038
inline.NumDeleted: 1029
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEE8bind_anyENS_9basic_anyILm16ELm8EEE:bb.a
  store i32 %i.l, ptr %i.j, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.m, align 4, !tbaa !125
  br label %bb.c

_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  %i.p = icmp eq i32 %i.o, -407747369
  %i.q = icmp eq i8 %i.b, 2
  %i.r = load ptr, ptr %1, align 8
  %i.s = select i1 %i.q, ptr %1, ptr %i.r
  %i.t = select i1 %i.p, ptr %i.s, ptr null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.t, ptr %i.u, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122  ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.o, ptr %i.ab, align 8, !tbaa !123
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %i.b, ptr %i.ac, align 4, !tbaa !125
  switch i8 %i.b, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit
  ]

bb.b:                                             ; preds = %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit
  %i.ad = invoke noundef ptr %i.x(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef nonnull align 8 dereferenceable(37) %2)
          to label %._ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit_crit_edge unwind label %bb.d ; 0 uses

._ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !124
  br label %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit

bb.c:                                             ; preds = %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit.thread, %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit
  %i.ae = phi ptr [ %i.h, %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit.thread ], [ %i.aa, %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !133
  store ptr null, ptr %1, align 8, !tbaa !133
  store ptr %i.af, ptr %2, align 8, !tbaa !63
  br label %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit:        ; preds = %._ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit_crit_edge, %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit, %bb.c
  %i.ai = phi ptr [ %i.aa, %_ZN4entt8any_castINS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEELm16ELm8EEEPT_PNS_9basic_anyIXT0_EXT1_EEE.exit ], [ %.pre, %._ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit_crit_edge ], [ %i.ae, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN4entt9basic_anyILm16ELm8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(37) %2)
          to label %_ZN4entt9basic_anyILm16ELm8EED2Ev.exit unwind label %bb.f, !inline_history !7

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #23
  unreachable

_ZN4entt9basic_anyILm16ELm8EED2Ev.exit:           ; preds = %_ZN4entt9basic_anyILm16ELm8EEC2EOS1_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit

_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1, label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2

_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2: ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3, label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit4

_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit4: ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2, %bb.d
  tail call void @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit.i

_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2.i

_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2.i: ; preds = %bb.c, %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3.i, label %_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEED2Ev.exit

_ZN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEED2Ev.exit: ; preds = %_ZN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEED2Ev.exit2.i, %bb.d
  tail call void @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(184) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !129  ; 7 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i.i
  %i.q = add i64 %i.m, -4
  %i.r = sub i64 %i.q, %i.g                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.e, i64 %i.x ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.y = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !46, !alias.scope !252, !noalias !251
  %wide.load6 = load <4 x i32>, ptr %i.y, align 4, !tbaa !46, !alias.scope !252, !noalias !251
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !46, !alias.scope !251, !noalias !252
  store <4 x i32> %wide.load6, ptr %i.z, align 4, !tbaa !46, !alias.scope !251, !noalias !252
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.ab = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !252, !noalias !251
  store i32 %i.ab, ptr %.012.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !251, !noalias !252
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !250

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #22
  br label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !130
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  store ptr %i.af, ptr %i.c, align 8, !tbaa !134
  br label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit

_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i.i
  %i.ag = add nsw i64 %1, -1
  %i.ah = tail call noundef ptr @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %i.ag) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 7
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 1023
  %i.j = lshr i64 %i.i, 10                        ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !137  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %i.s = icmp ult i64 %i.j, %i.r
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !137 ; 2 uses
  %.pre8.i = load ptr, ptr %i.k, align 8, !tbaa !83 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre8.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.pre-phi16.i = phi i64 [ %.pre15.i, %._crit_edge.loopexit.i ], [ %i.r, %bb.a ] ; 3 uses
  %i.t = phi ptr [ %.pre8.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ]
  %i.u = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %bb.a ] ; 3 uses
  %i.v = icmp ugt i64 %i.j, %.pre-phi16.i
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.w = sub nuw nsw i64 %i.j, %.pre-phi16.i
  tail call void @_ZNSt6vectorIPiSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.w)
  %.pre9.i = load ptr, ptr %i.l, align 8, !tbaa !137
  br label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.x = icmp ult i64 %i.j, %.pre-phi16.i
  br i1 %i.x, label %bb.d, label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.j ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.y
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i:   ; preds = %bb.d
  store ptr %i.y, ptr %i.l, align 8, !tbaa !137
  br label %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i:          ; preds = %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.d, %bb.c, %bb.b
  %i.z = phi ptr [ %.pre9.i, %bb.b ], [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138
  %i.ac = icmp eq ptr %i.ab, %i.z
  br i1 %i.ac, label %_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE14shrink_to_sizeEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i
  %i.ad = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPiSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #21 ; 0 uses
  br label %_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE14shrink_to_sizeEm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.07.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef 4096) #22
  %i.ah = add i64 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.r
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !8

_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE14shrink_to_sizeEm.exit: ; preds = %_ZNSt6vectorIPiSaIS0_EE6resizeEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %2, %4
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !130
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.at, %bb.b ] ; 2 uses
  %.sroa.3.09 = phi i64 [ %2, %.lr.ph ], [ %i.bg, %bb.b ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.b, i64 %.sroa.3.09
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.m, align 4, !tbaa !46
  %i.n = and i32 %.sroa.01.0.copyload, 1048575
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_:bb.a
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !46 ; 2 uses
  store i32 -1, ptr %i.bx, align 4, !tbaa !46
  %i.by = and i32 %.sroa.03.0.copyload.i.i.i, 1048575
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = or i32 %i.bo, -1048576
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bz
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !46
  %i.cc = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.4.121
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %.sroa.01.0.copyload.1 = load i32, ptr %i.cd, align 4, !tbaa !46
  %i.ce = and i32 %.sroa.01.0.copyload.1, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !45
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %.sroa.03.0.copyload.i.i.i.1 = load i32, ptr %i.ck, align 4, !tbaa !46
  store i32 -1, ptr %i.ck, align 4, !tbaa !46
  %i.cl = and i32 %.sroa.03.0.copyload.i.i.i.1, 1048575 ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = or i32 %.sroa.03.0.copyload.i.i.i, -1048576
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cm
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !46
  %i.cp = add nsw i64 %.sroa.4.121, -2            ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %4
  br i1 %i.cq, label %..loopexit17_crit_edge, label %.lr.ph22.new, !llvm.loop !254

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.cr = phi i64 [ %.promoted, %.lr.ph ], [ %i.dl, %bb.c ] ; 2 uses
  %.sroa.4.220 = phi i64 [ %2, %.lr.ph ], [ %i.ea, %bb.c ] ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.d, i64 %.sroa.4.220
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %.sroa.0.0.copyload = load i32, ptr %i.ct, align 4, !tbaa !46 ; 2 uses
  %i.cu = and i32 %.sroa.0.0.copyload, 1048575    ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = lshr i64 %i.cv, 12
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !45
  %i.cz = and i64 %i.cv, 4095
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.da, align 4, !tbaa !46
  %i.db = and i32 %.sroa.01.0.copyload.i.i, 1048575 ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = lshr i32 %.sroa.0.0.copyload, 20
  %i.de = add nuw nsw i32 %i.dd, 1                ; 2 uses
  %i.df = icmp eq i32 %i.de, 4095
  %i.dg = shl i32 %i.de, 20
  %i.dh = select i1 %i.df, i32 0, i32 %i.dg       ; 2 uses
  %i.di = or disjoint i32 %i.dh, %i.cu
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dc ; 3 uses
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !46
  %i.dk = icmp ugt i64 %i.cr, %i.dc
  %.neg.i = sext i1 %i.dk to i64
  %i.dl = add i64 %i.cr, %.neg.i                  ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dl ; 3 uses
  %i.dn = trunc i64 %i.dl to i32
  %i.do = and i32 %i.dn, 1048575
  %i.dp = or disjoint i32 %i.do, %i.dh
  store i32 %i.dp, ptr %i.da, align 4, !tbaa !46
  %.sroa.01.0.copyload.i6.i = load i32, ptr %i.dm, align 4, !tbaa !46 ; 2 uses
  %i.dq = and i32 %.sroa.01.0.copyload.i6.i, -1048576
  %i.dr = or disjoint i32 %i.dq, %i.db
  %i.ds = and i32 %.sroa.01.0.copyload.i6.i, 1048575
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = lshr i64 %i.dt, 12
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !45
  %i.dx = and i64 %i.dt, 4095
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dx
  store i32 %i.dr, ptr %i.dy, align 4, !tbaa !46
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.dj, align 4, !tbaa !46
  %i.dz = load i32, ptr %i.dm, align 4, !tbaa !46
  store i32 %i.dz, ptr %i.dj, align 4, !tbaa !46
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.dm, align 4, !tbaa !46
  %i.ea = add nsw i64 %.sroa.4.220, -1            ; 2 uses
  %i.eb = icmp eq i64 %i.ea, %4
  br i1 %i.eb, label %..loopexit19_crit_edge, label %bb.c, !llvm.loop !255

..loopexit17_crit_edge:                           ; preds = %.lr.ph22.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.cm, %.lr.ph22.new ]
  store i64 %.lcssa, ptr %i.n, align 8, !tbaa !69
  br label %.loopexit

..loopexit19_crit_edge:                           ; preds = %bb.c
  store i64 %i.dl, ptr %i.i, align 8, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader18, %..loopexit19_crit_edge, %.preheader16, %..loopexit17_crit_edge, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7pop_allEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !118
  %.not.i10 = icmp eq i8 %i.g, 2
  %i.h = select i1 %.not.i10, i64 0, i64 1048575
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !57
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIPN16CustomIdentifier9entity_idES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.07.012 = phi ptr [ %i.p, %.loopexit ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.07.012, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.o, i8 -1, i64 16384, i1 false), !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZSt8_DestroyIPN16CustomIdentifier9entity_idES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

_ZSt8_DestroyIPN16CustomIdentifier9entity_idES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.loopexit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.r, align 8, !tbaa !118
  %.not.i = icmp eq i8 %i.s, 2
  %i.t = select i1 %.not.i, i64 0, i64 1048575
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.t, ptr %i.u, align 8, !tbaa !57
  store ptr %i.b, ptr %i.c, align 8, !tbaa !130
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE5clearEv.exit

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE5clearEv.exit: ; preds = %.thread, %_ZSt8_DestroyIPN16CustomIdentifier9entity_idES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i32 %1, 1048575
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit.i

_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !45
  %i.n = add nuw nsw i64 %i.d, 1
  %i.o = sub nuw nsw i64 %i.n, %i.l
  call void @_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit.i ], [ %i.h, %bb.a ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.d ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i, label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %i.s = call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #24 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.s, i8 -1, i64 16384, i1 false), !tbaa !46
  br label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit

_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit: ; preds = %bb.b, %.lr.ph.preheader.i.i.i.i
  %i.t = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i.i ], [ %i.r, %bb.b ]
  %i.u = and i64 %i.c, 4095
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !130  ; 11 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !129  ; 17 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 7 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !118
  switch i8 %i.af, label %bb.r [
    i8 1, label %bb.c
    i8 0, label %bb.e
    i8 2, label %bb.j
  ]

bb.c:                                             ; preds = %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 1048575
  %or.cond = or i1 %2, %i.ai
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = and i32 %i.aj, 1048575
  %i.al = and i32 %1, -1048576
  %i.am = or disjoint i32 %i.ak, %i.al
  store i32 %i.am, ptr %i.v, align 4, !tbaa !46
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.an, align 4, !tbaa !46
  store i32 %1, ptr %i.an, align 4, !tbaa !46
  %i.ao = and i32 %.sroa.0.0.copyload.i.i, 1048575
  %i.ap = zext nneg i32 %i.ao to i64
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !57
  br label %bb.r

bb.e:                                             ; preds = %bb.c, %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134
  %.not.i21 = icmp eq ptr %i.y, %i.ar
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %i.y, align 4, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.x, align 8, !tbaa !130
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ad
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 2305843009213693951)
  %i.ax = select i1 %i.av, i64 2305843009213693951, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ac
  store i32 %1, ptr %i.ba, align 4, !tbaa !46
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = add i64 %i.aa, -4
  %i.bc = sub i64 %i.bb, %i.ab                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.i.i.preheader89, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec75 = and i64 %i.be, 9223372036854775800   ; 3 uses
  %i.bf = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.z, i64 %i.bf
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bi = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.z, i64 %i.bi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.bj = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !46, !alias.scope !267, !noalias !266
  %wide.load81 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !46, !alias.scope !267, !noalias !266
  %i.bk = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 4, !tbaa !46, !alias.scope !266, !noalias !267
  store <4 x i32> %wide.load81, ptr %i.bk, align 4, !tbaa !46, !alias.scope !266, !noalias !267
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.bl, label %middle.block83, label %vector.body76, !llvm.loop !259

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.be, %n.vec75
  br i1 %cmp.n84, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader89

.lr.ph.i.i.i.i.i.preheader89:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block83
  %.012.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bg, %middle.block83 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %middle.block83 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader89, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.bm = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !267, !noalias !266
  store i32 %i.bm, ptr %.012.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !266, !noalias !267
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !260

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block83, %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bg, %middle.block83 ], [ %i.bo, %.lr.ph.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.az, ptr %i.w, align 8, !tbaa !129
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !130
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bq, ptr %i.aq, align 8, !tbaa !134
  %.pre51 = ptrtoint ptr %i.az to i64
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.f, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.ab, %bb.f ], [ %.pre51, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.br = phi ptr [ %i.as, %bb.f ], [ %i.bp, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %.pre-phi
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = add nuw nsw i32 %i.bv, 1048575
  %i.bx = and i32 %i.bw, 1048575
  %i.by = and i32 %1, -1048576
  %i.bz = or disjoint i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.v, align 4, !tbaa !46
  br label %bb.r

bb.j:                                             ; preds = %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit
  %.sroa.05.0.copyload = load i32, ptr %i.v, align 4, !tbaa !46
  %i.ca = and i32 %.sroa.05.0.copyload, 1048575   ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 1048575
  br i1 %i.cb, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !134
  %.not.i22 = icmp eq ptr %i.y, %i.cd
  br i1 %.not.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %1, ptr %i.y, align 4, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.ce, ptr %i.x, align 8, !tbaa !130
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35

bb.m:                                             ; preds = %bb.k
  %i.cf = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.cf, label %bb.n, label %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i23

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.m
  %.sroa.speculated.i.i.i24 = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i24, %i.ad ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.ad
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 2305843009213693951)
  %i.cj = select i1 %i.ch, i64 2305843009213693951, i64 %i.ci ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i25)
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #24 ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ac
  store i32 %1, ptr %i.cm, align 4, !tbaa !46
  %.not10.i.i.i.i.i26 = icmp eq ptr %i.z, %i.y
  br i1 %.not10.i.i.i.i.i26, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31, label %.lr.ph.i.i.i.i.i27.preheader

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i23
  %i.cn = add i64 %i.aa, -4
  %i.co = sub i64 %i.cn, %i.ab                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i27.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 3 uses
  %i.cr = shl i64 %n.vec, 2                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cl, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.z, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cu ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.z, i64 %i.cu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.cv = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !46, !alias.scope !269, !noalias !268
  %wide.load68 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !46, !alias.scope !269, !noalias !268
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !46, !alias.scope !268, !noalias !269
  store <4 x i32> %wide.load68, ptr %i.cw, align 4, !tbaa !46, !alias.scope !268, !noalias !269
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31, label %.lr.ph.i.i.i.i.i27.preheader90

.lr.ph.i.i.i.i.i27.preheader90:                   ; preds = %.lr.ph.i.i.i.i.i27.preheader, %middle.block
  %.012.i.i.i.i.i28.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.cs, %middle.block ]
  %.0911.i.i.i.i.i29.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.preheader90, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i27 ], [ %.012.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i27.preheader90 ] ; 2 uses
  %.0911.i.i.i.i.i29 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i27 ], [ %.0911.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i27.preheader90 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.cy = load i32, ptr %.0911.i.i.i.i.i29, align 4, !tbaa !46, !alias.scope !269, !noalias !268
  store i32 %i.cy, ptr %.012.i.i.i.i.i28, align 4, !tbaa !46, !alias.scope !268, !noalias !269
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i29, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 4 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.cz, %i.y
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31, label %.lr.ph.i.i.i.i.i27, !llvm.loop !265

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31: ; preds = %.lr.ph.i.i.i.i.i27, %middle.block, %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i23
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.cl, %_ZNKSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE12_M_check_lenEmPKc.exit.i.i23 ], [ %i.cs, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i27 ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i32, i64 4 ; 2 uses
  %.not.i23.i.i33 = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i33, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #22
  %.pre.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34: ; preds = %bb.o, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.o ], [ %i.p, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i31 ]
  store ptr %i.cl, ptr %i.w, align 8, !tbaa !129
  store ptr %i.db, ptr %i.x, align 8, !tbaa !130
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dc, ptr %i.cc, align 8, !tbaa !134
  %.pre52 = ptrtoint ptr %i.cl to i64
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35: ; preds = %bb.l, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34
  %.pre-phi53 = phi i64 [ %i.ab, %bb.l ], [ %.pre52, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34 ]
  %.pre = phi ptr [ %i.p, %bb.l ], [ %.pre.pre, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34 ]
  %i.dd = phi ptr [ %i.z, %bb.l ], [ %i.cl, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34 ]
  %i.de = phi ptr [ %i.ce, %bb.l ], [ %i.db, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i34 ]
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %.pre-phi53
  %i.dh = trunc i64 %i.dg to i32
  %i.di = lshr i32 %i.dh, 2
  %i.dj = add nuw nsw i32 %i.di, 1048575
  %i.dk = and i32 %i.dj, 1048575                  ; 2 uses
  %i.dl = and i32 %1, -1048576
  %i.dm = or disjoint i32 %i.dk, %i.dl
  store i32 %i.dm, ptr %i.v, align 4, !tbaa !46
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.dn = and i32 %1, -1048576
  %i.do = or disjoint i32 %i.ca, %i.dn
  store i32 %i.do, ptr %i.v, align 4, !tbaa !46
  %i.dp = zext nneg i32 %i.ca to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dp
  store i32 %1, ptr %i.dq, align 4, !tbaa !46
  %.sroa.0.0.copyload.pre = load i32, ptr %i.v, align 4, !tbaa !46
  %i.dr = and i32 %.sroa.0.0.copyload.pre, 1048575
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35
  %i.ds = phi ptr [ %i.p, %bb.p ], [ %.pre, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35 ] ; 2 uses
  %i.dt = phi ptr [ %i.z, %bb.p ], [ %i.dd, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35 ] ; 2 uses
  %.sroa.0.0.copyload = phi i32 [ %i.dr, %bb.p ], [ %i.dk, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit35 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !57 ; 4 uses
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !57
  %i.dx = zext nneg i32 %.sroa.0.0.copyload to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dv ; 3 uses
  %i.ea = trunc i64 %i.dv to i32
  %.sroa.04.0.copyload.i = load i32, ptr %i.dy, align 4, !tbaa !46 ; 2 uses
  %i.eb = and i32 %i.ea, 1048575
  %i.ec = and i32 %.sroa.04.0.copyload.i, -1048576
  %i.ed = or disjoint i32 %i.ec, %i.eb
  %i.ee = and i32 %.sroa.04.0.copyload.i, 1048575
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = lshr i64 %i.ef, 12
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !45
  %i.ej = and i64 %i.ef, 4095
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  store i32 %i.ed, ptr %i.ek, align 4, !tbaa !46
  %.sroa.01.0.copyload.i = load i32, ptr %i.dz, align 4, !tbaa !46 ; 2 uses
  %i.el = and i32 %.sroa.01.0.copyload.i, -1048576
  %i.em = or disjoint i32 %i.el, %.sroa.0.0.copyload
  %i.en = and i32 %.sroa.01.0.copyload.i, 1048575
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = lshr i64 %i.eo, 12
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.es = and i64 %i.eo, 4095
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.es
  store i32 %i.em, ptr %i.et, align 4, !tbaa !46
  %.sroa.0.0.copyload.i.i36 = load i32, ptr %i.dy, align 4, !tbaa !46
  %i.eu = load i32, ptr %i.dz, align 4, !tbaa !46
  store i32 %i.eu, ptr %i.dy, align 4, !tbaa !46
  store i32 %.sroa.0.0.copyload.i.i36, ptr %i.dz, align 4, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit, %bb.d, %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit
  %.0 = phi i64 [ %i.ad, %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE15assure_at_leastES2_.exit ], [ %i.ad, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE9push_backERKS1_.exit ], [ %i.ah, %bb.d ], [ %i.dv, %bb.q ]
  %i.ev = add i64 %.0, 1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.w, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ev, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EEE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.sroa.08.012.i.i = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16384) #22, !inline_history !139
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22, !inline_history !139
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22, !inline_history !139
  br label %_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EED2Ev.exit

_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EED2Ev.exit.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !129  ; 7 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.m, -4
  %i.r = sub i64 %i.q, %i.g                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %next.gep3 = getelementptr i8, ptr %i.e, i64 %i.x ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.y = getelementptr i8, ptr %next.gep3, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep3, align 4, !tbaa !46, !alias.scope !276, !noalias !275
  %wide.load4 = load <4 x i32>, ptr %i.y, align 4, !tbaa !46, !alias.scope !276, !noalias !275
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !46, !alias.scope !275, !noalias !276
  store <4 x i32> %wide.load4, ptr %i.z, align 4, !tbaa !46, !alias.scope !275, !noalias !276
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ab = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !46, !alias.scope !276, !noalias !275
  store i32 %i.ab, ptr %.012.i.i.i.i, align 4, !tbaa !46, !alias.scope !275, !noalias !276
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !274

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #22
  br label %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !130
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  store ptr %i.af, ptr %i.c, align 8, !tbaa !134
  br label %_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE13_M_deallocateEPS1_m.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.30", align 8    ; 16 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not69 = icmp eq ptr %i.d, %i.e
  br i1 %.not69, label %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN16CustomIdentifier9entity_idESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN16CustomIdentifier9entity_idESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.l, ptr %1, align 8, !tbaa !43
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  store ptr %i.n, ptr %i.k, align 8, !tbaa !140
  br label %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN16CustomIdentifier9entity_idESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %i.o = phi ptr [ %i.l, %_ZNSt12_Vector_baseIPN16CustomIdentifier9entity_idESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE7reserveEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread43
  %i.v = phi ptr [ %i.o, %.lr.ph ], [ %i.at, %.thread43 ] ; 3 uses
  %i.w = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %.thread43 ] ; 3 uses
  %i.x = phi ptr [ %i.o, %.lr.ph ], [ %i.av, %.thread43 ] ; 3 uses
  %i.y = phi ptr [ %i.e, %.lr.ph ], [ %i.aw, %.thread43 ] ; 3 uses
  %.02050 = phi i64 [ 0, %.lr.ph ], [ %.447, %.thread43 ] ; 3 uses
  %.sroa.033.049 = phi ptr [ %i.q, %.lr.ph ], [ %i.ax, %.thread43 ] ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %.sroa.033.049, align 4, !tbaa !46 ; 2 uses
  %i.z = icmp ugt i32 %.sroa.07.0.copyload, -1048577
  br i1 %i.z, label %.thread43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = lshr i32 %.sroa.07.0.copyload, 12
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %.not48 = icmp ugt i64 %i.aj, %i.ac
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add nuw nsw i64 %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !45
  %i.al = sub nuw nsw i64 %i.ak, %i.aj
  invoke void @_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.af, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.m

_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !43
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit
  %i.am = phi ptr [ %i.v, %bb.e ], [ %.pre52, %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit ] ; 4 uses
  %i.an = phi ptr [ %i.w, %bb.e ], [ %.pre, %_ZNSt6vectorIPN16CustomIdentifier9entity_idESaIS2_EE6resizeEmRKS2_.exit ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  store ptr null, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ac
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !45
  %i.ar = add i64 %.02050, 1                      ; 2 uses
  %i.as = icmp ne i64 %i.ar, %i.i
  %cond.fr = freeze i1 %i.as
  br i1 %cond.fr, label %.thread43, label %._crit_edge.loopexit

.thread43:                                        ; preds = %bb.g, %bb.d, %bb.c
  %i.at = phi ptr [ %i.am, %bb.g ], [ %i.v, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.au = phi ptr [ %i.an, %bb.g ], [ %i.w, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.av = phi ptr [ %i.am, %bb.g ], [ %i.x, %bb.d ], [ %i.x, %bb.c ]
  %i.aw = phi ptr [ %i.an, %bb.g ], [ %i.y, %bb.d ], [ %i.y, %bb.c ]
  %.447 = phi i64 [ %i.ar, %bb.g ], [ %.02050, %bb.d ], [ %.02050, %bb.c ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.033.049, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  br i1 %i.ay, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.g, %.thread43
  %i.az = phi ptr [ %i.am, %bb.g ], [ %i.at, %.thread43 ]
  %i.ba = phi ptr [ %i.an, %bb.g ], [ %i.au, %.thread43 ]
  %.pre53 = load ptr, ptr %i.c, align 8, !tbaa !132
  br label %._crit_edge
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!50 = !{!"_ZTSNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN16CustomIdentifier9entity_idESaIS1_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN16CustomIdentifier9entity_idESaIS1_EE", !52, i64 0}
!54 = !{!"p1 _ZTSN4entt9type_infoE", !31, i64 0}
!55 = !{!"_ZTSN4entt15deletion_policyE", !22, i64 0}
!56 = !{!"_ZTSN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EEE", !49, i64 8, !53, i64 32, !54, i64 56, !55, i64 64, !28, i64 72}
!57 = !{!56, !28, i64 72}
!58 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!59 = !{!"p1 omnipotent char", !31, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !59, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0, !28, i64 8, !22, i64 16}
!62 = !{!61, !59, i64 0}
!63 = !{!22, !22, i64 0}
!64 = !{!58, !58, i64 0}
!65 = !{!"p1 long", !31, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 8}
!68 = !{!66, !65, i64 0}
!69 = !{!28, !28, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS5_EEEEEE", !31, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESaISA_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 8}
!74 = !{!"p1 _ZTSN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EEE", !31, i64 0}
!75 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0}
!76 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !75, i64 0}
!77 = !{!"_ZTSSt12__shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0, !76, i64 8}
!78 = !{!77, !74, i64 0}
!79 = !{!"p1 int", !31, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p2 int", !39, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE12_Vector_implE", !82, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIPiSaIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIPiSaIS0_EE", !85, i64 0}
!87 = !{!"_ZTSN4entt13basic_storageIiN16CustomIdentifier9entity_idESaIiEEE", !56, i64 0, !86, i64 80}
!88 = !{!"p1 _ZTSN4entt14basic_registryIN16CustomIdentifier9entity_idESaIS2_EEE", !31, i64 0}
!89 = !{!"p1 _ZTSN4entt8delegateIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_EEE", !31, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN16CustomIdentifier9entity_idESaIS4_EEES4_EEESaIS9_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN16CustomIdentifier9entity_idESaIS4_EEES4_EEESaIS9_EE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryIN16CustomIdentifier9entity_idESaIS4_EEES4_EEESaIS9_EE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIN4entt8delegateIFvRNS0_14basic_registryIN16CustomIdentifier9entity_idESaIS4_EEES4_EEESaIS9_EE", !92, i64 0}
!94 = !{!"_ZTSN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ESaIiEEE", !93, i64 0}
!95 = !{!"_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS_14basic_registryIS3_SaIS3_EEEEE", !87, i64 0, !88, i64 104, !94, i64 112, !94, i64 136, !94, i64 160}
!96 = !{!95, !88, i64 104}
!97 = !{!90, !89, i64 8}
!98 = !{!90, !89, i64 0}
!99 = !{!"_ZTSN4entt8delegateIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_EEE", !31, i64 0, !31, i64 8}
!100 = !{!99, !31, i64 8}
!101 = !{!99, !31, i64 0}
!102 = !{!72, !71, i64 0}
!103 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEE", !31, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!104, !103, i64 0}
!106 = !{!104, !103, i64 8}
!107 = !{!"_ZTSN4entt8internal17basic_any_storageILm0ELm8EEE", !31, i64 0}
!108 = !{!"_ZTSN4entt10any_policyE", !22, i64 0}
!109 = !{!"_ZTSN4entt9basic_anyILm0ELm8EEE", !107, i64 0, !31, i64 8, !31, i64 16, !23, i64 24, !108, i64 28}
!110 = !{!109, !31, i64 16}
!111 = !{!104, !103, i64 16}
!112 = !{!66, !65, i64 16}
!113 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 8, !23, i64 12}
!114 = !{!113, !23, i64 8}
!115 = !{!113, !23, i64 12}
!116 = !{!"branch_weights", i32 1, i32 1048575}
!117 = !{!56, !54, i64 56}
!118 = !{!56, !55, i64 64}
!119 = !{!76, !75, i64 0}
!120 = !{!"_ZTSN4entt8internal17basic_any_storageILm16ELm8EEE", !22, i64 0}
!121 = !{!"_ZTSN4entt9basic_anyILm16ELm8EEE", !120, i64 0, !31, i64 16, !31, i64 24, !23, i64 32, !108, i64 36}
!122 = !{!121, !31, i64 16}
!123 = !{!121, !23, i64 32}
!124 = !{!121, !31, i64 24}
!125 = !{!121, !108, i64 36}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = !{!90, !89, i64 16}
!128 = !{!89, !89, i64 0}
!129 = !{!50, !44, i64 0}
!130 = !{!50, !44, i64 8}
!131 = !{!"llvm.loop.unswitch.partial.disable"}
!132 = !{!40, !40, i64 0}
!133 = !{!31, !31, i64 0}
!134 = !{!50, !44, i64 16}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = !{!82, !81, i64 8}
!138 = !{!82, !81, i64 16}
!139 = !{ptr @_ZN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS2_EED2Ev}
!140 = !{!41, !40, i64 16}
!141 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !28, i64 0, !59, i64 8}
!142 = !{!"_ZTSN4entt9type_infoE", !23, i64 0, !23, i64 4, !141, i64 8}
!143 = !{!142, !23, i64 0}
!144 = !{!142, !23, i64 4}
!145 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!148 = !{!"p1 _ZTSSt10shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEEE", !31, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!72, !71, i64 16}
!151 = !{!"_ZTSSt10shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEEE", !77, i64 0}
!152 = !{!"_ZTSSt4pairIjSt10shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS4_EEEEE", !23, i64 0, !151, i64 8}
!153 = !{!"_ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS5_EEEEEE", !28, i64 0, !152, i64 8}
!154 = !{!153, !28, i64 0}
!155 = !{!152, !23, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !66, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseImSaImEE", !156, i64 0}
!158 = !{!"_ZTSSt6vectorImSaImEE", !157, i64 0}
!159 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EEE", !158, i64 0}
!160 = !{!"_ZTSN4entt15compressed_pairISt6vectorImSaImEESt8identityEE", !159, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESaISA_EE12_Vector_implE", !72, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESaISA_EE", !161, i64 0}
!163 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESaISA_EE", !162, i64 0}
!164 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS7_EEEEEESaISB_EELm0EEE", !163, i64 0}
!165 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS7_EEEEEESaISB_EESt8equal_toIvEEE", !164, i64 0}
!166 = !{!"float", !22, i64 0}
!167 = !{!"_ZTSN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEE", !160, i64 0, !165, i64 24, !166, i64 48}
!168 = !{!167, !166, i64 48}
!169 = !{!65, !65, i64 0}
!170 = !{!103, !103, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12_Vector_implE", !104, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE", !171, i64 0}
!173 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE", !172, i64 0}
!174 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EELm0EEE", !173, i64 0}
!175 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEE", !174, i64 0}
!176 = !{!"_ZTSN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEE", !160, i64 0, !175, i64 24, !166, i64 48}
!177 = !{!176, !166, i64 48}
!178 = !{!71, !71, i64 0}
!179 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEE", !31, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!181 = !{!180, !179, i64 0}
!182 = !{!179, !179, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_Vector_implE", !180, i64 0}
!184 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE", !183, i64 0}
!185 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE", !184, i64 0}
!186 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEESaIS7_EELm0EEE", !185, i64 0}
!187 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEESaIS7_EESt8equal_toIvEEE", !186, i64 0}
!188 = !{!"_ZTSN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEE", !160, i64 0, !187, i64 24, !166, i64 48}
!189 = !{!188, !166, i64 48}
!190 = !{!"_ZTSN4entt13basic_storageIN16CustomIdentifier9entity_idES2_SaIS2_EEE", !56, i64 0, !28, i64 80}
!191 = !{!190, !28, i64 80}
!192 = !{!54, !54, i64 0}
!193 = !{!55, !55, i64 0}
!194 = !{!180, !179, i64 8}
!195 = !{!180, !179, i64 16}
!196 = !{!"_ZTSN4entt4sighIFvRNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEES3_ES4_EE", !93, i64 0}
!197 = !{!"_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIN16CustomIdentifier9entity_idES3_SaIS3_EEENS_14basic_registryIS3_S4_EEEE", !190, i64 0, !88, i64 88, !196, i64 96, !196, i64 120, !196, i64 144}
!198 = !{!197, !88, i64 88}
!199 = !{!60, !59, i64 0}
!200 = !{!61, !28, i64 8}
!201 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !36, i64 56}
!202 = !{!201, !59, i64 40}
!203 = !{!201, !59, i64 32}
!204 = !{!"_ZTSSi", !28, i64 8}
!205 = !{!204, !28, i64 8}
!206 = distinct !{null, null, null}
!207 = distinct !{null}
!208 = distinct !{!208, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!209 = distinct !{!209, !208, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!210 = distinct !{!210, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!211 = distinct !{!211, !210, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!212 = !{!"bool", !22, i64 0}
!213 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !58, i64 0}
!214 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !213, i64 0}
!215 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !214, i64 0}
!216 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !215, i64 0}
!217 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !216, i64 0}
!218 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !217, i64 0}
!219 = !{!"_ZTSN7testing15AssertionResultE", !212, i64 0, !218, i64 8}
!220 = !{!219, !212, i64 0}
!221 = !{!213, !58, i64 0}
!222 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!223 = !{!222, !222, i64 0}
!224 = !{!"std::nullptr_t", !22, i64 0}
!225 = !{!224, !224, i64 0}
!226 = !{i8 0, i8 2}
!227 = !{}
!228 = !{!211, !209}
!229 = distinct !{null}
!230 = distinct !{null, null}
!231 = distinct !{!231, !70}
!232 = distinct !{!232, !"_ZSt15allocate_sharedIN4entt16basic_sigh_mixinINS0_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEES8_JS8_EESt10shared_ptrIT_ERKT0_DpOT1_"}
!233 = distinct !{!233, !232, !"_ZSt15allocate_sharedIN4entt16basic_sigh_mixinINS0_13basic_storageIiN16CustomIdentifier9entity_idESaIiEEENS0_14basic_registryIS4_SaIS4_EEEEES8_JS8_EESt10shared_ptrIT_ERKT0_DpOT1_: argument 0"}
!234 = distinct !{!234, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!235 = distinct !{!235, !234, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!236 = distinct !{null}
!237 = distinct !{null, null}
!238 = distinct !{ptr @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!239 = !{!233}
!240 = !{!235}
!241 = distinct !{null, null}
!242 = !{!"_ZTSSt9type_info", !59, i64 8}
!243 = !{!242, !59, i64 8}
!244 = distinct !{!244, !70}
!245 = distinct !{!245, !131}
!246 = distinct !{!246, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_"}
!247 = distinct !{!247, !246, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !246, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!249 = distinct !{!249, !70, !135, !136}
!250 = distinct !{!250, !70, !136, !135}
!251 = !{!247}
!252 = !{!248}
!253 = distinct !{!253, !70}
!254 = distinct !{!254, !70}
!255 = distinct !{!255, !70}
!256 = distinct !{!256, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_"}
!257 = distinct !{!257, !256, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!258 = distinct !{!258, !256, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!259 = distinct !{!259, !70, !135, !136}
!260 = distinct !{!260, !70, !136, !135}
!261 = distinct !{!261, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_"}
!262 = distinct !{!262, !261, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!263 = distinct !{!263, !261, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!264 = distinct !{!264, !70, !135, !136}
!265 = distinct !{!265, !70, !136, !135}
!266 = !{!257}
!267 = !{!258}
!268 = !{!262}
!269 = !{!263}
!270 = distinct !{!270, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_"}
!271 = distinct !{!271, !270, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!272 = distinct !{!272, !270, !"_ZSt19__relocate_object_aIN16CustomIdentifier9entity_idES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!273 = distinct !{!273, !70, !135, !136}
!274 = distinct !{!274, !70, !136, !135}
!275 = !{!271}
!276 = !{!272}
!277 = distinct !{!277, !146}
!278 = distinct !{!278, !70}
!279 = distinct !{!279, !146}
!280 = distinct !{!280, !70}
!281 = distinct !{!281, !146}
!282 = distinct !{!282, !70}
!283 = distinct !{!283, !146}
!284 = !{!81, !81, i64 0}
!285 = distinct !{null}
!286 = distinct !{!286, !"_ZSt16forward_as_tupleIJRKjEESt5tupleIJDpOT_EES5_"}
!287 = distinct !{!287, !286, !"_ZSt16forward_as_tupleIJRKjEESt5tupleIJDpOT_EES5_: argument 0"}
!288 = distinct !{!288, !"_ZSt16forward_as_tupleIJRSt10shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS4_EEEEEESt5tupleIJDpOT_EESC_"}
!289 = distinct !{!289, !288, !"_ZSt16forward_as_tupleIJRSt10shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS4_EEEEEESt5tupleIJDpOT_EESC_: argument 0"}
!290 = !{!287}
!291 = !{!289}
!292 = distinct !{!292, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_"}
!293 = distinct !{!293, !292, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!294 = distinct !{!294, !292, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!295 = distinct !{!295, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_"}
!296 = distinct !{!296, !295, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!297 = distinct !{!297, !295, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!298 = !{!293}
!299 = !{!294}
!300 = !{!296}
!301 = !{!297}
!302 = distinct !{!302, !70}
!303 = distinct !{null}
!304 = distinct !{!304, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!305 = distinct !{!305, !304, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!306 = distinct !{!306, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!307 = distinct !{!307, !306, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!308 = distinct !{!308, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!309 = distinct !{!309, !308, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!310 = distinct !{!310, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!311 = distinct !{!311, !310, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!312 = !{!305}
!313 = !{!307}
!314 = !{!309}
!315 = !{!311}
!316 = distinct !{null, null, null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!317 = distinct !{ptr @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS7_EEEEEESaISB_EELm0EED2Ev, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!318 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN16CustomIdentifier9entity_idESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!319 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!320 = distinct !{ptr @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEESaIS7_EELm0EED2Ev, null, null, null, null, null, null, null, null, null, null}
!321 = distinct !{null, null, null, null, null, null, null, null, null, null}
!322 = distinct !{!322, !70}
!323 = distinct !{!323, !70, !131}
!324 = !{!88, !88, i64 0}
!325 = distinct !{!325, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!326 = distinct !{!326, !325, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!327 = distinct !{!327, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_"}
!328 = distinct !{!328, !327, !"_ZN4entt14forward_as_anyILm16ELm8ERNS_14basic_registryIN16CustomIdentifier9entity_idESaIS3_EEEEENS_9basic_anyIXT_EXT0_EEEOT1_: argument 0"}
!329 = !{!326}
!330 = !{!328}
!331 = distinct !{!331, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_"}
!332 = distinct !{!332, !331, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!333 = distinct !{!333, !331, !"_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN16CustomIdentifier9entity_idESaIS6_EEEEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!334 = !{!332}
!335 = !{!333}
!336 = distinct !{!336, !70}
!337 = !{!"_ZTSSt4pairIjN4entt9basic_anyILm0ELm8EEEE", !23, i64 0, !109, i64 8}
!338 = !{!"_ZTSN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEE", !28, i64 0, !337, i64 8}
!339 = !{!338, !28, i64 0}
!340 = distinct !{!340, !70}
!341 = !{!"p1 _ZTSN4entt8internal16group_descriptorE", !31, i64 0}
!342 = !{!"_ZTSSt12__shared_ptrIN4entt8internal16group_descriptorELN9__gnu_cxx12_Lock_policyE2EE", !341, i64 0, !76, i64 8}
!343 = !{!"_ZTSSt10shared_ptrIN4entt8internal16group_descriptorEE", !342, i64 0}
!344 = !{!"_ZTSSt4pairIjSt10shared_ptrIN4entt8internal16group_descriptorEEE", !23, i64 0, !343, i64 8}
!345 = !{!"_ZTSN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16group_descriptorEEEE", !28, i64 0, !344, i64 8}
!346 = !{!345, !28, i64 0}
!347 = distinct !{!347, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!348 = distinct !{!348, !347, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!349 = distinct !{!349, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!350 = distinct !{!350, !349, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!351 = !{!348}
!352 = !{!350}
!353 = !{!350, !348}
!354 = distinct !{!354, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!355 = distinct !{!355, !354, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!356 = distinct !{!356, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!357 = distinct !{!357, !356, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!358 = !{!355}
!359 = !{!357}
!360 = !{!357, !355}
!361 = distinct !{!361, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!362 = distinct !{!362, !361, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!363 = distinct !{!363, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!364 = distinct !{!364, !363, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!365 = !{!362}
!366 = !{!364}
!367 = !{!364, !362}
!368 = !{!"_ZTSN7testing8internal12CodeLocationE", !61, i64 0, !23, i64 32}
!369 = !{!368, !23, i64 32}
!370 = !{!"p1 _ZTSN7testing8TestInfoE", !31, i64 0}
!371 = !{!370, !370, i64 0}
end_hunk_2
