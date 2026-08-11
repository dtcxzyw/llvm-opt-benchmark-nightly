inline.NumInlined: 958
inline.NumDeleted: 413
begin_hunk_0_@_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros
define internal noundef align 8 ptr @_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1606, !align !12, !noundef !11 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1606
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1609, !noalias !1616, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1609, !noalias !1616, !nonnull !11, !noundef !11
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -288 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1609, !noalias !1616
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1618, !align !12, !noundef !11 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1618
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE7or_elseNCNvXsx_NtBN_10punctuatedINtB1w_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1621, !noalias !1628, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1621, !noalias !1628, !nonnull !11, !noundef !11
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE7or_elseNCNvXsx_NtBN_10punctuatedINtB1w_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -176 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1621, !noalias !1628
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE7or_elseNCNvXsx_NtBN_10punctuatedINtB1w_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE7or_elseNCNvXsx_NtBN_10punctuatedINtB1w_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1630, !align !12, !noundef !11 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1630
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token7PathSepENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1633, !noalias !1640, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1633, !noalias !1640, !nonnull !11, !noundef !11
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token7PathSepENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -96 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1633, !noalias !1640
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token7PathSepENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token7PathSepENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 35474507834056832) i64 @_RNvXsy_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1642, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1642, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 520
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 64051194700380389) i64 @_RNvXsy_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1645, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1645, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 104811045873349727) i64 @_RNvXsy_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1648, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1648, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 192153584101141164) i64 @_RNvXsy_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1651, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1651, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1654, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1654, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 520
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1659, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1660
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -520 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1665, !noalias !1672
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 1170658758523875391
  %i.k = mul i64 %i.i, -1170658758523875391
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
  %i.v = mul i64 %n.vec, -520
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -2080
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1674

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1665, !noalias !1672
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1660
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1665, !noalias !1672
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1678

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1660
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1679, !nonnull !11 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1682
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1679 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -520 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1687, !noalias !1694
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 1170658758523875391
  %i.j = mul i64 %i.h, -1170658758523875391
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
  %i.u = mul i64 %n.vec, -520
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -2080
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1696

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1687, !noalias !1694
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1697
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1687, !noalias !1694
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1702

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1682
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1697 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1697
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1703, !noalias !1710, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1703, !noalias !1710, !nonnull !11, !noundef !11
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -520 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1703, !noalias !1710
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1712, !nonnull !11, !noundef !11
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1712
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1721
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1712
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1722, !noalias !1729
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1731
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1736, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1747
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1736
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1748, !noalias !1755
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i: ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 520
  store ptr %i.o, ptr %0, align 8, !alias.scope !1731
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1757, !noalias !1764, !align !12, !noundef !11
  store ptr null, ptr %i.p, align 8, !alias.scope !1757, !noalias !1764
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i ], [ %i.q, %bb.e ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsfOIrz68VyyU_11ruff_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1766, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1766, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1771, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1772
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -288 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1777, !noalias !1784
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 128102389400760775
  %i.k = mul i64 %i.i, -128102389400760775
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
  %i.v = mul i64 %n.vec, -288
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1152
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1786

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -1152
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1777, !noalias !1784
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1772
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -288 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1777, !noalias !1784
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1787

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1772
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1788, !nonnull !11 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1791
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1788 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -288 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1796, !noalias !1803
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 128102389400760775
  %i.j = mul i64 %i.h, -128102389400760775
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
  %i.u = mul i64 %n.vec, -288
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1152
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1805

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -1152
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1796, !noalias !1803
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1806
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -288 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1796, !noalias !1803
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1811

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1791
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1806 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1806
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1812, !noalias !1819, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1812, !noalias !1819, !nonnull !11, !noundef !11
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -288 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1812, !noalias !1819
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1821, !nonnull !11, !noundef !11
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1821
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1830
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1821
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1831, !noalias !1838
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1840
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1845, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1856
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1845
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1857, !noalias !1864
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i: ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  store ptr %i.o, ptr %0, align 8, !alias.scope !1840
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1866, !noalias !1873, !align !12, !noundef !11
  store ptr null, ptr %i.p, align 8, !alias.scope !1866, !noalias !1873
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i ], [ %i.q, %bb.e ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsfOIrz68VyyU_11ruff_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1875, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1875, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1880, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1881
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -176 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1886, !noalias !1893
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 104811045873349725
  %i.k = mul i64 %i.i, -104811045873349725
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 4
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 15
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -176
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -704
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1895

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -704
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1886, !noalias !1893
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1881
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -176 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1886, !noalias !1893
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1896

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1881
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1897, !nonnull !11 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1900
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1897 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -176 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1905, !noalias !1912
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 104811045873349725
  %i.j = mul i64 %i.h, -104811045873349725
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 4
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 15
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -176
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -704
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1914

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -704
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1905, !noalias !1912
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1915
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -176 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1905, !noalias !1912
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1920

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1900
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1915 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1915
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1921, !noalias !1928, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1921, !noalias !1928, !nonnull !11, !noundef !11
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -176 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1921, !noalias !1928
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1930, !nonnull !11, !noundef !11
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1930
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1939
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1930
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1940, !noalias !1947
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4expr4ExprNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1949
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1954, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1965
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1954
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1966, !noalias !1973
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i: ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  store ptr %i.o, ptr %0, align 8, !alias.scope !1949
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1975, !noalias !1982, !align !12, !noundef !11
  store ptr null, ptr %i.p, align 8, !alias.scope !1975, !noalias !1982
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i ], [ %i.q, %bb.e ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsfOIrz68VyyU_11ruff_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1984, !nonnull !11, !noundef !11
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1984, !nonnull !11, !noundef !11
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1989, !align !12, !noundef !11
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1990
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -96 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1995, !noalias !2002
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
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2004

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1995, !noalias !2002
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1990
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1995, !noalias !2002
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2005

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1990
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2006, !nonnull !11 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2009
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2006 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -96 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2014, !noalias !2021
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2023

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2014, !noalias !2021
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2024
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2014, !noalias !2021
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2029

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2009
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2024 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2024
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2030, !noalias !2037, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2030, !noalias !2037, !nonnull !11, !noundef !11
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -96 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2030, !noalias !2037
  br label %_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit

_RNvXsx_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCsfOIrz68VyyU_11ruff_macros.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2039, !nonnull !11, !noundef !11
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2039
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2048
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2039
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2049, !noalias !2056
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.c

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsfOIrz68VyyU_11ruff_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2058
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2063, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2074
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, label %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2063
  br label %bb.d

_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2075, !noalias !2082
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentNtNtBU_5token7PathSepEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentNtNtBU_5token7PathSepEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i: ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.o, ptr %0, align 8, !alias.scope !2058
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2084, !noalias !2091, !align !12, !noundef !11
  store ptr null, ptr %i.p, align 8, !alias.scope !2084, !noalias !2091
  br label %_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit

_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentNtNtBU_5token7PathSepEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentNtNtBU_5token7PathSepEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i ], [ %i.q, %bb.e ], [ null, %_RNvXsw_NtCsfq6Q4Do6HaX_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfOIrz68VyyU_11ruff_macros.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsfOIrz68VyyU_11ruff_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
end_hunk_0
