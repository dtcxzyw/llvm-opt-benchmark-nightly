Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.10?download=true
begin_hunk_0_@_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1U_5StateEENCNvMs1_B1U_NtB1U_9StateData9can_error0EINtNtB7_6cloned6ClonedIB1s_INtNtNtBb_3ops5range14RangeInclusivehEEEENtNtNtB9_6traits8iterator8Iterator9size_hintB1W_:bb.a
bb.l:                                             ; preds = %bb.c
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1p_5StateEENCNvMs1_B1p_NtB1p_9StateData9can_error0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1r_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %1) #25
  %i.ay = load i64, ptr %i.b, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc nuw i64 %i.bd to i1
  %or.cond62 = select i1 %i.bb, i1 %i.be, i1 false
  %i.bf = trunc nuw i64 %i.m to i1
  %or.cond63 = select i1 %or.cond62, i1 %i.bf, i1 false
  %i.bg = trunc nuw i64 %i.t to i1
  %i.bh = icmp eq i64 %i.ba, 0
  %i.bi = select i1 %or.cond63, i1 %i.bg, i1 false
  %or.cond65 = select i1 %i.bi, i1 %i.bh, i1 false
  br i1 %or.cond65, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.bj = trunc nuw i64 %i.m to i1
  %i.bk = trunc nuw i64 %i.t to i1
  %or.cond58 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.w, ptr %0, align 8
  br label %bb.k

bb.o:                                             ; preds = %bb.l, %bb.m
  %i.bl = add i64 %i.v, %i.o                      ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.o
  %.59 = zext i1 %i.bm to i64
  store i64 %i.w, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.59, ptr %i.bn, align 8
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_NtCshx33xqnyVJN_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics12GenericParamENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr sret([464 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshx33xqnyVJN_3syn8generics12GenericParamENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr sret([464 x i8]) align 8 %0, ptr align 8 %1) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXsk_NtNtCskKLDkoKarTP_4core3cmp5implshNtB7_9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty4TypeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_2ty4TypeEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_2ty9BareFnArgENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_2ty9BareFnArgEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4data5FieldENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4data5FieldEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4data7VariantENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4data7VariantEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path11PathSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4path11PathSegmentEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutB7_(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4path15GenericArgumentEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_8generics14TypeParamBoundENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_8generics14TypeParamBoundEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call align 8 ptr %i.h(ptr %i.e) #25
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCshx33xqnyVJN_3syn2ty4TypeENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h) #25
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty4TypeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsC_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty4TypeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsC_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty4TypeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.f = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsC_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.e, ptr align 8 %0) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.lr.ph, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1P_14PrivateIterMutBK_B1e_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsB_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i) #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1P_14PrivateIterMutBK_B1e_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsB_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i.i) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.g

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.a, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit
  %i.j = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1P_14PrivateIterMutBK_B1e_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsB_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k, ptr nonnull align 8 %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h) #25
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.f = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.e, ptr align 8 %0) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.lr.ph, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty9BareFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i) #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty9BareFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty9BareFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_2ty9BareFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i.i) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.g

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.a, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit
  %i.j = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k, ptr nonnull align 8 %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCshx33xqnyVJN_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h) #25
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.f = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsC_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.e, ptr align 8 %0) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.lr.ph, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i) #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i.i) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.g

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.a, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit
  %i.j = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k, ptr nonnull align 8 %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h) #25
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsC_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsC_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.f = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsC_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.e, ptr align 8 %0) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.lr.ph, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB23_14PrivateIterMutBK_B1s_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsB_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i) #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB23_14PrivateIterMutBK_B1s_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsB_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i.i) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.g

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.a, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit
  %i.j = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB23_14PrivateIterMutBK_B1s_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsB_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k, ptr nonnull align 8 %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.h) #25
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsC_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsC_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %0) #25
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #25
  %i.f = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsC_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.e, ptr align 8 %0) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %.lr.ph, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBX_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBO_5token4PlusEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB25_14PrivateIterMutBK_B1v_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsB_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i) #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBX_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBO_5token4PlusEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB25_14PrivateIterMutBK_B1v_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsB_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.01.0.i.i.i, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0.i.i.i) #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread, label %bb.g

_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.a, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit
  %i.j = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBX_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBO_5token4PlusEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB25_14PrivateIterMutBK_B1v_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundE7or_elseNCNvXsB_NtBN_10punctuatedINtB1L_14PrivateIterMutBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k, ptr nonnull align 8 %i.l) #25
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ null, %_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens15to_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXsc_NtCshx33xqnyVJN_3syn2tyNtB5_4TypeNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #27
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXsc_NtCshx33xqnyVJN_3syn2tyNtB5_4TypeNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #27
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr align 8 %1) #27
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn2ty4TypeEBF_(ptr align 8 %1)
  ret void

bb.f:                                             ; preds = %.body
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %.body
end_hunk_0
