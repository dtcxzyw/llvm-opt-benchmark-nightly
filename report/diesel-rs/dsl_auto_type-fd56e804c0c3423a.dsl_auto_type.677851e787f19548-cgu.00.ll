Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.00?download=true
inline.NumInlined: 902
inline.NumDeleted: 370
begin_hunk_0_@_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type:bb.a
  store ptr null, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn8generics12GenericParamE7or_elseNCNvXsx_NtBN_10punctuatedINtB1J_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1969, !noalias !1974, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1969, !noalias !1974, !nonnull !4, !noundef !4
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn8generics12GenericParamE7or_elseNCNvXsx_NtBN_10punctuatedINtB1J_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -472 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1969, !noalias !1974
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn8generics12GenericParamE7or_elseNCNvXsx_NtBN_10punctuatedINtB1J_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs8SLDEF1Cvau_13dsl_auto_type.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn8generics12GenericParamE7or_elseNCNvXsx_NtBN_10punctuatedINtB1J_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 79511827903920483) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 96076792050570583) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 100254043878856260) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 177372539170284152) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 192153584101141164) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 57646075230342350) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 39082084901927018) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 472
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1976, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1976, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1976, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1979
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -232 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1982, !noalias !1987
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 795118279039204811
  %i.k = mul i64 %i.i, -795118279039204811
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 3
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 7
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -232
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -928
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1989

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -928
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1982, !noalias !1987
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1979
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -232 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1982, !noalias !1987
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1993

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1979
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1994, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1997
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1994 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -232 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2000, !noalias !2005
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 795118279039204811
  %i.j = mul i64 %i.h, -795118279039204811
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 3
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 7
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -232
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -928
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2007

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -928
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2000, !noalias !2005
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2008
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -232 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2000, !noalias !2005
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2011

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1997
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2008 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2008
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2012, !noalias !2017, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2012, !noalias !2017, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -232 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2012, !noalias !2017
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2019, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2019
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2026
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2019
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2027, !noalias !2032
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2034
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2037, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2046
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2037
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2047, !noalias !2052
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  store ptr %i.o, ptr %0, align 8, !alias.scope !2034
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2054, !noalias !2059, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2054, !noalias !2059
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2061, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2061, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2061, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2064
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -192 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2067, !noalias !2072
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 96076792050570581
  %i.k = mul i64 %i.i, -96076792050570581
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 63
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -192
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -768
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2074

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -768
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2067, !noalias !2072
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2064
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -192 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2067, !noalias !2072
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2075

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2064
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2076, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2079
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2076 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -192 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2082, !noalias !2087
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 96076792050570581
  %i.j = mul i64 %i.h, -96076792050570581
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 6
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 63
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -192
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -768
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2089

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -768
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2082, !noalias !2087
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2090
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -192 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2082, !noalias !2087
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2093

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2079
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2090 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2090
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2094, !noalias !2099, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2094, !noalias !2099, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -192 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2094, !noalias !2099
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_3pat3PatNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2101, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2101
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2108
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2101
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2109, !noalias !2114
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_3pat3PatNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_3pat3PatNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_3pat3PatNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2116
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2119, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2128
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2119
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2129, !noalias !2134
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  store ptr %i.o, ptr %0, align 8, !alias.scope !2116
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2136, !noalias !2141, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2136, !noalias !2141
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2143, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2143, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2143, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2146
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -184 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2149, !noalias !2154
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 902286394909706329
  %i.k = mul i64 %i.i, -902286394909706329
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 3
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 7
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -184
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -736
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2156

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -736
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2149, !noalias !2154
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2146
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -184 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2149, !noalias !2154
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2157

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2146
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2158, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2161
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2158 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -184 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2164, !noalias !2169
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 902286394909706329
  %i.j = mul i64 %i.h, -902286394909706329
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 3
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 7
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -184
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -736
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2171

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -736
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2164, !noalias !2169
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2172
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -184 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2164, !noalias !2169
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2175

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2161
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2172 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2172
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2176, !noalias !2181, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2176, !noalias !2181, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -184 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2176, !noalias !2181
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2183, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2183
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2190
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2183
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2191, !noalias !2196
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2198
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2201, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2210
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2201
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2211, !noalias !2216
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  store ptr %i.o, ptr %0, align 8, !alias.scope !2198
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2218, !noalias !2223, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2218, !noalias !2223
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2225, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2225, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2225, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2228
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -104 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2231, !noalias !2236
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 1241607774191989051
  %i.k = mul i64 %i.i, -1241607774191989051
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 3
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 7
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -104
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -416
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2238

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -416
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2231, !noalias !2236
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2228
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -104 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2231, !noalias !2236
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2239

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2228
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2240, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2243
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2240 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -104 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2246, !noalias !2251
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 1241607774191989051
  %i.j = mul i64 %i.h, -1241607774191989051
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 3
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 7
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -104
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -416
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2253

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -416
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2246, !noalias !2251
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2254
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2246, !noalias !2251
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2257

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2243
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2254 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2254
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2258, !noalias !2263, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2258, !noalias !2263, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -104 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2258, !noalias !2263
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2265, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2265
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2272
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2265
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2273, !noalias !2278
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2280
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2283, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2292
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2283
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2293, !noalias !2298
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store ptr %i.o, ptr %0, align 8, !alias.scope !2280
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2300, !noalias !2305, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2300, !noalias !2305
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2307, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2307, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2307, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2310
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -96 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2313, !noalias !2318
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 384307168202282325
  %i.k = mul i64 %i.i, -384307168202282325
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 5
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 31
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -96
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -384
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2320

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2313, !noalias !2318
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2310
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2313, !noalias !2318
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2321

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2310
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2322, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2325
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2322 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -96 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2328, !noalias !2333
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 384307168202282325
  %i.j = mul i64 %i.h, -384307168202282325
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 5
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 31
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -96
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -384
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2335

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2328, !noalias !2333
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2336
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2328, !noalias !2333
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2339

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2325
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2336 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2336
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2340, !noalias !2345, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2340, !noalias !2345, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -96 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2340, !noalias !2345
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2347, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2347
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2354
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2347
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2355, !noalias !2360
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2362
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2365, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2374
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2365
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2375, !noalias !2380
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.o, ptr %0, align 8, !alias.scope !2362
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2382, !noalias !2387, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2382, !noalias !2387
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2389, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2389, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2389, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2392
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -320 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2395, !noalias !2400
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 230584300921369395
  %i.k = mul i64 %i.i, -230584300921369395
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 63
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -320
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1280
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2402

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -1280
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2395, !noalias !2400
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2392
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -320 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2395, !noalias !2400
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2403

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2392
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2404, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2407
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2404 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -320 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2410, !noalias !2415
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 230584300921369395
  %i.j = mul i64 %i.h, -230584300921369395
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 6
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 63
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -320
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1280
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2417

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -1280
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2410, !noalias !2415
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2418
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -320 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2410, !noalias !2415
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2421

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2407
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2418 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2418
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2422, !noalias !2427, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2422, !noalias !2427, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -320 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2422, !noalias !2427
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2429, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2429
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2436
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2429
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2437, !noalias !2442
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_4path15GenericArgumentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2444
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2447, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2456
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2447
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2457, !noalias !2462
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  store ptr %i.o, ptr %0, align 8, !alias.scope !2444
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2464, !noalias !2469, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2464, !noalias !2469
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2471, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2471, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 472
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2471, !align !8, !noundef !4
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2474
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -472 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2477, !noalias !2482
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 1446037141371299597
  %i.k = mul i64 %i.i, -1446037141371299597
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 3
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 7
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -472
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1888
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2484

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -1888
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2477, !noalias !2482
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2474
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -472 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2477, !noalias !2482
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2485

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2474
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2486, !nonnull !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2489
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2486 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -472 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2492, !noalias !2497
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 1446037141371299597
  %i.j = mul i64 %i.h, -1446037141371299597
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 3
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 7
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -472
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1888
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2499

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -1888
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2492, !noalias !2497
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2500
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -472 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2492, !noalias !2497
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2503

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2489
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2500 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2500
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2504, !noalias !2509, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2504, !noalias !2509, !nonnull !4, !noundef !4
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -472 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2504, !noalias !2509
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2511, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2511
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2518
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2511
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2519, !noalias !2524
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2526
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2529, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2538
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2529
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2539, !noalias !2544
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  store ptr %i.o, ptr %0, align 8, !alias.scope !2526
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2546, !noalias !2551, !align !8, !noundef !4
  store ptr null, ptr %i.p, align 8, !alias.scope !2546, !noalias !2551
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
end_hunk_0
