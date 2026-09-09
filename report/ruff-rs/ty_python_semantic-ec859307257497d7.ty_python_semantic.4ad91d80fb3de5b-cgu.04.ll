Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNvMsh_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_19CallableDescription3new23qualified_function_name:bb.a
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19original_class_type(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.d, align 4, !range !39, !noundef !12
  %.not = icmp eq i32 %i.aa, -1
  br i1 %.not, label %bb.f, label %.split

.split:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral4name(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  store ptr %i.ab, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType4name(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  store ptr %i.ac, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ad, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @372, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.split
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType4name(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  %i.ag = load i8, ptr %i.af, align 1, !range !24, !alias.scope !26508, !noundef !12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !26508, !noundef !12
  %i.aj = and i64 %i.ai, 72057594037927935
  %i.ak = icmp ult i8 %i.ag, -48
  %i.al = zext i8 %i.ag to i64
  %i.am = add nsw i64 %i.al, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.am, i64 16)
  %.sroa.0.0.i = select i1 %i.ak, i64 %spec.store.select.i, i64 %i.aj
  %i.an = icmp ugt i8 %i.ag, -49
  %i.ao = load ptr, ptr %i.ae, align 8, !alias.scope !26508
  %.sroa.01.0.i = select i1 %i.an, ptr %i.ao, ptr %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB9_4Type17is_redundant_with22is_redundant_with_impl(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsl_NtNtB1Z_5types8relationNtB2R_4Type17is_redundant_with22is_redundant_with_impl0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @373, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB9_4Type39when_constraint_set_assignable_to_owned44when_constraint_set_assignable_to_owned_impl(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetDNtNtB20_2db2DbEL_NCNvNvMsl_NtB1Y_8relationNtB1Y_4Type39when_constraint_set_assignable_to_owned44when_constraint_set_assignable_to_owned_impl0E0B1T_EB20_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @373, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type17is_redundant_with1__1__6___ctor() unnamed_addr #5 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type17is_redundant_with1__1__11___INVENTORY, align 8, !nonnull !12, !noundef !12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type17is_redundant_with1__1__11___INVENTORY, i64 8), align 8, !nonnull !12, !align !13, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type17is_redundant_with1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #63
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type39when_constraint_set_assignable_to_owned1__1__6___ctor() unnamed_addr #5 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type39when_constraint_set_assignable_to_owned1__1__11___INVENTORY, align 8, !nonnull !12, !noundef !12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type39when_constraint_set_assignable_to_owned1__1__11___INVENTORY, i64 8), align 8, !nonnull !12, !align !13, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtBd_4Type39when_constraint_set_assignable_to_owned1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #63
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB2_10EquivalentBq_E10equivalentB16_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26513)
  %i.a = load i32, ptr %0, align 4, !range !26, !alias.scope !26512, !noalias !26513, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  %i.b = load i32, ptr %1, align 4, !range !26, !alias.scope !26513, !noalias !26512, !noundef !12 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %brmerge.i = or i1 %.not.i, %i.c
  %i.d = and i32 %i.b, %i.a
  %.mux.i = icmp eq i32 %i.d, -1
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2eqBO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2eqBO_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtB7_3cmp9PartialEq2eqBO_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.shrunk.i = phi i1 [ %i.e, %bb.b ], [ %.mux.i, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures20SignatureRelationKeyINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26518)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !alias.scope !26517, !noalias !26518, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !26518, !noalias !26517, !noundef !12
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 4, !range !20, !alias.scope !26517, !noalias !26518, !noundef !12
  %i.g = load i32, ptr %1, align 4, !range !20, !alias.scope !26518, !noalias !26517, !noundef !12
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !26517, !noalias !26518, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !26518, !noalias !26517, !noundef !12
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !range !20, !alias.scope !26517, !noalias !26518, !noundef !12
  %i.q = load i32, ptr %i.n, align 4, !range !20, !alias.scope !26518, !noalias !26517, !noundef !12
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !18, !alias.scope !26517, !noalias !26518, !noundef !12 ; 4 uses
  %i.u = icmp ne i8 %i.t, 4
  tail call void @llvm.assume(i1 %i.u)
  %.inv.i = icmp samesign ugt i8 %i.t, 1          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 4, !range !18, !alias.scope !26518, !noalias !26517, !noundef !12 ; 4 uses
  %i.x = icmp ne i8 %i.w, 4
  tail call void @llvm.assume(i1 %i.x)
  %.inv2.i = icmp samesign ult i8 %i.w, 2
  %2 = select i1 %.inv.i, i8 %i.t, i8 4
  %narrow1.i = select i1 %.inv2.i, i8 4, i8 %i.w
  %3 = icmp eq i8 %2, %narrow1.i
  %i.y = icmp eq i8 %i.t, %i.w
  %or.cond.i = or i1 %.inv.i, %i.y
  %or.cond3.i = and i1 %or.cond.i, %3
  br i1 %or.cond3.i, label %bb.f, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.aa = load i8, ptr %i.z, align 1, !range !17, !alias.scope !26517, !noalias !26518, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ac = load i8, ptr %i.ab, align 1, !range !17, !alias.scope !26518, !noalias !26517, !noundef !12
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_20SignatureRelationKeyNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i1 [ %i.ad, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26523)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !26522, !noalias !26523, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !26523, !noalias !26522, !noundef !12 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.split.i

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val10.i = load i32, ptr %i.f, align 4, !alias.scope !26522, !noalias !26523, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val12.i = load i32, ptr %i.g, align 4, !alias.scope !26523, !noalias !26522, !noundef !12
  %i.h = icmp eq i32 %.val10.i, %.val12.i
  %i.i = icmp eq i32 %i.b, %i.d
  %.sroa.0.0.i.i = and i1 %i.i, %i.h
  br i1 %.sroa.0.0.i.i, label %bb.d, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.split.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !26522, !noalias !26523, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.not6.i = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !26523, !noalias !26522, !noundef !12 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.h, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load i32, ptr %i.l, align 4, !alias.scope !26522, !noalias !26523, !noundef !12
  %i.r = load i32, ptr %i.p, align 4, !alias.scope !26523, !noalias !26522, !noundef !12
  %i.s = icmp eq i32 %i.q, %i.r
  %i.t = icmp eq i32 %i.k, %i.n
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.h, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !26522, !noalias !26523, !noundef !12 ; 2 uses
  %.not8.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !26523, !noalias !26522, !noundef !12 ; 2 uses
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.k, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i64, ptr %0, align 8, !range !22, !alias.scope !26522, !noalias !26523, !noundef !12
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %1, align 8, !range !22, !alias.scope !26523, !noalias !26522, !noundef !12
  %i.ad = trunc nuw i64 %i.ac to i1               ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.ad, label %.split17.i, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.k
  br i1 %i.ad, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.n

.split17.i:                                       ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_18OwnedConstraintSetNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af)
  br i1 %i.ag, label %bb.n, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.split17.i, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val13.i = load ptr, ptr %i.ah, align 8, !alias.scope !26522, !noalias !26523, !nonnull !12, !noundef !12
  %.val14.i = load ptr, ptr %i.ai, align 8, !alias.scope !26523, !noalias !26522, !nonnull !12, !noundef !12
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXs1j_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nonnull %.val13.i, ptr nonnull %.val14.i), !noalias !26524
  br i1 %i.aj, label %bb.o, label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.al)
  br label %_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9SignatureNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.c, %.split.i, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %.split17.i, %bb.n, %bb.o
  %.sroa.0.0.i = phi i1 [ %i.am, %bb.o ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.c ], [ false, %.split.i ], [ false, %.split17.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB1r_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @402, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB1r_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @403, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB1n_4Type17is_redundant_with1__37is_redundant_with_impl_Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @404, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB1n_4Type39when_constraint_set_assignable_to_owned1__59when_constraint_set_assignable_to_owned_impl_Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @405, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 4 ptr @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10node_indexRNtNtB4_9generated4ExprNtB2_12HasNodeIndex10node_indexCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #21 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !48, !noundef !12
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtCskLngH8kgpZI_15ruff_python_ast10node_indexRNtNtB4_9generated4ExprNtB2_12HasNodeIndex10node_indexCsoTR8nlGN3X_18ty_python_semantic, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %switch.ext
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB1f_13CallArguments6expand5StateNCNvMs_B1f_B2d_6expand0ENtNtNtB6_6traits8iterator8Iterator4nextB1l_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 4                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 -3, ptr %0, align 8
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -3
  br i1 %.not, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %.sroa.0.0.copyload, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !26543
end_hunk_0
begin_hunk_1_@_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseEINtB5_10HashEqLikeBA_E2eqB1i_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29384)
  %i.a = load i32, ptr %0, align 4, !range !68, !alias.scope !29383, !noalias !29384, !noundef !12 ; 5 uses
  %.not.i = icmp eq i32 %i.a, -2                  ; 2 uses
  %i.b = load i32, ptr %1, align 4, !range !68, !alias.scope !29384, !noalias !29383, !noundef !12 ; 4 uses
  %i.c = icmp eq i32 %i.b, -2                     ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.c
  %.mux.i = and i1 %.not.i, %i.c
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29386)
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.a, i32 4) ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.b, i32 4)
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.d, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit [
    i32 4, label %bb.d
    i32 5, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29388)
  %i.g = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.h = icmp eq i32 %i.b, -1                     ; 3 uses
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !29389, !noalias !29390, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !29390, !noalias !29389, !noundef !12
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.s, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = xor i1 %i.h, true
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29392)
  %i.p = icmp eq i32 %i.a, %i.b
  br i1 %i.p, label %bb.h, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.u = icmp eq i32 %i.r, %i.t                   ; 5 uses
  switch i32 %i.a, label %default.unreachable.i.i.i [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

default.unreachable.i.i.i:                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.n, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.o, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.k:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.p, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.l:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.q, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.m:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.r, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.n:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !20, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.y = load i32, ptr %i.v, align 4, !range !20, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.z = icmp eq i32 %i.x, %i.y
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.o:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !20, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.ad = load i32, ptr %i.aa, align 4, !range !20, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.p:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !20, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.ai = load i32, ptr %i.af, align 4, !range !20, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.q:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !20, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.an = load i32, ptr %i.ak, align 4, !range !20, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.ao = icmp eq i32 %i.am, %i.an
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.r:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !20, !alias.scope !29393, !noalias !29394, !noundef !12
  %i.as = load i32, ptr %i.ap, align 4, !range !20, !alias.scope !29394, !noalias !29393, !noundef !12
  %i.at = icmp eq i32 %i.ar, %i.as
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.s:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !range !20, !alias.scope !29389, !noalias !29390, !noundef !12
  %i.ax = load i32, ptr %i.au, align 4, !range !20, !alias.scope !29390, !noalias !29389, !noundef !12
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.t:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !29395, !noalias !29396, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !29396, !noalias !29395, !noundef !12
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.u, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !range !20, !alias.scope !29395, !noalias !29396, !noundef !12
  %i.bh = load i32, ptr %i.be, align 4, !range !20, !alias.scope !29396, !noalias !29395, !noundef !12
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.shrunk.i = phi i1 [ %.mux.i, %bb.a ], [ false, %bb.m ], [ false, %bb.b ], [ false, %bb.t ], [ %i.bi, %bb.u ], [ true, %bb.c ], [ %i.ay, %bb.s ], [ false, %bb.d ], [ false, %bb.f ], [ %i.z, %bb.n ], [ false, %bb.g ], [ %i.ae, %bb.o ], [ false, %bb.i ], [ %i.aj, %bb.p ], [ false, %bb.j ], [ %i.ao, %bb.q ], [ false, %bb.k ], [ %i.at, %bb.r ], [ false, %bb.l ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29401)
  %i.a = load i32, ptr %0, align 4, !range !21, !alias.scope !29400, !noalias !29401, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.a, -2                  ; 2 uses
  %i.b = load i32, ptr %1, align 4, !range !21, !alias.scope !29401, !noalias !29400, !noundef !12 ; 2 uses
  %i.c = icmp eq i32 %i.b, -2                     ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.c
  %.mux.i = and i1 %.not.i, %i.c
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %i.a, -1                     ; 2 uses
  %i.e = icmp ne i32 %i.b, -1                     ; 2 uses
  %i.f = xor i1 %i.d, %i.e
  br i1 %i.f, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i, label %bb.d, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar24TypeVarDefaultEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %.mux.i, %bb.a ], [ true, %bb.c ], [ %i.g, %bb.d ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29412)
  %i.a = load i32, ptr %0, align 4, !range !69, !alias.scope !29411, !noalias !29412, !noundef !12 ; 4 uses
  %.not.i = icmp eq i32 %i.a, -2                  ; 2 uses
  %i.b = load i32, ptr %1, align 4, !range !69, !alias.scope !29412, !noalias !29411, !noundef !12 ; 4 uses
  %i.c = icmp eq i32 %i.b, -2                     ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.c
  %.mux.i = and i1 %.not.i, %i.c
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29414)
  %2 = icmp slt i32 %i.a, 37                      ; 3 uses
  %i.d = icmp sgt i32 %i.b, 36
  %3 = icmp eq i32 %i.a, %i.b
  %not..i = xor i1 %2, true
  %4 = and i1 %3, %not..i
  %5 = select i1 %i.d, i1 %4, i1 %2               ; 2 uses
  %brmerge.not.i = and i1 %2, %5
  br i1 %brmerge.not.i, label %bb.c, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29416)
  %i.e = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.f = icmp eq i32 %i.b, -1                     ; 3 uses
  %i.g = xor i1 %i.e, %i.f
  br i1 %i.g, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load <2 x i32>, ptr %i.h, align 4, !alias.scope !29417, !noalias !29418
  %i.k = load <2 x i32>, ptr %i.i, align 4, !alias.scope !29418, !noalias !29417
  %i.l = icmp eq <2 x i32> %i.j, %i.k             ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.m, i1 false
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = xor i1 %i.f, true
  tail call void @llvm.assume(i1 %i.o)
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar35TypeVarBoundOrConstraintsEvaluationENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.shrunk.i = phi i1 [ %.mux.i, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.c ], [ %5, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.e ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function13KnownFunctionEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #12 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !29419, !noundef !12
  %.val1 = load i8, ptr %1, align 1
  %.sroa.0.0.shrunk.i = icmp eq i8 %.val1, %.val
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !12 ; 2 uses
  %.val2 = load i32, ptr %1, align 4              ; 2 uses
  %.not.i = icmp eq i32 %.val, 0                  ; 2 uses
  %i.a = icmp eq i32 %.val2, 0                    ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %i.a
  %.mux.i = select i1 %.not.i, i1 %i.a, i1 false
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val1 = load i32, ptr %i.c, align 4
  %i.d = icmp eq i32 %.val1, %.val3
  %i.e = icmp eq i32 %.val, %.val2
  %.sroa.0.0.i.i = select i1 %i.d, i1 %i.e, i1 false
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsENtNtB7_3cmp9PartialEq2eqBQ_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.shrunk.i = phi i1 [ %.sroa.0.0.i.i, %bb.b ], [ %.mux.i, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !12 ; 2 uses
  %.val2 = load i32, ptr %1, align 4              ; 2 uses
  %.not.i = icmp eq i32 %.val, 0                  ; 2 uses
  %i.a = icmp eq i32 %.val2, 0                    ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %i.a
  %.mux.i = select i1 %.not.i, i1 %i.a, i1 false
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationENtNtB7_3cmp9PartialEq2eqBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val1 = load i32, ptr %i.c, align 4
  %i.d = icmp eq i32 %.val1, %.val3
  %i.e = icmp eq i32 %.val, %.val2
  %.sroa.0.0.i.i = select i1 %i.d, i1 %i.e, i1 false
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationENtNtB7_3cmp9PartialEq2eqBQ_.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.shrunk.i = phi i1 [ %.sroa.0.0.i.i, %bb.b ], [ %.mux.i, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8variance15TypeVarVarianceEINtB5_10HashEqLikeBA_E2eqB1i_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #12 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !29420, !noundef !12
  %.val1 = load i8, ptr %1, align 1
  %.sroa.0.0.shrunk.i = icmp eq i8 %.val1, %.val
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEINtB5_10HashEqLikeBA_E2eqB1k_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #12 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !29421, !noundef !12
  %.val1 = load i8, ptr %1, align 1
  %.sroa.0.0.shrunk.i = icmp eq i8 %.val1, %.val
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtB1h_5place13ScopedPlaceIdEEINtB5_10HashEqLikeBA_E2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29429)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !range !19, !alias.scope !29428, !noalias !29429, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 2                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !range !19, !alias.scope !29429, !noalias !29428, !noundef !12 ; 2 uses
  %i.e = icmp eq i32 %i.d, 2                      ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.e
  %.mux.i = and i1 %.not.i, %i.e
  br i1 %brmerge.i, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtBP_5place13ScopedPlaceIdEENtNtB7_3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29431)
  %i.f = load <2 x i32>, ptr %0, align 4, !alias.scope !29432, !noalias !29433
  %i.g = load <2 x i32>, ptr %1, align 4, !alias.scope !29433, !noalias !29432
  %i.h = icmp eq <2 x i32> %i.f, %i.g             ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %.sroa.0.0.i.i.i = select i1 %i.j, i1 %i.i, i1 false
  br i1 %.sroa.0.0.i.i.i, label %bb.c, label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtBP_5place13ScopedPlaceIdEENtNtB7_3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val5.i.i = load i32, ptr %i.k, align 4, !alias.scope !29432, !noalias !29433
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val7.i.i = load i32, ptr %i.l, align 4, !alias.scope !29433, !noalias !29432
  %i.m = icmp eq i32 %i.b, %i.d
  %i.n = icmp eq i32 %.val5.i.i, %.val7.i.i
  %spec.select.i.i.i = select i1 %i.m, i1 %i.n, i1 false
  br label %_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtBP_5place13ScopedPlaceIdEENtNtB7_3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXsf_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionTNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtNtBP_5place13ScopedPlaceIdEENtNtB7_3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk.i = phi i1 [ %.mux.i, %bb.a ], [ false, %bb.b ], [ %spec.select.i.i.i, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsgd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !12
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !12
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !noundef !12
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.q)
  br i1 %i.r, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !12
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.l, %bb.h, %bb.k, %bb.j, %bb.i, %bb.g, %.lr.ph9, %.lr.ph, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.f ], [ false, %.lr.ph ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.l ], [ true, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit ], [ false, %.lr.ph9 ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %.not7.not = icmp eq i64 %i.t, 0
  br i1 %.not7.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.f, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.01.0.i8 = phi i64 [ %i.bo, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit ], [ 0, %bb.f ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [184 x i8], ptr %i.aa, i64 %.sroa.01.0.i8 ; 8 uses
  %i.ac = getelementptr inbounds nuw [184 x i8], ptr %i.y, i64 %.sroa.01.0.i8 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.ae = load i8, ptr %i.ad, align 4, !range !17, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 180
  %i.ag = load i8, ptr %i.af, align 4, !range !17, !noundef !12
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %.lr.ph9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.al = load i32, ptr %i.ak, align 8, !noundef !12
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 172
  %i.ao = load i32, ptr %i.an, align 4, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !12
  %i.ar = icmp eq i32 %i.ao, %i.aq
end_hunk_1
