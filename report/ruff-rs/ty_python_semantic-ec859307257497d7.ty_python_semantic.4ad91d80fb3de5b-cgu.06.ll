Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteraluINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_EBW_:bb.a
  %i.al = icmp eq <2 x i32> %i.x, %i.ak           ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = extractelement <2 x i1> %i.al, i64 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.an, i1 %i.am, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteraluE12get_index_ofBL_EBT_.exit, label %bb.f, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.d
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteraluE12get_index_ofBL_EBT_.exit, !prof !23

bb.f:                                             ; preds = %_RNCINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs5e9M2GLoJMY_8indexmap5inner10equivalentNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteraluB1K_E0E0B1S_.exit.i.i
  %i.ar = add i16 %.sroa.05.0.i39.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.05.0.i39.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.au = add i64 %.sroa.01.0.i.i.i, %i.at
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 3 uses
  switch i64 %i.c, label %_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebE12get_index_ofBL_ECsoTR8nlGN3X_18ty_python_semantic.exit [
    i64 0, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5
    i64 1, label %bb.b
  ]

_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5: ; preds = %bb.b, %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread, %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.a, %_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebE12get_index_ofBL_ECsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0 = phi i64 [ %spec.select, %_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebE12get_index_ofBL_ECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.c, %bb.a ], [ 1, %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread ], [ 0, %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
  %.val = load ptr, ptr %1, align 8, !nonnull !24, !align !30, !noundef !24 ; 4 uses
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !24, !align !30, !noundef !24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 15
  %i.g = load i8, ptr %i.f, align 1, !range !31, !alias.scope !1668, !noalias !1669, !noundef !24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1668, !noalias !1669, !noundef !24
  %i.j = and i64 %i.i, 72057594037927935
  %i.k = icmp ult i8 %i.g, -48
  %i.l = zext i8 %i.g to i64
  %i.m = add nsw i64 %i.l, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.k, i64 %spec.store.select.i.i.i.i.i, i64 %i.j ; 2 uses
  %i.n = icmp ugt i8 %i.g, -49
  %i.o = load ptr, ptr %.val, align 8, !alias.scope !1668, !noalias !1669
  %.sroa.01.0.i.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %.val ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 15
  %i.q = load i8, ptr %i.p, align 1, !range !31, !alias.scope !1670, !noalias !1671, !noundef !24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1670, !noalias !1671, !noundef !24
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = icmp ult i8 %i.q, -48
  %i.v = zext i8 %i.q to i64
  %i.w = add nsw i64 %i.v, -192
  %spec.store.select.i4.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 16)
  %.sroa.0.0.i5.i.i.i.i = select i1 %i.u, i64 %spec.store.select.i4.i.i.i.i, i64 %i.t
  %i.x = icmp ugt i8 %i.q, -49
  %i.y = load ptr, ptr %.val2, align 8, !alias.scope !1670, !noalias !1671
  %.sroa.01.0.i6.i.i.i.i = select i1 %i.x, ptr %i.y, ptr %.val2 ; 2 uses
  %i.z = icmp eq i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i
  br i1 %i.z, label %bb.c, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %.sroa.01.0.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i
  br i1 %i.aa, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i)
  %bcmp.i.i.i.i.fr = freeze i32 %bcmp.i.i.i.i
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.fr, 0
  br i1 %i.ab, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5

_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.c, %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit
  br label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5

_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebE12get_index_ofBL_ECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1673
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1672, !noalias !1674, !nonnull !24, !noundef !24
  store ptr %1, ptr %i.a, align 8, !noalias !1673
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !1673
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.ah, align 8, !noalias !1673
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = call fastcc noundef ptr @_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs5e9M2GLoJMY_8indexmap5inner10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebB1I_E0ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai, i64 noundef %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  %.not.i = icmp ne ptr %i.aj, null
  %spec.select = zext i1 %.not.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1673
  br label %_RNvXCs8W57d8KsBYY_10equivalentRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB2_10EquivalentBs_E10equivalentCsoTR8nlGN3X_18ty_python_semantic.exit.thread5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE12pop_front_ifNCNvNtB19_3mro8c3_merges0_0EB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !24 ; 4 uses
  %i.f = load i64, ptr %1, align 8, !range !25, !noundef !24 ; 5 uses
  %.not6 = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not6, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.sroa.04.0 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1682
  %.sroa.0.0.copyload.i = load i8, ptr %i.j, align 4, !alias.scope !1681, !noalias !1683 ; 2 uses
  %i.k = icmp eq i8 %.sroa.0.0.copyload.i, 6
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.l, align 1, !noalias !1682
  br label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merges0_0B7_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i, i64 15, i1 false), !noalias !1683
  br label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merges0_0B7_.exit

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merges0_0B7_.exit: ; preds = %bb.d, %bb.e
  store i8 %.sroa.0.0.copyload.i, ptr %i.a, align 4, !noalias !1682
  %i.m = call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_9ClassBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1682
  br i1 %i.m, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE9pop_frontB1a_.exit, label %bb.g

bb.f:                                             ; preds = %bb.g, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE9pop_frontB1a_.exit, %bb.b
  ret void

bb.g:                                             ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merges0_0B7_.exit
  store i8 -1, ptr %0, align 4
  br label %bb.f

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE9pop_frontB1a_.exit: ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merges0_0B7_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.n = add i64 %i.e, 1                          ; 2 uses
  %.not.i = icmp ult i64 %i.n, %i.f
  %i.o = select i1 %.not.i, i64 0, i64 %i.f
  %.sroa.0.0.i = sub nuw i64 %i.n, %i.o
  store i64 %.sroa.0.0.i, ptr %i.d, align 8, !alias.scope !1684, !noalias !1685
  %i.p = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !1684, !noalias !1685
  %i.q = icmp ult i64 %i.p, %i.f
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !1684
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation11set_messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1688, !noundef !24 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !1688, !noundef !24 ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1688
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.b, %bb.a
  %i.g = extractvalue { ptr, i64 } %i.a, 1
  %i.h = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation11set_messageNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtNtCscdodAO9FK5_5alloc6string6StringNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1691, !noundef !24 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !1691, !noundef !24 ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1691
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.b, %bb.a
  %i.g = extractvalue { ptr, i64 } %i.a, 1
  %i.h = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation11set_messageRNtNtCsb6FLkjZuKG_18ruff_python_parser5error14ParseErrorTypeECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticRNtNtCsb6FLkjZuKG_18ruff_python_parser5error14ParseErrorTypeNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1694, !noundef !24 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !1694, !noundef !24 ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1694
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.b, %bb.a
  %i.g = extractvalue { ptr, i64 } %i.a, 1
  %i.h = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation11set_messageReECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1709
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1709
  %i.c = load i64, ptr %i.a, align 8, !range !27, !noalias !1709, !noundef !24
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !1709, !noundef !24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !1709
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #49, !noalias !1709
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !1709, !nonnull !24, !noundef !24 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1709
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticReNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !1710
  br label %_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticReNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticReNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !1711, !noalias !1706
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1711, !noalias !1706
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1711, !noalias !1706
  %i.k = call { ptr, i64 } @_RNvXsr_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_17DiagnosticMessageINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1706 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1706
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1712, !noundef !24 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticReNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.o, align 8, !alias.scope !1712, !noundef !24 ; 2 uses
  %i.p = icmp eq i64 %.val1.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1712
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.d, %_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticReNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.q = extractvalue { ptr, i64 } %i.k, 1
  %i.r = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  store ptr %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.q, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation7messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(80) %1) #50
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !38, !noundef !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.j, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.m = load i8, ptr %i.l, align 1, !range !38, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1715, !noundef !24 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !1715, !noundef !24 ; 2 uses
  %i.s = icmp eq i64 %.val1.i, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1715
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation7messageNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvXsu_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtNtCscdodAO9FK5_5alloc6string6StringNtB5_21IntoDiagnosticMessage23into_diagnostic_messageCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(80) %1) #50
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !38, !noundef !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.j, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.m = load i8, ptr %i.l, align 1, !range !38, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1718, !noundef !24 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !1718, !noundef !24 ; 2 uses
  %i.s = icmp eq i64 %.val1.i, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !1718
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation7messageReECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1733
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !27, !noalias !1733, !noundef !24
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !1733, !noundef !24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, !prof !23

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.g, align 8, !noalias !1733
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #49
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.b
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %.noexc
  %i.i = load ptr, ptr %i.g, align 8, !noalias !1733, !nonnull !24, !noundef !24 ; 2 uses
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1733
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !1734
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !1735, !noalias !1730
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1735, !noalias !1730
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1735, !noalias !1730
  %i.k = invoke { ptr, i64 } @_RNvXsr_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_17DiagnosticMessageINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(80) %1) #50
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1730
  %i.m = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i8, ptr %i.s, align 8, !range !38, !noundef !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.t, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_RINvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentE25try_for_each_element_pairNCNvNtNtB8_5infer11comparisons27infer_tuple_rich_comparisons_0NtB27_26UnsupportedComparisonErrorEBa_:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !24, !align !42 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !24, !align !30 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 128 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 6 uses
  %i.fv = xor i64 %i.fd, -1
  %i.fw = add i64 %i.ff, %i.fv                    ; 2 uses
  %.not177.peel = icmp eq i64 %i.fd, 0
  br i1 %.not177.peel, label %bb.r, label %bb.q, !prof !29

bb.q:                                             ; preds = %.lr.ph882
  %.not.i241.not.peel = icmp ult i64 %i.fd, %i.aq
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.fd
  br i1 %.not.i241.not.peel, label %bb.s, label %select.unfold824

bb.r:                                             ; preds = %.lr.ph882
  %i.fy = icmp eq i64 %i.aq, 0
  br i1 %i.fy, label %select.unfold824, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.089.0.peel = phi ptr [ %i.fx, %bb.q ], [ %i.ao, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.089.0.peel, i64 16, i1 false)
  store i32 %.sroa.091.0, ptr %i.fh, align 4
  store i32 %.sroa.593.sroa.0.0, ptr %.sroa.593.0..sroa_idx94, align 4
  store i64 %.sroa.593.sroa.5.0, ptr %.sroa.593.sroa.5.0..sroa.593.0..sroa_idx94.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14299
  %i.fz = load i8, ptr %i.fm, align 1, !range !46, !noalias !14299, !noundef !24
  %i.ga = load i32, ptr %i.fo, align 4, !noalias !14299, !noundef !24
  %i.gb = load i32, ptr %i.fp, align 4, !noalias !14299, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noundef nonnull align 8 %i.fk, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p, i1 noundef zeroext false, i8 noundef %i.fz, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.fh, i32 noundef %i.ga, i32 noundef %i.gb, ptr noundef nonnull align 8 %i.fr), !noalias !14300
  %i.gc = load i32, ptr %i.k, align 4, !range !36, !noalias !14299, !noundef !24 ; 2 uses
  %.not.i245.peel = icmp eq i32 %i.gc, -1
  br i1 %.not.i245.peel, label %bb.t, label %.loopexit934

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !14299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14299
  %i.gd = load i64, ptr %i.ft, align 8, !alias.scope !14301, !noalias !14302, !noundef !24 ; 2 uses
  %i.ge = icmp ugt i64 %i.gd, 8                   ; 2 uses
  %i.gf = load ptr, ptr %i.fi, align 8, !alias.scope !14301, !noalias !14302, !nonnull !24
  %.sink9.i.i.i251.peel = select i1 %i.ge, ptr %i.gf, ptr %i.fi
  %.sink8.i.i.i252.peel = select i1 %i.ge, ptr %i.fu, ptr %i.ft ; 2 uses
  %.sink.i.i.i253.peel = call i64 @llvm.umax.i64(i64 %i.gd, i64 8)
  %i.gg = load i64, ptr %.sink8.i.i.i252.peel, align 8, !alias.scope !14303, !noalias !14304, !noundef !24 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, %.sink.i.i.i253.peel
  br i1 %i.gh, label %bb.u, label %bb.v, !prof !23

bb.u:                                             ; preds = %bb.t
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fi), !noalias !14304
  %i.gi = load ptr, ptr %i.fi, align 8, !alias.scope !14303, !noalias !14304, !nonnull !24, !noundef !24
  %.pre.i.i257.peel = load i64, ptr %i.fu, align 8, !alias.scope !14303, !noalias !14304
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gj = phi i64 [ %.pre.i.i257.peel, %bb.u ], [ %i.gg, %bb.t ]
  %.sroa.01.0.i.i255.peel = phi ptr [ %i.fu, %bb.u ], [ %.sink8.i.i.i252.peel, %bb.t ] ; 2 uses
  %.sroa.0.0.i.i256.peel = phi ptr [ %i.gi, %bb.u ], [ %.sink9.i.i.i251.peel, %bb.t ]
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i256.peel, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gk, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, i64 16, i1 false), !noalias !14299
  %i.gl = load i64, ptr %.sroa.01.0.i.i255.peel, align 8, !alias.scope !14303, !noalias !14304, !noundef !24
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %.sroa.01.0.i.i255.peel, align 8, !alias.scope !14303, !noalias !14304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i244)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gn = icmp eq i64 %i.fw, 0
  br i1 %i.gn, label %select.unfold824, label %.peel.next932

.peel.next932:                                    ; preds = %bb.v, %bb.z
  %.sroa.0554.0881.pn = phi ptr [ %.sroa.0554.0881, %bb.z ], [ %.sroa.089.0.peel, %bb.v ]
  %.sroa.14559.0879 = phi i64 [ %i.go, %bb.z ], [ %i.fw, %bb.v ]
  %.sroa.0554.0881 = getelementptr inbounds nuw i8, ptr %.sroa.0554.0881.pn, i64 16 ; 3 uses
  %i.go = add i64 %.sroa.14559.0879, -1           ; 2 uses
  %i.gp = icmp eq ptr %.sroa.0554.0881, %i.ar
  br i1 %i.gp, label %select.unfold824, label %bb.w

bb.w:                                             ; preds = %.peel.next932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0554.0881, i64 16, i1 false)
  store i32 %.sroa.091.0, ptr %i.fh, align 4
  store i32 %.sroa.593.sroa.0.0, ptr %.sroa.593.0..sroa_idx94, align 4
  store i64 %.sroa.593.sroa.5.0, ptr %.sroa.593.sroa.5.0..sroa.593.0..sroa_idx94.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14299
  %i.gq = load i8, ptr %i.fm, align 1, !range !46, !noalias !14299, !noundef !24
  %i.gr = load i32, ptr %i.fo, align 4, !noalias !14299, !noundef !24
  %i.gs = load i32, ptr %i.fp, align 4, !noalias !14299, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noundef nonnull align 8 %i.fk, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p, i1 noundef zeroext false, i8 noundef %i.gq, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.fh, i32 noundef %i.gr, i32 noundef %i.gs, ptr noundef nonnull align 8 %i.fr), !noalias !14300
  %i.gt = load i32, ptr %i.k, align 4, !range !36, !noalias !14299, !noundef !24 ; 2 uses
  %.not.i245 = icmp eq i32 %i.gt, -1
  br i1 %.not.i245, label %bb.x, label %.loopexit934

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !14299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14299
  %i.gu = load i64, ptr %i.ft, align 8, !alias.scope !14301, !noalias !14302, !noundef !24 ; 2 uses
  %i.gv = icmp ugt i64 %i.gu, 8                   ; 2 uses
  %i.gw = load ptr, ptr %i.fi, align 8, !alias.scope !14301, !noalias !14302, !nonnull !24
  %.sink9.i.i.i251 = select i1 %i.gv, ptr %i.gw, ptr %i.fi
  %.sink8.i.i.i252 = select i1 %i.gv, ptr %i.fu, ptr %i.ft ; 2 uses
  %.sink.i.i.i253 = call i64 @llvm.umax.i64(i64 %i.gu, i64 8)
  %i.gx = load i64, ptr %.sink8.i.i.i252, align 8, !alias.scope !14303, !noalias !14304, !noundef !24 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, %.sink.i.i.i253
  br i1 %i.gy, label %bb.y, label %bb.z, !prof !23

bb.y:                                             ; preds = %bb.x
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fi), !noalias !14304
  %i.gz = load ptr, ptr %i.fi, align 8, !alias.scope !14303, !noalias !14304, !nonnull !24, !noundef !24
  %.pre.i.i257 = load i64, ptr %i.fu, align 8, !alias.scope !14303, !noalias !14304
  br label %bb.z

.loopexit934:                                     ; preds = %bb.w, %bb.s
  %.lcssa891 = phi i32 [ %i.gc, %bb.s ], [ %i.gt, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !14299
  %.sroa.510.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5772.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i247, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14299
  %.sroa.4771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4771.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i244)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 %.lcssa891, ptr %0, align 4
  br label %bb.cl

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ha = phi i64 [ %.pre.i.i257, %bb.y ], [ %i.gx, %bb.x ]
  %.sroa.01.0.i.i255 = phi ptr [ %i.fu, %bb.y ], [ %.sink8.i.i.i252, %bb.x ] ; 2 uses
  %.sroa.0.0.i.i256 = phi ptr [ %i.gz, %bb.y ], [ %.sink9.i.i.i251, %bb.x ]
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i256, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i244, i64 16, i1 false), !noalias !14299
  %i.hc = load i64, ptr %.sroa.01.0.i.i255, align 8, !alias.scope !14303, !noalias !14304, !noundef !24
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %.sroa.01.0.i.i255, align 8, !alias.scope !14303, !noalias !14304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i244)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.he = icmp eq i64 %i.go, 0
  br i1 %i.he, label %select.unfold824, label %.peel.next932, !llvm.loop !14158

bb.aa:                                            ; preds = %bb.n
  %.sroa.510.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.5757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5757.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i229, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14293
  %.sroa.4756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4756.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i226, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 %i.eu, ptr %0, align 4
  br label %bb.cl

bb.ab:                                            ; preds = %bb.o, %bb.p
  %i.hf = phi i64 [ %.pre.i.i239, %bb.p ], [ %i.ey, %bb.o ]
  %.sroa.01.0.i.i237 = phi ptr [ %i.en, %bb.p ], [ %.sink8.i.i.i234, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i238 = phi ptr [ %i.fa, %bb.p ], [ %.sink9.i.i.i233, %bb.o ]
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i238, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i226, i64 16, i1 false), !noalias !14293
  %i.hh = load i64, ptr %.sroa.01.0.i.i237, align 8, !alias.scope !14297, !noalias !14298, !noundef !24
  %i.hi = add i64 %i.hh, 1
  store i64 %i.hi, ptr %.sroa.01.0.i.i237, align 8, !alias.scope !14297, !noalias !14298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hj = icmp eq ptr %i.ao, %i.eo
  br i1 %i.hj, label %select.unfold, label %bb.m

bb.ac:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit
  %.sroa.510.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %.sroa.5742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5742.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i213, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14287
  %.sroa.4741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4741.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i210, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i210)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i32 %i.do, ptr %0, align 4
  br label %bb.cl

bb.ad:                                            ; preds = %bb.k, %bb.l
  %i.hk = phi i64 [ %.pre.i.i223, %bb.l ], [ %i.ds, %bb.k ]
  %.sroa.01.0.i.i221 = phi ptr [ %i.bn, %bb.l ], [ %.sink8.i.i.i218, %bb.k ] ; 2 uses
  %.sroa.0.0.i.i222 = phi ptr [ %i.du, %bb.l ], [ %.sink9.i.i.i217, %bb.k ]
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i222, i64 %i.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hl, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i210, i64 16, i1 false), !noalias !14287
  %i.hm = load i64, ptr %.sroa.01.0.i.i221, align 8, !alias.scope !14291, !noalias !14292, !noundef !24
  %i.hn = add i64 %i.hm, 1
  store i64 %i.hn, ptr %.sroa.01.0.i.i221, align 8, !alias.scope !14291, !noalias !14292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i210)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %exitcond930.not = icmp eq i64 %i.di, %.sroa.8537.0.copyload
  br i1 %exitcond930.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit.thread, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit

bb.ae:                                            ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !24 ; 6 uses
  %i.hr = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.hs = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = extractvalue { ptr, i64 } %i.am, 1
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = extractvalue { ptr, i64 } %i.hr, 0      ; 2 uses
  %i.hw = extractvalue { ptr, i64 } %i.hr, 1
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.hw
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ae, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.hu, ptr noundef nonnull readonly align 4 %i.hv, ptr noundef nonnull readonly %i.hx)
  %.sroa.0451.0.copyload = load ptr, ptr %i.ae, align 8 ; 2 uses
  %.sroa.5452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5452.0.copyload = load ptr, ptr %.sroa.5452.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.6454.0.copyload = load i64, ptr %.sroa.6454.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.8455.0.copyload = load i64, ptr %.sroa.8455.0..sroa_idx, align 8 ; 2 uses
  %i.hy = icmp ult i64 %.sroa.6454.0.copyload, %.sroa.8455.0.copyload
  %.pre = load ptr, ptr %5, align 8               ; 48 uses
  br i1 %i.hy, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.lr.ph, label %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge

._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge: ; preds = %bb.ae
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre935 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert936 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre937 = load ptr, ptr %.phi.trans.insert936, align 8
  %.phi.trans.insert938 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre939 = load ptr, ptr %.phi.trans.insert938, align 8
  %.phi.trans.insert940 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre941 = load ptr, ptr %.phi.trans.insert940, align 8
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.lr.ph: ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0451.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5452.0.copyload) ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !14305, !noalias !14306, !nonnull !24, !align !30, !noundef !24 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !14305, !noalias !14306, !nonnull !24, !noundef !24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !14305, !noalias !14306, !nonnull !24, !align !42, !noundef !24 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !14305, !noalias !14306, !nonnull !24, !align !30, !noundef !24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre, i64 128 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323

bb.af:                                            ; preds = %bb.b
  %i.im = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.in = extractvalue { ptr, i64 } %i.am, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !noundef !24 ; 4 uses
  %.idx1030 = shl nuw nsw i64 %i.is, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx1030 ; 3 uses
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noundef nonnull %i.im, ptr noundef nonnull %i.io, ptr noundef nonnull readonly align 4 %i.iq, ptr noundef nonnull readonly %i.it)
  %.sroa.0502.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5504.0.copyload = load ptr, ptr %.sroa.5504.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.6506.0.copyload = load i64, ptr %.sroa.6506.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.8507.0.copyload = load i64, ptr %.sroa.8507.0..sroa_idx, align 8 ; 2 uses
  %i.iu = icmp ult i64 %.sroa.6506.0.copyload, %.sroa.8507.0.copyload
  br i1 %i.iu, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.lr.ph, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.thread

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.lr.ph: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0502.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5504.0.copyload) ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %5, align 8, !alias.scope !14307, !noalias !14308, !nonnull !24, !align !30, !noundef !24 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !14307, !noalias !14308, !nonnull !24, !align !30, !noundef !24
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !14307, !noalias !14308, !nonnull !24, !noundef !24
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !14307, !noalias !14308, !nonnull !24, !align !42, !noundef !24 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !14307, !noalias !14308, !nonnull !24, !align !30, !noundef !24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 128 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.lr.ph, %bb.az
  %.sroa.6506.0863 = phi i64 [ %.sroa.6506.0.copyload, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.lr.ph ], [ %i.jj, %bb.az ] ; 3 uses
  %i.jj = add i64 %.sroa.6506.0863, 1             ; 2 uses
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0502.0.copyload, i64 %.sroa.6506.0863
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5504.0.copyload, i64 %.sroa.6506.0863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.jk, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iv, ptr noundef nonnull align 4 dereferenceable(16) %i.jl, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14307)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14309
  %i.jm = load i8, ptr %i.ja, align 1, !range !46, !noalias !14309, !noundef !24
  %i.jn = load i32, ptr %i.jc, align 4, !noalias !14309, !noundef !24
  %i.jo = load i32, ptr %i.jd, align 4, !noalias !14309, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.j, ptr noundef nonnull align 8 %i.iy, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.v, i1 noundef zeroext false, i8 noundef %i.jm, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.iv, i32 noundef %i.jn, i32 noundef %i.jo, ptr noundef nonnull align 8 %i.jf), !noalias !14310
  %i.jp = load i32, ptr %i.j, align 4, !range !36, !noalias !14309, !noundef !24 ; 2 uses
  %.not.i265 = icmp eq i32 %i.jp, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i264, ptr noundef nonnull align 4 dereferenceable(16) %i.jg, i64 16, i1 false), !noalias !14309
  br i1 %.not.i265, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14309
  %i.jq = load i64, ptr %i.jh, align 8, !alias.scope !14311, !noalias !14312, !noundef !24 ; 2 uses
  %i.jr = icmp ugt i64 %i.jq, 8                   ; 2 uses
  %i.js = load ptr, ptr %i.iw, align 8, !alias.scope !14311, !noalias !14312, !nonnull !24
  %.sink9.i.i.i271 = select i1 %i.jr, ptr %i.js, ptr %i.iw
  %.sink8.i.i.i272 = select i1 %i.jr, ptr %i.ji, ptr %i.jh ; 2 uses
  %.sink.i.i.i273 = call i64 @llvm.umax.i64(i64 %i.jq, i64 8)
  %i.jt = load i64, ptr %.sink8.i.i.i272, align 8, !alias.scope !14313, !noalias !14314, !noundef !24 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, %.sink.i.i.i273
  br i1 %i.ju, label %bb.ah, label %bb.az, !prof !23

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.iw), !noalias !14314
  %i.jv = load ptr, ptr %i.iw, align 8, !alias.scope !14313, !noalias !14314, !nonnull !24, !noundef !24
  %.pre.i.i277 = load i64, ptr %i.ji, align 8, !alias.scope !14313, !noalias !14314
  br label %bb.az

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.thread: ; preds = %bb.az, %bb.af
  %i.jw = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 3 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %select.unfold798, label %.lr.ph866

.lr.ph866:                                        ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.thread
  %.idx885 = shl nuw nsw i64 %i.jy, 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx885
  %i.kb = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.kc = load ptr, ptr %5, align 8, !nonnull !24, !align !30 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !24, !align !30
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !24
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !24, !align !42 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !nonnull !24, !align !30
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 128 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph866, %bb.ax
  %.sroa.5517.0865 = phi ptr [ %i.ka, %.lr.ph866 ], [ %i.kp, %bb.ax ]
  %.sroa.10519.0864 = phi ptr [ %i.it, %.lr.ph866 ], [ %i.kr, %bb.ax ] ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %.sroa.5517.0865, i64 -16 ; 3 uses
  %i.kq = icmp eq ptr %i.iq, %.sroa.10519.0864
  br i1 %i.kq, label %select.unfold798, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kr = getelementptr inbounds i8, ptr %.sroa.10519.0864, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.kp, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kb, ptr noundef nonnull align 4 dereferenceable(16) %i.kr, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14315
  %i.ks = load i8, ptr %i.kg, align 1, !range !46, !noalias !14315, !noundef !24
  %i.kt = load i32, ptr %i.ki, align 4, !noalias !14315, !noundef !24
  %i.ku = load i32, ptr %i.kj, align 4, !noalias !14315, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.i, ptr noundef nonnull align 8 %i.ke, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.u, i1 noundef zeroext false, i8 noundef %i.ks, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.kb, i32 noundef %i.kt, i32 noundef %i.ku, ptr noundef nonnull align 8 %i.kl), !noalias !14316
  %i.kv = load i32, ptr %i.i, align 4, !range !36, !noalias !14315, !noundef !24 ; 2 uses
  %.not.i287 = icmp eq i32 %i.kv, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i286, ptr noundef nonnull align 4 dereferenceable(16) %i.km, i64 16, i1 false), !noalias !14315
  br i1 %.not.i287, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14315
  %i.kw = load i64, ptr %i.kn, align 8, !alias.scope !14317, !noalias !14318, !noundef !24 ; 2 uses
  %i.kx = icmp ugt i64 %i.kw, 8                   ; 2 uses
  %i.ky = load ptr, ptr %i.kc, align 8, !alias.scope !14317, !noalias !14318, !nonnull !24
  %.sink9.i.i.i293 = select i1 %i.kx, ptr %i.ky, ptr %i.kc
  %.sink8.i.i.i294 = select i1 %i.kx, ptr %i.ko, ptr %i.kn ; 2 uses
  %.sink.i.i.i295 = call i64 @llvm.umax.i64(i64 %i.kw, i64 8)
  %i.kz = load i64, ptr %.sink8.i.i.i294, align 8, !alias.scope !14319, !noalias !14320, !noundef !24 ; 2 uses
  %i.la = icmp eq i64 %i.kz, %.sink.i.i.i295
  br i1 %i.la, label %bb.al, label %bb.ax, !prof !23

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.kc), !noalias !14320
  %i.lb = load ptr, ptr %i.kc, align 8, !alias.scope !14319, !noalias !14320, !nonnull !24, !noundef !24
  %.pre.i.i299 = load i64, ptr %i.ko, align 8, !alias.scope !14319, !noalias !14320
  br label %bb.ax

select.unfold798:                                 ; preds = %bb.ax, %bb.ai, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.thread
  %i.lc = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
  %i.ld = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
  %i.le = extractvalue { ptr, i64 } %i.lc, 1      ; 5 uses
  %i.lf = extractvalue { ptr, i64 } %i.ld, 1
  %i.lg = call i64 @llvm.usub.sat.i64(i64 %i.is, i64 %i.lf) ; 2 uses
  %.not886 = icmp ugt i64 %i.lg, %i.le
end_hunk_1
begin_hunk_2_@_RINvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentE25try_for_each_element_pairNCNvNtNtB8_5infer11comparisons27infer_tuple_rich_comparisons_0NtB27_26UnsupportedComparisonErrorEBa_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14321
  %i.me = load i64, ptr %i.lu, align 8, !alias.scope !14323, !noalias !14324, !noundef !24 ; 2 uses
  %i.mf = icmp ugt i64 %i.me, 8                   ; 2 uses
  %i.mg = load ptr, ptr %i.lj, align 8, !alias.scope !14323, !noalias !14324, !nonnull !24
  %.sink9.i.i.i311.peel = select i1 %i.mf, ptr %i.mg, ptr %i.lj
  %.sink8.i.i.i312.peel = select i1 %i.mf, ptr %i.lv, ptr %i.lu ; 2 uses
  %.sink.i.i.i313.peel = call i64 @llvm.umax.i64(i64 %i.me, i64 8)
  %i.mh = load i64, ptr %.sink8.i.i.i312.peel, align 8, !alias.scope !14325, !noalias !14326, !noundef !24 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, %.sink.i.i.i313.peel
  br i1 %i.mi, label %bb.aq, label %bb.ar, !prof !23

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.lj), !noalias !14326
  %i.mj = load ptr, ptr %i.lj, align 8, !alias.scope !14325, !noalias !14326, !nonnull !24, !noundef !24
  %.pre.i.i317.peel = load i64, ptr %i.lv, align 8, !alias.scope !14325, !noalias !14326
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.mk = phi i64 [ %.pre.i.i317.peel, %bb.aq ], [ %i.mh, %bb.ap ]
  %.sroa.01.0.i.i315.peel = phi ptr [ %i.lv, %bb.aq ], [ %.sink8.i.i.i312.peel, %bb.ap ] ; 2 uses
  %.sroa.0.0.i.i316.peel = phi ptr [ %i.mj, %bb.aq ], [ %.sink9.i.i.i311.peel, %bb.ap ]
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i316.peel, i64 %i.mk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ml, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i304, i64 16, i1 false), !noalias !14321
  %i.mm = load i64, ptr %.sroa.01.0.i.i315.peel, align 8, !alias.scope !14325, !noalias !14326, !noundef !24
  %i.mn = add i64 %i.mm, 1
  store i64 %i.mn, ptr %.sroa.01.0.i.i315.peel, align 8, !alias.scope !14325, !noalias !14326
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.mo = icmp eq i64 %i.lx, 0
  br i1 %i.mo, label %select.unfold824, label %.peel.next927

.peel.next927:                                    ; preds = %bb.ar, %bb.av
  %.sroa.0524.0870.pn = phi ptr [ %.sroa.0524.0870, %bb.av ], [ %.sroa.068.0.peel, %bb.ar ]
  %.sroa.14.0868 = phi i64 [ %i.mp, %bb.av ], [ %i.lx, %bb.ar ]
  %.sroa.0524.0870 = getelementptr inbounds nuw i8, ptr %.sroa.0524.0870.pn, i64 16 ; 3 uses
  %i.mp = add i64 %.sroa.14.0868, -1              ; 2 uses
  %i.mq = icmp eq ptr %.sroa.0524.0870, %i.it
  br i1 %i.mq, label %select.unfold824, label %bb.as

bb.as:                                            ; preds = %.peel.next927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 %.sroa.070.0, ptr %i.t, align 4
  store i32 %.sroa.572.sroa.0.0, ptr %.sroa.572.0..sroa_idx73, align 4
  store i64 %.sroa.572.sroa.5.0, ptr %.sroa.572.sroa.5.0..sroa.572.0..sroa_idx73.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.li, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0524.0870, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14321
  %i.mr = load i8, ptr %i.ln, align 1, !range !46, !noalias !14321, !noundef !24
  %i.ms = load i32, ptr %i.lp, align 4, !noalias !14321, !noundef !24
  %i.mt = load i32, ptr %i.lq, align 4, !noalias !14321, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.h, ptr noundef nonnull align 8 %i.ll, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.t, i1 noundef zeroext false, i8 noundef %i.mr, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.li, i32 noundef %i.ms, i32 noundef %i.mt, ptr noundef nonnull align 8 %i.ls), !noalias !14322
  %i.mu = load i32, ptr %i.h, align 4, !range !36, !noalias !14321, !noundef !24 ; 2 uses
  %.not.i305 = icmp eq i32 %i.mu, -1
  br i1 %.not.i305, label %bb.at, label %.loopexit929

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i304, ptr noundef nonnull align 4 dereferenceable(16) %i.lt, i64 16, i1 false), !noalias !14321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14321
  %i.mv = load i64, ptr %i.lu, align 8, !alias.scope !14323, !noalias !14324, !noundef !24 ; 2 uses
  %i.mw = icmp ugt i64 %i.mv, 8                   ; 2 uses
  %i.mx = load ptr, ptr %i.lj, align 8, !alias.scope !14323, !noalias !14324, !nonnull !24
  %.sink9.i.i.i311 = select i1 %i.mw, ptr %i.mx, ptr %i.lj
  %.sink8.i.i.i312 = select i1 %i.mw, ptr %i.lv, ptr %i.lu ; 2 uses
  %.sink.i.i.i313 = call i64 @llvm.umax.i64(i64 %i.mv, i64 8)
  %i.my = load i64, ptr %.sink8.i.i.i312, align 8, !alias.scope !14325, !noalias !14326, !noundef !24 ; 2 uses
  %i.mz = icmp eq i64 %i.my, %.sink.i.i.i313
  br i1 %i.mz, label %bb.au, label %bb.av, !prof !23

bb.au:                                            ; preds = %bb.at
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.lj), !noalias !14326
  %i.na = load ptr, ptr %i.lj, align 8, !alias.scope !14325, !noalias !14326, !nonnull !24, !noundef !24
  %.pre.i.i317 = load i64, ptr %i.lv, align 8, !alias.scope !14325, !noalias !14326
  br label %bb.av

.loopexit929:                                     ; preds = %bb.as, %bb.ao
  %.lcssa895 = phi i32 [ %i.md, %bb.ao ], [ %i.mu, %bb.as ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i304, ptr noundef nonnull align 4 dereferenceable(16) %i.lt, i64 16, i1 false), !noalias !14321
  %.sroa.510.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5727.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i307, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14321
  %.sroa.4726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4726.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i304, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i32 %.lcssa895, ptr %0, align 4
  br label %bb.cl

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.nb = phi i64 [ %.pre.i.i317, %bb.au ], [ %i.my, %bb.at ]
  %.sroa.01.0.i.i315 = phi ptr [ %i.lv, %bb.au ], [ %.sink8.i.i.i312, %bb.at ] ; 2 uses
  %.sroa.0.0.i.i316 = phi ptr [ %i.na, %bb.au ], [ %.sink9.i.i.i311, %bb.at ]
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i316, i64 %i.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nc, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i304, i64 16, i1 false), !noalias !14321
  %i.nd = load i64, ptr %.sroa.01.0.i.i315, align 8, !alias.scope !14325, !noalias !14326, !noundef !24
  %i.ne = add i64 %i.nd, 1
  store i64 %i.ne, ptr %.sroa.01.0.i.i315, align 8, !alias.scope !14325, !noalias !14326
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i304)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.nf = icmp eq i64 %i.mp, 0
  br i1 %i.nf, label %select.unfold824, label %.peel.next927, !llvm.loop !14197

bb.aw:                                            ; preds = %bb.aj
  %.sroa.510.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.sroa.5712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5712.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i289, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14315
  %.sroa.4711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4711.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i286, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i286)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i32 %i.kv, ptr %0, align 4
  br label %bb.cl

bb.ax:                                            ; preds = %bb.ak, %bb.al
  %i.ng = phi i64 [ %.pre.i.i299, %bb.al ], [ %i.kz, %bb.ak ]
  %.sroa.01.0.i.i297 = phi ptr [ %i.ko, %bb.al ], [ %.sink8.i.i.i294, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i298 = phi ptr [ %i.lb, %bb.al ], [ %.sink9.i.i.i293, %bb.ak ]
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i298, i64 %i.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nh, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i286, i64 16, i1 false), !noalias !14315
  %i.ni = load i64, ptr %.sroa.01.0.i.i297, align 8, !alias.scope !14319, !noalias !14320, !noundef !24
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %.sroa.01.0.i.i297, align 8, !alias.scope !14319, !noalias !14320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i286)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.nk = icmp eq ptr %i.jx, %i.kp
  br i1 %i.nk, label %select.unfold798, label %bb.ai

bb.ay:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263
  %.sroa.510.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.5697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5697.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i267, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14309
  %.sroa.4696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4696.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i264, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i32 %i.jp, ptr %0, align 4
  br label %bb.cl

bb.az:                                            ; preds = %bb.ag, %bb.ah
  %i.nl = phi i64 [ %.pre.i.i277, %bb.ah ], [ %i.jt, %bb.ag ]
  %.sroa.01.0.i.i275 = phi ptr [ %i.ji, %bb.ah ], [ %.sink8.i.i.i272, %bb.ag ] ; 2 uses
  %.sroa.0.0.i.i276 = phi ptr [ %i.jv, %bb.ah ], [ %.sink9.i.i.i271, %bb.ag ]
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i276, i64 %i.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nm, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i264, i64 16, i1 false), !noalias !14309
  %i.nn = load i64, ptr %.sroa.01.0.i.i275, align 8, !alias.scope !14313, !noalias !14314, !noundef !24
  %i.no = add i64 %i.nn, 1
  store i64 %i.no, ptr %.sroa.01.0.i.i275, align 8, !alias.scope !14313, !noalias !14314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %exitcond925.not = icmp eq i64 %i.jj, %.sroa.8507.0.copyload
  br i1 %exitcond925.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263.thread, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit263

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.lr.ph, %bb.ct
  %.sroa.6454.0859 = phi i64 [ %.sroa.6454.0.copyload, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.lr.ph ], [ %i.np, %bb.ct ] ; 3 uses
  %i.np = add i64 %.sroa.6454.0859, 1             ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0451.0.copyload, i64 %.sroa.6454.0859
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5452.0.copyload, i64 %.sroa.6454.0859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.nq, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hz, ptr noundef nonnull align 4 dereferenceable(16) %i.nr, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14305)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14327
  %i.ns = load i8, ptr %i.id, align 1, !range !46, !noalias !14327, !noundef !24
  %i.nt = load i32, ptr %i.if, align 4, !noalias !14327, !noundef !24
  %i.nu = load i32, ptr %i.ig, align 4, !noalias !14327, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.g, ptr noundef nonnull align 8 %i.ib, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad, i1 noundef zeroext false, i8 noundef %i.ns, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.hz, i32 noundef %i.nt, i32 noundef %i.nu, ptr noundef nonnull align 8 %i.ii), !noalias !14328
  %i.nv = load i32, ptr %i.g, align 4, !range !36, !noalias !14327, !noundef !24 ; 2 uses
  %.not.i325 = icmp eq i32 %i.nv, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i324, ptr noundef nonnull align 4 dereferenceable(16) %i.ij, i64 16, i1 false), !noalias !14327
  br i1 %.not.i325, label %bb.ba, label %bb.cs

bb.ba:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14327
  %i.nw = load i64, ptr %i.ik, align 8, !alias.scope !14329, !noalias !14330, !noundef !24 ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, 8                   ; 2 uses
  %i.ny = load ptr, ptr %.pre, align 8, !alias.scope !14329, !noalias !14330, !nonnull !24
  %.sink9.i.i.i331 = select i1 %i.nx, ptr %i.ny, ptr %.pre
  %.sink8.i.i.i332 = select i1 %i.nx, ptr %i.il, ptr %i.ik ; 2 uses
  %.sink.i.i.i333 = call i64 @llvm.umax.i64(i64 %i.nw, i64 8)
  %i.nz = load i64, ptr %.sink8.i.i.i332, align 8, !alias.scope !14331, !noalias !14332, !noundef !24 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, %.sink.i.i.i333
  br i1 %i.oa, label %bb.bb, label %bb.ct, !prof !23

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14332
  %i.ob = load ptr, ptr %.pre, align 8, !alias.scope !14331, !noalias !14332, !nonnull !24, !noundef !24
  %.pre.i.i337 = load i64, ptr %i.il, align 8, !alias.scope !14331, !noalias !14332
  br label %bb.ct

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread: ; preds = %bb.ct, %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge
  %i.oc = phi ptr [ %.pre941, %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge ], [ %i.ii, %bb.ct ] ; 10 uses
  %i.od = phi ptr [ %.pre939, %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge ], [ %i.if, %bb.ct ] ; 11 uses
  %i.oe = phi ptr [ %.pre937, %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge ], [ %i.id, %bb.ct ] ; 10 uses
  %i.of = phi ptr [ %.pre935, %._RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread_crit_edge ], [ %i.ib, %bb.ct ] ; 10 uses
  %i.og = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.oh = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
  %i.oi = extractvalue { ptr, i64 } %i.og, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oi) ]
  %i.oj = extractvalue { ptr, i64 } %i.og, 1      ; 3 uses
  %.idx1022.a = shl nuw nsw i64 %i.oj, 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.idx1022.a ; 2 uses
  %i.ol = extractvalue { ptr, i64 } %i.oh, 1      ; 3 uses
  %i.om = icmp eq i32 %i.ai, -1                   ; 3 uses
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.510.sroa.4.0.copyload = load i64, ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.510.sroa.0.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4
  %.sroa.5.sroa.0.0 = select i1 %i.om, i32 5, i32 %.sroa.510.sroa.0.0.copyload ; 5 uses
  %.sroa.5.sroa.5.0 = select i1 %i.om, i64 undef, i64 %.sroa.510.sroa.4.0.copyload ; 5 uses
  %.sroa.06.0 = select i1 %i.om, i32 18, i32 %i.ai ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 10 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.pre, i64 128 ; 20 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 30 uses
  %.not191.peel = icmp eq i64 %i.ol, 0
  br i1 %.not191.peel, label %bb.bd, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread
  %.not.i339.not.peel = icmp ult i64 %i.ol, %i.oj
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.ol
  br i1 %.not.i339.not.peel, label %bb.be, label %.peel.begin908

bb.bd:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323.thread
  %i.ot = icmp eq i64 %i.oj, 0
  br i1 %i.ot, label %.peel.begin908, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.04.0.peel = phi ptr [ %i.os, %bb.bc ], [ %i.oi, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.0.peel, i64 16, i1 false)
  store i32 %.sroa.06.0, ptr %i.on, align 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx8, align 4
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx8.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14333
  %i.ou = load i8, ptr %i.oe, align 1, !range !46, !noalias !14333, !noundef !24
  %i.ov = load i32, ptr %i.od, align 4, !noalias !14333, !noundef !24
  %i.ow = load i32, ptr %i.oo, align 4, !noalias !14333, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.f, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, i1 noundef zeroext false, i8 noundef %i.ou, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.on, i32 noundef %i.ov, i32 noundef %i.ow, ptr noundef nonnull align 8 %i.oc), !noalias !14334
  %i.ox = load i32, ptr %i.f, align 4, !range !36, !noalias !14333, !noundef !24 ; 2 uses
  %.not.i343.peel = icmp eq i32 %i.ox, -1
  br i1 %.not.i343.peel, label %bb.bf, label %.loopexit907

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, ptr noundef nonnull align 4 dereferenceable(16) %i.op, i64 16, i1 false), !noalias !14333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14333
  %i.oy = load i64, ptr %i.oq, align 8, !alias.scope !14335, !noalias !14336, !noundef !24 ; 2 uses
  %i.oz = icmp ugt i64 %i.oy, 8                   ; 2 uses
  %i.pa = load ptr, ptr %.pre, align 8, !alias.scope !14335, !noalias !14336, !nonnull !24
  %.sink9.i.i.i349.peel = select i1 %i.oz, ptr %i.pa, ptr %.pre
  %.sink8.i.i.i350.peel = select i1 %i.oz, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i351.peel = call i64 @llvm.umax.i64(i64 %i.oy, i64 8)
  %i.pb = load i64, ptr %.sink8.i.i.i350.peel, align 8, !alias.scope !14337, !noalias !14338, !noundef !24 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, %.sink.i.i.i351.peel
  br i1 %i.pc, label %bb.bg, label %.peel.next, !prof !23

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14338
  %i.pd = load ptr, ptr %.pre, align 8, !alias.scope !14337, !noalias !14338, !nonnull !24, !noundef !24
  %.pre.i.i355.peel = load i64, ptr %i.or, align 8, !alias.scope !14337, !noalias !14338
  br label %.peel.next

.peel.next:                                       ; preds = %bb.bg, %bb.bf
  %i.pe = phi i64 [ %.pre.i.i355.peel, %bb.bg ], [ %i.pb, %bb.bf ]
  %.sroa.01.0.i.i353.peel = phi ptr [ %i.or, %bb.bg ], [ %.sink8.i.i.i350.peel, %bb.bf ] ; 2 uses
  %.sroa.0.0.i.i354.peel = phi ptr [ %i.pd, %bb.bg ], [ %.sink9.i.i.i349.peel, %bb.bf ]
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i354.peel, i64 %i.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pf, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, i64 16, i1 false), !noalias !14333
  %i.pg = load i64, ptr %.sroa.01.0.i.i353.peel, align 8, !alias.scope !14337, !noalias !14338, !noundef !24
  %i.ph = add i64 %i.pg, 1
  store i64 %i.ph, ptr %.sroa.01.0.i.i353.peel, align 8, !alias.scope !14337, !noalias !14338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.0459.01068 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.peel, i64 16 ; 2 uses
  %i.pi = icmp eq ptr %.sroa.0459.01068, %i.ok
  br i1 %i.pi, label %.peel.begin908, label %.lr.ph1070

.lr.ph1070:                                       ; preds = %.peel.next, %bb.cr
  %.sroa.0459.01069 = phi ptr [ %.sroa.0459.0, %bb.cr ], [ %.sroa.0459.01068, %.peel.next ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0459.01069, i64 16, i1 false)
  store i32 %.sroa.06.0, ptr %i.on, align 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx8, align 4
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx8.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14333
  %i.pj = load i8, ptr %i.oe, align 1, !range !46, !noalias !14333, !noundef !24
  %i.pk = load i32, ptr %i.od, align 4, !noalias !14333, !noundef !24
  %i.pl = load i32, ptr %i.oo, align 4, !noalias !14333, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.f, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, i1 noundef zeroext false, i8 noundef %i.pj, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.on, i32 noundef %i.pk, i32 noundef %i.pl, ptr noundef nonnull align 8 %i.oc), !noalias !14334
  %i.pm = load i32, ptr %i.f, align 4, !range !36, !noalias !14333, !noundef !24 ; 2 uses
  %.not.i343 = icmp eq i32 %i.pm, -1
  br i1 %.not.i343, label %bb.bh, label %.loopexit907

bb.bh:                                            ; preds = %.lr.ph1070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, ptr noundef nonnull align 4 dereferenceable(16) %i.op, i64 16, i1 false), !noalias !14333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14333
  %i.pn = load i64, ptr %i.oq, align 8, !alias.scope !14335, !noalias !14336, !noundef !24 ; 2 uses
  %i.po = icmp ugt i64 %i.pn, 8                   ; 2 uses
  %i.pp = load ptr, ptr %.pre, align 8, !alias.scope !14335, !noalias !14336, !nonnull !24
  %.sink9.i.i.i349 = select i1 %i.po, ptr %i.pp, ptr %.pre
  %.sink8.i.i.i350 = select i1 %i.po, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i351 = call i64 @llvm.umax.i64(i64 %i.pn, i64 8)
  %i.pq = load i64, ptr %.sink8.i.i.i350, align 8, !alias.scope !14337, !noalias !14338, !noundef !24 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, %.sink.i.i.i351
  br i1 %i.pr, label %bb.bi, label %bb.cr, !prof !23

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14338
  %i.ps = load ptr, ptr %.pre, align 8, !alias.scope !14337, !noalias !14338, !nonnull !24, !noundef !24
  %.pre.i.i355 = load i64, ptr %i.or, align 8, !alias.scope !14337, !noalias !14338
  br label %bb.cr

.peel.begin908:                                   ; preds = %bb.cr, %.peel.next, %bb.bd, %bb.bc
  %i.pt = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.pu = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
  %i.pv = extractvalue { ptr, i64 } %i.pt, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pv) ]
  %i.pw = extractvalue { ptr, i64 } %i.pt, 1      ; 3 uses
  %.idx1024.a = shl nuw nsw i64 %i.pw, 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 %.idx1024.a ; 2 uses
  %i.py = extractvalue { ptr, i64 } %i.pu, 1      ; 3 uses
  %i.pz = icmp eq i32 %i.ah, -1                   ; 3 uses
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.521.sroa.4.0.copyload = load i64, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.521.sroa.0.0.copyload = load i32, ptr %.sroa.521.0..sroa_idx, align 4
  %.sroa.518.sroa.0.0 = select i1 %i.pz, i32 5, i32 %.sroa.521.sroa.0.0.copyload ; 5 uses
  %.sroa.518.sroa.5.0 = select i1 %i.pz, i64 undef, i64 %.sroa.521.sroa.4.0.copyload ; 5 uses
  %.sroa.016.0 = select i1 %i.pz, i32 18, i32 %i.ah ; 5 uses
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %.not193.peel = icmp eq i64 %i.py, 0
  br i1 %.not193.peel, label %bb.bk, label %bb.bj, !prof !29

bb.bj:                                            ; preds = %.peel.begin908
  %.not.i357.not.peel = icmp ult i64 %i.py, %i.pw
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %i.py
  br i1 %.not.i357.not.peel, label %bb.bl, label %.loopexit911

bb.bk:                                            ; preds = %.peel.begin908
  %i.qd = icmp eq i64 %i.pw, 0
  br i1 %i.qd, label %.loopexit911, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.014.0.peel = phi ptr [ %i.qc, %bb.bj ], [ %i.pv, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i32 %.sroa.016.0, ptr %i.ab, align 4
  store i32 %.sroa.518.sroa.0.0, ptr %.sroa.518.0..sroa_idx19, align 4
  store i64 %.sroa.518.sroa.5.0, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qa, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.014.0.peel, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14339
  %i.qe = load i8, ptr %i.oe, align 1, !range !46, !noalias !14339, !noundef !24
  %i.qf = load i32, ptr %i.od, align 4, !noalias !14339, !noundef !24
  %i.qg = load i32, ptr %i.oo, align 4, !noalias !14339, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.e, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab, i1 noundef zeroext false, i8 noundef %i.qe, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.qa, i32 noundef %i.qf, i32 noundef %i.qg, ptr noundef nonnull align 8 %i.oc), !noalias !14340
  %i.qh = load i32, ptr %i.e, align 4, !range !36, !noalias !14339, !noundef !24 ; 2 uses
  %.not.i361.peel = icmp eq i32 %i.qh, -1
  br i1 %.not.i361.peel, label %bb.bm, label %.loopexit912

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, ptr noundef nonnull align 4 dereferenceable(16) %i.qb, i64 16, i1 false), !noalias !14339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14339
  %i.qi = load i64, ptr %i.oq, align 8, !alias.scope !14341, !noalias !14342, !noundef !24 ; 2 uses
  %i.qj = icmp ugt i64 %i.qi, 8                   ; 2 uses
  %i.qk = load ptr, ptr %.pre, align 8, !alias.scope !14341, !noalias !14342, !nonnull !24
  %.sink9.i.i.i367.peel = select i1 %i.qj, ptr %i.qk, ptr %.pre
  %.sink8.i.i.i368.peel = select i1 %i.qj, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i369.peel = call i64 @llvm.umax.i64(i64 %i.qi, i64 8)
  %i.ql = load i64, ptr %.sink8.i.i.i368.peel, align 8, !alias.scope !14343, !noalias !14344, !noundef !24 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, %.sink.i.i.i369.peel
  br i1 %i.qm, label %bb.bn, label %.peel.next909, !prof !23

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14344
  %i.qn = load ptr, ptr %.pre, align 8, !alias.scope !14343, !noalias !14344, !nonnull !24, !noundef !24
  %.pre.i.i373.peel = load i64, ptr %i.or, align 8, !alias.scope !14343, !noalias !14344
  br label %.peel.next909

.peel.next909:                                    ; preds = %bb.bn, %bb.bm
  %i.qo = phi i64 [ %.pre.i.i373.peel, %bb.bn ], [ %i.ql, %bb.bm ]
  %.sroa.01.0.i.i371.peel = phi ptr [ %i.or, %bb.bn ], [ %.sink8.i.i.i368.peel, %bb.bm ] ; 2 uses
  %.sroa.0.0.i.i372.peel = phi ptr [ %i.qn, %bb.bn ], [ %.sink9.i.i.i367.peel, %bb.bm ]
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i372.peel, i64 %i.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qp, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, i64 16, i1 false), !noalias !14339
  %i.qq = load i64, ptr %.sroa.01.0.i.i371.peel, align 8, !alias.scope !14343, !noalias !14344, !noundef !24
  %i.qr = add i64 %i.qq, 1
  store i64 %i.qr, ptr %.sroa.01.0.i.i371.peel, align 8, !alias.scope !14343, !noalias !14344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i360)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.0466.01071 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.peel, i64 16 ; 2 uses
  %i.qs = icmp eq ptr %.sroa.0466.01071, %i.px
  br i1 %i.qs, label %.loopexit911, label %.lr.ph1073.a

.lr.ph1073.a:                                     ; preds = %.peel.next909, %bb.cq
  %.sroa.0466.01072 = phi ptr [ %.sroa.0466.0, %bb.cq ], [ %.sroa.0466.01071, %.peel.next909 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i32 %.sroa.016.0, ptr %i.ab, align 4
  store i32 %.sroa.518.sroa.0.0, ptr %.sroa.518.0..sroa_idx19, align 4
  store i64 %.sroa.518.sroa.5.0, ptr %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx19.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qa, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0466.01072, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14339
  %i.qt = load i8, ptr %i.oe, align 1, !range !46, !noalias !14339, !noundef !24
  %i.qu = load i32, ptr %i.od, align 4, !noalias !14339, !noundef !24
  %i.qv = load i32, ptr %i.oo, align 4, !noalias !14339, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.e, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab, i1 noundef zeroext false, i8 noundef %i.qt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.qa, i32 noundef %i.qu, i32 noundef %i.qv, ptr noundef nonnull align 8 %i.oc), !noalias !14340
  %i.qw = load i32, ptr %i.e, align 4, !range !36, !noalias !14339, !noundef !24 ; 2 uses
  %.not.i361 = icmp eq i32 %i.qw, -1
  br i1 %.not.i361, label %bb.bo, label %.loopexit912

bb.bo:                                            ; preds = %.lr.ph1073.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, ptr noundef nonnull align 4 dereferenceable(16) %i.qb, i64 16, i1 false), !noalias !14339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14339
  %i.qx = load i64, ptr %i.oq, align 8, !alias.scope !14341, !noalias !14342, !noundef !24 ; 2 uses
  %i.qy = icmp ugt i64 %i.qx, 8                   ; 2 uses
  %i.qz = load ptr, ptr %.pre, align 8, !alias.scope !14341, !noalias !14342, !nonnull !24
  %.sink9.i.i.i367 = select i1 %i.qy, ptr %i.qz, ptr %.pre
  %.sink8.i.i.i368 = select i1 %i.qy, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i369 = call i64 @llvm.umax.i64(i64 %i.qx, i64 8)
  %i.ra = load i64, ptr %.sink8.i.i.i368, align 8, !alias.scope !14343, !noalias !14344, !noundef !24 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, %.sink.i.i.i369
  br i1 %i.rb, label %bb.bp, label %bb.cq, !prof !23

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14344
  %i.rc = load ptr, ptr %.pre, align 8, !alias.scope !14343, !noalias !14344, !nonnull !24, !noundef !24
  %.pre.i.i373 = load i64, ptr %i.or, align 8, !alias.scope !14343, !noalias !14344
  br label %bb.cq

.loopexit911:                                     ; preds = %bb.cq, %.peel.next909, %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 %.sroa.016.0, ptr %i.aa, align 4
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %.sroa.518.sroa.0.0, ptr %.sroa.524.0..sroa_idx25, align 4
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.518.sroa.5.0, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store i32 %.sroa.06.0, ptr %i.rd, align 4
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.531.0..sroa_idx32, align 4
  %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx32.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx32.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14345
  %i.re = load i8, ptr %i.oe, align 1, !range !46, !noalias !14345, !noundef !24
  %i.rf = load i32, ptr %i.od, align 4, !noalias !14345, !noundef !24
  %i.rg = load i32, ptr %i.oo, align 4, !noalias !14345, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.d, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.aa, i1 noundef zeroext false, i8 noundef %i.re, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.rd, i32 noundef %i.rf, i32 noundef %i.rg, ptr noundef nonnull align 8 %i.oc), !noalias !14346
  %i.rh = load i32, ptr %i.d, align 4, !range !36, !noalias !14345, !noundef !24 ; 2 uses
  %.not.i376 = icmp eq i32 %i.rh, -1
  %i.ri = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i375, ptr noundef nonnull align 4 dereferenceable(16) %i.ri, i64 16, i1 false), !noalias !14345
  br i1 %.not.i376, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %.loopexit911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14345
  %i.rj = load i64, ptr %i.oq, align 8, !alias.scope !14347, !noalias !14348, !noundef !24 ; 2 uses
  %i.rk = icmp ugt i64 %i.rj, 8                   ; 2 uses
  %i.rl = load ptr, ptr %.pre, align 8, !alias.scope !14347, !noalias !14348, !nonnull !24
  %.sink9.i.i.i382 = select i1 %i.rk, ptr %i.rl, ptr %.pre
  %.sink8.i.i.i383 = select i1 %i.rk, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i384 = call i64 @llvm.umax.i64(i64 %i.rj, i64 8)
  %i.rm = load i64, ptr %.sink8.i.i.i383, align 8, !alias.scope !14349, !noalias !14350, !noundef !24 ; 2 uses
  %i.rn = icmp eq i64 %i.rm, %.sink.i.i.i384
  br i1 %i.rn, label %bb.br, label %.peel.begin913, !prof !23

bb.br:                                            ; preds = %bb.bq
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14350
  %i.ro = load ptr, ptr %.pre, align 8, !alias.scope !14349, !noalias !14350, !nonnull !24, !noundef !24
  %.pre.i.i388 = load i64, ptr %i.or, align 8, !alias.scope !14349, !noalias !14350
  br label %.peel.begin913

bb.bs:                                            ; preds = %.loopexit911
  %.sroa.510.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.5637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5637.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i378, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14345
  %.sroa.4636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4636.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i375, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i375)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i32 %i.rh, ptr %0, align 4
  br label %bb.cl

.peel.begin913:                                   ; preds = %bb.bq, %bb.br
  %i.rp = phi i64 [ %.pre.i.i388, %bb.br ], [ %i.rm, %bb.bq ]
  %.sroa.01.0.i.i386 = phi ptr [ %i.or, %bb.br ], [ %.sink8.i.i.i383, %bb.bq ] ; 2 uses
  %.sroa.0.0.i.i387 = phi ptr [ %i.ro, %bb.br ], [ %.sink9.i.i.i382, %bb.bq ]
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i387, i64 %i.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rq, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i375, i64 16, i1 false), !noalias !14345
  %i.rr = load i64, ptr %.sroa.01.0.i.i386, align 8, !alias.scope !14349, !noalias !14350, !noundef !24
  %i.rs = add i64 %i.rr, 1
  store i64 %i.rs, ptr %.sroa.01.0.i.i386, align 8, !alias.scope !14349, !noalias !14350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i375)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.rt = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.ru = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
  %i.rv = extractvalue { ptr, i64 } %i.rt, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
  %i.rw = extractvalue { ptr, i64 } %i.rt, 1      ; 3 uses
  %.idx1026 = shl nuw nsw i64 %i.rw, 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.idx1026 ; 2 uses
  %i.ry = extractvalue { ptr, i64 } %i.ru, 1      ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.not196.peel = icmp eq i64 %i.ry, 0
  br i1 %.not196.peel, label %bb.bu, label %bb.bt, !prof !29

bb.bt:                                            ; preds = %.peel.begin913
  %.not.i390.not.peel = icmp ult i64 %i.ry, %i.rw
  %i.sb = sub nsw i64 0, %i.ry
  %i.sc = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %i.sb
  br i1 %.not.i390.not.peel, label %bb.bv, label %.peel.begin919

bb.bu:                                            ; preds = %.peel.begin913
  %i.sd = icmp eq i64 %i.rw, 0
  br i1 %i.sd, label %.peel.begin919, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn = phi ptr [ %i.sc, %bb.bt ], [ %i.rx, %bb.bu ]
  %.sroa.6479.1.peel = getelementptr inbounds i8, ptr %.pn, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6479.1.peel, i64 16, i1 false)
  store i32 %.sroa.06.0, ptr %i.rz, align 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.543.0..sroa_idx, align 4
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14351
  %i.se = load i8, ptr %i.oe, align 1, !range !46, !noalias !14351, !noundef !24
  %i.sf = load i32, ptr %i.od, align 4, !noalias !14351, !noundef !24
  %i.sg = load i32, ptr %i.oo, align 4, !noalias !14351, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.c, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z, i1 noundef zeroext false, i8 noundef %i.se, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.rz, i32 noundef %i.sf, i32 noundef %i.sg, ptr noundef nonnull align 8 %i.oc), !noalias !14352
  %i.sh = load i32, ptr %i.c, align 4, !range !36, !noalias !14351, !noundef !24 ; 2 uses
  %.not.i394.peel = icmp eq i32 %i.sh, -1
  br i1 %.not.i394.peel, label %bb.bw, label %.loopexit918

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, ptr noundef nonnull align 4 dereferenceable(16) %i.sa, i64 16, i1 false), !noalias !14351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14351
  %i.si = load i64, ptr %i.oq, align 8, !alias.scope !14353, !noalias !14354, !noundef !24 ; 2 uses
  %i.sj = icmp ugt i64 %i.si, 8                   ; 2 uses
  %i.sk = load ptr, ptr %.pre, align 8, !alias.scope !14353, !noalias !14354, !nonnull !24
  %.sink9.i.i.i400.peel = select i1 %i.sj, ptr %i.sk, ptr %.pre
  %.sink8.i.i.i401.peel = select i1 %i.sj, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i402.peel = call i64 @llvm.umax.i64(i64 %i.si, i64 8)
  %i.sl = load i64, ptr %.sink8.i.i.i401.peel, align 8, !alias.scope !14355, !noalias !14356, !noundef !24 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, %.sink.i.i.i402.peel
  br i1 %i.sm, label %bb.bx, label %.peel.next914, !prof !23

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14356
  %i.sn = load ptr, ptr %.pre, align 8, !alias.scope !14355, !noalias !14356, !nonnull !24, !noundef !24
  %.pre.i.i406.peel = load i64, ptr %i.or, align 8, !alias.scope !14355, !noalias !14356
  br label %.peel.next914

.peel.next914:                                    ; preds = %bb.bx, %bb.bw
  %i.so = phi i64 [ %.pre.i.i406.peel, %bb.bx ], [ %i.sl, %bb.bw ]
  %.sroa.01.0.i.i404.peel = phi ptr [ %i.or, %bb.bx ], [ %.sink8.i.i.i401.peel, %bb.bw ] ; 2 uses
  %.sroa.0.0.i.i405.peel = phi ptr [ %i.sn, %bb.bx ], [ %.sink9.i.i.i400.peel, %bb.bw ]
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i405.peel, i64 %i.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sp, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, i64 16, i1 false), !noalias !14351
  %i.sq = load i64, ptr %.sroa.01.0.i.i404.peel, align 8, !alias.scope !14355, !noalias !14356, !noundef !24
  %i.sr = add i64 %i.sq, 1
  store i64 %i.sr, ptr %.sroa.01.0.i.i404.peel, align 8, !alias.scope !14355, !noalias !14356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ss = icmp eq ptr %i.rv, %.sroa.6479.1.peel
  br i1 %i.ss, label %.peel.begin919, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.peel.next914, %bb.cp
  %.sroa.6479.01074 = phi ptr [ %i.st, %bb.cp ], [ %.sroa.6479.1.peel, %.peel.next914 ]
  %i.st = getelementptr inbounds i8, ptr %.sroa.6479.01074, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.st, i64 16, i1 false)
  store i32 %.sroa.06.0, ptr %i.rz, align 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.543.0..sroa_idx, align 4
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14351
  %i.su = load i8, ptr %i.oe, align 1, !range !46, !noalias !14351, !noundef !24
  %i.sv = load i32, ptr %i.od, align 4, !noalias !14351, !noundef !24
  %i.sw = load i32, ptr %i.oo, align 4, !noalias !14351, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.c, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z, i1 noundef zeroext false, i8 noundef %i.su, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.rz, i32 noundef %i.sv, i32 noundef %i.sw, ptr noundef nonnull align 8 %i.oc), !noalias !14352
  %i.sx = load i32, ptr %i.c, align 4, !range !36, !noalias !14351, !noundef !24 ; 2 uses
  %.not.i394 = icmp eq i32 %i.sx, -1
  br i1 %.not.i394, label %bb.by, label %.loopexit918

bb.by:                                            ; preds = %.lr.ph1075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, ptr noundef nonnull align 4 dereferenceable(16) %i.sa, i64 16, i1 false), !noalias !14351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14351
  %i.sy = load i64, ptr %i.oq, align 8, !alias.scope !14353, !noalias !14354, !noundef !24 ; 2 uses
  %i.sz = icmp ugt i64 %i.sy, 8                   ; 2 uses
  %i.ta = load ptr, ptr %.pre, align 8, !alias.scope !14353, !noalias !14354, !nonnull !24
  %.sink9.i.i.i400 = select i1 %i.sz, ptr %i.ta, ptr %.pre
  %.sink8.i.i.i401 = select i1 %i.sz, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i402 = call i64 @llvm.umax.i64(i64 %i.sy, i64 8)
  %i.tb = load i64, ptr %.sink8.i.i.i401, align 8, !alias.scope !14355, !noalias !14356, !noundef !24 ; 2 uses
  %i.tc = icmp eq i64 %i.tb, %.sink.i.i.i402
  br i1 %i.tc, label %bb.bz, label %bb.cp, !prof !23

bb.bz:                                            ; preds = %bb.by
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14356
  %i.td = load ptr, ptr %.pre, align 8, !alias.scope !14355, !noalias !14356, !nonnull !24, !noundef !24
  %.pre.i.i406 = load i64, ptr %i.or, align 8, !alias.scope !14355, !noalias !14356
  br label %bb.cp

.peel.begin919:                                   ; preds = %bb.cp, %.peel.next914, %bb.bu, %bb.bt
  %i.te = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.tf = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
  %i.tg = extractvalue { ptr, i64 } %i.te, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tg) ]
  %i.th = extractvalue { ptr, i64 } %i.te, 1      ; 3 uses
  %.idx1028 = shl nuw nsw i64 %i.th, 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.idx1028 ; 2 uses
  %i.tj = extractvalue { ptr, i64 } %i.tf, 1      ; 3 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %.not198.peel = icmp eq i64 %i.tj, 0
  br i1 %.not198.peel, label %bb.cb, label %bb.ca, !prof !29

bb.ca:                                            ; preds = %.peel.begin919
  %.not.i408.not.peel = icmp ult i64 %i.tj, %i.th
  %i.tm = sub nsw i64 0, %i.tj
  %i.tn = getelementptr inbounds [16 x i8], ptr %i.ti, i64 %i.tm
  br i1 %.not.i408.not.peel, label %bb.cc, label %.loopexit923

bb.cb:                                            ; preds = %.peel.begin919
  %i.to = icmp eq i64 %i.th, 0
  br i1 %i.to, label %.loopexit923, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn1048 = phi ptr [ %i.tn, %bb.ca ], [ %i.ti, %bb.cb ]
  %.sroa.6487.1.peel = getelementptr inbounds i8, ptr %.pn1048, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %.sroa.016.0, ptr %i.y, align 4
  store i32 %.sroa.518.sroa.0.0, ptr %.sroa.550.0..sroa_idx, align 4
  store i64 %.sroa.518.sroa.5.0, ptr %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.tk, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6487.1.peel, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14357
  %i.tp = load i8, ptr %i.oe, align 1, !range !46, !noalias !14357, !noundef !24
  %i.tq = load i32, ptr %i.od, align 4, !noalias !14357, !noundef !24
  %i.tr = load i32, ptr %i.oo, align 4, !noalias !14357, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.b, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y, i1 noundef zeroext false, i8 noundef %i.tp, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.tk, i32 noundef %i.tq, i32 noundef %i.tr, ptr noundef nonnull align 8 %i.oc), !noalias !14358
  %i.ts = load i32, ptr %i.b, align 4, !range !36, !noalias !14357, !noundef !24 ; 2 uses
  %.not.i412.peel = icmp eq i32 %i.ts, -1
  br i1 %.not.i412.peel, label %bb.cd, label %.loopexit924

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, ptr noundef nonnull align 4 dereferenceable(16) %i.tl, i64 16, i1 false), !noalias !14357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14357
  %i.tt = load i64, ptr %i.oq, align 8, !alias.scope !14359, !noalias !14360, !noundef !24 ; 2 uses
  %i.tu = icmp ugt i64 %i.tt, 8                   ; 2 uses
  %i.tv = load ptr, ptr %.pre, align 8, !alias.scope !14359, !noalias !14360, !nonnull !24
  %.sink9.i.i.i418.peel = select i1 %i.tu, ptr %i.tv, ptr %.pre
  %.sink8.i.i.i419.peel = select i1 %i.tu, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i420.peel = call i64 @llvm.umax.i64(i64 %i.tt, i64 8)
  %i.tw = load i64, ptr %.sink8.i.i.i419.peel, align 8, !alias.scope !14361, !noalias !14362, !noundef !24 ; 2 uses
  %i.tx = icmp eq i64 %i.tw, %.sink.i.i.i420.peel
  br i1 %i.tx, label %bb.ce, label %.peel.next920, !prof !23

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14362
  %i.ty = load ptr, ptr %.pre, align 8, !alias.scope !14361, !noalias !14362, !nonnull !24, !noundef !24
  %.pre.i.i424.peel = load i64, ptr %i.or, align 8, !alias.scope !14361, !noalias !14362
  br label %.peel.next920

.peel.next920:                                    ; preds = %bb.ce, %bb.cd
  %i.tz = phi i64 [ %.pre.i.i424.peel, %bb.ce ], [ %i.tw, %bb.cd ]
  %.sroa.01.0.i.i422.peel = phi ptr [ %i.or, %bb.ce ], [ %.sink8.i.i.i419.peel, %bb.cd ] ; 2 uses
  %.sroa.0.0.i.i423.peel = phi ptr [ %i.ty, %bb.ce ], [ %.sink9.i.i.i418.peel, %bb.cd ]
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i423.peel, i64 %i.tz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ua, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, i64 16, i1 false), !noalias !14357
  %i.ub = load i64, ptr %.sroa.01.0.i.i422.peel, align 8, !alias.scope !14361, !noalias !14362, !noundef !24
  %i.uc = add i64 %i.ub, 1
  store i64 %i.uc, ptr %.sroa.01.0.i.i422.peel, align 8, !alias.scope !14361, !noalias !14362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i411)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ud = icmp eq ptr %i.tg, %.sroa.6487.1.peel
  br i1 %i.ud, label %.loopexit923, label %.lr.ph1077

.lr.ph1077:                                       ; preds = %.peel.next920, %bb.co
  %.sroa.6487.01076 = phi ptr [ %i.ue, %bb.co ], [ %.sroa.6487.1.peel, %.peel.next920 ]
  %i.ue = getelementptr inbounds i8, ptr %.sroa.6487.01076, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %.sroa.016.0, ptr %i.y, align 4
  store i32 %.sroa.518.sroa.0.0, ptr %.sroa.550.0..sroa_idx, align 4
  store i64 %.sroa.518.sroa.5.0, ptr %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.tk, ptr noundef nonnull align 4 dereferenceable(16) %i.ue, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14357
  %i.uf = load i8, ptr %i.oe, align 1, !range !46, !noalias !14357, !noundef !24
  %i.ug = load i32, ptr %i.od, align 4, !noalias !14357, !noundef !24
  %i.uh = load i32, ptr %i.oo, align 4, !noalias !14357, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.b, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y, i1 noundef zeroext false, i8 noundef %i.uf, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.tk, i32 noundef %i.ug, i32 noundef %i.uh, ptr noundef nonnull align 8 %i.oc), !noalias !14358
  %i.ui = load i32, ptr %i.b, align 4, !range !36, !noalias !14357, !noundef !24 ; 2 uses
  %.not.i412 = icmp eq i32 %i.ui, -1
  br i1 %.not.i412, label %bb.cf, label %.loopexit924

bb.cf:                                            ; preds = %.lr.ph1077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, ptr noundef nonnull align 4 dereferenceable(16) %i.tl, i64 16, i1 false), !noalias !14357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14357
  %i.uj = load i64, ptr %i.oq, align 8, !alias.scope !14359, !noalias !14360, !noundef !24 ; 2 uses
  %i.uk = icmp ugt i64 %i.uj, 8                   ; 2 uses
  %i.ul = load ptr, ptr %.pre, align 8, !alias.scope !14359, !noalias !14360, !nonnull !24
  %.sink9.i.i.i418 = select i1 %i.uk, ptr %i.ul, ptr %.pre
  %.sink8.i.i.i419 = select i1 %i.uk, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i420 = call i64 @llvm.umax.i64(i64 %i.uj, i64 8)
  %i.um = load i64, ptr %.sink8.i.i.i419, align 8, !alias.scope !14361, !noalias !14362, !noundef !24 ; 2 uses
  %i.un = icmp eq i64 %i.um, %.sink.i.i.i420
  br i1 %i.un, label %bb.cg, label %bb.co, !prof !23

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14362
  %i.uo = load ptr, ptr %.pre, align 8, !alias.scope !14361, !noalias !14362, !nonnull !24, !noundef !24
  %.pre.i.i424 = load i64, ptr %i.or, align 8, !alias.scope !14361, !noalias !14362
  br label %bb.co

.loopexit923:                                     ; preds = %bb.co, %.peel.next920, %bb.cb, %bb.ca
  %i.up = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.uq = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.ur = extractvalue { ptr, i64 } %i.up, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ur) ]
  %6 = extractvalue { ptr, i64 } %i.up, 1         ; 2 uses
  %7 = extractvalue { ptr, i64 } %i.uq, 0         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %7) ]
  %i.us = icmp eq i64 %6, 0
  br i1 %i.us, label %select.unfold824, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit923
  %.idx = shl nuw nsw i64 %6, 4
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.idx
  %i.uu = extractvalue { ptr, i64 } %i.uq, 1
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph, %bb.cn
  %.sroa.5497.0861 = phi ptr [ %i.ut, %.lr.ph ], [ %i.uy, %bb.cn ]
  %.sroa.10.0860 = phi ptr [ %i.uv, %.lr.ph ], [ %i.va, %bb.cn ] ; 2 uses
  %i.uy = getelementptr inbounds i8, ptr %.sroa.5497.0861, i64 -16 ; 3 uses
  %i.uz = icmp eq ptr %7, %.sroa.10.0860
  br i1 %i.uz, label %select.unfold824, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.va = getelementptr inbounds i8, ptr %.sroa.10.0860, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.uy, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.uw, ptr noundef nonnull align 4 dereferenceable(16) %i.va, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14363
  %i.vb = load i8, ptr %i.oe, align 1, !range !46, !noalias !14363, !noundef !24
  %i.vc = load i32, ptr %i.od, align 4, !noalias !14363, !noundef !24
  %i.vd = load i32, ptr %i.oo, align 4, !noalias !14363, !noundef !24
  call void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11comparisons34infer_binary_type_comparison_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.a, ptr noundef nonnull align 8 %i.of, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.x, i1 noundef zeroext false, i8 noundef %i.vb, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.uw, i32 noundef %i.vc, i32 noundef %i.vd, ptr noundef nonnull align 8 %i.oc), !noalias !14364
  %i.ve = load i32, ptr %i.a, align 4, !range !36, !noalias !14363, !noundef !24 ; 2 uses
  %.not.i434 = icmp eq i32 %i.ve, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i433, ptr noundef nonnull align 4 dereferenceable(16) %i.ux, i64 16, i1 false), !noalias !14363
  br i1 %.not.i434, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14363
  %i.vf = load i64, ptr %i.oq, align 8, !alias.scope !14365, !noalias !14366, !noundef !24 ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8                   ; 2 uses
  %i.vh = load ptr, ptr %.pre, align 8, !alias.scope !14365, !noalias !14366, !nonnull !24
  %.sink9.i.i.i440 = select i1 %i.vg, ptr %i.vh, ptr %.pre
  %.sink8.i.i.i441 = select i1 %i.vg, ptr %i.or, ptr %i.oq ; 2 uses
  %.sink.i.i.i442 = call i64 @llvm.umax.i64(i64 %i.vf, i64 8)
  %i.vi = load i64, ptr %.sink8.i.i.i441, align 8, !alias.scope !14367, !noalias !14368, !noundef !24 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, %.sink.i.i.i442
  br i1 %i.vj, label %bb.ck, label %bb.cn, !prof !23

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %.pre), !noalias !14368
  %i.vk = load ptr, ptr %.pre, align 8, !alias.scope !14367, !noalias !14368, !nonnull !24, !noundef !24
  %.pre.i.i446 = load i64, ptr %i.or, align 8, !alias.scope !14367, !noalias !14368
  br label %bb.cn

bb.cl:                                            ; preds = %bb.i, %.loopexit934, %bb.aa, %bb.ac, %.loopexit929, %bb.aw, %bb.ay, %bb.bs, %bb.cm, %.loopexit924, %.loopexit918, %.loopexit912, %.loopexit907, %bb.cs, %select.unfold824
  ret void

bb.cm:                                            ; preds = %bb.ci
  %.sroa.510.0..sroa_idx.i436 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.5682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5682.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i436, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14363
  %.sroa.4681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4681.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i433, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i433)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i32 %i.ve, ptr %0, align 4
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cj, %bb.ck
  %i.vl = phi i64 [ %.pre.i.i446, %bb.ck ], [ %i.vi, %bb.cj ]
  %.sroa.01.0.i.i444 = phi ptr [ %i.or, %bb.ck ], [ %.sink8.i.i.i441, %bb.cj ] ; 2 uses
  %.sroa.0.0.i.i445 = phi ptr [ %i.vk, %bb.ck ], [ %.sink9.i.i.i440, %bb.cj ]
  %i.vm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i445, i64 %i.vl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vm, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i433, i64 16, i1 false), !noalias !14363
  %i.vn = load i64, ptr %.sroa.01.0.i.i444, align 8, !alias.scope !14367, !noalias !14368, !noundef !24
  %i.vo = add i64 %i.vn, 1
  store i64 %i.vo, ptr %.sroa.01.0.i.i444, align 8, !alias.scope !14367, !noalias !14368
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i433)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.vp = icmp eq ptr %i.ur, %i.uy
  br i1 %i.vp, label %select.unfold824, label %bb.ch

.loopexit924:                                     ; preds = %.lr.ph1077, %bb.cc
  %.lcssa900 = phi i32 [ %i.ts, %bb.cc ], [ %i.ui, %.lr.ph1077 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, ptr noundef nonnull align 4 dereferenceable(16) %i.tl, i64 16, i1 false), !noalias !14357
  %.sroa.510.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5667.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i414, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14357
  %.sroa.4666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4666.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i411)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i32 %.lcssa900, ptr %0, align 4
  br label %bb.cl

bb.co:                                            ; preds = %bb.cf, %bb.cg
  %i.vq = phi i64 [ %.pre.i.i424, %bb.cg ], [ %i.um, %bb.cf ]
  %.sroa.01.0.i.i422 = phi ptr [ %i.or, %bb.cg ], [ %.sink8.i.i.i419, %bb.cf ] ; 2 uses
  %.sroa.0.0.i.i423 = phi ptr [ %i.uo, %bb.cg ], [ %.sink9.i.i.i418, %bb.cf ]
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i423, i64 %i.vq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vr, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i411, i64 16, i1 false), !noalias !14357
  %i.vs = load i64, ptr %.sroa.01.0.i.i422, align 8, !alias.scope !14361, !noalias !14362, !noundef !24
  %i.vt = add i64 %i.vs, 1
  store i64 %i.vt, ptr %.sroa.01.0.i.i422, align 8, !alias.scope !14361, !noalias !14362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i411)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.vu = icmp eq ptr %i.tg, %i.ue
  br i1 %i.vu, label %.loopexit923, label %.lr.ph1077, !llvm.loop !14270

.loopexit918:                                     ; preds = %.lr.ph1075, %bb.bv
  %.lcssa901 = phi i32 [ %i.sh, %bb.bv ], [ %i.sx, %.lr.ph1075 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, ptr noundef nonnull align 4 dereferenceable(16) %i.sa, i64 16, i1 false), !noalias !14351
  %.sroa.510.0..sroa_idx.i396 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.5652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5652.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i396, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14351
  %.sroa.4651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4651.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i32 %.lcssa901, ptr %0, align 4
  br label %bb.cl

bb.cp:                                            ; preds = %bb.by, %bb.bz
  %i.vv = phi i64 [ %.pre.i.i406, %bb.bz ], [ %i.tb, %bb.by ]
  %.sroa.01.0.i.i404 = phi ptr [ %i.or, %bb.bz ], [ %.sink8.i.i.i401, %bb.by ] ; 2 uses
  %.sroa.0.0.i.i405 = phi ptr [ %i.td, %bb.bz ], [ %.sink9.i.i.i400, %bb.by ]
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i405, i64 %i.vv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vw, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i393, i64 16, i1 false), !noalias !14351
  %i.vx = load i64, ptr %.sroa.01.0.i.i404, align 8, !alias.scope !14355, !noalias !14356, !noundef !24
  %i.vy = add i64 %i.vx, 1
  store i64 %i.vy, ptr %.sroa.01.0.i.i404, align 8, !alias.scope !14355, !noalias !14356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.vz = icmp eq ptr %i.rv, %i.st
  br i1 %i.vz, label %.peel.begin919, label %.lr.ph1075, !llvm.loop !14271

.loopexit912:                                     ; preds = %.lr.ph1073.a, %bb.bl
  %.lcssa902 = phi i32 [ %i.qh, %bb.bl ], [ %i.qw, %.lr.ph1073.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, ptr noundef nonnull align 4 dereferenceable(16) %i.qb, i64 16, i1 false), !noalias !14339
  %.sroa.510.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5622.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i363, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14339
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4621.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i360)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i32 %.lcssa902, ptr %0, align 4
  br label %bb.cl

bb.cq:                                            ; preds = %bb.bo, %bb.bp
  %i.wa = phi i64 [ %.pre.i.i373, %bb.bp ], [ %i.ra, %bb.bo ]
  %.sroa.01.0.i.i371 = phi ptr [ %i.or, %bb.bp ], [ %.sink8.i.i.i368, %bb.bo ] ; 2 uses
  %.sroa.0.0.i.i372 = phi ptr [ %i.rc, %bb.bp ], [ %.sink9.i.i.i367, %bb.bo ]
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i372, i64 %i.wa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.wb, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i360, i64 16, i1 false), !noalias !14339
  %i.wc = load i64, ptr %.sroa.01.0.i.i371, align 8, !alias.scope !14343, !noalias !14344, !noundef !24
  %i.wd = add i64 %i.wc, 1
  store i64 %i.wd, ptr %.sroa.01.0.i.i371, align 8, !alias.scope !14343, !noalias !14344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i360)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.0466.0 = getelementptr inbounds nuw i8, ptr %.sroa.0466.01072, i64 16 ; 2 uses
  %i.we = icmp eq ptr %.sroa.0466.0, %i.px
  br i1 %i.we, label %.loopexit911, label %.lr.ph1073.a, !llvm.loop !14272

.loopexit907:                                     ; preds = %.lr.ph1070, %bb.be
  %.lcssa903 = phi i32 [ %i.ox, %bb.be ], [ %i.pm, %.lr.ph1070 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, ptr noundef nonnull align 4 dereferenceable(16) %i.op, i64 16, i1 false), !noalias !14333
  %.sroa.510.0..sroa_idx.i345 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5607.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i345, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14333
  %.sroa.4606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4606.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i32 %.lcssa903, ptr %0, align 4
  br label %bb.cl

bb.cr:                                            ; preds = %bb.bh, %bb.bi
  %i.wf = phi i64 [ %.pre.i.i355, %bb.bi ], [ %i.pq, %bb.bh ]
  %.sroa.01.0.i.i353 = phi ptr [ %i.or, %bb.bi ], [ %.sink8.i.i.i350, %bb.bh ] ; 2 uses
  %.sroa.0.0.i.i354 = phi ptr [ %i.ps, %bb.bi ], [ %.sink9.i.i.i349, %bb.bh ]
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i354, i64 %i.wf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.wg, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i342, i64 16, i1 false), !noalias !14333
  %i.wh = load i64, ptr %.sroa.01.0.i.i353, align 8, !alias.scope !14337, !noalias !14338, !noundef !24
  %i.wi = add i64 %i.wh, 1
  store i64 %i.wi, ptr %.sroa.01.0.i.i353, align 8, !alias.scope !14337, !noalias !14338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.0459.0 = getelementptr inbounds nuw i8, ptr %.sroa.0459.01069, i64 16 ; 2 uses
  %i.wj = icmp eq ptr %.sroa.0459.0, %i.ok
  br i1 %i.wj, label %.peel.begin908, label %.lr.ph1070, !llvm.loop !14273

bb.cs:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBW_EINtB5_7ZipImplBW_BW_E4nextB1q_.exit323
  %.sroa.510.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.5592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5592.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.510.0..sroa_idx.i327, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType23apply_type_mapping_impl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !24761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24761
  %i.ed = load i64, ptr %i.ac, align 8, !range !53, !alias.scope !24826, !noalias !24827, !noundef !24
  %.not.i53.i.i = icmp eq i64 %i.ed, -1
  br i1 %.not.i53.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load i64, ptr %i.ea, align 8, !alias.scope !24828, !noalias !24829, !noundef !24 ; 3 uses
  %i.ef = load i64, ptr %.sroa.5.0..sroa_idx.i46.i.i, align 8, !range !25, !alias.scope !24828, !noalias !24829, !noundef !24
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit.i54.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i46.i.i)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit.i54.i.i unwind label %.loopexit.i.i, !noalias !24765

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit.i54.i.i: ; preds = %bb.ar, %bb.aq
  %i.eh = load ptr, ptr %i.eb, align 8, !alias.scope !24828, !noalias !24829, !nonnull !24, !noundef !24
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ei, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !24765
  %i.ej = add i64 %i.ee, 1
  store i64 %i.ej, ptr %i.ea, align 8, !alias.scope !24828, !noalias !24829
  br label %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder4push.exit58.i.i

bb.as:                                            ; preds = %bb.ap
  %i.ek = load i64, ptr %.sroa.5.0..sroa_idx.i46.i.i, align 8, !alias.scope !24830, !noalias !24831, !noundef !24 ; 3 uses
  %i.el = load i64, ptr %i.dc, align 8, !range !25, !alias.scope !24830, !noalias !24831, !noundef !24
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit1.i55.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit1.i55.i.i unwind label %.loopexit.i.i, !noalias !24765

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit1.i55.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !24830, !noalias !24831, !nonnull !24, !noundef !24
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eo, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !24765
  %i.ep = add i64 %i.ek, 1
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx.i46.i.i, align 8, !alias.scope !24830, !noalias !24831
  br label %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder4push.exit58.i.i

_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder4push.exit58.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit1.i55.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8push_mutBI_.exit.i54.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.eq = icmp eq ptr %i.ec, %i.bf
  br i1 %i.eq, label %._crit_edge148.i.i, label %bb.ao

bb.au:                                            ; preds = %._crit_edge148.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !24761
  call void @llvm.experimental.noalias.scope.decl(metadata !24832)
  %i.er = load i32, ptr %i.ad, align 8, !range !57, !alias.scope !24832, !noalias !24761, !noundef !24 ; 2 uses
  %i.es = icmp eq i32 %i.er, -3
  br i1 %i.es, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !24833)
  %i.et = icmp eq i32 %i.er, -2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.et, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.val1.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !24834, !noalias !24761, !noundef !24 ; 2 uses
  %i.ev = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.ev, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.aw
  %.val.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !24834, !noalias !24761, !nonnull !24, !noundef !24
  %i.ew = shl nuw nsw i64 %.val1.i.i.i.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ew, i64 noundef 4) #48, !noalias !24835
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i

bb.ax:                                            ; preds = %bb.av
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu), !noalias !24765
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i: ; preds = %bb.ax, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !24761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !24761
  br label %bb.v

.loopexit.i.i:                                    ; preds = %bb.at, %bb.ar, %bb.ao
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp.i.i:                           ; preds = %bb.am, %bb.ak, %bb.ag
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16TupleSpecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(64) %i.ac) #50
          to label %bb.ab unwind label %bb.az, !noalias !24765

bb.az:                                            ; preds = %bb.ay, %bb.ab
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !24765
  unreachable

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit.i: ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterB1k_ENCNvMse_B6_BT_23apply_type_mapping_impl0EIB1Y_B2L_NCB3j_s_0EEBa_.exit45.i.i, %bb.v, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterB1k_ENCNvMse_B6_BT_23apply_type_mapping_impl0EIB1Y_B2L_NCB3j_s_0EEBa_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24761
  br label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit

bb.ba:                                            ; preds = %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val.i = load ptr, ptr %i.ey, align 8, !alias.scope !24756, !noalias !24758 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val1.i = load i64, ptr %i.ez, align 8, !alias.scope !24756, !noalias !24758 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24837
  %.sroa.03.0.copyload.i.i = load i32, ptr %5, align 4, !alias.scope !24838, !noalias !24839 ; 2 uses
  %.not.i2.i = icmp eq i32 %.sroa.03.0.copyload.i.i, -1
  br i1 %.not.i2.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.6.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fa = load ptr, ptr %6, align 8, !noalias !24837, !nonnull !24, !align !42, !noundef !24
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.418.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i3.i, i64 12, i1 false), !noalias !24839
  store i32 %.sroa.03.0.copyload.i.i, ptr %i.d, align 4, !noalias !24837
  %i.fb = call { i32, i32 } @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20known_specialization(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.fa, i8 noundef 11), !noalias !24840 ; 2 uses
  %i.fc = extractvalue { i32, i32 } %i.fb, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24837
  %i.fd = load ptr, ptr %6, align 8, !noalias !24837, !nonnull !24, !align !42, !noundef !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not26.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not26.i.i, label %.thread.i.i, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bc, %bb.bb
  store i32 -3, ptr %i.e, align 8, !noalias !24837
  br label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  %i.fe = extractvalue { i32, i32 } %i.fb, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !24841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24842
  %i.ff = call noundef align 8 ptr @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization5tuple(i32 noundef range(i32 1, 0) %i.fc, i32 noundef %i.fe, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !24843 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i4.i, label %bb.bf, label %bb.be, !prof !23

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24842
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val1.i, ptr %i.fg, align 8, !noalias !24842
  store i64 0, ptr %i.b, align 8, !noalias !24842
  call void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE6resize(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ff, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.fd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !24843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24842
  %i.fh = load i32, ptr %i.c, align 8, !range !57, !noalias !24842, !noundef !24
  %i.fi = icmp eq i32 %i.fh, -3
  br i1 %i.fi, label %.thread47.i.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #49, !noalias !24843
  unreachable

.thread47.i.i:                                    ; preds = %bb.be
  store i32 -3, ptr %i.e, align 8, !alias.scope !24841, !noalias !24844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24842
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !24844
  %.pr.pr.i.i = load i32, ptr %i.e, align 8, !noalias !24837 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24842
  switch i32 %.pr.pr.i.i, label %bb.bh [
    i32 -3, label %bb.bk
    i32 -2, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !24845, !noalias !24846, !noundef !24 ; 2 uses
  %i.fm = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %.noexc.i8.i unwind label %bb.bj, !noalias !24847 ; 2 uses

.noexc.i8.i:                                      ; preds = %bb.bh
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.54.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !24848, !noalias !24846
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.54.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 4, !alias.scope !24848, !noalias !24846
  %i.fn = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %.noexc29.i.i unwind label %bb.bj, !noalias !24847 ; 2 uses

.noexc29.i.i:                                     ; preds = %.noexc.i8.i
  %i.fo = icmp eq i32 %.pr.pr.i.i, -1             ; 3 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.fo, i32 18, i32 %.pr.pr.i.i
  %.sroa.5.sroa.5.0.i.i.i.i = select i1 %i.fo, i64 undef, i64 %.sroa.54.sroa.4.0.copyload.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = select i1 %i.fo, i32 5, i32 %.sroa.54.sroa.0.0.copyload.i.i.i.i
  %i.fp = extractvalue { ptr, i64 } %i.fm, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %i.fq = extractvalue { ptr, i64 } %i.fm, 1
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = extractvalue { ptr, i64 } %i.fn, 0      ; 3 uses
  %i.ft = extractvalue { ptr, i64 } %i.fn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.ft
  br label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !24849, !noalias !24850, !nonnull !24, !noundef !24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !24849, !noalias !24850, !noundef !24
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = ptrtoint ptr %i.fw to i64
  br label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i

bb.bj:                                            ; preds = %bb.bk, %.noexc.i8.i, %bb.bh
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #50
          to label %common.resume unwind label %bb.bp, !noalias !24851

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i: ; preds = %bb.bi, %.noexc29.i.i
  %.sroa.918.0.i.i = phi ptr [ undef, %bb.bi ], [ %i.fu, %.noexc29.i.i ]
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.bi ], [ %i.fs, %.noexc29.i.i ]
  %.sroa.717.0.i.i = phi ptr [ undef, %bb.bi ], [ %i.fr, %.noexc29.i.i ]
  %.sroa.414.0.i.i = phi i32 [ undef, %bb.bi ], [ %.sroa.5.sroa.0.0.i.i.i.i, %.noexc29.i.i ]
  %.sroa.0.0.i.sink.i.i.i = phi i32 [ -4, %bb.bi ], [ %.sroa.0.0.i.i.i.i, %.noexc29.i.i ]
  %.sroa.5.sroa.5.0.i.sink.i.i.i = phi i64 [ %i.ga, %bb.bi ], [ %.sroa.5.sroa.5.0.i.i.i.i, %.noexc29.i.i ]
  %.sink.i.i.i = phi ptr [ %i.fz, %bb.bi ], [ %i.fp, %.noexc29.i.i ]
  %i.gc = ptrtoint ptr %.sink.i.i.i to i64        ; 2 uses
  %.sroa.640.0.extract.trunc.i.i = trunc i64 %i.gc to i32
  %.sroa.640.4.extract.shift.i.i = lshr i64 %i.gc, 32
  %.sroa.640.4.extract.trunc.i.i = trunc nuw i64 %.sroa.640.4.extract.shift.i.i to i32
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i, %bb.bg, %.thread47.i.i, %.thread.i.i
  %.sroa.3.sroa.3.sroa.3.0.i.i = phi i32 [ %.sroa.640.0.extract.trunc.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.3.sroa.3.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.5.0.i.sink.i.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.4.sroa.4.0.i.i = phi ptr [ %.sroa.918.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.4.sroa.3.0.i.i = phi ptr [ %.sroa.8.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.4.sroa.2.0.i.i = phi ptr [ %.sroa.717.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.4.sroa.0.0.i.i = phi i32 [ %.sroa.640.4.extract.trunc.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ undef, %bb.bg ], [ undef, %.thread.i.i ], [ undef, %.thread47.i.i ]
  %.sroa.3.sroa.0.0.i.i = phi i32 [ %.sroa.414.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ -1, %bb.bg ], [ -1, %.thread.i.i ], [ -1, %.thread47.i.i ]
  %.sroa.04.0.i.i = phi i32 [ %.sroa.0.0.i.sink.i.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE18iter_element_types.exit.i.i ], [ -5, %bb.bg ], [ -5, %.thread.i.i ], [ -5, %.thread47.i.i ]
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val1.i
  %.sroa.026.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24852
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.sroa.8.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !24837
  store i32 %.sroa.04.0.i.i, ptr %i.a, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.3.sroa.0.0.i.i, ptr %.sroa.026.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.4.sroa.4.0..sroa.026.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.sroa.3.sroa.0.0.i.i, ptr %.sroa.026.sroa.4.sroa.4.0..sroa.026.sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.4.sroa.4.sroa.4.0..sroa.026.sroa.4.sroa.4.0..sroa.026.sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.3.sroa.3.sroa.3.0.i.i, ptr %.sroa.026.sroa.4.sroa.4.sroa.4.0..sroa.026.sroa.4.sroa.4.0..sroa.026.sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.sroa.4.sroa.0.0.i.i, ptr %.sroa.026.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.5.sroa.4.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.4.sroa.2.0.i.i, ptr %.sroa.026.sroa.5.sroa.4.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.4.sroa.3.0.i.i, ptr %.sroa.026.sroa.5.sroa.5.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.4.sroa.4.0.i.i, ptr %.sroa.026.sroa.5.sroa.6.0..sroa.026.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.val.i, ptr %.sroa.026.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.026.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.gd, ptr %.sroa.026.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %3, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %4, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %6, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !alias.scope !24853, !noalias !24837
  %i.ge = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1J_8adapters3map3MapINtNtB2V_3zip3ZipINtNtNtB1L_5slice4iter4IterBP_EINtCsddXFpJ32JCa_6either6EitherIB2R_IB45_INtNtB2V_6copied6CopiedB3z_EINtNtB2V_5chain5ChainIB5c_B4J_INtNtNtB1J_7sources4once4OnceBP_EEB4J_EENCNvMs4_NtBR_5tupleINtB6r_16FixedLengthTupleBP_E23apply_type_mapping_impls0_0EINtNtB5K_6repeat6RepeatNtNtBR_5infer11TypeContextEEENCB6l_s1_0EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %bb.bl unwind label %bb.bj, !noalias !24851 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24852
  call void @llvm.experimental.noalias.scope.decl(metadata !24854)
  %i.gf = load i32, ptr %i.e, align 8, !range !57, !alias.scope !24854, !noalias !24837, !noundef !24 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, -3
  br i1 %i.gg, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !24855)
  %i.gh = icmp eq i32 %i.gf, -2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.gh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.val1.i.i.i5.i = load i64, ptr %i.gi, align 8, !alias.scope !24856, !noalias !24837, !noundef !24 ; 2 uses
  %i.gj = icmp eq i64 %.val1.i.i.i5.i, 0
  br i1 %i.gj, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i: ; preds = %bb.bn
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i7.i = load ptr, ptr %i.gk, align 8, !alias.scope !24856, !noalias !24837, !nonnull !24, !noundef !24
  %i.gl = shl nuw nsw i64 %.val1.i.i.i5.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7.i, i64 noundef %i.gl, i64 noundef 4) #48, !noalias !24857
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i

bb.bo:                                            ; preds = %bb.bm
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gi), !noalias !24851
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i

bb.bp:                                            ; preds = %bb.bj
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !24851
  unreachable

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i: ; preds = %bb.bo, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i, %bb.bn, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24837
  %i.gn = extractvalue { ptr, i64 } %i.ge, 0
  %i.go = extractvalue { ptr, i64 } %i.ge, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.gn, ptr %i.gp, align 8, !alias.scope !24755, !noalias !24858
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.go, ptr %i.gq, align 8, !alias.scope !24755, !noalias !24858
  store i32 -2, ptr %i.ak, align 8, !alias.scope !24755, !noalias !24858
  br label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit.i, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE23apply_type_mapping_impl.exit.i
  %i.gr = invoke { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #50
          to label %common.resume unwind label %bb.bu

bb.br:                                            ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE23apply_type_mapping_impl.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24859)
  %i.gt = load i32, ptr %i.ak, align 8, !range !44, !alias.scope !24859, !noundef !24
  %i.gu = icmp eq i32 %i.gt, -2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.gu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %.val1.i1 = load i64, ptr %i.gv, align 8, !alias.scope !24859, !noundef !24 ; 2 uses
  %i.gw = icmp eq i64 %.val1.i1, 0
  br i1 %i.gw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val.i2 = load ptr, ptr %i.gx, align 8, !alias.scope !24859, !nonnull !24, !noundef !24
  %i.gy = shl nuw nsw i64 %.val1.i1, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.gy, i64 noundef 4) #48, !noalias !24859
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.bt:                                            ; preds = %bb.br
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %bb.bs, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret { i32, i32 } %i.gr

bb.bu:                                            ; preds = %bb.bq
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType25find_legacy_typevars_impl(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i32 noundef %5, i32 %6, ptr noalias noundef align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24878)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !24, !alias.scope !24878, !nonnull !24
  %i.h = tail call noundef nonnull align 8 ptr %i.g(ptr noundef nonnull %2), !noalias !24878, !inline_history !66 ; 2 uses
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.h), !noalias !24878
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.h, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !24878 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24879)
  %i.l = load i32, ptr %i.k, align 8, !range !44, !alias.scope !24879, !noalias !24880, !noundef !24 ; 3 uses
  %.not.i = icmp eq i32 %i.l, -2
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24881)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !24882, !noalias !24883, !noundef !24 ; 2 uses
  %i.p = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !24883 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.idx.i.i = shl nuw nsw i64 %i.r, 4
end_hunk_3
begin_hunk_4_@_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType25find_legacy_typevars_impl:bb.a
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !24879, !noalias !24880, !nonnull !24, !noundef !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i = load i64, ptr %i.ah, align 8, !alias.scope !24879, !noalias !24880, !noundef !24 ; 2 uses
  %.idx.i2.i = shl nuw nsw i64 %.val1.i, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i2.i
  %i.aj = icmp eq i64 %.val1.i, 0
  br i1 %i.aj, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE25find_legacy_typevars_impl.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %bb.f, %.lr.ph.i3.i
  %.sroa.0.01.i.i = phi ptr [ %i.ak, %.lr.ph.i3.i ], [ %.val.i, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.01.i.i, i64 16, i1 false), !noalias !24887
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25find_legacy_typevars_impl(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i32 noundef %5, i32 %6, ptr noalias noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 %8), !noalias !24879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24886
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE25find_legacy_typevars_impl.exit, label %.lr.ph.i3.i

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE25find_legacy_typevars_impl.exit: ; preds = %.lr.ph15.i.i, %.lr.ph.i3.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType30recursive_type_normalized_impl(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 4                ; 5 uses
  %i.j = alloca [16 x i8], align 4                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 19 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [16 x i8], align 4                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [16 x i8], align 4                ; 7 uses
  %i.v = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.11.i.sroa.6 = alloca [16 x i8], align 8  ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 5 uses
  %.sroa.03.0.copyload.i = load i32, ptr %4, align 4, !noalias !24973
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !24973 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !24973 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ], !prof !83

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.5.0.copyload.i, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.9.0.copyload.i, 1
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

bb.d:                                             ; preds = %bb.a
  %i.z = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.aa = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.i = phi { i32, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %.sroa.0.1.i = extractvalue { i32, i32 } %.pn.i, 0
  %.sroa.6.1.i = extractvalue { i32, i32 } %.pn.i, 1
  store i32 0, ptr %4, align 4, !noalias !24973
  store i32 %.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !24973
  store i32 %.sroa.6.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !24973
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit: ; preds = %bb.c, %bb.g
  %.merged.i = phi { i32, i32 } [ %i.y, %bb.c ], [ %.pn.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24974)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !24, !alias.scope !24974, !nonnull !24
  %i.ae = tail call noundef nonnull align 8 ptr %i.ad(ptr noundef nonnull %2), !noalias !24974, !inline_history !66 ; 2 uses
  %i.af = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.ae), !noalias !24974
  %i.ag = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.af, ptr noundef nonnull align 8 %i.ae, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !24974 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24976)
  %i.ai = load i32, ptr %i.ah, align 8, !range !44, !alias.scope !24975, !noalias !24977, !noundef !24 ; 5 uses
  %.not.i = icmp eq i32 %i.ai, -2
  br i1 %.not.i, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24979)
  br i1 %6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24980
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !24981, !noalias !24982, !noundef !24 ; 2 uses
  %i.am = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !24983 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  store ptr %i.an, ptr %i.t, align 8, !noalias !24980
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !24980
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %2, ptr %i.ar, align 8, !noalias !24980
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %3, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !24980
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %4, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !24980
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %5, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !24980
  %.sroa.537.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %.sroa.537.i.i.sroa.0.0.copyload = load i32, ptr %.sroa.537.0..sroa_idx39.i.i, align 4, !alias.scope !24984, !noalias !24982
  %.sroa.537.i.i.sroa.6.0..sroa.537.0..sroa_idx39.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.537.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.537.i.i.sroa.6.0..sroa.537.0..sroa_idx39.i.i.sroa_idx, align 8, !alias.scope !24984, !noalias !24982
  %i.as = icmp eq i32 %i.ai, -1
  br i1 %i.as, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !24985, !noalias !24982, !noundef !24 ; 2 uses
  %i.aw = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !24983 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 4 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %.idx.i.i = shl nuw nsw i64 %i.ay, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i.i ; 2 uses
  %.sroa.522.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %.sroa.522.i.i.sroa.0.0.copyload = load i32, ptr %.sroa.522.0..sroa_idx24.i.i, align 4, !alias.scope !24986, !noalias !24982
  %.sroa.522.i.i.sroa.6.0..sroa.522.0..sroa_idx24.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.522.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.522.i.i.sroa.6.0..sroa.522.0..sroa_idx24.i.i.sroa_idx, align 8, !alias.scope !24986, !noalias !24982
  %i.ba = icmp eq i32 %i.ai, -1
  br i1 %i.ba, label %bb.s, label %bb.q

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24980
  store i32 %i.ai, ptr %i.s, align 4, !noalias !24980
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.537.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.537.0..sroa_idx39.i.i, i64 12, i1 false), !noalias !24982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !24987
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.s, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.q, i1 noundef zeroext true), !noalias !24988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24980
  %i.bb = load i32, ptr %i.r, align 4, !range !36, !noalias !24980, !noundef !24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bb, -1               ; 3 uses
  %.sroa.041.0.copyload42.i.i = load i32, ptr %5, align 4, !alias.scope !24989, !noalias !24987
  %.sroa.041.0.i.i = select i1 %.not.i.i, i32 %.sroa.041.0.copyload42.i.i, i32 %i.bb
  %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i, ptr %5, ptr %i.r
  %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.sroa.537.i.i.sroa.0.0.copyload17 = load i32, ptr %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !24987
  %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i, ptr %5, ptr %i.r
  %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.537.i.i.sroa.6.0.copyload18 = load ptr, ptr %.sink.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !noalias !24987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24980
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.537.i.i.sroa.0.0 = phi i32 [ %.sroa.537.i.i.sroa.0.0.copyload, %bb.i ], [ %.sroa.537.i.i.sroa.0.0.copyload17, %bb.k ]
  %.sroa.537.i.i.sroa.6.0 = phi ptr [ %.sroa.537.i.i.sroa.6.0.copyload, %bb.i ], [ %.sroa.537.i.i.sroa.6.0.copyload18, %bb.k ]
  %.sroa.033.0.i.i = phi i32 [ -1, %bb.i ], [ %.sroa.041.0.i.i, %bb.k ]
  %i.bc = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207), !noalias !24988 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24990
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !noalias !24990
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_5slice4iter4IterBJ_ENCNvMse_NtBL_5tupleINtB3I_19VariableLengthTupleBJ_NtB3I_15VariableSegmentE30recursive_type_normalized_impls0_0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.t)
          to label %bb.n unwind label %bb.m, !noalias !24991

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.p, !noalias !24992

bb.n:                                             ; preds = %bb.l
  %i.bf = extractvalue { ptr, i64 } %i.bc, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %i.bg = extractvalue { ptr, i64 } %i.bc, 1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bd, align 8, !alias.scope !24993, !noalias !24994, !noundef !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !24993, !noalias !24994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24990
  store ptr %i.bf, ptr %i.n, align 8, !noalias !24995
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bh, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !24995
  %.sroa.547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %2, ptr %.sroa.547.0..sroa_idx.i.i, align 8, !noalias !24995
  %.sroa.648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %3, ptr %.sroa.648.0..sroa_idx.i.i, align 8, !noalias !24995
  %.sroa.749.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %4, ptr %.sroa.749.0..sroa_idx.i.i, align 8, !noalias !24995
  %.sroa.850.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %5, ptr %.sroa.850.0..sroa_idx.i.i, align 8, !noalias !24995
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_5slice4iter4IterBJ_ENCNvMse_NtBL_5tupleINtB3I_19VariableLengthTupleBJ_NtB3I_15VariableSegmentE30recursive_type_normalized_impls1_0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.o unwind label %bb.m, !noalias !24992

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24990
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13shrink_to_fitBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i unwind label %bb.m, !noalias !24992

bb.p:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !24992
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.m, %bb.t, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.y ], [ %i.be, %bb.m ], [ %i.bw, %bb.t ], [ %lpad.thr_comm.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i64 %i.bi, 0
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.bk
  %.sroa.11.i.sroa.0.0.copyload = load i64, ptr %i.o, align 8, !noalias !24996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !24996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24980
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.i

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !24980
  store i32 %i.ai, ptr %i.v, align 4, !noalias !24980
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.522.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.522.0..sroa_idx24.i.i, i64 12, i1 false), !noalias !24982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !24980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !24987
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.v, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.p, i1 noundef zeroext true), !noalias !24983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24980
  %i.bm = load i32, ptr %i.u, align 4, !range !36, !noalias !24980, !noundef !24 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bm, -1
  br i1 %.not13.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.522.i.i.sroa.0.0.copyload15 = load i32, ptr %.sroa.456.0..sroa_idx.i.i, align 4, !noalias !24980
  %.sroa.522.i.i.sroa.6.0..sroa.456.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.522.i.i.sroa.6.0.copyload16 = load ptr, ptr %.sroa.522.i.i.sroa.6.0..sroa.456.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !24980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24980
  br label %bb.s

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24980
  br label %bb.ao

bb.s:                                             ; preds = %bb.r, %bb.j
  %.sroa.522.i.i.sroa.0.0 = phi i32 [ %.sroa.522.i.i.sroa.0.0.copyload, %bb.j ], [ %.sroa.522.i.i.sroa.0.0.copyload15, %bb.r ]
  %.sroa.522.i.i.sroa.6.0 = phi ptr [ %.sroa.522.i.i.sroa.6.0.copyload, %bb.j ], [ %.sroa.522.i.i.sroa.6.0.copyload16, %bb.r ]
  %.sroa.018.0.i.i = phi i32 [ -1, %bb.j ], [ %i.bm, %bb.r ]
  %i.bn = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207), !noalias !24983 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 4 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %.idx57.i.i = shl nuw nsw i64 %i.bp, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx57.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !24980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !24980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24997
  store ptr %i.ax, ptr %i.m, align 8, !alias.scope !24998, !noalias !24999
  %.sroa.5.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx16.i.i, align 8, !alias.scope !24998, !noalias !24999
  %.sroa.6.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx17.i.i, align 8, !alias.scope !24998, !noalias !24999
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %3, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !24998, !noalias !24999
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %4, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !24998, !noalias !24999
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %5, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !24998, !noalias !24999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24997
  store ptr %i.bo, ptr %i.l, align 8, !alias.scope !25000, !noalias !25001
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !25000, !noalias !25001
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %2, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !alias.scope !25000, !noalias !25001
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %3, ptr %.sroa.630.0..sroa_idx.i.i, align 8, !alias.scope !25000, !noalias !25001
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %4, ptr %.sroa.731.0..sroa_idx.i.i, align 8, !alias.scope !25000, !noalias !25001
  %.sroa.832.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %5, ptr %.sroa.832.0..sroa_idx.i.i, align 8, !alias.scope !25000, !noalias !25001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !24997
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impl0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1q_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m), !noalias !25002
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impls_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1q_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l), !noalias !25002
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.br, i64 %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25003
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.bu, align 8, !alias.scope !25004, !noalias !25003
  %i.bv = invoke { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E17try_reserve_exactBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bt)
          to label %bb.u unwind label %bb.t, !noalias !25005 ; 2 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.v, !noalias !25005

bb.u:                                             ; preds = %bb.s
  %i.bx = extractvalue { i64, i64 } %i.bv, 0
  %i.by = extractvalue { i64, i64 } %i.bv, 1
  invoke void @_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.bx, i64 %i.by)
          to label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13with_capacityBM_.exit.i.i.i unwind label %bb.t, !noalias !25005

bb.v:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !25005
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13with_capacityBM_.exit.i.i.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !24997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25003
  %i.ca = icmp eq i64 %i.ay, 0
  br i1 %i.ca, label %.loopexit66.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13with_capacityBM_.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ai, %.lr.ph.i.i.i
  %.sroa.0.067.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.cd, %bb.ai ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.067.i.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !25007
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %.sroa.0.067.i.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, i1 noundef zeroext true)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impl0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i.i unwind label %bb.x, !noalias !25002

bb.x:                                             ; preds = %bb.ah, %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impl0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25006
  %.pr.i.i.i = load i32, ptr %i.j, align 4, !noalias !24997 ; 2 uses
  switch i32 %.pr.i.i.i, label %bb.ag [
    i32 -2, label %.loopexit66.i.i.i
    i32 -1, label %.loopexit.i.i
  ]

bb.y:                                             ; preds = %bb.ab, %bb.z, %bb.x
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %i.cm, %bb.ab ], [ %i.cf, %bb.z ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.aj, !noalias !25002

bb.z:                                             ; preds = %.loopexit.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit66.i.i.i:                                ; preds = %bb.ai, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impl0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13with_capacityBM_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !25008, !noalias !25009, !noundef !24
  %.not.i.i14.i.i = icmp eq i64 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !25008, !noalias !25009
  %.sink9.i.i15.i.i = select i1 %.not.i.i14.i.i, i64 0, i64 %i.cj
  %i.ck = icmp eq i64 %i.bp, 0
  br i1 %i.ck, label %.loopexit.i.i.i, label %.lr.ph69.i.i.i

.lr.ph69.i.i.i:                                   ; preds = %.loopexit66.i.i.i
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.lr.ph69.i.i.i
  %.sroa.044.068.i.i.i = phi ptr [ %i.bo, %.lr.ph69.i.i.i ], [ %i.cl, %bb.af ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.044.068.i.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !25011
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %.sroa.044.068.i.i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, i1 noundef zeroext true)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMse_NtB1o_5tupleINtB2h_19VariableLengthTupleB1m_NtB2h_15VariableSegmentE30recursive_type_normalized_impls_0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i.i unwind label %bb.ab, !noalias !25002
end_hunk_4
begin_hunk_5_@_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE6resize:bb.a
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca [40 x i8], align 8          ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.524.sroa.0 = alloca [12 x i8], align 4   ; 2 uses
  %.sroa.515.sroa.0 = alloca [12 x i8], align 4   ; 2 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = load i64, ptr %5, align 8, !range !27, !noundef !24
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !24 ; 7 uses
  br i1 %i.h, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, label %bb.b

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26273, !noundef !24 ; 6 uses
  %i.p = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
  %i.q = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  %i.r = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 3 uses
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.l) ; 2 uses
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 3 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x
  %.sroa.067.0.copyload = load i32, ptr %1, align 8, !alias.scope !26274 ; 2 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.568.0.copyload = load i32, ptr %.sroa.568.0..sroa_idx, align 4, !alias.scope !26274
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.669.0.copyload = load i64, ptr %.sroa.669.0..sroa_idx, align 8, !alias.scope !26274
  %i.z = icmp eq i32 %.sroa.067.0.copyload, -1    ; 3 uses
  %.sroa.664.0 = select i1 %i.z, i64 undef, i64 %.sroa.669.0.copyload
  %.sroa.561.0 = select i1 %i.z, i32 5, i32 %.sroa.568.0.copyload
  %.sroa.059.0 = select i1 %i.z, i32 18, i32 %.sroa.067.0.copyload
  %i.aa = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26276)
  store i32 %.sroa.059.0, ptr %i.f, align 8, !alias.scope !26277, !noalias !26276
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.561.0, ptr %.sroa.055.sroa.4.0..sroa_idx, align 4, !alias.scope !26277, !noalias !26276
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.664.0, ptr %.sroa.055.sroa.5.0..sroa_idx, align 8, !alias.scope !26277, !noalias !26276
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.w, ptr %.sroa.456.0..sroa_idx, align 8, !alias.scope !26277, !noalias !26276
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.y, ptr %.sroa.557.0..sroa_idx, align 8, !alias.scope !26277, !noalias !26276
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.j, ptr %.sroa.658.0..sroa_idx, align 8, !alias.scope !26277, !noalias !26276
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.ab, ptr %i.ae, align 8, !alias.scope !26278, !noalias !26275
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.ad, ptr %.sroa.471.0..sroa_idx, align 8, !alias.scope !26278, !noalias !26275
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.t, ptr %.sroa.572.0..sroa_idx, align 8, !alias.scope !26278, !noalias !26275
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1L_INtNtB1P_4skip4SkipINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEEINtNtNtB1R_7sources4once4OnceB3O_EEINtNtB1P_4take4TakeB30_EEB3O_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.af = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  %.not35 = icmp ugt i64 %i.j, %i.q
  br i1 %.not35, label %bb.e, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !26279, !noalias !26280, !noundef !24
  %.not.i.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !26279, !noalias !26280
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.am ; 3 uses
  %i.an = icmp ult i64 %i.j, %.sink9.i.i
  br i1 %i.an, label %bb.c, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit37

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit37: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !26281, !noalias !26282, !noundef !24 ; 2 uses
  %i.aq = sub nuw i64 %i.j, %.sink9.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 3 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.au
  %.sroa.049.0.copyload = load i32, ptr %1, align 8, !alias.scope !26283 ; 2 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.550.0.copyload = load i32, ptr %.sroa.550.0..sroa_idx, align 4, !alias.scope !26283
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.651.0.copyload = load i64, ptr %.sroa.651.0..sroa_idx, align 8, !alias.scope !26283
  %i.aw = icmp eq i32 %.sroa.049.0.copyload, -1   ; 3 uses
  %.sroa.548.0 = select i1 %i.aw, i32 5, i32 %.sroa.550.0.copyload
  %.sroa.047.0 = select i1 %i.aw, i32 18, i32 %.sroa.049.0.copyload
  %.not = icmp eq i64 %i.j, %.sink9.i.i           ; 3 uses
  %i.ax = select i1 %.not, i1 true, i1 %i.aw
  %.sroa.56.sroa.0.sroa.4.0 = select i1 %i.ax, i64 undef, i64 %.sroa.651.0.copyload
  %.sroa.56.sroa.0.sroa.0.0 = select i1 %.not, i32 undef, i32 %.sroa.548.0
  %.sroa.04.0 = select i1 %.not, i32 -1, i32 %.sroa.047.0
  %i.ay = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 3 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26284
  store i32 %.sroa.04.0, ptr %i.c, align 8, !alias.scope !26285
  %.sroa.038.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.56.sroa.0.sroa.0.0, ptr %.sroa.038.sroa.0.sroa.4.0..sroa_idx, align 4, !alias.scope !26285
  %.sroa.038.sroa.0.sroa.4.sroa.4.0..sroa.038.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.56.sroa.0.sroa.4.0, ptr %.sroa.038.sroa.0.sroa.4.sroa.4.0..sroa.038.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !26285
  %.sroa.038.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.aq, ptr %.sroa.038.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !26285
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.at, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8, !alias.scope !26285
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.av, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8, !alias.scope !26285
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.az, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !26285
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx40, align 8, !alias.scope !26285
  %i.bc = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1J_8adapters5chain5ChainIB2R_INtNtB2V_6copied6CopiedINtNtNtB1L_5slice4iter4IterBP_EEINtNtNtB1J_7sources8repeat_n7RepeatNBP_EEB3r_EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c), !noalias !26284 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26284
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  store i32 -2, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.bf, align 4
  store i32 -3, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_.exit, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit37, %bb.c
  ret void

bb.e:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit
  %i.bg = sub nuw i64 %i.j, %i.q
  %.sroa.019.0.copyload = load i32, ptr %i.d, align 4
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.515.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.420.0..sroa_idx, i64 12, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, %bb.e
  %.sroa.515.sroa.4.0 = phi i64 [ %i.bg, %bb.e ], [ undef, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit ]
  %.sroa.013.0 = phi i32 [ %.sroa.019.0.copyload, %bb.e ], [ -1, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26286)
  call void @llvm.experimental.noalias.scope.decl(metadata !26287)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ag, ptr %i.bh, align 8, !alias.scope !26288, !noalias !26287
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ai, ptr %.sroa.474.0..sroa_idx, align 8, !alias.scope !26288, !noalias !26287
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.j, ptr %.sroa.575.0..sroa_idx, align 8, !alias.scope !26288, !noalias !26287
  store i32 %.sroa.013.0, ptr %i.e, align 8, !alias.scope !26289, !noalias !26286
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.515.sroa.0, i64 12, i1 false)
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.515.sroa.4.0, ptr %.sroa.578.0..sroa_idx, align 8, !alias.scope !26289, !noalias !26286
  %.not36 = icmp ugt i64 %i.l, %i.s
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.028.0.copyload = load i32, ptr %i.d, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.524.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.429.0..sroa_idx, i64 12, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.022.0 = phi i32 [ %.sroa.028.0.copyload, %bb.g ], [ -1, %bb.f ]
  %i.bi = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26290
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !noalias !26290
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters5chain5ChainINtNtB2I_4take4TakeINtNtB2I_6copied6CopiedINtNtNtB1I_5slice4iter4IterBJ_EEEINtNtNtB1G_7sources8repeat_n7RepeatNBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.j unwind label %bb.i, !noalias !26291

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EEB1f_.exit.i.i unwind label %bb.l, !noalias !26290

bb.j:                                             ; preds = %bb.h
  %i.bl = extractvalue { ptr, i64 } %i.bi, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = extractvalue { ptr, i64 } %i.bi, 1
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i64, ptr %i.bj, align 8, !alias.scope !26292, !noalias !26293, !noundef !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !26292, !noalias !26293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26290
  store i32 %.sroa.022.0, ptr %i.a, align 8, !noalias !26294
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.524.sroa.0, i64 12, i1 false)
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.u, ptr %.sroa.584.0..sroa_idx, align 8, !noalias !26294
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bl, ptr %.sroa.685.0..sroa_idx, align 8, !noalias !26294
  %.sroa.685.sroa.4.0..sroa.685.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bn, ptr %.sroa.685.sroa.4.0..sroa.685.0..sroa_idx.sroa_idx, align 8, !noalias !26294
  %.sroa.685.sroa.5.0..sroa.685.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.t, ptr %.sroa.685.sroa.5.0..sroa.685.0..sroa_idx.sroa_idx, align 8, !noalias !26294
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters5chain5ChainINtNtNtB1G_7sources8repeat_n7RepeatNBJ_EINtNtB2I_4skip4SkipINtNtB2I_6copied6CopiedINtNtNtB1I_5slice4iter4IterBJ_EEEEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.k unwind label %bb.i, !noalias !26290

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26290
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13shrink_to_fitBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_.exit unwind label %bb.i, !noalias !26290

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !26290
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EEB1f_.exit.i.i: ; preds = %bb.i
  resume { ptr, i32 } %i.bk

_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_.exit: ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  %.sink9.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.bq
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false)
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink9.i.i.i, ptr %.sroa.490.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE10truthinessB9_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !44, !alias.scope !26301, !noalias !26302, !noundef !24
  %.not.i = icmp eq i32 %i.a, -2
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26301, !noalias !26302, !noundef !24
  %i.d = icmp eq i64 %i.c, 0
  %spec.select = zext i1 %i.d to i8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26303, !noalias !26304, !noundef !24
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26303, !noalias !26304
  %.fr16 = freeze i64 %i.h
  %i.i = icmp eq i64 %.fr16, 0
  %i.j = or i1 %.not.i.i, %i.i
  %spec.select15 = select i1 %i.j, i8 2, i8 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %spec.select15, %bb.c ], [ %spec.select, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE14fixed_elementsB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !44, !noundef !24
  %.not = icmp eq i32 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26310, !noalias !26311, !noundef !24
  %.not.i.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !26310, !noalias !26311, !nonnull !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26310, !noalias !26311
  %.sink10.i.i = select i1 %.not.i.i, ptr %i.b, ptr %i.e ; 2 uses
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.g
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sink9.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !24
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink5 = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  %.sink10.i.i.sink = phi ptr [ %i.j, %bb.c ], [ %.sink10.i.i, %bb.b ]
  %.sink = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sink5, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink10.i.i.sink, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !44, !noundef !24
  %.not = icmp eq i32 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !26315, !noalias !26316, !noundef !24
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26315, !noalias !26316
  %.sink9.i = select i1 %.not.i, i64 0, i64 %i.g
  %i.h = sub i64 %.sink9.i, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.c, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.l, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i32 noundef range(i32 0, 2) %5, i32 %6, i32 noundef range(i32 0, 2) %7, i32 %8, i32 noundef range(i32 0, 2) %9, i32 %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 2 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = load i32, ptr %1, align 8, !range !44, !noundef !24 ; 3 uses
  %.not = icmp eq i32 %i.h, -2
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26337)
  %i.i = trunc nuw i32 %9 to i1
  %..i = select i1 %i.i, i32 %10, i32 1           ; 4 uses
  %.not.i = icmp eq i32 %..i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %..i, 1
  br i1 %i.j, label %bb.e, label %bb.j

bb.d:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 4, !alias.scope !26336, !noalias !26338
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 range(i32 1, 0) %..i)
  %.sroa.0.0.i9.i = zext nneg i32 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26341)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !26342, !noalias !26343, !noundef !24 ; 2 uses
  %i.o = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207), !noalias !26343 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26344, !noalias !26343
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.54.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.54.0..sroa_idx.i.i, align 4, !alias.scope !26344, !noalias !26343
  %i.s = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !26343 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26347
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !26347
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3rev3RevINtNtB2I_6copied6CopiedINtNtNtB1I_5slice4iter4IterBJ_EEEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r)
          to label %bb.g unwind label %bb.f, !noalias !26348

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.i, !noalias !26348

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.s, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = extractvalue { ptr, i64 } %i.s, 1
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !26349, !noalias !26350, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !26349, !noalias !26350
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3rev3RevINtNtB2I_6copied6CopiedINtNtNtB1I_5slice4iter4IterBJ_EEEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.v, ptr noundef nonnull %i.x)
          to label %bb.h unwind label %bb.f, !noalias !26348

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13shrink_to_fitBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.f, !noalias !26348

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !26348
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.c
  %.sroa.0.0.i.i = zext nneg i32 %..i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26339
  call fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18forward_slice_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i32 noundef range(i32 0, 2) %5, i32 %6, i32 noundef range(i32 0, 2) %7, i32 %8, i64 noundef %.sroa.0.0.i.i), !noalias !26351
  call fastcc void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_22VariableTupleSlicePlan9into_type(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !26336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26339
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !26338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26339
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type.exit

bb.l:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume.i unwind label %bb.o, !noalias !26336

bb.m:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.h, -1                    ; 3 uses
  %.sroa.0.0.i6.i = select i1 %i.ad, i32 18, i32 %i.h
  %.sroa.5.sroa.5.0.i.i = select i1 %i.ad, i64 undef, i64 %.sroa.54.sroa.4.0.copyload.i.i
  %.sroa.5.sroa.0.0.i.i = select i1 %i.ad, i32 5, i32 %.sroa.54.sroa.0.0.copyload.i.i
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !26352
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sink9.i.i.i.i, ptr %i.af, align 8, !alias.scope !26353, !noalias !26352
  store i32 %.sroa.0.0.i6.i, ptr %i.c, align 8, !alias.scope !26354, !noalias !26355
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !26354, !noalias !26355
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26354, !noalias !26355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26339
  %i.ag = trunc nuw i32 %5 to i1
  %i.ah = xor i32 %6, -1
  %spec.select3.i.i = select i1 %i.ag, i32 %i.ah, i32 undef
  %i.ai = trunc nuw i32 %7 to i1
  %i.aj = xor i32 %8, -1
  %spec.select3.i7.i = select i1 %i.ai, i32 %i.aj, i32 undef
  call fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18forward_slice_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i32 noundef range(i32 0, 2) %5, i32 %spec.select3.i.i, i32 noundef range(i32 0, 2) %7, i32 %spec.select3.i7.i, i64 noundef %.sroa.0.0.i9.i), !noalias !26339
  invoke fastcc void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_22VariableTupleSlicePlan9into_type(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %bb.n unwind label %bb.l, !noalias !26336

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26339
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae), !noalias !26336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26339
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !26336
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26356)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !26356, !noalias !26357, !nonnull !24, !noundef !24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !26356, !noalias !26357, !noundef !24
  call void @_RNvXs1_NtCsoTR8nlGN3X_18ty_python_semantic9subscriptSNtNtB7_5types4TypeNtB5_7PySlice8py_sliceB7_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef range(i32 0, 2) %5, i32 %6, i32 noundef range(i32 0, 2) %7, i32 %8, i32 noundef range(i32 0, 2) %9, i32 %10), !noalias !26356
  %i.ap = load i64, ptr %i.g, align 8, !range !54, !noundef !24
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 -1, ptr %0, align 4
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1t_7step_by6StepByINtNtB1t_4take4TakeINtNtB1t_4skip4SkipINtNtNtB1x_5slice4iter4IterBT_EEEEIB2O_IB3c_IB3v_INtNtB1t_3rev3RevB3N_EEEEEEBT_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type.exit

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type.exit: ; preds = %bb.k, %bb.d, %bb.r, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE16tuple_class_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = load i32, ptr %1, align 8, !range !44, !noundef !24 ; 3 uses
  %.not = icmp eq i32 %i.b, -2
  br i1 %.not, label %bb.b, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment16tuple_class_type.exit

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment16tuple_class_type.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !26366, !noundef !24 ; 2 uses
  %i.f = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !alias.scope !26367
  %i.j = icmp eq i32 %i.b, -1                     ; 2 uses
  %spec.select = select i1 %i.j, i32 undef, i32 %.sroa.9.0.copyload
  %spec.select30 = select i1 %i.j, i32 29, i32 %i.b
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load <2 x i32>, ptr %.sroa.512.0..sroa_idx, align 4, !alias.scope !26367
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26368)
  store i32 %spec.select30, ptr %i.a, align 8, !alias.scope !26369
  store <2 x i32> %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4, !alias.scope !26369
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %spec.select, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4, !alias.scope !26369
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !26369
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !26369
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.m, ptr %i.p, align 8, !alias.scope !26370, !noalias !26368
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !26370, !noalias !26368
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1L_INtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEINtNtNtB1R_7sources4once4OnceB3v_EEB2H_EB3v_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.s, align 8, !noundef !24
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val1
  tail call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEB35_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noundef nonnull %.val, ptr noundef nonnull %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment16tuple_class_type.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE17version_info_spec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.0 = alloca [48 x i8], align 4            ; 6 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %3, align 4, !noalias !26381
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !26381 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !26381 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i, label %bb.b [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ], !prof !83

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.f
end_hunk_5
begin_hunk_6_@_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13TupleUnpacker12unpack_tuple:bb.a
  %i.n = alloca [48 x i8], align 8                ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !24, !align !30, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26520)
  %i.t = load i64, ptr %0, align 8, !range !53, !noalias !26520, !noundef !24
  %.not.i = icmp eq i64 %i.t, -1
  %.sink2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.b, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i: ; preds = %bb.a
  %.sink2.i.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8, !noalias !26520, !noundef !24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !noalias !26521, !noundef !24
  %.not.i.i = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.z
  %i.aa = sub i64 %.sink9.i.i, %i.v
  store i64 %i.v, ptr %.sink2.i.sroa.gep, align 8, !alias.scope !26520
  br label %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE3lenB9_.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !26520, !noundef !24
  br label %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE3lenB9_.exit

_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE3lenB9_.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i, %bb.b
  %.sink2.i.sroa.phi = phi ptr [ %.sink2.i.sroa.gep, %bb.b ], [ %.sink2.i.sroa.gep35, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i ]
  %.sink.i = phi i64 [ %i.ac, %bb.b ], [ %i.aa, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i ]
  %storemerge.i = phi i64 [ 0, %bb.b ], [ 1, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i ]
  store i64 %.sink.i, ptr %.sink2.i.sroa.phi, align 8, !alias.scope !26520
  store i64 %storemerge.i, ptr %i.l, align 8, !alias.scope !26520
  call void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE6resize(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.r, ptr noundef nonnull align 4 %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ad = load i32, ptr %i.m, align 8, !range !57, !noundef !24 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, -3
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE3lenB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.d:                                             ; preds = %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE3lenB9_.exit
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(43) %.sroa.59.0..sroa_idx, i64 43, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 %i.ad, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i8 %i.ag, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ah = load i64, ptr %0, align 8, !range !53, !noundef !24
  %.not = icmp eq i64 %i.ah, -1
  %.not13 = icmp eq i32 %i.ad, -2                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not13, label %bb.g, label %bb.m, !prof !23

bb.f:                                             ; preds = %bb.d
  br i1 %.not13, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @307, ptr noundef nonnull inttoptr (i64 103 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #49
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.ai, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15 = load i64, ptr %i.ak, align 8, !noundef !24
  %.val16 = load ptr, ptr %i.aj, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val17 = load i64, ptr %i.al, align 8, !noundef !24
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.val15
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val16, i64 %.val17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E3newB1x_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %.val, ptr noundef nonnull %i.am, ptr noundef nonnull %.val16, ptr noundef nonnull %i.an)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.as = load i64, ptr %i.ao, align 8, !alias.scope !26522, !noalias !26523, !noundef !24 ; 2 uses
  %i.at = load i64, ptr %i.ap, align 8, !alias.scope !26522, !noalias !26523, !noundef !24
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i, label %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i: ; preds = %.noexc, %.noexc19
  %i.av = phi i64 [ %i.az, %.noexc19 ], [ %i.as, %.noexc ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.ao, align 8, !alias.scope !26522, !noalias !26523
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !26522, !noalias !26523, !nonnull !24, !noundef !24
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1v_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.av)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i
  %.pre.i = load i32, ptr %i.aq, align 8, !range !36
  %i.ax = icmp eq i32 %.pre.i, -1
  br i1 %i.ax, label %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.i)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.az = load i64, ptr %i.ao, align 8, !alias.scope !26522, !noalias !26523, !noundef !24 ; 2 uses
  %i.ba = load i64, ptr %i.ap, align 8, !alias.scope !26522, !noalias !26523, !noundef !24
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i, label %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit

_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit: ; preds = %.noexc18, %.noexc19, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.j

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.o, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit4.i
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i20, %bb.n
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.h, %bb.m, %.noexc23, %.noexc24, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i, %.noexc28, %.noexc29, %.noexc30, %.noexc31
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit36, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit39, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.n) #50
          to label %bb.r unwind label %bb.q

bb.j:                                             ; preds = %_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit, %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !26524)
  %i.bc = load i32, ptr %i.n, align 8, !range !44, !alias.scope !26524, !noundef !24
  %i.bd = icmp eq i32 %i.bc, -2
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val1.i = load i64, ptr %i.be, align 8, !alias.scope !26524, !noundef !24 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i, 0
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i = load ptr, ptr %i.bg, align 8, !alias.scope !26524, !nonnull !24, !noundef !24
  %i.bh = shl nuw nsw i64 %.val1.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bh, i64 noundef 4) #48, !noalias !26524
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.l:                                             ; preds = %bb.j
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26526)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !26527, !noalias !26528, !noundef !24
  %i.bl = invoke { ptr, i64 } @_RNvXsq_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index8IndexMutINtNtB2d_5range7RangeTojEE9index_mutBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !26529, !noalias !26530, !noundef !24 ; 2 uses
  %i.bp = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %.noexc23
  %i.bq = extractvalue { ptr, i64 } %i.bl, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = extractvalue { ptr, i64 } %i.bl, 1
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.br
  %i.bt = extractvalue { ptr, i64 } %i.bp, 0      ; 3 uses
  %i.bu = extractvalue { ptr, i64 } %i.bp, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26531
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E3newB1x_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.noexc24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26531
  %i.ca = load i64, ptr %i.bw, align 8, !alias.scope !26532, !noalias !26533, !noundef !24 ; 2 uses
  %i.cb = load i64, ptr %i.bx, align 8, !alias.scope !26532, !noalias !26533, !noundef !24
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i20, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i20: ; preds = %.noexc25, %.noexc27
  %i.cd = phi i64 [ %i.ch, %.noexc27 ], [ %i.ca, %.noexc25 ] ; 3 uses
  %i.ce = add nuw i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bw, align 8, !alias.scope !26532, !noalias !26533
  %.val.i.i21 = load ptr, ptr %i.h, align 8, !alias.scope !26532, !noalias !26533, !nonnull !24, !noundef !24
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1v_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.by, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.cd)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i20
  %.pre.i22 = load i32, ptr %i.by, align 8, !range !36, !noalias !26531
  %i.cf = icmp eq i32 %.pre.i22, -1
  br i1 %i.cf, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i, label %bb.n

bb.n:                                             ; preds = %.noexc26
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i21, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !noalias !26531
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.f)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26531
  %i.ch = load i64, ptr %i.bw, align 8, !alias.scope !26532, !noalias !26533, !noundef !24 ; 2 uses
  %i.ci = load i64, ptr %i.bx, align 8, !alias.scope !26532, !noalias !26533, !noundef !24
  %i.cj = icmp ult i64 %i.ch, %i.ci
  br i1 %i.cj, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit.i20, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i: ; preds = %.noexc27, %.noexc26, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26531
  %.sroa.010.0.copyload.i = load i32, ptr %i.n, align 8, !alias.scope !26534, !noalias !26530 ; 2 uses
  %.sroa.511.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !26534, !noalias !26530
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.612.0.copyload.i = load i64, ptr %.sroa.612.0..sroa_idx.i, align 8, !alias.scope !26534, !noalias !26530
  %i.ck = icmp eq i32 %.sroa.010.0.copyload.i, -1 ; 3 uses
  %.sroa.6.0.i = select i1 %i.ck, i64 undef, i64 %.sroa.612.0.copyload.i
  %.sroa.5.0.i = select i1 %i.ck, i32 5, i32 %.sroa.511.0.copyload.i
  %.sroa.0.0.i = select i1 %i.ck, i32 18, i32 %.sroa.010.0.copyload.i
  store i32 %.sroa.0.0.i, ptr %i.d, align 4, !noalias !26531
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !26531
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !26531
  invoke void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, i8 noundef 10, ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.r, ptr noundef nonnull align 4 %i.s, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit.i
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26531
  %i.cl = load i64, ptr %i.bj, align 8, !alias.scope !26535, !noalias !26528, !noundef !24
  %i.cm = invoke { ptr, i64 } @_RNvXsq_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index8IndexMutINtNtB2d_5range9RangeFromjEE9index_mutBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %.noexc29
  %i.cn = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  %i.co = extractvalue { ptr, i64 } %i.cm, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = extractvalue { ptr, i64 } %i.cm, 1
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %i.cp
  %i.cr = extractvalue { ptr, i64 } %i.cn, 0      ; 3 uses
  %i.cs = extractvalue { ptr, i64 } %i.cn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26531
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E3newB1x_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ct)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %.noexc31
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26531
  %i.cy = load i64, ptr %i.cu, align 8, !alias.scope !26536, !noalias !26537, !noundef !24 ; 2 uses
  %i.cz = load i64, ptr %i.cv, align 8, !alias.scope !26536, !noalias !26537, !noundef !24
  %i.da = icmp ult i64 %i.cy, %i.cz
  br i1 %i.da, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit4.i, label %_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit4.i: ; preds = %.noexc32, %.noexc34
  %i.db = phi i64 [ %i.df, %.noexc34 ], [ %i.cy, %.noexc32 ] ; 3 uses
  %i.dc = add nuw i64 %i.db, 1
  store i64 %i.dc, ptr %i.cu, align 8, !alias.scope !26536, !noalias !26537
  %.val.i2.i = load ptr, ptr %i.c, align 8, !alias.scope !26536, !noalias !26537, !nonnull !24, !noundef !24
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1v_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cx, i64 noundef %i.db)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit4.i
  %.pre13.i = load i32, ptr %i.cw, align 8, !range !36, !noalias !26531
  %i.dd = icmp eq i32 %.pre13.i, -1
  br i1 %i.dd, label %_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit, label %bb.o

bb.o:                                             ; preds = %.noexc33
  %i.de = getelementptr inbounds nuw [56 x i8], ptr %.val.i2.i, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !noalias !26531
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.de, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26531
  %i.df = load i64, ptr %i.cu, align 8, !alias.scope !26536, !noalias !26537, !noundef !24 ; 2 uses
  %i.dg = load i64, ptr %i.cv, align 8, !alias.scope !26536, !noalias !26537, !noundef !24
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtB7_6copied6CopiedINtBZ_4IterNtB1v_4TypeEEEINtB5_7ZipImplBW_B2M_E4nextB1x_.exit4.i, label %_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit

_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtNtNtB7_13set_theoretic7builder12UnionBuilderE12unpack_tuple.exit: ; preds = %.noexc33, %.noexc34, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26531
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %bb.l, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.k, %bb.c
  %.sroa.0.0 = phi i8 [ %i.ag, %bb.c ], [ 2, %bb.k ], [ 2, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ 2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret i8 %.sroa.0.0

bb.p:                                             ; preds = %bb.g
  unreachable

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.r:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13TupleUnpacker3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.633 = alloca [56 x i8], align 8          ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = load i64, ptr %4, align 8, !range !27, !noundef !24
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !24 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.311.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %3, ptr %.sroa.414.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i8 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  store i8 1, ptr %i.r, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26545
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !26545
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB2g_8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_NtBP_5tupleNtB4z_13TupleUnpacker3new00EEEBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i unwind label %bb.c, !noalias !26546

bb.c:                                             ; preds = %bb.d, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EEB1j_.exit.i unwind label %bb.e, !noalias !26545

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !noalias !26547, !noundef !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !26545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26545
  store ptr %1, ptr %i.a, align 8, !noalias !26548
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx27, align 8, !noalias !26548
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.529.0..sroa_idx, align 8, !noalias !26548
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !26548
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB2g_8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_NtBP_5tupleNtB4z_13TupleUnpacker3new00EEEBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !26545

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26545
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E13shrink_to_fitBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit unwind label %bb.c, !noalias !26545

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EEB1j_.exit.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !26549
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EEB1j_.exit.i: ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #50
          to label %bb.f unwind label %bb.e, !noalias !26549

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_EEB1j_.exit.i
  resume { ptr, i32 } %i.t

_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit: ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.u, 0
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.w
  %.sroa.633.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.633, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %3, ptr %.sroa.522.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.i, ptr %i.y, align 8
  %i.z = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB2j_8adapters4take4TakeINtNtNtB2j_7sources11repeat_with10RepeatWithNCNCNvMsl_NtBV_5tupleNtB4M_13TupleUnpacker3new00EEEBX_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit
  %.sroa.5.sroa.2.0 = phi i64 [ %.sink9.i.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit ], [ undef, %bb.g ]
  %.sroa.4.0 = phi i64 [ 0, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit ], [ %i.ab, %bb.g ]
  %.sroa.3.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit ], [ %i.aa, %bb.g ]
  %.sroa.0.0 = phi i64 [ 0, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtNtNtB8_13set_theoretic7builder12UnionBuilderE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2g_7sources11repeat_with10RepeatWithNCNCNvMsl_B6_NtB6_13TupleUnpacker3new00EEB29_EBa_.exit ], [ -1, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.ae, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
end_hunk_6
begin_hunk_7_@_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder5build:bb.a
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !26592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink9.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ai = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.am, align 8
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE12new_from_vecB9_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder5union(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 18 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 4                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = load i64, ptr %1, align 8, !range !53, !noundef !24
  %.not = icmp eq i64 %i.f, -1                    ; 2 uses
  %i.g = load i32, ptr %5, align 8, !range !44    ; 3 uses
  %.not10 = icmp eq i32 %i.g, -2                  ; 2 uses
  %or.cond = select i1 %.not, i1 %.not10, i1 false
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !26608, !noalias !26609
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !26608, !noalias !26609, !nonnull !24, !noundef !24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26608, !noalias !26609, !noundef !24
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.03.0.copyload.i = load i32, ptr %i.m, align 8, !alias.scope !26608, !noalias !26609 ; 2 uses
  %i.n = icmp eq i32 %.sroa.03.0.copyload.i, -1   ; 3 uses
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.54.sroa.4.0.copyload.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26608, !noalias !26609
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.54.sroa.0.0.copyload.i = load i32, ptr %.sroa.54.0..sroa_idx.i, align 4, !alias.scope !26608, !noalias !26609
  %.sroa.5.sroa.0.0.i = select i1 %i.n, i32 5, i32 %.sroa.54.sroa.0.0.copyload.i
  %.sroa.5.sroa.5.0.i = select i1 %i.n, i64 undef, i64 %.sroa.54.sroa.4.0.copyload.i
  %.sroa.0.0.i = select i1 %i.n, i32 18, i32 %.sroa.03.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !26608, !noalias !26609, !nonnull !24, !noundef !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !26608, !noalias !26609, !noundef !24
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.r
  br label %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder18iter_element_types.exit

bb.d:                                             ; preds = %._crit_edge, %.thread
  %i.t = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %.thread ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !26608, !noalias !26609, !nonnull !24, !noundef !24 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  %i.x = ptrtoint ptr %i.v to i64
  br label %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder18iter_element_types.exit

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.m, %bb.g, %bb.k, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16TupleSpecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(64) %1) #50
          to label %bb.p unwind label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !24 ; 5 uses
  %i.aa = icmp ult i64 %i.z, 576460752303423488
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val = load i64, ptr %i.ab, align 8, !noundef !24
  %i.ac = icmp eq i64 %i.z, %.val
  br i1 %i.ac, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val12 = load ptr, ptr %i.ad, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.z
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B2c_E3newB1t_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull readonly align 4 %.val12, ptr noundef nonnull readonly %i.ah)
          to label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBM_EBQ_.exit unwind label %.loopexit.split-lp

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBM_EBQ_.exit: ; preds = %bb.g
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 2 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.521.0.copyload = load i64, ptr %.sroa.521.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.ai = icmp ult i64 %.sroa.521.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ai, label %.lr.ph, label %.thread33

.lr.ph:                                           ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBM_EBQ_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.419.0.copyload) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.521.038 = phi i64 [ %.sroa.521.0.copyload, %.lr.ph ], [ %i.am, %bb.j ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.521.038 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.sroa.419.0.copyload, i64 %.sroa.521.038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false)
  invoke void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesANtB8_4Typej2_B1L_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.c)
          to label %bb.j unwind label %.loopexit

.thread33:                                        ; preds = %bb.j, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSBM_EBQ_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.thread33
  ret void

bb.j:                                             ; preds = %bb.h
  %i.am = add i64 %.sroa.521.038, 1               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.am, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread33, label %bb.h

_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder18iter_element_types.exit: ; preds = %bb.d, %bb.c
  %.sroa.9.0 = phi ptr [ undef, %bb.d ], [ %i.s, %bb.c ]
  %.sroa.8.0 = phi ptr [ undef, %bb.d ], [ %i.p, %bb.c ]
  %.sroa.725.0 = phi ptr [ undef, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.423.0 = phi i32 [ undef, %bb.d ], [ %.sroa.5.sroa.0.0.i, %bb.c ]
  %.sroa.5.sroa.5.0.sink.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.5.sroa.5.0.i, %bb.c ]
  %.sink.i = phi ptr [ %i.w, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.0.0.sink.i = phi i32 [ -4, %bb.d ], [ %.sroa.0.0.i, %bb.c ]
  br i1 %.not10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder18iter_element_types.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !26610, !noalias !26611, !noundef !24 ; 2 uses
  %i.aq = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.k
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.54.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !26612, !noalias !26611
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.54.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.54.0..sroa_idx.i.i, align 4, !alias.scope !26612, !noalias !26611
  %i.ar = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %.noexc17 unwind label %.loopexit.split-lp ; 2 uses

.noexc17:                                         ; preds = %.noexc
  %i.as = icmp eq i32 %i.g, -1                    ; 3 uses
  %.sroa.0.0.i.i = select i1 %i.as, i32 18, i32 %i.g
  %.sroa.5.sroa.5.0.i.i = select i1 %i.as, i64 undef, i64 %.sroa.54.sroa.4.0.copyload.i.i
  %.sroa.5.sroa.0.0.i.i = select i1 %i.as, i32 5, i32 %.sroa.54.sroa.0.0.copyload.i.i
  %i.at = extractvalue { ptr, i64 } %i.aq, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = extractvalue { ptr, i64 } %i.aq, 1
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.au
  %i.aw = extractvalue { ptr, i64 } %i.ar, 0      ; 3 uses
  %i.ax = extractvalue { ptr, i64 } %i.ar, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax
  br label %bb.m

bb.l:                                             ; preds = %_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder18iter_element_types.exit
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !26613, !noalias !26614, !nonnull !24, !noundef !24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !26613, !noalias !26614, !noundef !24
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bc
  %i.be = ptrtoint ptr %i.ba to i64
  br label %bb.m

bb.m:                                             ; preds = %.noexc17, %bb.l
  %.sroa.932.0 = phi ptr [ undef, %bb.l ], [ %i.ay, %.noexc17 ]
  %.sroa.831.0 = phi ptr [ undef, %bb.l ], [ %i.aw, %.noexc17 ]
  %.sroa.730.0 = phi ptr [ undef, %bb.l ], [ %i.av, %.noexc17 ]
  %.sroa.427.0 = phi i32 [ undef, %bb.l ], [ %.sroa.5.sroa.0.0.i.i, %.noexc17 ]
  %.sroa.0.0.i.sink.i = phi i32 [ -4, %bb.l ], [ %.sroa.0.0.i.i, %.noexc17 ]
  %.sroa.5.sroa.5.0.i.sink.i = phi i64 [ %i.be, %bb.l ], [ %.sroa.5.sroa.5.0.i.i, %.noexc17 ]
  %.sink.i16 = phi ptr [ %i.bd, %bb.l ], [ %i.at, %.noexc17 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26616)
  store i32 %.sroa.0.0.sink.i, ptr %i.a, align 8, !alias.scope !26617, !noalias !26616
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.423.0, ptr %.sroa.423.0..sroa_idx, align 4, !alias.scope !26617, !noalias !26616
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.sroa.5.0.sink.i, ptr %.sroa.524.0..sroa_idx, align 8, !alias.scope !26617, !noalias !26616
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !26617, !noalias !26616
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.725.0, ptr %.sroa.725.0..sroa_idx, align 8, !alias.scope !26617, !noalias !26616
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !26617, !noalias !26616
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !26617, !noalias !26616
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.sroa.0.0.i.sink.i, ptr %i.bf, align 8, !alias.scope !26618, !noalias !26615
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.sroa.427.0, ptr %.sroa.427.0..sroa_idx, align 4, !alias.scope !26618, !noalias !26615
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.5.sroa.5.0.i.sink.i, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !26618, !noalias !26615
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sink.i16, ptr %.sroa.629.0..sroa_idx, align 8, !alias.scope !26618, !noalias !26615
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.730.0, ptr %.sroa.730.0..sroa_idx, align 8, !alias.scope !26618, !noalias !26615
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.sroa.831.0, ptr %.sroa.831.0..sroa_idx, align 8, !alias.scope !26618, !noalias !26615
  %.sroa.932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.932.0, ptr %.sroa.932.0..sroa_idx, align 8, !alias.scope !26618, !noalias !26615
  invoke void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtCsddXFpJ32JCa_6either6EitherINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEIB1L_IB1L_B37_INtNtNtB1R_7sources4once4OnceB3V_EEB37_EEB2C_EB3V_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16TupleSpecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %bb.i

bb.o:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.p:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder6concat(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = load i64, ptr %1, align 8, !range !53, !noundef !24
  %.not = icmp eq i64 %i.g, -1
  %i.h = load i32, ptr %5, align 8, !range !44, !noundef !24 ; 3 uses
  %.not14 = icmp eq i32 %i.h, -2                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.w, label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !26635, !noundef !24 ; 2 uses
  %i.m = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_.exit unwind label %bb.h ; 2 uses

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !24, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !24 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reserveBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef range(i64 0, 1152921504606846976) %i.q)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !26636, !noundef !24 ; 3 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488
  tail call void @llvm.assume(i1 %i.t)
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !26636, !nonnull !24, !noundef !24
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.s
  %i.x = shl nuw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull readonly align 4 %i.o, i64 %i.x, i1 false)
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !26636
  br label %bb.i

bb.g:                                             ; preds = %bb.ab, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ab ], [ %i.y, %bb.h ], [ %i.ak, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16TupleSpecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(64) %1) #50
          to label %bb.ah unwind label %bb.u

bb.h:                                             ; preds = %bb.v, %bb.w, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_.exit, %bb.e, %bb.d, %bb.z
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f, %.noexc
  %i.z = phi i64 [ %.pre.i, %bb.f ], [ %i.s, %.noexc ]
  %i.aa = add i64 %i.z, %i.q
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !26636
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.s, %bb.i
  ret void

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_.exit: ; preds = %bb.d
  %i.ab = extractvalue { ptr, i64 } %i.m, 0       ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.m, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reserveBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef range(i64 0, 1152921504606846976) %i.ac)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !26637, !noundef !24 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 576460752303423488
  tail call void @llvm.assume(i1 %i.af)
  %.not.i19 = icmp eq i64 %i.ac, 0
  br i1 %.not.i19, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc21
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !26637, !nonnull !24, !noundef !24
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = shl nuw i64 %i.ac, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 4 %i.ab, i64 %i.aj, i1 false)
  %.pre.i20 = load i64, ptr %i.ad, align 8, !alias.scope !26637
  br label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.o, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15suffix_elementsB9_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #50
          to label %bb.g unwind label %bb.u

bb.m:                                             ; preds = %.noexc21, %bb.k
  %i.al = phi i64 [ %.pre.i20, %bb.k ], [ %i.ae, %.noexc21 ]
  %i.am = add i64 %i.al, %i.ac
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !26637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 0, ptr %i.i, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %i.ad, align 8
  %i.an = invoke { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15suffix_elementsB9_.exit unwind label %bb.l ; 2 uses
end_hunk_7
