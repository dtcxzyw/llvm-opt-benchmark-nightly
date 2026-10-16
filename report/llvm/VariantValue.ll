Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VariantValue?download=true
inline.NumInlined: 558
inline.NumDeleted: 310
begin_hunk_0_@_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev:bb.a
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !58
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !155
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !155
  br label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18
  br label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i

_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !58
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !156
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !156
  br label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !157
  br label %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers7dynamic14VariantMatcherEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i.i, %bb.a
  %i.w = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i, label %_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21, !inline_history !157
  br label %_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev.exit

_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers7dynamic14VariantMatcherEEvT_S5_.exit.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayload16getSingleMatcherEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.747") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayload15getTypeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !28
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 4
  %.not9 = icmp eq ptr %i.e, %i.f
  br i1 %.not9, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !38, !noalias !163 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %.not.i.peel = icmp eq ptr %.pre, null
  br i1 %.not.i.peel, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel.thread, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel

_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel.thread: ; preds = %bb.b
  store ptr %i.k, ptr %2, align 8, !tbaa !25, !alias.scope !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.k, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  store i64 9, ptr %i.l, align 8, !tbaa !28, !alias.scope !163
  store i8 0, ptr %i.m, align 1, !tbaa !17, !alias.scope !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel

_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel: ; preds = %bb.b
  %i.n = load ptr, ptr %.pre, align 8, !tbaa !42, !noalias !163
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !163
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %.pre) #18, !inline_history !75
  %.pre13 = load i64, ptr %i.l, align 8, !tbaa !28 ; 2 uses
  %.pre14 = load i64, ptr %i.b, align 8, !tbaa !28
  %i.q = sub i64 4611686018427387903, %.pre14
  %i.r = icmp ult i64 %i.q, %.pre13
  br i1 %i.r, label %.loopexit12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel.thread, %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel
  %i.s = phi i64 [ 9, %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel.thread ], [ %.pre13, %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !30
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.t, i64 noundef %i.s) #18 ; 0 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.x = load i64, ptr %i.k, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.not.peel = icmp eq i64 %i.i, 16
  br i1 %.not.peel, label %._crit_edge, label %.split7

.split7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i64 [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !28
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.split7
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #19
  unreachable

bb.c:                                             ; preds = %.split7
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.23, i64 noundef 1) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.010
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38, !noalias !164 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42, !noalias !164
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !164
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18, !inline_history !75
  %.pre15 = load i64, ptr %i.l, align 8, !tbaa !28
  br label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.k, ptr %2, align 8, !tbaa !25, !alias.scope !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.k, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  store i64 9, ptr %i.l, align 8, !tbaa !28, !alias.scope !164
  store i8 0, ptr %i.m, align 1, !tbaa !17, !alias.scope !164
  br label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit

_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit: ; preds = %bb.d, %._crit_edge.i.i.i
  %i.ai = phi i64 [ %.pre15, %bb.d ], [ 9, %._crit_edge.i.i.i ] ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ak = sub i64 4611686018427387903, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %.loopexit12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

.loopexit12:                                      ; preds = %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit, %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit.peel
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev.exit
  %i.am = load ptr, ptr %2, align 8, !tbaa !30
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.am, i64 noundef %i.ai) #18 ; 0 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !17
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.as = add i64 %.010, 1                        ; 2 uses
  %.not = icmp eq i64 %i.as, %i.j
  br i1 %.not, label %._crit_edge, label %.split7, !llvm.loop !162

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayload15getTypedMatcherERKNS2_10MatcherOpsE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.747") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  tail call void @_ZNK5clang12ast_matchers7dynamic14VariantMatcher10MatcherOps25constructVariadicOperatorENS0_8internal15DynTypedMatcher16VariadicOperatorEN4llvm8ArrayRefIS2_EE(ptr dead_on_unwind writable sret(%"class.std::optional.747") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %i.b, ptr %i.d, i64 %i.j)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayload15isConvertibleToENS_11ASTNodeKindEPj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.d
  br i1 %.not14, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.010.015 = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.010.015, align 8, !tbaa !38 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit.thread, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit

_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %1, ptr noundef %2) #18, !inline_history !2
  br i1 %i.j, label %bb.b, label %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit.thread

_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit.thread: ; preds = %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit, %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ true, %bb.b ], [ false, %_ZNK5clang12ast_matchers7dynamic14VariantMatcher15isConvertibleToENS_11ASTNodeKindEPj.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null, null, null, null, null, null, null, null}
!1 = distinct !{!1, !55}
!2 = distinct !{null}
!3 = distinct !{!3, !55}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN5clang12ast_matchers7dynamic7ArgKind4KindE", !8, i64 0}
!13 = !{!"_ZTSN5clang11ASTNodeKind10NodeKindIdE", !8, i64 0}
!14 = !{!"_ZTSN5clang11ASTNodeKindE", !13, i64 0}
!15 = !{!"_ZTSN5clang12ast_matchers7dynamic7ArgKindE", !12, i64 0, !14, i64 4}
!16 = !{!15, !12, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"_ZTSN4llvm5Twine8NodeKindE", !8, i64 0}
!19 = !{!"_ZTSN4llvm5TwineE", !8, i64 0, !8, i64 16, !18, i64 32, !18, i64 33}
!20 = !{!19, !18, i64 32}
!21 = !{!19, !18, i64 33}
!22 = !{!"any pointer", !8, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !8, i64 16}
!28 = !{!27, !26, i64 8}
!29 = !{!26, !26, i64 0}
!30 = !{!27, !23, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!13, !13, i64 0}
!33 = !{!"bool", !8, i64 0}
!34 = !{!"p1 _ZTSN5clang12ast_matchers7dynamic14VariantMatcher7PayloadE", !22, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIKN5clang12ast_matchers7dynamic14VariantMatcher7PayloadELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !36, i64 8}
!38 = !{!37, !34, i64 0}
!39 = !{!"_ZTSSt22_Optional_payload_baseIN5clang12ast_matchers8internal15DynTypedMatcherEE", !8, i64 0, !33, i64 24}
!40 = !{!39, !33, i64 24}
!41 = !{!"vtable pointer", !7, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!"p1 _ZTSN5clang12ast_matchers8internal15DynTypedMatcherE", !22, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 8}
!48 = !{!46, !45, i64 16}
!49 = !{!"p1 _ZTSN5clang12ast_matchers8internal19DynMatcherInterfaceE", !22, i64 0}
!50 = !{!"_ZTSN4llvm18IntrusiveRefCntPtrIN5clang12ast_matchers8internal19DynMatcherInterfaceEEE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!46, !45, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!45, !45, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!57 = !{!56, !9, i64 8}
!58 = !{!56, !9, i64 12}
!59 = !{!36, !35, i64 0}
!60 = !{!"p1 _ZTSN5clang12ast_matchers7dynamic14VariantMatcherE", !22, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 16}
!63 = !{!60, !60, i64 0}
!64 = !{!"_ZTSN5clang12ast_matchers7dynamic14VariantMatcher7PayloadE"}
!65 = !{!"_ZTSN5clang12ast_matchers8internal15DynTypedMatcher16VariadicOperatorE", !8, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EE12_Vector_implE", !61, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN5clang12ast_matchers7dynamic14VariantMatcherESaIS3_EE", !67, i64 0}
!69 = !{!"_ZTSN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadE", !64, i64 0, !65, i64 8, !68, i64 16}
!70 = !{!69, !65, i64 8}
!71 = !{!"_ZTSN5clang12ast_matchers7dynamic12VariantValue9ValueTypeE", !8, i64 0}
!72 = !{!"_ZTSN5clang12ast_matchers7dynamic12VariantValueE", !71, i64 0, !8, i64 8}
!73 = !{!72, !71, i64 0}
!74 = !{!22, !22, i64 0}
!75 = !{ptr @_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev}
!76 = !{!"llvm.loop.peeled.count", i32 1}
!77 = !{!61, !60, i64 0}
!78 = !{!61, !60, i64 8}
!79 = distinct !{!79, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!80 = distinct !{!80, !79, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!82 = distinct !{!82, !81, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!84 = distinct !{!84, !83, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!86 = distinct !{!86, !85, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!88 = distinct !{!88, !87, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!89 = !{!82, !80}
!90 = !{!86, !84}
!91 = !{!88}
!92 = !{!33, !33, i64 0}
!93 = distinct !{null, null, null, null, null, null, null, null, null}
!94 = distinct !{!94, !55}
!95 = distinct !{!95, i1 true, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher13SinglePayloadEJRKNS1_8internal15DynTypedMatcherEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!96 = distinct !{!96, !95, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher13SinglePayloadEJRKNS1_8internal15DynTypedMatcherEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher13SinglePayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!98 = distinct !{!98, !97, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher13SinglePayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!99 = !{!98, !96}
!100 = !{!96}
!101 = distinct !{!101, i1 true, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadEJSt6vectorINS1_8internal15DynTypedMatcherESaIS7_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!102 = distinct !{!102, !101, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadEJSt6vectorINS1_8internal15DynTypedMatcherESaIS7_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!104 = distinct !{!104, !103, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!105 = !{!104, !102}
!106 = !{!102}
!107 = distinct !{!107, i1 true, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadEJRNS1_8internal15DynTypedMatcher16VariadicOperatorESt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!108 = distinct !{!108, !107, !"_ZSt11make_sharedIN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadEJRNS1_8internal15DynTypedMatcher16VariadicOperatorESt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!110 = distinct !{!110, !109, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!111 = !{!110, !108}
!112 = !{!108}
!113 = distinct !{null, null, null, null}
!114 = !{!34, !34, i64 0}
!115 = distinct !{null, null, null, null}
!116 = distinct !{ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue15isConvertibleToENS1_7ArgKindEPj, null}
!117 = distinct !{!117, i1 true, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev"}
!118 = distinct !{!118, !117, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!120 = distinct !{!120, !119, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!121 = !{!118}
!122 = !{!120}
!123 = distinct !{null}
!124 = distinct !{!124, !55}
!125 = distinct !{null, null, null, null, null, null, null, null}
!126 = distinct !{null}
!127 = distinct !{null, null, null, null, null}
!128 = distinct !{ptr @_ZN5clang12ast_matchers7dynamic14VariantMatcher13SinglePayloadD2Ev, null, null, null, null, null}
!129 = distinct !{!129, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!130 = distinct !{!130, !129, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!132 = distinct !{!132, !131, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!134 = distinct !{!134, !133, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!136 = distinct !{!136, !135, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!137 = !{!132, !130}
!138 = !{!136, !134}
!139 = distinct !{null}
!140 = distinct !{ptr @_ZN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadD2Ev, null, null, null, null, null, null, null, null, null}
!141 = !{ptr @_ZN5clang12ast_matchers7dynamic14VariantMatcher18PolymorphicPayloadD2Ev}
!142 = distinct !{!142, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!143 = distinct !{!143, !142, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!145 = distinct !{!145, !144, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!147 = distinct !{!147, !146, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!149 = distinct !{!149, !148, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!150 = distinct !{!150, !55, !76}
!151 = !{!145, !143}
!152 = !{!149, !147}
!153 = distinct !{!153, !55}
!154 = distinct !{null}
!155 = distinct !{null, null, null, null, null, null, null, null}
!156 = distinct !{ptr @_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev, null, null, null, null, null, null, null, null}
!157 = !{ptr @_ZN5clang12ast_matchers7dynamic14VariantMatcher17VariadicOpPayloadD2Ev}
!158 = distinct !{!158, i1 true, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev"}
!159 = distinct !{!159, !158, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev: argument 0:Peel0"}
!160 = distinct !{!160, i1 true, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev"}
!161 = distinct !{!161, !160, !"_ZNK5clang12ast_matchers7dynamic14VariantMatcher15getTypeAsStringB5cxx11Ev: argument 0"}
!162 = distinct !{!162, !55, !76}
!163 = !{!159}
!164 = !{!161}
end_hunk_0
