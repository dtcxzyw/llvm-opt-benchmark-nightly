Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.00?download=true
inline.NumInlined: 820
inline.NumDeleted: 325
begin_hunk_0_@_RNvXsu_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator3lenB7_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 37800705069076952) i64 @_RNvXsu_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator3lenB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 488
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 144115188075855873) i64 @_RNvXsu_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator3lenB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !1641, !noalias !1644
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1641, !noalias !1644, !align !4, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1646
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef 8) #21, !noalias !1646 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !990

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25, !noalias !1646
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.d, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @9, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtB5_9IterTraitBU_E9clone_boxB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !1649, !noalias !1652
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1649, !noalias !1652, !align !4, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1654
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef 8) #21, !noalias !1654 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !990

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25, !noalias !1654
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.d, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @14, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !1657, !noalias !1660
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1657, !noalias !1660, !align !4, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1662
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef 8) #21, !noalias !1662 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !990

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25, !noalias !1662
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.d, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @17, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsw_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusEINtB5_9IterTraitBU_E9clone_boxB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !1665, !noalias !1668
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1665, !noalias !1668, !align !4, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1670
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 24, 513) 24, i64 noundef 8) #21, !noalias !1670 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !990

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25, !noalias !1670
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.d, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @22, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1673, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1673, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 520
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1673, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1676
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -520 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1679, !noalias !1684
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
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1686

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1679, !noalias !1684
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1676
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1679, !noalias !1684
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1690

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1676
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1691, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1694
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1691 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -520 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1697, !noalias !1702
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1704

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1697, !noalias !1702
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1705
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1697, !noalias !1702
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1708

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1694
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1705 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1705
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1709, !noalias !1714, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1709, !noalias !1714, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -520 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1709, !noalias !1714
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1716, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1716
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1723
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1716
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1724, !noalias !1729
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
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
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1734, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1743
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1734
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1744, !noalias !1749
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 520
  store ptr %i.o, ptr %0, align 8, !alias.scope !1731
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1751, !noalias !1756, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !1751, !noalias !1756
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1758, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1758, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1758, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1761
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -96 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1764, !noalias !1769
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
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1771

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1764, !noalias !1769
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1761
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1764, !noalias !1769
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1772

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1761
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1773, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1776
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1773 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -96 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1779, !noalias !1784
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1786

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -384
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1779, !noalias !1784
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1787
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -96 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1779, !noalias !1784
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1790

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1776
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1787 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1787
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1791, !noalias !1796, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1791, !noalias !1796, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -96 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1791, !noalias !1796
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1798, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1798
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1805
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1798
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1806, !noalias !1811
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_4path11PathSegmentNtNtB1i_5token7PathSepENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1813
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1816, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1825
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1816
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1826, !noalias !1831
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
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
  store ptr %i.o, ptr %0, align 8, !alias.scope !1813
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1833, !noalias !1838, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !1833, !noalias !1838
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1840, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1840, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 488
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1840, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1843
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -488 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1846, !noalias !1851
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 1171821857141385451
  %i.k = mul i64 %i.i, -1171821857141385451
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
  %i.v = mul i64 %n.vec, -488
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1952
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1853

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -1952
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1846, !noalias !1851
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1843
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -488 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1846, !noalias !1851
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1854

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1843
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1855, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1858
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1855 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -488 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1861, !noalias !1866
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 1171821857141385451
  %i.j = mul i64 %i.h, -1171821857141385451
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
  %i.u = mul i64 %n.vec, -488
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1952
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1868

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -1952
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1861, !noalias !1866
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1869
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -488 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1861, !noalias !1866
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1872

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1858
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1869 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1869
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1873, !noalias !1878, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1873, !noalias !1878, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -488 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1873, !noalias !1878
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1880, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1880
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1887
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1880
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1888, !noalias !1893
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1895
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1898, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1907
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1898
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1908, !noalias !1913
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  store ptr %i.o, ptr %0, align 8, !alias.scope !1895
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1915, !noalias !1920, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !1915, !noalias !1920
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1922, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1922, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1922, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1925
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -128 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1928, !noalias !1933
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 144115188075855871
  %i.k = mul i64 %i.i, -144115188075855871
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 7
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 127
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -128
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -512
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1935

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -512
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !1928, !noalias !1933
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !1925
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -128 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !1928, !noalias !1933
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !1936

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !1925
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1937, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1940
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !1937 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -128 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !1943, !noalias !1948
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 144115188075855871
  %i.j = mul i64 %i.h, -144115188075855871
  %i.k = add i64 %i.i, %i.j
  %i.l = lshr i64 %i.k, 7
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 127
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -128
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -512
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1950

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -512
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !1943, !noalias !1948
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !1951
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -128 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1943, !noalias !1948
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !1954

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !1940
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1951 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !1951
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1955, !noalias !1960, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1955, !noalias !1960, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -128 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !1955, !noalias !1960
  br label %_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXst_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1962, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1962
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1969
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1962
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1970, !noalias !1975
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB1i_8generics14TypeParamBoundNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1977
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1980, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1989
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1980
  br label %bb.d

_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !1990, !noalias !1995
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.o, ptr %0, align 8, !alias.scope !1977
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1997, !noalias !2002, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !1997, !noalias !2002
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXss_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated11PrivateIterNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2004, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2004, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 520
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2004, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2007
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -520 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2010, !noalias !2015
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
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2017

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2010, !noalias !2015
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2007
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2010, !noalias !2015
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2018

_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2007
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2019, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2022
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2019 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -520 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2025, !noalias !2030
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2032

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -2080
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2025, !noalias !2030
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2033
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -520 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2025, !noalias !2030
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2036

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2022
  br label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2033 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2033
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2037, !noalias !2042, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2037, !noalias !2042, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -520 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2037, !noalias !2042
  br label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2044, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2044
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2051
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2044
  br label %bb.d

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2052, !noalias !2057
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_4data5FieldNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2059
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2062, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2071
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2062
  br label %bb.d

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2072, !noalias !2077
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 520
  store ptr %i.o, ptr %0, align 8, !alias.scope !2059
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2079, !noalias !2084, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !2079, !noalias !2084
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2086, !nonnull !5, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2086, !nonnull !5, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 488
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2086, !align !4, !noundef !5
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5   ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !2089
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -488 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !2092, !noalias !2097
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 1171821857141385451
  %i.k = mul i64 %i.i, -1171821857141385451
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
  %i.v = mul i64 %n.vec, -488
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1952
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2099

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -1952
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !2092, !noalias !2097
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !2089
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -488 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !2092, !noalias !2097
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !2100

_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !2089
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2101, !nonnull !5 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2104
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !2101 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -488 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !2107, !noalias !2112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 1171821857141385451
  %i.j = mul i64 %i.h, -1171821857141385451
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
  %i.u = mul i64 %n.vec, -488
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -1952
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2114

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -1952
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !2107, !noalias !2112
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !2115
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -488 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !2107, !noalias !2112
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !2118

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !2104
  br label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !2115
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2119, !noalias !2124, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2119, !noalias !2124, !nonnull !5, !noundef !5
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -488 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !2119, !noalias !2124
  br label %_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit

_RNvXsC_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB7_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byB7_.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2126, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !2126
  %.promoted10.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2133
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2126
  br label %bb.d

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2134, !noalias !2139
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i ], [ %i.e, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB1i_8generics12GenericParamNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB1i_.exit: ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3nthB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2141
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2144, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted10.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2153
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted10.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, label %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !2144
  br label %bb.d

_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !2154, !noalias !2159
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.thread.i.i.i ], [ %i.e, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  store ptr %i.o, ptr %0, align 8, !alias.scope !2141
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2161, !noalias !2166, !align !4, !noundef !5
  store ptr null, ptr %i.p, align 8, !alias.scope !2161, !noalias !2166
  br label %_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit

_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byB7_.exit: ; preds = %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsB_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsgbWeKYPjk8w_3syn10punctuated14PrivateIterMutNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
end_hunk_0
