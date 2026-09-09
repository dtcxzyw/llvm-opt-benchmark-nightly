Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.09?download=true
inline.NumInlined: 8525
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type23is_data_descriptor_impl1__1__6___ctor:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type23is_data_descriptor_impl1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type26apply_specialization_inner1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type26apply_specialization_inner1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type26apply_specialization_inner1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type26apply_specialization_inner1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type30class_member_with_policy_inner1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type30class_member_with_policy_inner1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type30class_member_with_policy_inner1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type30class_member_with_policy_inner1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38is_definitely_non_data_descriptor_impl1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38is_definitely_non_data_descriptor_impl1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38is_definitely_non_data_descriptor_impl1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38is_definitely_non_data_descriptor_impl1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receiver1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receiver1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receiver1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receiver1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receivers_1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receivers_1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receivers_1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtBc_4Type38member_lookup_with_policy_and_receivers_1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_16IntersectionType17from_two_elements1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_16IntersectionType17from_two_elements1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_16IntersectionType17from_two_elements1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_16IntersectionType17from_two_elements1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_9UnionType17from_two_elements1__1__6___ctor() unnamed_addr #17 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_9UnionType17from_two_elements1__1__11___INVENTORY, align 8, !nonnull !32, !noundef !32
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_9UnionType17from_two_elements1__1__11___INVENTORY, i64 8), align 8, !nonnull !32, !align !34, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !32, !nonnull !32
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBb_9UnionType17from_two_elements1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #51
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBr_EINtB2_10EquivalentBq_E10equivalentBv_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #18 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1)
  br i1 %i.a, label %bb.b, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  br label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBr_NtNtBt_8relation12TypeRelationNtB1i_17TypeVarEvaluationEINtB2_10EquivalentBq_E10equivalentBv_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18143)
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1)
  br i1 %i.a, label %bb.b, label %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  br i1 %i.d, label %bb.c, label %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i8, ptr %i.e, align 4, !range !76, !alias.scope !18142, !noalias !18143, !noundef !32 ; 4 uses
  %.val1.i = load i8, ptr %i.f, align 4, !range !76, !alias.scope !18143, !noalias !18142, !noundef !32 ; 4 uses
  %i.g = icmp ne i8 %.val.i, 4
  tail call void @llvm.assume(i1 %i.g)
  %.inv.i.i = icmp samesign ugt i8 %.val.i, 1     ; 2 uses
  %2 = icmp ne i8 %.val1.i, 4
  tail call void @llvm.assume(i1 %2)
  %.inv2.i.i = icmp samesign ult i8 %.val1.i, 2
  %3 = select i1 %.inv.i.i, i8 %.val.i, i8 4
  %4 = select i1 %.inv2.i.i, i8 4, i8 %.val1.i
  %5 = icmp eq i8 %3, %4
  %6 = icmp eq i8 %.val.i, %.val1.i
  %spec.select.i.i = or i1 %.inv.i.i, %6
  %.sroa.0.0.i.i = and i1 %spec.select.i.i, %5
  br i1 %.sroa.0.0.i.i, label %bb.d, label %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val2.i = load i8, ptr %i.h, align 1, !range !36, !alias.scope !18142, !noalias !18143, !noundef !32
  %.val3.i = load i8, ptr %i.i, align 1, !range !36, !alias.scope !18143, !noalias !18142, !noundef !32
  %i.j = icmp eq i8 %.val2.i, %.val3.i
  br label %_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit

_RNvXss_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBx_NtNtBz_8relation12TypeRelationNtB1o_17TypeVarEvaluationENtNtB7_3cmp9PartialEq2eqBB_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.j, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBr_EINtB2_10EquivalentBq_E10equivalentBv_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18148)
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1)
  br i1 %i.a, label %bb.b, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i8, ptr %i.b, align 4, !range !75, !alias.scope !18147, !noalias !18148, !noundef !32
  %.val1.i = load i8, ptr %i.c, align 4, !range !75, !alias.scope !18148, !noalias !18147, !noundef !32
  %i.d = icmp eq i8 %.val.i, %.val1.i
  br i1 %i.d, label %bb.c, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f)
  br label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.g, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtBt_5infer11comparisons19NonIdentityOperatorBr_EINtB2_10EquivalentBq_E10equivalentBv_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18153)
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1)
  br i1 %i.a, label %bb.b, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtBz_5infer11comparisons19NonIdentityOperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i8>, ptr %i.b, align 4, !alias.scope !18152, !noalias !18153
  %i.e = load <2 x i8>, ptr %i.c, align 4, !alias.scope !18153, !noalias !18152
  %i.f = icmp eq <2 x i8> %i.d, %i.e              ; 2 uses
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %i.h = extractelement <2 x i1> %i.f, i64 1
  %spec.select.i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %spec.select.i.i, label %bb.c, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtBz_5infer11comparisons19NonIdentityOperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j)
  br label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtBz_5infer11comparisons19NonIdentityOperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit

_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtNtBz_5infer11comparisons19NonIdentityOperatorBx_ENtNtB7_3cmp9PartialEq2eqBB_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.k, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtCsoTR8nlGN3X_18ty_python_semantic5types1__32exists_at_runtime_Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @722, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtCsoTR8nlGN3X_18ty_python_semantic5typessb_1__33class_mro_literals_Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @723, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__33enum_class_literal_Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @724, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss5_1__33enum_ignored_names_Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @725, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss6_1__28enum_metadata_Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @726, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type15expand_eagerly_1__31expand_eagerly___Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @727, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type17lookup_dunder_new1__38lookup_dunder_new_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @728, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type19try_call_dunder_get1__40try_call_dunder_get_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @729, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type22cached_materialization1__38cached_materialization__Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @730, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type23is_data_descriptor_impl1__39is_data_descriptor_impl__Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @731, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type26apply_specialization_inner1__42apply_specialization_inner__Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @732, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type30class_member_with_policy_inner1__46class_member_with_policy_inner__Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @733, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type38is_definitely_non_data_descriptor_impl1__54is_definitely_non_data_descriptor_impl__Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @734, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type38member_lookup_with_policy_and_receiver1__46member_lookup_with_policy_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @735, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @736, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB1p_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @737, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB1p_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @738, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type15expand_eagerly_1__31expand_eagerly___Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @739, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type17lookup_dunder_new1__38lookup_dunder_new_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @740, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB1q_4Type19try_call_dunder_get1__40try_call_dunder_get_inner_Configuration_ENtB2_3Any7type_idB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @741, i64 16, i1 false)
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char:bb.a
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !21107, !noundef !32 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21107, !nonnull !32, !noundef !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !21107, !nonnull !32, !noundef !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !21107
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !21113
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !21114, !noalias !21113, !noundef !32 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !21114, !noalias !21113, !nonnull !32, !noundef !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !21114, !noalias !21113
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !21114, !noalias !21113
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #27 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !32, !align !34, !noundef !32
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 4 ptr @_RNvXs_NtCsoTR8nlGN3X_18ty_python_semantic9subscriptRSNtNtB6_5types4TypeNtB4_7PyIndex8py_indexB6_(ptr noalias noundef nonnull readonly align 4 captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, ptr nofree noundef nonnull readnone align 4 captures(none) %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic9subscriptNtB2_3Nth10from_index(i32 noundef %5) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.c, %1
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.sroa.0.0 = select i1 %i.g, ptr %i.h, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.b, %bb.c
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.c ], [ %i.j, %bb.f ], [ null, %bb.b ]
  ret ptr %.sroa.0.1

bb.e:                                             ; preds = %bb.b
  %i.i = sub nuw nsw i64 %1, %i.e                 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1077) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationTNtB6_4TypeBV_NtB4_12TypeRelationNtB4_17TypeVarEvaluationENtNtB6_6cyclic11HasIdentity11to_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) initializes((0, 34)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB4_4Type16to_type_identity(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB4_4Type16to_type_identity(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 4, !range !76, !noundef !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.f = load i8, ptr %i.e, align 1, !range !36, !noundef !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.d, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.f, ptr %i.h, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationTNtB6_4TypeBV_NtB4_12TypeRelationNtB4_17TypeVarEvaluationENtNtB6_6cyclic11HasIdentity18may_share_identity(ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.e = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB4_4Type23may_share_type_identity(ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_12TypeRelationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicNtB4_4Type23may_share_type_identity(ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.h, label %bb.c, label %_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_12TypeRelationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load i8, ptr %i.i, align 4, !range !76, !noundef !32 ; 4 uses
  %.val1 = load i8, ptr %i.j, align 4, !range !76, !noundef !32 ; 4 uses
  %i.k = icmp ne i8 %.val, 4
  call void @llvm.assume(i1 %i.k)
  %.inv.i = icmp samesign ugt i8 %.val, 1         ; 2 uses
  %4 = icmp ne i8 %.val1, 4
  call void @llvm.assume(i1 %4)
  %.inv2.i = icmp samesign ult i8 %.val1, 2
  %5 = select i1 %.inv.i, i8 %.val, i8 4
  %6 = select i1 %.inv2.i, i8 4, i8 %.val1
  %7 = icmp eq i8 %5, %6
  %8 = icmp eq i8 %.val, %.val1
  %spec.select.i = or i1 %.inv.i, %8
  %.sroa.0.0.i = and i1 %spec.select.i, %7
  br i1 %.sroa.0.0.i, label %bb.d, label %_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_12TypeRelationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 33
  %.val2 = load i8, ptr %i.l, align 1, !range !36, !noundef !32
  %.val3 = load i8, ptr %i.m, align 1, !range !36, !noundef !32
  %i.n = icmp eq i8 %.val2, %.val3
  br label %_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_12TypeRelationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_12TypeRelationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ %i.n, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess8_1__TNtB6_14DataclassFlagsINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB6_4TypeEEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyBS_B1d_EE2eqB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i16, ptr %0, align 8, !noundef !32
  %.val1 = load i16, ptr %i.a, align 8, !noundef !32
  %i.b = icmp eq i16 %.val, %.val1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB5_10HashEqLikeBA_E2eqB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess8_1__TNtB6_14DataclassFlagsINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB6_4TypeEEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyBS_RB1L_EE2eqB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i16, ptr %0, align 8, !noundef !32
  %.val1 = load i16, ptr %i.a, align 8, !noundef !32
  %i.b = icmp eq i16 %.val, %.val1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef zeroext i1 @_RNvXsk_NtCs45bxiIjzMqg_5salsa8internedINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB5_10HashEqLikeRB18_E2eqB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess_1__TNtB6_4TypeBR_INtNtCs4NRVxsYgnAr_4core6option6OptionBR_EBR_EINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyBR_BR_B14_BR_EE2eqB8_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB5_10HashEqLikeBA_E2eqB1g_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f)
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.j, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessk_1__TNtB6_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1J_5place13ScopedPlaceIdEEEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyBS_B12_EE2eqB8_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1h_5place13ScopedPlaceIdEEINtB5_10HashEqLikeBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessl_1__TNtB6_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1J_5place13ScopedPlaceIdEEEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyBS_B12_EE2eqB8_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1h_5place13ScopedPlaceIdEEINtB5_10HashEqLikeBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances6_1__TNtB8_4TypeEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyB1a_EE2eqBa_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__TNtB6_16EnumClassLiteralINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB1o_NtB8_4TypeB2L_EEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyB10_B1n_B4b_EE2eqBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load <2 x i32>, ptr %i.a, align 8
  %i.d = load <2 x i32>, ptr %i.b, align 8
  %i.e = icmp eq <2 x i32> %i.c, %i.d             ; 2 uses
  %i.f = extractelement <2 x i1> %i.e, i64 0
  %i.g = extractelement <2 x i1> %i.e, i64 1
  %.sroa.0.0.i.i = select i1 %i.g, i1 %i.f, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtB5_10HashEqLikeBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtB5_10HashEqLikeBA_E2eqB1j_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__TNtB6_16EnumClassLiteralINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB1o_NtB8_4TypeB2L_EEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyB10_RB1n_B4b_EE2eqBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load <2 x i32>, ptr %i.a, align 8
  %i.d = load <2 x i32>, ptr %i.b, align 8
  %i.e = icmp eq <2 x i32> %i.c, %i.d             ; 2 uses
  %i.f = extractelement <2 x i1> %i.e, i64 0
  %i.g = extractelement <2 x i1> %i.e, i64 1
  %.sroa.0.0.i.i = select i1 %i.g, i1 %i.f, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCs45bxiIjzMqg_5salsa8internedINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtB5_10HashEqLikeRBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = tail call noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtB5_10HashEqLikeBA_E2eqB1j_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals4_1__TNtNtB8_5enums16EnumClassLiteralNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyB12_RB1x_EE2eqBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 8
  %i.b = load <2 x i32>, ptr %1, align 8
  %i.c = icmp eq <2 x i32> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.d, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs45bxiIjzMqg_5salsa8internedNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB5_10HashEqLikeRBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9type_form1__TNtB8_4TypeEINtNtCs45bxiIjzMqg_5salsa8interned10HashEqLikeINtB4_9StructKeyB11_EE2eqBa_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsb_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type15expand_eagerly_1__31expand_eagerly___Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @1078, i64 50 }
end_hunk_1
