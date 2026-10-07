Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple34synthesize_namedtuple_class_memberINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4_5FieldENCNvMsp_NtB4_14static_literalNtB4d_18StaticClassLiteral22own_synthesized_members4_0EEB8_:bb.a
bb.ar:                                            ; preds = %bb.x, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit, %bb.s, %bb.z, %bb.ap, %bb.au, %bb.av, %bb.at, %bb.q, %bb.aq
  ret void

bb.as:                                            ; preds = %bb.aw
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.at:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %7, ptr %i.g, align 8, !alias.scope !8830, !noalias !8831
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %8, ptr %i.ek, align 8, !alias.scope !8830, !noalias !8831
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %1, ptr %i.el, align 8, !alias.scope !8830, !noalias !8831
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %2, ptr %i.em, align 8, !alias.scope !8830, !noalias !8831
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB1p_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB5_5class5FieldENCNvMsp_NtB3K_14static_literalNtB4a_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB3K_11named_tuple34synthesize_namedtuple_class_memberB2c_Es0_0EBT_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ar

bb.au:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
  store i32 -1, ptr %0, align 4
  br label %bb.ar

bb.av:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %i.en = extractvalue { i32, i32 } %i.ai, 1
  %i.eo = extractvalue { i32, i32 } %i.ai, 0      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8832)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.j, i64 16, i1 false), !alias.scope !8833, !noalias !8834
  store i8 0, ptr %i.al, align 4, !alias.scope !8835, !noalias !8836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %7, ptr %i.ep, align 8, !alias.scope !8837, !noalias !8838
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %8, ptr %i.eq, align 8, !alias.scope !8837, !noalias !8838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.er = icmp ne i32 %i.eo, 0
  call void @llvm.assume(i1 %i.er)
  %i.es = call noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapIB31_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB8_5class5FieldENCNvMsp_NtB4P_14static_literalNtB5f_18StaticClassLiteral22own_synthesized_members4_0ENCINvNtB4P_11named_tuple34synthesize_namedtuple_class_memberB3h_Es_0EEEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8839)
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.eo, ptr %i.et, align 8, !alias.scope !8840, !noalias !8839
  %i.eu = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %i.en, ptr %i.eu, align 4, !alias.scope !8840, !noalias !8839
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.ev, align 8, !alias.scope !8840, !noalias !8839
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %i.ew, align 8, !alias.scope !8840, !noalias !8839
  store i64 0, ptr %i.h, align 8, !alias.scope !8840, !noalias !8839
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.es, ptr %i.ex, align 8, !alias.scope !8840, !noalias !8839
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 29, ptr %i.ey, align 8, !alias.scope !8841
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.ae, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !8841
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8841
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22function_like_callable(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ar

bb.aw:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #57
          to label %bb.ax unwind label %bb.as

bb.ax:                                            ; preds = %bb.aw
  resume { ptr, i32 } %i.ez
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintss4_1__52is_possibly_constraint_set_assignable_Configuration_EEB1T_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @104, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances0_1__49non_recursive_protocol_constraints_Configuration_EEB1T_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @105, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances_1__47non_recursive_protocol_interface_Configuration_EEB1T_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @106, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB1V_20ProtocolInstanceType23is_equivalent_to_object1__44is_equivalent_to_object_inner_Configuration_EEB1Z_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @107, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB1V_24DynamicNamedTupleLiteral3mro1__19mro__Configuration_EEB21_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @108, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB1V_24DynamicNamedTupleLiteral4spec1__28deferred_spec_Configuration_EEB21_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @109, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB1X_4Type35assignable_solutions_with_inferable1__40assignable_solutions_impl_Configuration_EEB1Z_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @110, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvXNtCsb80QtQtK5z0_6bitvec5fieldINtNtB5_5slice8BitSliceyENtB3_8BitField7load_lejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = lshr i64 %1, 3                           ; 7 uses
  tail call void @_RINvNtCsb80QtQtK5z0_6bitvec5field5checkjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4, i64 noundef %i.e)
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = shl i64 %i.f, 3
  %i.h = and i64 %i.g, 56
  %i.i = and i64 %1, 7
  %i.j = or disjoint i64 %i.h, %i.i               ; 4 uses
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %i.l = add nuw nsw i64 %i.e, 63
  %i.m = add nuw nsw i64 %i.l, %i.j
  %i.n = lshr i64 %i.m, 6                         ; 3 uses
  %i.o = icmp eq i64 %i.e, 0
  br i1 %i.o, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.e, %i.p
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = sub nuw nsw i64 %i.e, %i.p
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 63                          ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  %i.u = select i1 %i.t, i8 64, i8 %i.s
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.d:                                             ; preds = %bb.b
  %i.v = trunc nuw nsw i64 %i.e to i8
  %i.w = add nuw nsw i8 %i.k, %i.v
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.4.0.i.i = phi i8 [ %i.u, %bb.c ], [ %i.w, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.x = icmp eq i64 %i.n, 0
  br i1 %i.x, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.y = icmp eq i64 %i.j, 0
  %i.z = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %i.z, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %i.n, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic.i = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.g ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5emptyCsoTR8nlGN3X_18ty_python_semantic, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %spec.select.i, %bb.f ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic.i, %bb.h ]
  %i.ab = and i64 %i.f, -8
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = sub i64 0, %i.f
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  call void %.sroa.0.0.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull readonly %i.ae, i64 noundef %i.n, i8 noundef %i.k, i8 noundef %.sroa.4.0.i.i), !inline_history !1
  %i.af = load ptr, ptr %i.d, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.aj, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.not24 = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %.not24, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %i.al = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Lsb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak, i8 noundef %.sroa.3.0.copyload)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.sroa.0.0 = phi i64 [ %i.bd, %bb.o ], [ %i.al, %bb.j ]
  %i.am = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field4signjECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0, i64 noundef %i.e)
  ret i64 %i.am

bb.l:                                             ; preds = %bb.i
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx, i64 16, i1 false)
  %i.an = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Lsb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 0) ; 2 uses
  store i64 %i.an, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ao = phi i64 [ %i.an, %bb.l ], [ 0, %bb.i ]
  %i.ap = icmp eq i64 %i.ai, 0
  br i1 %i.ap, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %.idx = shl nuw nsw i64 %i.ai, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.4.027 = phi ptr [ %i.ar, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ]
  %i.ar = getelementptr inbounds i8, ptr %.sroa.4.027, i64 -8 ; 3 uses
  %.val = load i64, ptr %i.ar, align 8, !noundef !10
  call void @_RINvNtCsb80QtQtK5z0_6bitvec5field16maybe_shift_leftjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 64)
  %i.as = load i64, ptr %i.c, align 8, !alias.scope !8846, !noundef !10
  %i.at = or i64 %i.as, %.val                     ; 2 uses
  store i64 %i.at, ptr %i.c, align 8, !alias.scope !8846
  %i.au = icmp eq ptr %i.af, %i.ar
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %i.av = phi i64 [ %i.ao, %bb.m ], [ %i.at, %.lr.ph ]
  %.not25 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.01.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !noundef !10 ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = sub nsw i64 64, %i.ay
  call void @_RINvNtCsb80QtQtK5z0_6bitvec5field16maybe_shift_leftjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.az)
  %i.ba = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Lsb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %i.ax)
  %i.bb = load i64, ptr %i.c, align 8, !alias.scope !8847, !noundef !10
  %i.bc = or i64 %i.bb, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.bd = phi i64 [ %i.bc, %bb.n ], [ %i.av, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtB7_7GetSize26get_heap_size_with_trackerNtNtB7_7tracker15StandardTrackerEB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !noundef !10  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.h, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.h, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink20 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sink = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink20, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sink20, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sink, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8861
  store i64 0, ptr %i.d, align 8, !noalias !8862
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !8862
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i, %bb.c
  %.sroa.010.0.copyload.i = phi i64 [ %i.v, %.noexc.i ], [ 0, %bb.c ]
  %i.o = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.e unwind label %bb.f, !noalias !8863 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXNtNtB3Y_5impls11collectionsINtB6_8BTreeMapBX_B1G_ENtB3Y_7GetSize26get_heap_size_with_trackerB3U_E0EB1M_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.e
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx18, i64 48, i1 false), !noalias !8861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8861
  call void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !8863
  %i.r = load i64, ptr %i.a, align 8, !noalias !8865, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8864
  call void @_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1g_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.n), !noalias !8863
  %i.s = load i64, ptr %i.c, align 8, !noalias !8865, !noundef !10
  %i.t = add i64 %.sroa.010.0.copyload.i, 16
  %i.u = add i64 %i.t, %i.r
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !8861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8861
  store i64 %i.v, ptr %i.d, align 8, !noalias !8861
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx18)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.g, !noalias !8863

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !8863
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXNtNtB3Y_5impls11collectionsINtB6_8BTreeMapBX_B1G_ENtB3Y_7GetSize26get_heap_size_with_trackerB3U_E0EB1M_.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvXNtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtB7_7GetSize26get_heap_size_with_trackerNtNtB7_7tracker9NoTrackerEB2B_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noundef !10  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvXsH_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_18OwnedConstraintSetNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1r_7tracker15StandardTrackerEBa_:bb.a
  %i.bc = insertvalue { i64, ptr } poison, i64 %i.bb, 0
  br label %_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_.exit

_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.ar, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.pn.i = phi { i64, ptr } [ %i.bc, %bb.c ], [ { i64 0, ptr poison }, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_.exit
  %.pn.i.pn = phi { i64, ptr } [ %.pn.i, %_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_.exit ], [ { i64 0, ptr poison }, %bb.a ]
  %.sroa.3.0.i.pn = phi ptr [ %.sroa.3.0.i, %_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_.exit ], [ %1, %bb.a ]
  %.merged = insertvalue { i64, ptr } %.pn.i.pn, ptr %.sroa.3.0.i.pn, 1
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsP_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_23OwnedConstraintSetInnerNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1w_7tracker15StandardTrackerEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = alloca [56 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = alloca [56 x i8], align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = alloca [56 x i8], align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = alloca [56 x i8], align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = alloca [56 x i8], align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = alloca [56 x i8], align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = alloca [56 x i8], align 8                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = alloca [56 x i8], align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2)
  %i.v = load i64, ptr %i.s, align 8, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1v_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.t)
  %i.x = load i64, ptr %i.q, align 8, !noundef !10
  %i.y = add i64 %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_RINvXs5_NtCs2O29vuvTAEJ_14ty_python_core4rankNtB6_10RankBitBoxNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.r)
  %i.aa = load i64, ptr %i.o, align 8, !noundef !10
  %i.ab = add i64 %i.y, %i.aa
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.p)
  %i.ac = load i64, ptr %i.a, align 8, !noundef !10
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  %i.af = load i64, ptr %i.m, align 8, !noundef !10
  %i.ag = add i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1v_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n)
  %i.ai = load i64, ptr %i.k, align 8, !noundef !10
  %i.aj = add i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RINvXs5_NtCs2O29vuvTAEJ_14ty_python_core4rankNtB6_10RankBitBoxNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.l)
  %i.al = load i64, ptr %i.i, align 8, !noundef !10
  %i.am = add i64 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1v_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j)
  %i.ao = load i64, ptr %i.g, align 8, !noundef !10
  %i.ap = add i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_RINvXs5_NtCs2O29vuvTAEJ_14ty_python_core4rankNtB6_10RankBitBoxNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  %i.ar = load i64, ptr %i.e, align 8, !noundef !10
  %i.as = add i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
  %i.au = load i64, ptr %i.c, align 8, !noundef !10
  %i.av = add i64 %i.as, %i.au
  store i64 %i.av, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsT_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBU_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %2)
  %i.c = load i64, ptr %i.a, align 8, !noundef !10
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvXsT_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBU_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext %1)
  ret { i64, i1 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsT_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtBU_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXsU_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_20ProtocolInstanceTypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1p_7tracker15StandardTrackerEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i1 } @_RINvXsU_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_20ProtocolInstanceTypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1p_7tracker9NoTrackerEBa_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i1 } { i64 0, i1 undef }, i1 %1, 1
  ret { i64, i1 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, ptr } @_RINvXsU_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_20ProtocolInstanceTypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1p_7tracker15StandardTrackerEBa_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %1, 1
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvXs_NtCsb80QtQtK5z0_6bitvec5fieldINtNtB7_5slice8BitSliceyNtNtB7_5order4Msb0ENtB5_8BitField7load_bejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = lshr i64 %1, 3                           ; 7 uses
  tail call void @_RINvNtCsb80QtQtK5z0_6bitvec5field5checkjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4, i64 noundef %i.e)
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = shl i64 %i.f, 3
  %i.h = and i64 %i.g, 56
  %i.i = and i64 %1, 7
  %i.j = or disjoint i64 %i.h, %i.i               ; 4 uses
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %i.l = add nuw nsw i64 %i.e, 63
  %i.m = add nuw nsw i64 %i.l, %i.j
  %i.n = lshr i64 %i.m, 6                         ; 3 uses
  %i.o = icmp eq i64 %i.e, 0
  br i1 %i.o, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.e, %i.p
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = sub nuw nsw i64 %i.e, %i.p
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 63                          ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  %i.u = select i1 %i.t, i8 64, i8 %i.s
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.d:                                             ; preds = %bb.b
  %i.v = trunc nuw nsw i64 %i.e to i8
  %i.w = add nuw nsw i8 %i.k, %i.v
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.4.0.i.i = phi i8 [ %i.u, %bb.c ], [ %i.w, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.x = icmp eq i64 %i.n, 0
  br i1 %i.x, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.y = icmp eq i64 %i.j, 0
  %i.z = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %i.z, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %i.n, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.g ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCsoTR8nlGN3X_18ty_python_semantic, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %spec.select.i, %bb.f ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i, %bb.h ]
  %i.ab = and i64 %i.f, -8
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = sub i64 0, %i.f
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  call void %.sroa.0.0.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull readonly %i.ae, i64 noundef %i.n, i8 noundef %i.k, i8 noundef %.sroa.4.0.i.i), !inline_history !56
  %i.af = load ptr, ptr %i.d, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.05.0.copyload = load ptr, ptr %i.aj, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.not19 = icmp eq ptr %.sroa.02.0.copyload, null
  br i1 %.not19, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1
  %i.al = sub i8 64, %.sroa.3.0.copyload
  %i.am = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Msb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak, i8 noundef %i.al)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.sroa.0.0 = phi i64 [ %i.be, %bb.o ], [ %i.am, %bb.j ]
  %i.an = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field4signjECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0, i64 noundef %i.e)
  ret i64 %i.an

bb.l:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.02.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.ao = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Msb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 0) ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ap = phi i64 [ %i.ao, %bb.l ], [ 0, %bb.i ]
  %.idx = shl nuw nsw i64 %i.ai, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.ar = icmp eq i64 %i.ai, 0
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.015.021 = phi ptr [ %i.as, %.lr.ph ], [ %i.af, %bb.m ] ; 2 uses
  %.sroa.015.0.val = load i64, ptr %.sroa.015.021, align 8, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8 ; 2 uses
  call void @_RINvNtCsb80QtQtK5z0_6bitvec5field16maybe_shift_leftjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 64)
  %i.at = load i64, ptr %i.c, align 8, !alias.scope !9792, !noundef !10
  %i.au = or i64 %i.at, %.sroa.015.0.val          ; 2 uses
  store i64 %i.au, ptr %i.c, align 8, !alias.scope !9792
  %i.av = icmp eq ptr %i.as, %i.aq
  br i1 %i.av, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %i.aw = phi i64 [ %i.ap, %bb.m ], [ %i.au, %.lr.ph ]
  %.not20 = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.05.0.copyload, ptr %i.a, align 8
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !10 ; 2 uses
  %i.az = zext i8 %i.ay to i64
  call void @_RINvNtCsb80QtQtK5z0_6bitvec5field16maybe_shift_leftjECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.az)
  %i.ba = sub i8 64, %i.ay
  %i.bb = call noundef i64 @_RINvNtCsb80QtQtK5z0_6bitvec5field3getyNtNtB4_5order4Msb0jECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %i.ba)
  %i.bc = load i64, ptr %i.c, align 8, !alias.scope !9793, !noundef !10
  %i.bd = or i64 %i.bc, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.be = phi i64 [ %i.bd, %bb.n ], [ %i.aw, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsa_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal17DynamicEnumAnchorNtNtB1F_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1H_4TypeEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1u_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = add i64 %i.f, %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.i = insertvalue { i64, ptr } poison, i64 %i.h, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %i.g, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsb_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTBS_NtB1H_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1H_15DataclassParamsEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = tail call { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = tail call { i64, ptr } @_RINvXse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB6_18DynamicClassAnchorNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1D_7tracker15StandardTrackerEBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = add i64 %i.h, %i.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.k = tail call { i64, ptr } @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB2b_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = add i64 %i.j, %i.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1u_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = add i64 %i.n, %i.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.s = insertvalue { i64, ptr } poison, i64 %i.r, 0
  %i.t = insertvalue { i64, ptr } %i.s, ptr %i.q, 1
  ret { i64, ptr } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsd_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function13KnownFunctionENtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB2f_18FunctionDecoratorsIB1C_NtNtB2h_14known_instance18DeprecatedInstanceEIB1C_NtB2f_26DataclassTransformerParamsEbENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB2j_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function13KnownFunctionENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = add i64 %i.h, %i.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.k = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance18DeprecatedInstanceENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = add i64 %i.j, %i.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = add i64 %i.n, %i.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.s = insertvalue { i64, ptr } poison, i64 %i.r, 0
  %i.t = insertvalue { i64, ptr } %i.s, ptr %i.q, 1
  ret { i64, ptr } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsi_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEIB2o_NtNtB35_14known_instance18DeprecatedInstanceEbIB2o_NtB35_15DataclassParamsEIB2o_NtNtB35_8function26DataclassTransformerParamsEbbbbbENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB37_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call { i64, ptr } @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1e_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = add i64 %i.i, %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.l = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance18DeprecatedInstanceENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = add i64 %i.k, %i.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.p = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1u_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n) ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.s = add i64 %i.o, %i.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.t = tail call { i64, ptr } @_RINvXs9_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function26DataclassTransformerParamsENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1w_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = add i64 %i.s, %i.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.x = insertvalue { i64, ptr } poison, i64 %i.w, 0
  %i.y = insertvalue { i64, ptr } %i.x, ptr %i.v, 1
  ret { i64, ptr } %i.y
}
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral15generic_context1__31generic_context__Configuration_EEE19next_index_overflowB28_:bb.a
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral16decorators_inner1__32decorators_inner__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral16own_fields_inner1__32own_fields_inner__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral17inheritance_cycle1__38inheritance_cycle_inner_Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral17typed_dict_module1__33typed_dict_module__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral23has_own_ordering_method1__39has_own_ordering_method__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral24implicit_attribute_inner1__40implicit_attribute_inner__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral26has_own_comparison_methods1__42has_own_comparison_methods__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral28pep695_generic_context_inner1__44pep695_generic_context_inner__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral32inherited_legacy_generic_context1__53inherited_legacy_generic_context_inner_Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral7try_mro1__23try_mro__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMst_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB22_18StaticClassLiteral17variance_of_owner1__33variance_of_owner__Configuration_EEE19next_index_overflowB28_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsu_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB22_13TypeAliasType17variance_of_owner1__33variance_of_owner__Configuration_EEE19next_index_overflowB26_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB22_15TypeVarInstance20lazy_bound_unchecked1__36lazy_bound_unchecked__Configuration_EEE19next_index_overflowB26_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB22_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEE19next_index_overflowB26_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBO_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB22_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEE19next_index_overflowB26_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4lsb0INtB6_8BitSliceyE12sp_first_oneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = shl i64 %i.b, 3
  %i.d = and i64 %i.c, 56
  %i.e = and i64 %1, 7
  %i.f = or disjoint i64 %i.d, %i.e               ; 4 uses
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = lshr i64 %1, 3                           ; 5 uses
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = add nuw nsw i64 %i.i, %i.f
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 64, %i.f                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.h, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.h, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 63                          ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = select i1 %i.q, i8 64, i8 %i.p
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %i.h to i8
  %i.t = add nuw nsw i8 %i.g, %i.s
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.4.0.i.i = phi i8 [ %i.r, %bb.c ], [ %i.t, %bb.d ], [ %i.g, %bb.a ] ; 2 uses
  %i.u = icmp eq i64 %i.k, 0
  br i1 %i.u, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.v = icmp eq i64 %i.f, 0
  %i.w = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %i.w, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.k, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic.i = select i1 %i.x, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.g ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5emptyCsoTR8nlGN3X_18ty_python_semantic, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %spec.select.i, %bb.f ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic.i, %bb.h ]
  %i.y = and i64 %i.b, -8
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %i.aa = sub i64 0, %i.b
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  call void %.sroa.0.0.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly %i.ab, i64 noundef %i.k, i8 noundef %i.g, i8 noundef %.sroa.4.0.i.i), !inline_history !1
  %i.ac = load ptr, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.ad, align 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.012.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.09.0.copyload, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.am = load i8, ptr %i.al, align 8, !noundef !10
  %.val = load i64, ptr %i.ai, align 8, !noundef !10
  %i.an = and i64 %.val, %i.ak                    ; 2 uses
  %i.ao = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.an, i64 noundef %i.ak)
  br i1 %i.ao, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ap = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.an, i1 false)
  %i.aq = zext i8 %i.am to i64
  %i.ar = sub nsw i64 %i.ap, %i.aq
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.09.0.copyload.val = load i64, ptr %.sroa.09.0.copyload, align 8, !noundef !10
  %i.as = and i64 %.sroa.09.0.copyload.val, %.sroa.6.0.copyload ; 2 uses
  %i.at = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.as, i1 false)
  %i.au = zext i8 %.sroa.711.0.copyload to i64
  %i.av = sub nsw i64 %i.at, %i.au                ; 2 uses
  %i.aw = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.as, i64 noundef %.sroa.6.0.copyload)
  br i1 %i.aw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.01.0 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %i.ay = icmp eq i64 %i.af, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.sroa.01.127 = phi i64 [ %i.bc, %bb.n ], [ %.sroa.01.0, %bb.m ]
  %.sroa.021.026 = phi ptr [ %i.az, %bb.n ], [ %i.ac, %bb.m ] ; 2 uses
  %.sroa.021.0.val = load i64, ptr %.sroa.021.026, align 8, !noundef !10 ; 2 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.021.0.val, i1 false)
  %i.bc = add i64 %i.bb, %.sroa.01.127            ; 3 uses
  %i.bd = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.021.0.val, i64 noundef -1)
  br i1 %i.bd, label %.loopexit, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.1.lcssa = phi i64 [ %.sroa.01.0, %bb.m ], [ %i.bc, %bb.n ]
  %.not24 = icmp eq ptr %.sroa.012.0.copyload, null
  br i1 %.not24, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %.sroa.012.0.copyload.val = load i64, ptr %.sroa.012.0.copyload, align 8, !noundef !10
  %i.be = and i64 %.sroa.012.0.copyload.val, %.sroa.614.0.copyload ; 2 uses
  %i.bf = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.be, i64 noundef %.sroa.614.0.copyload)
  br i1 %i.bf, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.be, i1 false)
  %i.bh = add i64 %i.bg, %.sroa.01.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %bb.p, %bb.j, %bb.o, %._crit_edge
  %.sroa.7.3 = phi i64 [ undef, %bb.j ], [ undef, %._crit_edge ], [ undef, %bb.o ], [ %i.ar, %bb.k ], [ %i.av, %bb.l ], [ %i.bh, %bb.p ], [ %i.bc, %.lr.ph ]
  %.sroa.0.3 = phi i64 [ 0, %bb.j ], [ 0, %._crit_edge ], [ 0, %bb.o ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = insertvalue { i64, i64 } poison, i64 %.sroa.0.3, 0
  %i.bj = insertvalue { i64, i64 } %i.bi, i64 %.sroa.7.3, 1
  ret { i64, i64 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4lsb0INtB6_8BitSliceyE5sp_eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.unshifted = xor i64 %3, %1
  %i.c = icmp ult i64 %.unshifted, 8
  br i1 %i.c, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %i.ab, %bb.c ], [ %3, %bb.a ]  ; 3 uses
  %i.e = phi ptr [ %i.ai, %bb.c ], [ %2, %bb.a ]  ; 2 uses
  %i.f = phi ptr [ %14, %bb.c ], [ %0, %bb.a ]    ; 2 uses
  %i.g = phi i64 [ %15, %bb.c ], [ %1, %bb.a ]    ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.h, i64 64) ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = sub i64 0, %i.j
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = shl i64 %i.j, 3
  %i.p = and i64 %i.o, 56                         ; 2 uses
  %i.q = and i64 %i.g, 7                          ; 2 uses
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %i.t = lshr i64 %i.s, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10902
  store i64 %i.t, ptr %i.b, align 8, !noalias !10902
  %i.u = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !10903 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10902
  %4 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 3    ; 2 uses
  %5 = ptrtoint ptr %i.u to i64                   ; 2 uses
  %6 = and i64 %5, -8
  %7 = lshr i64 %i.s, 3
  %8 = and i64 %7, 7
  %9 = and i64 %i.s, 7
  %10 = sub i64 %i.g, %4
  %11 = and i64 %10, -8
  %12 = sub i64 %8, %5
  %13 = getelementptr i8, ptr %i.u, i64 %12
  %14 = getelementptr i8, ptr %13, i64 %6         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %14) ]
  %15 = or disjoint i64 %9, %11
  %i.v = lshr i64 %i.d, 3                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Lsb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Lsb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %16 = lshr exact i64 %i.p, 3
  %17 = ptrtoint ptr %i.n to i64                  ; 2 uses
  %18 = sub i64 %16, %17
  %19 = getelementptr i8, ptr %i.n, i64 %18
  %20 = and i64 %17, -8
  %21 = getelementptr i8, ptr %19, i64 %20        ; 2 uses
  %.sroa.0.0.i.i17.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.v, i64 64) ; 2 uses
  %22 = ptrtoint ptr %i.e to i64                  ; 3 uses
  %23 = and i64 %22, -8
  %24 = getelementptr i8, ptr %i.e, i64 %23
  %25 = sub i64 0, %22
  %26 = getelementptr i8, ptr %24, i64 %25        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %26) ]
  %27 = shl i64 %22, 3
  %28 = and i64 %27, 56                           ; 2 uses
  %29 = and i64 %i.d, 7                           ; 2 uses
  %30 = or disjoint i64 %28, %29
  %31 = add nuw nsw i64 %30, %.sroa.0.0.i.i17.i.i.i ; 3 uses
  %32 = lshr i64 %31, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10904
  store i64 %32, ptr %i.a, align 8, !noalias !10904
  %33 = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly %26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !10905 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10904
  %.not.not.i = icmp eq ptr %21, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Lsb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.x = and i64 %31, 7
  %i.y = shl nuw nsw i64 %.sroa.0.0.i.i17.i.i.i, 3 ; 2 uses
  %i.z = sub i64 %i.d, %i.y
  %i.aa = and i64 %i.z, -8
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = lshr i64 %31, 3
  %i.ad = and i64 %i.ac, 7
  %i.ae = ptrtoint ptr %33 to i64                 ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %33, i64 %i.af
  %i.ah = and i64 %i.ae, -8
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = or disjoint i64 %i.y, %29
  %i.ak = lshr exact i64 %28, 3
  %i.al = ptrtoint ptr %26 to i64                 ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr i8, ptr %26, i64 %i.am
  %i.ao = and i64 %i.al, -8
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao  ; 2 uses
  %i.aq = or disjoint i64 %4, %i.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.ar = call fastcc noundef i64 @_RINvXNtCsb80QtQtK5z0_6bitvec5fieldINtNtB5_5slice8BitSliceyENtB3_8BitField7load_lejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %21, i64 noundef %i.aq), !noalias !10906
  %i.as = call fastcc noundef i64 @_RINvXNtCsb80QtQtK5z0_6bitvec5fieldINtNtB5_5slice8BitSliceyENtB3_8BitField7load_lejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aj), !noalias !10906
  %.not.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Lsb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyEB33_ENCNvMNtNtBW_14specialization4lsb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Lsb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.b, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.preheader ], [ false, %bb.c ], [ true, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Lsb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E12sp_first_oneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = shl i64 %i.b, 3
  %i.d = and i64 %i.c, 56
  %i.e = and i64 %1, 7
  %i.f = or disjoint i64 %i.d, %i.e               ; 4 uses
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = lshr i64 %1, 3                           ; 5 uses
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = add nuw nsw i64 %i.i, %i.f
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 64, %i.f                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.h, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.h, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 63                          ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = select i1 %i.q, i8 64, i8 %i.p
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %i.h to i8
  %i.t = add nuw nsw i8 %i.g, %i.s
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.4.0.i.i = phi i8 [ %i.r, %bb.c ], [ %i.t, %bb.d ], [ %i.g, %bb.a ] ; 2 uses
  %i.u = icmp eq i64 %i.k, 0
  br i1 %i.u, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.v = icmp eq i64 %i.f, 0
  %i.w = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %i.w, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.k, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i = select i1 %i.x, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.g ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCsoTR8nlGN3X_18ty_python_semantic, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %spec.select.i, %bb.f ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i, %bb.h ]
  %i.y = and i64 %i.b, -8
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %i.aa = sub i64 0, %i.b
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  call void %.sroa.0.0.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly %i.ab, i64 noundef %i.k, i8 noundef %i.g, i8 noundef %.sroa.4.0.i.i), !inline_history !56
  %i.ac = load ptr, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.ad, align 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.012.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.09.0.copyload, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.am = load i8, ptr %i.al, align 8, !noundef !10
  %.val = load i64, ptr %i.ai, align 8, !noundef !10
  %i.an = and i64 %.val, %i.ak                    ; 2 uses
  %i.ao = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.an, i64 noundef %i.ak)
  br i1 %i.ao, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.aq = zext i8 %i.am to i64
  %i.ar = sub nsw i64 %i.ap, %i.aq
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.09.0.copyload.val = load i64, ptr %.sroa.09.0.copyload, align 8, !noundef !10
  %i.as = and i64 %.sroa.09.0.copyload.val, %.sroa.6.0.copyload ; 2 uses
  %i.at = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = zext i8 %.sroa.711.0.copyload to i64
  %i.av = sub nsw i64 %i.at, %i.au                ; 2 uses
  %i.aw = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.as, i64 noundef %.sroa.6.0.copyload)
  br i1 %i.aw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.01.0 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %i.ay = icmp eq i64 %i.af, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.sroa.01.127 = phi i64 [ %i.bc, %bb.n ], [ %.sroa.01.0, %bb.m ]
  %.sroa.021.026 = phi ptr [ %i.az, %bb.n ], [ %i.ac, %bb.m ] ; 2 uses
  %.sroa.021.0.val = load i64, ptr %.sroa.021.026, align 8, !noundef !10 ; 2 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.021.0.val, i1 false)
  %i.bc = add i64 %i.bb, %.sroa.01.127            ; 3 uses
  %i.bd = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.021.0.val, i64 noundef -1)
  br i1 %i.bd, label %.loopexit, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.1.lcssa = phi i64 [ %.sroa.01.0, %bb.m ], [ %i.bc, %bb.n ]
  %.not24 = icmp eq ptr %.sroa.012.0.copyload, null
  br i1 %.not24, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %.sroa.012.0.copyload.val = load i64, ptr %.sroa.012.0.copyload, align 8, !noundef !10
  %i.be = and i64 %.sroa.012.0.copyload.val, %.sroa.614.0.copyload ; 2 uses
  %i.bf = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.be, i64 noundef %.sroa.614.0.copyload)
  br i1 %i.bf, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bh = add i64 %i.bg, %.sroa.01.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %bb.p, %bb.j, %bb.o, %._crit_edge
  %.sroa.7.3 = phi i64 [ undef, %bb.j ], [ undef, %._crit_edge ], [ undef, %bb.o ], [ %i.ar, %bb.k ], [ %i.av, %bb.l ], [ %i.bh, %bb.p ], [ %i.bc, %.lr.ph ]
  %.sroa.0.3 = phi i64 [ 0, %bb.j ], [ 0, %._crit_edge ], [ 0, %bb.o ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = insertvalue { i64, i64 } poison, i64 %.sroa.0.3, 0
  %i.bj = insertvalue { i64, i64 } %i.bi, i64 %.sroa.7.3, 1
  ret { i64, i64 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E5sp_eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.unshifted = xor i64 %3, %1
  %i.c = icmp ult i64 %.unshifted, 8
  br i1 %i.c, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %i.ab, %bb.c ], [ %3, %bb.a ]  ; 3 uses
  %i.e = phi ptr [ %i.ai, %bb.c ], [ %2, %bb.a ]  ; 2 uses
  %i.f = phi ptr [ %14, %bb.c ], [ %0, %bb.a ]    ; 2 uses
  %i.g = phi i64 [ %15, %bb.c ], [ %1, %bb.a ]    ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.h, i64 64) ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = sub i64 0, %i.j
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = shl i64 %i.j, 3
  %i.p = and i64 %i.o, 56                         ; 2 uses
  %i.q = and i64 %i.g, 7                          ; 2 uses
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %.sroa.0.0.i.i.i.i.i ; 3 uses
  %i.t = lshr i64 %i.s, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10929
  store i64 %i.t, ptr %i.b, align 8, !noalias !10929
  %i.u = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !10930 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10929
  %4 = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 3    ; 2 uses
  %5 = ptrtoint ptr %i.u to i64                   ; 2 uses
  %6 = and i64 %5, -8
  %7 = lshr i64 %i.s, 3
  %8 = and i64 %7, 7
  %9 = and i64 %i.s, 7
  %10 = sub i64 %i.g, %4
  %11 = and i64 %10, -8
  %12 = sub i64 %8, %5
  %13 = getelementptr i8, ptr %i.u, i64 %12
  %14 = getelementptr i8, ptr %13, i64 %6         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %14) ]
  %15 = or disjoint i64 %9, %11
  %i.v = lshr i64 %i.d, 3                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Msb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Msb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %16 = lshr exact i64 %i.p, 3
  %17 = ptrtoint ptr %i.n to i64                  ; 2 uses
  %18 = sub i64 %16, %17
  %19 = getelementptr i8, ptr %i.n, i64 %18
  %20 = and i64 %17, -8
  %21 = getelementptr i8, ptr %19, i64 %20        ; 2 uses
  %.sroa.0.0.i.i17.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 1, 2305843009213693952) %i.v, i64 64) ; 2 uses
  %22 = ptrtoint ptr %i.e to i64                  ; 3 uses
  %23 = and i64 %22, -8
  %24 = getelementptr i8, ptr %i.e, i64 %23
  %25 = sub i64 0, %22
  %26 = getelementptr i8, ptr %24, i64 %25        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %26) ]
  %27 = shl i64 %22, 3
  %28 = and i64 %27, 56                           ; 2 uses
  %29 = and i64 %i.d, 7                           ; 2 uses
  %30 = or disjoint i64 %28, %29
  %31 = add nuw nsw i64 %30, %.sroa.0.0.i.i17.i.i.i ; 3 uses
  %32 = lshr i64 %31, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10931
  store i64 %32, ptr %i.a, align 8, !noalias !10931
  %33 = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly %26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !10932 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10931
  %.not.not.i = icmp eq ptr %21, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Msb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.x = and i64 %31, 7
  %i.y = shl nuw nsw i64 %.sroa.0.0.i.i17.i.i.i, 3 ; 2 uses
  %i.z = sub i64 %i.d, %i.y
  %i.aa = and i64 %i.z, -8
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = lshr i64 %31, 3
  %i.ad = and i64 %i.ac, 7
  %i.ae = ptrtoint ptr %33 to i64                 ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %33, i64 %i.af
  %i.ah = and i64 %i.ae, -8
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = or disjoint i64 %i.y, %29
  %i.ak = lshr exact i64 %28, 3
  %i.al = ptrtoint ptr %26 to i64                 ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr i8, ptr %26, i64 %i.am
  %i.ao = and i64 %i.al, -8
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao  ; 2 uses
  %i.aq = or disjoint i64 %4, %i.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.ar = call fastcc noundef i64 @_RINvXs_NtCsb80QtQtK5z0_6bitvec5fieldINtNtB7_5slice8BitSliceyNtNtB7_5order4Msb0ENtB5_8BitField7load_bejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %21, i64 noundef %i.aq), !noalias !10933
  %i.as = call fastcc noundef i64 @_RINvXs_NtCsb80QtQtK5z0_6bitvec5fieldINtNtB7_5slice8BitSliceyNtNtB7_5order4Msb0ENtB5_8BitField7load_bejECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aj), !noalias !10933
  %.not.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i, label %.preheader, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtBY_5order4Msb0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkTRINtBW_8BitSliceyB1C_EB33_ENCNvMNtNtBW_14specialization4msb0B34_5sp_eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Msb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.b, %.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.preheader ], [ false, %bb.c ], [ true, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsb80QtQtK5z0_6bitvec5slice4iter6ChunksyNtNtB12_5order4Msb0EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId17satisfied_clausesNtB2_8Searcher10visit_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  switch i32 %2, label %bb.b [
    i32 -1, label %bb.g
    i32 -2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage18interior_node_data(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, i32 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.a, align 4, !range !21, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !10958, !noundef !10 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !range !22, !alias.scope !10958, !noundef !10
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit

_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10958, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f ; 2 uses
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.d, ptr %i.l, align 4
  %i.m = add i64 %i.f, 1
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !10958
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !10
  tail call fastcc void @_RNvMNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId17satisfied_clausesNtB2_8Searcher10visit_node(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, i32 noundef %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10959)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !10959, !noundef !10 ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit1, !prof !20

bb.d:                                             ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #58, !noalias !10959
  unreachable

_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit1: ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit
  %i.r = add nsw i64 %i.p, -1                     ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !range !22, !alias.scope !10959, !noundef !10
  %i.t = icmp samesign ult i64 %i.r, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %i.p, 1152921504606846977
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.i, align 8, !alias.scope !10960, !nonnull !10, !noundef !10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r ; 2 uses
  store i32 2, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.d, ptr %i.x, align 4
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !10960
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i32, ptr %i.y, align 4, !noundef !10
  tail call fastcc void @_RNvMNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId17satisfied_clausesNtB2_8Searcher10visit_node(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, i32 noundef %i.z)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10961)
  %i.aa = load i64, ptr %i.e, align 8, !alias.scope !10961, !noundef !10 ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit3, !prof !20

bb.e:                                             ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit1
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #58, !noalias !10961
  unreachable

_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit3: ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit1
  %i.ac = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ad = load i64, ptr %i.c, align 8, !range !22, !alias.scope !10961, !noundef !10
  %i.ae = icmp samesign ult i64 %i.ac, %i.ad
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ult i64 %i.aa, 1152921504606846977
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %i.i, align 8, !alias.scope !10962, !nonnull !10, !noundef !10
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac ; 2 uses
  store i32 1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.d, ptr %i.ai, align 4
  store i64 %i.aa, ptr %i.e, align 8, !alias.scope !10962
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !10
  tail call fastcc void @_RNvMNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId17satisfied_clausesNtB2_8Searcher10visit_node(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, i32 noundef %i.ak)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10963)
  %i.al = load i64, ptr %i.e, align 8, !alias.scope !10963, !noundef !10 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.f, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause3pop.exit4, !prof !20

bb.f:                                             ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit3
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #58, !noalias !10963
  unreachable

_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause3pop.exit4: ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause4push.exit3
  %i.an = add nsw i64 %i.al, -1                   ; 2 uses
  store i64 %i.an, ptr %i.e, align 8, !alias.scope !10963
  %i.ao = load i64, ptr %i.c, align 8, !range !22, !alias.scope !10963, !noundef !10
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ult i64 %i.al, 1152921504606846977
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !10964, !noalias !10965, !noundef !10 ; 3 uses
  %i.au = load i64, ptr %0, align 8, !range !22, !alias.scope !10964, !noalias !10965, !noundef !10
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses4push.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15SatisfiedClauseE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses4push.exit unwind label %bb.i, !noalias !10965

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15SatisfiedClauseEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #57
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aw

_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses4push.exit: ; preds = %bb.g, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10964, !noalias !10965, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.bb = add i64 %i.at, 1
  store i64 %i.bb, ptr %i.as, align 8, !alias.scope !10964, !noalias !10965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses4push.exit, %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause3pop.exit4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationINtNtB7_6cyclic13CycleDetectorNtB5_12TypeRelationTNtB7_4TypeB1J_B1p_NtB5_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 32), (104, 116)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10969)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.b, align 8, !alias.scope !10970, !noalias !10969
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !alias.scope !10970, !noalias !10969
  store i32 37, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !10970, !noalias !10969
  store ptr %1, ptr %0, align 8, !alias.scope !10971
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10971
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !10971
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId10from_usize(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = add nuw i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId8from_u32(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add nuw i32 %0, 1
  ret i32 %i.a
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCsoTR8nlGN3X_18ty_python_semantic:bb.a
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE8spanningCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = lshr i64 %i.i, %i.k
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.66.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.66.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56
  %i.d = and i64 %2, 7
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = lshr i64 %2, 3                           ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.g, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 63                          ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 64, i8 %i.o
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %i.g to i8
  %i.s = add nuw nsw i8 %i.f, %i.r
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i8 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.u = icmp eq i64 %i.e, 0
  %i.v = icmp eq i8 %.sroa.4.0.i, 64              ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.i, %bb.h, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.h ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCsoTR8nlGN3X_18ty_python_semantic, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit ], [ %spec.select, %bb.g ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic, %bb.i ]
  %i.w = and i64 %i.a, -8
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = sub i64 0, %i.a
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void %.sroa.0.0(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.z, i64 noundef %i.j, i8 noundef %i.f, i8 noundef %.sroa.4.0.i)
  ret void

bb.g:                                             ; preds = %bb.e
  %spec.select = select i1 %i.v, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = lshr i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = lshr i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = lshr i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !33, !noundef !10
  %i.b = icmp eq i32 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !range !21, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.g, align 8
  %i.h = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !noalias !11217, !inline_history !11216 ; 2 uses
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.h), !noalias !11217
  %i.j = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.h, i32 noundef range(i32 1, 0) %i.d, i32 noundef %i.f), !noalias !11217
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %.sink, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE12insert_entryB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.i = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalEB2q_()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.j, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.m, align 8
  store ptr %i.j, ptr %i.c, align 8
  %i.n = load i32, ptr %1, align 8, !range !55, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB18_4LeafE16push_with_handleB2n_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.n, i32 noundef %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
end_hunk_3
begin_hunk_4_@_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceType9interface:bb.a
  %i.g = extractvalue { i32, i32 } %i.e, 1
  store i32 %i.f, ptr %0, align 4, !alias.scope !11537, !noalias !11538
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !alias.scope !11537, !noalias !11538
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.i, align 4, !alias.scope !11537, !noalias !11538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11535
  br label %_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_8Protocol9interface.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load <2 x i32>, ptr %i.j, align 4, !alias.scope !11532, !noalias !11534
  store <2 x i32> %i.k, ptr %0, align 4, !alias.scope !11539, !noalias !11538
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.l, align 4, !alias.scope !11539, !noalias !11538
  br label %_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_8Protocol9interface.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !range !21, !alias.scope !11532, !noalias !11534, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !11532, !noalias !11534, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11540)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !10, !alias.scope !11541, !noalias !11542 ; 2 uses
  %i.s = tail call noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %2), !noalias !11543, !inline_history !11527 ; 2 uses
  %i.t = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances5_1__NtB9_24MaterializedProtocolType10ingredient5CACHE, ptr noundef nonnull align 8 %i.s), !noalias !11543
  %i.u = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.s, i32 noundef range(i32 1, 0) %i.n, i32 noundef %i.p), !noalias !11543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !noalias !11544
  %i.v = call { i32, i32 } @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_13ProtocolClass24unmaterialized_interface(ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !11536 ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = extractvalue { i32, i32 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11535
  %i.y = call noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %2), !noalias !11536, !inline_history !11528 ; 2 uses
  %i.z = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances5_1__NtB9_24MaterializedProtocolType10ingredient5CACHE, ptr noundef nonnull align 8 %i.y), !noalias !11536
  %i.aa = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %i.n, i32 noundef %i.p), !noalias !11536
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !range !15, !noalias !11536, !noundef !10
  store i32 %i.w, ptr %0, align 4, !alias.scope !11545, !noalias !11538
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %i.ad, align 4, !alias.scope !11545, !noalias !11538
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ae, align 4, !alias.scope !11545, !noalias !11538
  br label %_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_8Protocol9interface.exit

_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_8Protocol9interface.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 1, 0) i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage10typevar_id(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [28 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.a, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call fastcc void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage30ensure_overlay_identity_caches(ptr noalias noundef align 8 dereferenceable(688) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !11559, !noalias !11560, !noundef !10
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11561)
  call void @llvm.experimental.noalias.scope.decl(metadata !11562)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !11563, !noalias !11564, !noundef !10 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !11563, !noalias !11564, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !11565 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !11566
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %bb.d, !prof !16

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold, !prof !20

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !range !21, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.ah

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage12support_data(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, %i.d
  br i1 %i.h, label %bb.d, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = add i32 %1, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.o, label %bb.p

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %i.p = sub nuw nsw i64 %i.d, %i.g               ; 3 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.j, label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11571)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11572)
  %i.s = lshr i64 %i.d, 6                         ; 6 uses
  %i.t = and i64 %i.d, 63                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11573, !noundef !10 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !11573, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !noalias !11573, !noundef !10 ; 2 uses
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner22retained_support_index.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !11573
  unreachable

bb.g:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !11573, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.ad = shl i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = and i64 %i.f, 7
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = add nuw nsw i64 %i.ag, %i.g
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  %i.aj = lshr i64 %i.ai, 6                       ; 2 uses
  %i.ak = icmp samesign ult i64 %i.s, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.ac, -8
  %i.am = getelementptr i8, ptr %.val.i.i, i64 %i.al
  %i.an = sub i64 0, %i.ac
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !11573, !noundef !10
  %i.ar = sub nuw nsw i64 64, %i.t
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add i32 %i.aa, %i.av
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner22retained_support_index.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !11573
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner22retained_support_index.exit: ; preds = %bb.e, %bb.h
  %.sroa.0.0.i.i = phi i32 [ %i.aw, %bb.h ], [ %i.aa, %bb.e ]
  %i.ax = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.az = load i64, ptr %i.ay, align 8, !noundef !10 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.l, label %bb.m

bb.j:                                             ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.p
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7supportNtB5_9SupportId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #58
  unreachable

bb.l:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner22retained_support_index.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.ax
  br label %bb.n

bb.m:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner22retained_support_index.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #58
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.o
  %.sroa.0.0 = phi ptr [ %i.bg, %bb.l ], [ %i.bd, %bb.j ], [ %i.bj, %bb.o ]
  ret ptr %.sroa.0.0

bb.o:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.l
  br label %bb.n

bb.p:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage12typevar_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 4 captures(none) dereferenceable(28) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(688) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %2, -1
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  br i1 %i.g, label %bb.f, label %_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId10from_usize.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.j = add i32 %2, -1
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.h, label %bb.i

_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId10from_usize.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %i.o = sub nuw nsw i64 %i.d, %i.f               ; 3 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId10from_usize.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw [28 x i8], ptr %i.r, i64 %i.o
  br label %bb.g

bb.e:                                             ; preds = %_RNvMs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #58
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %i.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.h
  %.sink = phi ptr [ %i.s, %bb.d ], [ %i.v, %bb.f ], [ %i.y, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %.sink, i64 28, i1 false)
  ret void

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %i.k
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage14intern_support(ptr noalias noundef nonnull align 8 dereferenceable(688) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11580, !noalias !11581, !noundef !10 ; 7 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 4294967295
  br i1 %i.f, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #58
          to label %.noexc.i unwind label %bb.g, !noalias !11582

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !11580
  %i.g = load i64, ptr %i.b, align 8, !range !22, !alias.scope !11583, !noalias !11584, !noundef !10
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.d, label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdNtBP_7SupportE4pushBV_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdNtBP_7SupportE4pushBV_.exit unwind label %bb.e, !noalias !11584

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.f, !noalias !11581

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !11581
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body5.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.k, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body5.i

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body.i unwind label %bb.h, !noalias !11580

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !11580
  unreachable

_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdNtBP_7SupportE4pushBV_.exit: ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !11583, !noalias !11584, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = add nuw nsw i64 %i.d, 1
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !11583, !noalias !11584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11582
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.q, align 8, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_support_id.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdNtBP_7SupportE4pushBV_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.s = load i64, ptr %i.r, align 8, !noundef !10
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, %i.d               ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, 4294967295
  br i1 %i.v, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_support_id.exit, label %bb.j, !prof !16

end_hunk_4
begin_hunk_5_@_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage14intern_typevar:bb.a
  call fastcc void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage30ensure_overlay_identity_caches(ptr noalias noundef align 8 dereferenceable(688) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !11604, !noalias !11605, !noundef !10
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.b) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.experimental.noalias.scope.decl(metadata !11607)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !11608, !noalias !11609, !noundef !10 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !11608, !noalias !11609, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.l    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !11610 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.z = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.y), !noalias !11611
  br i1 %i.z, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %bb.d, !prof !16

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %select.unfold, !prof !20

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit: ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !range !21, !noundef !10
  br label %bb.j

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11612)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !11612, !noalias !11613, !noundef !10 ; 7 uses
  %i.am = icmp ult i64 %i.al, 329406144173384851
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp samesign ult i64 %i.al, 4294967295
  br i1 %i.an, label %_RNvXs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %select.unfold
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #58, !noalias !11614
  unreachable

_RNvXs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i: ; preds = %select.unfold
  %i.ao = load i64, ptr %i.aj, align 8, !range !22, !alias.scope !11615, !noalias !11616, !noundef !10
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.g, label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit

bb.g:                                             ; preds = %_RNvXs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj), !noalias !11616
  br label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit

_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit: ; preds = %_RNvXs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_9TypeVarIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !11615, !noalias !11616, !nonnull !10, !noundef !10
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %i.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.as, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.at = add nuw nsw i64 %i.al, 1
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !11615, !noalias !11616
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.au, align 8, !noundef !10 ; 2 uses
  %.not.i4 = icmp eq ptr %.val, null
  br i1 %.not.i4, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_typevar_id.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noundef !10
  %i.ax = add i64 %i.aw, %i.al                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 4294967295
  br i1 %i.ay, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_typevar_id.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #58
  unreachable

_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_typevar_id.exit: ; preds = %bb.h, %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit
  %.sroa.0.0.i5.in.in = phi i64 [ %i.al, %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtBR_7typevar20BoundTypeVarIdentityE4pushBT_.exit ], [ %i.ax, %bb.h ]
  %.sroa.0.0.i5.in = trunc nuw i64 %.sroa.0.0.i5.in.in to i32
  %.sroa.0.0.i5 = add nuw i32 %.sroa.0.0.i5.in, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.az = call noundef i32 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBR_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.a, i32 noundef %.sroa.0.0.i5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_typevar_id.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit
  %.sroa.0.0 = phi i32 [ %i.ai, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_11constraints9TypeVarIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit ], [ %.sroa.0.0.i5, %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19adjusted_typevar_id.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(688) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %2, -1
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, %i.d
  br i1 %i.h, label %bb.d, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = add i32 %2, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.o, label %bb.p

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %i.p = sub nuw nsw i64 %i.d, %i.g               ; 3 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.j, label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11621)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11622)
  %i.s = lshr i64 %i.d, 6                         ; 6 uses
  %i.t = and i64 %i.d, 63                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11623, !noundef !10 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !11623, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !noalias !11623, !noundef !10 ; 2 uses
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !11623
  unreachable

bb.g:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !11623, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.ad = shl i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = and i64 %i.f, 7
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = add nuw nsw i64 %i.ag, %i.g
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  %i.aj = lshr i64 %i.ai, 6                       ; 2 uses
  %i.ak = icmp samesign ult i64 %i.s, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.ac, -8
  %i.am = getelementptr i8, ptr %.val.i.i, i64 %i.al
  %i.an = sub i64 0, %i.ac
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !11623, !noundef !10
  %i.ar = sub nuw nsw i64 64, %i.t
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add i32 %i.aa, %i.av
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !11623
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit: ; preds = %bb.e, %bb.h
  %.sroa.0.0.i.i = phi i32 [ %i.aw, %bb.h ], [ %i.aa, %bb.e ]
  %i.ax = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noundef !10 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.l, label %bb.m

bb.j:                                             ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %i.p
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #58
  unreachable

bb.l:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.ax
  br label %bb.n

bb.m:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #58
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.o
  %.sink = phi ptr [ %i.bd, %bb.j ], [ %i.bg, %bb.l ], [ %i.bj, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %.sink, i64 40, i1 false)
  ret void

bb.o:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.l
  br label %bb.n

bb.p:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15node_support_id(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, -3
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !noundef !10 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, %i.d
  br i1 %i.h, label %bb.e, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = zext i32 %1 to i64                       ; 3 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.p, label %bb.q

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %i.o = sub nuw nsw i64 %i.d, %i.g               ; 3 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.k, label %bb.l

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11628)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11629)
  %i.r = lshr i64 %i.d, 6                         ; 6 uses
  %i.s = and i64 %i.d, 63                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !11630, !noundef !10 ; 2 uses
  %i.v = icmp ult i64 %i.r, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !11630, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.r
  %i.z = load i32, ptr %i.y, align 4, !noalias !11630, !noundef !10 ; 2 uses
  %i.aa = icmp eq i64 %i.s, 0
  br i1 %i.aa, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !11630
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !11630, !nonnull !10, !noundef !10 ; 2 uses
  %i.ab = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.ac = shl i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 56
  %i.ae = and i64 %i.f, 7
  %i.af = add nuw nsw i64 %i.ae, 63
  %i.ag = add nuw nsw i64 %i.af, %i.g
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 6                       ; 2 uses
  %i.aj = icmp samesign ult i64 %i.r, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ab, -8
  %i.al = getelementptr i8, ptr %.val.i.i, i64 %i.ak
  %i.am = sub i64 0, %i.ab
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.r
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !11630, !noundef !10
  %i.aq = sub nuw nsw i64 64, %i.s
  %i.ar = shl nsw i64 -1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = add i32 %i.z, %i.au
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !11630
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit: ; preds = %bb.f, %bb.i
  %.sroa.0.0.i.i = phi i32 [ %i.av, %bb.i ], [ %i.z, %bb.f ]
  %i.aw = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !10 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.m, label %bb.n

bb.k:                                             ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.o
  %i.bd = load i32, ptr %i.bc, align 4, !range !21, !noundef !10
  br label %bb.o

bb.l:                                             ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #58
  unreachable

bb.m:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aw
  %i.bh = load i32, ptr %i.bg, align 4, !range !21, !noundef !10
  br label %bb.o

bb.n:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #58
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.k, %bb.m, %bb.p
  %.sroa.0.0 = phi i32 [ %i.bl, %bb.p ], [ %i.bh, %bb.m ], [ %i.bd, %bb.k ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0

bb.p:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.k
  %i.bl = load i32, ptr %i.bk, align 4, !range !21, !noundef !10
  br label %bb.o

bb.q:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17intern_constraint(ptr noalias noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load i32, ptr %i.d, align 4, !range !21, !noundef !10 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = load i32, ptr %i.f, align 4, !noundef !10 ; 5 uses
  call fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage26intern_constraint_typevars(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, i32 noundef %i.e, i32 noundef %i.g, ptr noalias noundef readonly align 4 captures(none) dereferenceable(32) %4)
  invoke fastcc void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage30ensure_overlay_identity_caches(ptr noalias noundef align 8 dereferenceable(688) %0)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11666)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11665, !noalias !11666, !noundef !10
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %4)
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11669)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !11670, !noalias !11671, !noundef !10 ; 8 uses
  %i.r = load ptr, ptr %i.h, align 8, !alias.scope !11670, !noalias !11671, !nonnull !10, !noundef !10 ; 9 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.u = load i32, ptr %4, align 4, !range !24, !alias.scope !11672, !noalias !11673
  %.fr.i.i = freeze i32 %i.u
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i, -1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !range !24, !alias.scope !11672, !noalias !11673
  %.fr54.i.i = freeze i32 %i.w
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %.fr54.i.i, -1 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.split39.us.i.i, label %.split39.i.preheader.i

.split39.i.preheader.i:                           ; preds = %.noexc
  br i1 %.not3.i.i.i.i.i.i.i, label %.split39.i.us.i, label %.split39.i.i

.split39.i.us.i:                                  ; preds = %.split39.i.preheader.i, %bb.e
  %.sroa.9.0.i.i.us.i = phi i64 [ %i.av, %bb.e ], [ 0, %.split39.i.preheader.i ]
  %.pn.i.i.us.i = phi i64 [ %i.aw, %bb.e ], [ %i.m, %.split39.i.preheader.i ]
  %.sroa.01.0.i.i.us.i = and i64 %.pn.i.i.us.i, %i.q ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.us.i
  %.sroa.0.0.copyload.i27.i.us.i = load <16 x i8>, ptr %i.x, align 1, !noalias !11674 ; 2 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us.i, %i.t
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.not33.i.us.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not33.i.us.i, label %._crit_edge.split.i.us.i, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.split39.i.us.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i
  %.sroa.06.0.i34.i.us.us.i = phi i16 [ %i.ar, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i ], [ %i.z, %.split39.i.us.i ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.us.us.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.01.0.i.i.us.i, %i.ab
  %i.ad = and i64 %i.ac, %i.q
  %i.ae = sub nsw i64 0, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds [44 x i8], ptr %i.r, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -44 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -12
  %.val2.i.i.i.i.i.us.us.i = load i32, ptr %i.ah, align 4, !alias.scope !11675, !noalias !11676
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.val3.i.i.i.i.i.us.us.i = load i32, ptr %i.ai, align 4, !alias.scope !11675, !noalias !11676, !noundef !10
  %i.aj = icmp eq i32 %i.g, %.val3.i.i.i.i.i.us.us.i
  %i.ak = icmp eq i32 %i.e, %.val2.i.i.i.i.i.us.us.i
  %.sroa.0.0.i.i.i.i.i.i.us.us.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.us.us.i, label %bb.d, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i, !prof !62

bb.d:                                             ; preds = %.lr.ph.i.us.us.i
  %i.al = load i32, ptr %i.ag, align 4, !range !24, !alias.scope !11677, !noalias !11678, !noundef !10
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i, label %.split.i.i.i.i.i.i.us.us.i, !prof !63

.split.i.i.i.i.i.i.us.us.i:                       ; preds = %bb.d
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %i.ag), !noalias !11679
  br i1 %i.an, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.i.us.us.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i, !prof !62

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.i.us.us.i: ; preds = %.split.i.i.i.i.i.i.us.us.i
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -28
  %i.ap = load i32, ptr %i.ao, align 4, !range !24, !alias.scope !11677, !noalias !11678, !noundef !10
  %.mux.i.i.i.i.i.i.us.us.i = icmp eq i32 %i.ap, -1
  br i1 %.mux.i.i.i.i.i.i.us.us.i, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBQ_12ConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i, !prof !64

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.i.us.us.i, %.split.i.i.i.i.i.i.us.us.i, %bb.d, %.lr.ph.i.us.us.i
  %i.aq = add i16 %.sroa.06.0.i34.i.us.us.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i34.i.us.us.i ; 2 uses
  %.not.i.not.i.us.us.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.us.us.i, label %._crit_edge.split.i.us.i, label %.lr.ph.i.us.us.i

._crit_edge.split.i.us.i:                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.i.us.us.i, %.split39.i.us.i
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.e, label %select.unfold, !prof !20

bb.e:                                             ; preds = %._crit_edge.split.i.us.i
  %i.av = add i64 %.sroa.9.0.i.i.us.i, 16         ; 2 uses
  %i.aw = add i64 %.sroa.01.0.i.i.us.i, %i.av
  br label %.split39.i.us.i

.split39.us.i.i:                                  ; preds = %.noexc
  br i1 %.not3.i.i.i.i.i.i.i, label %.split39.us.split.us.i.i, label %.split39.us.split.i.i

.split39.us.split.us.i.i:                         ; preds = %.split39.us.i.i, %bb.g
  %.sroa.9.0.i.us.us.i.i = phi i64 [ %i.bu, %bb.g ], [ 0, %.split39.us.i.i ]
  %.pn.i.us.us.i.i = phi i64 [ %i.bv, %bb.g ], [ %i.m, %.split39.us.i.i ]
  %.sroa.01.0.i.us.us.i.i = and i64 %.pn.i.us.us.i.i, %i.q ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.us.us.i.i
  %.sroa.0.0.copyload.i27.us.us.i.i = load <16 x i8>, ptr %i.ax, align 1, !noalias !11674 ; 2 uses
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.us.i.i, %i.t
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not.i.not33.us.us.i.i = icmp eq i16 %i.az, 0
  br i1 %.not.i.not33.us.us.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %.split39.us.split.us.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.us.us.us.us.i.i
  %.sroa.06.0.i34.us.us.us.us.i.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.thread.us.us.us.us.i.i ], [ %i.az, %.split39.us.split.us.i.i ] ; 3 uses
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.us.us.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %.sroa.01.0.i.us.us.i.i, %i.bb
  %i.bd = and i64 %i.bc, %i.q
  %i.be = sub nsw i64 0, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds [44 x i8], ptr %i.r, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -12
  %.val2.i.i.i.i.us.us.us.us.i.i = load i32, ptr %i.bg, align 4, !alias.scope !11675, !noalias !11676
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %.val3.i.i.i.i.us.us.us.us.i.i = load i32, ptr %i.bh, align 4, !alias.scope !11675, !noalias !11676, !noundef !10
  %i.bi = icmp eq i32 %i.g, %.val3.i.i.i.i.us.us.us.us.i.i
end_hunk_5
begin_hunk_6_@_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17intern_constraint:bb.a
  %i.dx = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dy = add i64 %.sroa.01.0.i.i.i, %i.dx
  br label %.split39.i.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBQ_12ConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit: ; preds = %.split.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.i.us.us.i, %.split.us.us.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.us.us.us.us.i.i
  %.pre-phi.i = phi i64 [ %i.ae, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.i.us.us.i ], [ %i.cd, %.split.us.us.i.i ], [ %i.be, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBU_12ConstraintIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B20_E0E0BY_.exit.us.us.us.us.i.i ], [ %i.de, %.split.i.i ]
  %i.dz = getelementptr inbounds [44 x i8], ptr %i.r, i64 %.pre-phi.i
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !range !21, !noundef !10
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.n

select.unfold:                                    ; preds = %._crit_edge.split.i.i, %._crit_edge.split.i.us.i, %._crit_edge.split.us.us.split.i.i, %._crit_edge.split.us.us.split.us.us.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ec = call fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage14intern_support(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !11680, !noalias !11681, !noundef !10 ; 7 uses
  %i.ef = icmp ult i64 %i.ee, 230584300921369396
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ult i64 %i.ee, 4294967295
  br i1 %i.eg, label %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, label %.noexc6, !prof !16

bb.n:                                             ; preds = %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage22adjusted_constraint_id.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBQ_12ConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit
  %.sroa.0.0 = phi i32 [ %i.eb, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBQ_12ConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit ], [ %.sroa.0.0.i12, %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage22adjusted_constraint_id.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %.sroa.0.0

.noexc6:                                          ; preds = %select.unfold
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #58
  unreachable

_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i: ; preds = %select.unfold
  %i.eh = load i64, ptr %0, align 8, !range !22, !alias.scope !11682, !noalias !11683, !noundef !10
  %i.ei = icmp eq i64 %i.ee, %i.eh
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !11682, !noalias !11683, !nonnull !10, !noundef !10
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.el, ptr noundef nonnull readonly align 4 dereferenceable(40) %4, i64 40, i1 false)
  %i.em = add nuw nsw i64 %i.ee, 1
  store i64 %i.em, ptr %i.ed, align 8, !alias.scope !11682, !noalias !11683
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !11684, !noundef !10 ; 5 uses
  %i.eq = icmp ult i64 %i.ep, 2305843009213693952
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp samesign ult i64 %i.ep, 4294967295
  br i1 %i.er, label %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i8, label %.noexc9, !prof !16

.noexc9:                                          ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #58
  unreachable

_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i8: ; preds = %bb.p
  %i.es = load i64, ptr %i.en, align 8, !range !22, !alias.scope !11685, !noundef !10
  %i.et = icmp eq i64 %i.ep, %i.es
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i8
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXs1o_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !11685, !nonnull !10, !noundef !10
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ep
  store i32 %i.ec, ptr %i.ew, align 4
  %i.ex = add nuw nsw i64 %i.ep, 1
  store i64 %i.ex, ptr %i.eo, align 8, !alias.scope !11685
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.ey, align 8, !noundef !10 ; 2 uses
  %.not.i11 = icmp eq ptr %.val, null
  br i1 %.not.i11, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage22adjusted_constraint_id.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !10
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, %i.ee            ; 2 uses
  %i.fd = icmp samesign ult i64 %i.fc, 4294967295
  br i1 %i.fd, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage22adjusted_constraint_id.exit, label %.noexc13, !prof !16

.noexc13:                                         ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #58
  unreachable

_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage22adjusted_constraint_id.exit: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i12.in.in = phi i64 [ %i.ee, %bb.r ], [ %i.fc, %bb.s ]
  %.sroa.0.0.i12.in = trunc nuw i64 %.sroa.0.0.i12.in.in to i32
  %.sroa.0.0.i12 = add nuw i32 %.sroa.0.0.i12.in, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(40) %4, i64 40, i1 false)
  %i.fe = call noundef i32 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintNtBP_12ConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(40) %i.a, i32 noundef %.sroa.0.0.i12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit: ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.t:                                             ; preds = %bb.a, %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage18interior_node_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(688) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = lshr i64 %i.e, 3                         ; 3 uses
  %i.g = icmp samesign ugt i64 %i.f, %i.c
  br i1 %i.g, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %i.p = sub nuw nsw i64 %i.c, %i.f               ; 4 uses
  %.not10 = icmp eq i64 %i.p, 4294967295
  br i1 %.not10, label %bb.e, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 57, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #58
  unreachable

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit: ; preds = %bb.d
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.l, label %bb.m

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11691)
  %i.s = lshr i64 %i.c, 6                         ; 6 uses
  %i.t = and i64 %i.c, 63                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11692, !noundef !10 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !11692, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !noalias !11692, !noundef !10 ; 2 uses
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !11692
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !11692, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.ad = shl i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = and i64 %i.e, 7
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = add nuw nsw i64 %i.ag, %i.f
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  %i.aj = lshr i64 %i.ai, 6                       ; 2 uses
  %i.ak = icmp samesign ult i64 %i.s, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = and i64 %i.ac, -8
  %i.am = getelementptr i8, ptr %.val.i.i, i64 %i.al
  %i.an = sub i64 0, %i.ac
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !11692, !noundef !10
  %i.ar = sub nuw nsw i64 64, %i.t
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add i32 %i.aa, %i.av
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !11692
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit: ; preds = %bb.g, %bb.j
  %.sroa.0.0.i.i = phi i32 [ %i.aw, %bb.j ], [ %i.aa, %bb.g ]
  %i.ax = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.az = load i64, ptr %i.ay, align 8, !noundef !10 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.n, label %bb.o

bb.l:                                             ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.p
  br label %bb.p

bb.m:                                             ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #58
  unreachable

bb.n:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ax
  br label %bb.p

bb.o:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #58
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.q
  %.sink = phi ptr [ %i.bb, %bb.l ], [ %i.be, %bb.n ], [ %i.bh, %bb.q ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false)
  ret void

bb.q:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !10, !noundef !10
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.j
  br label %bb.p

bb.r:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef nonnull align 8 dereferenceable(688) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %.fr = freeze i64 %1                            ; 5 uses
  store i64 %.fr, ptr %i.a, align 8
  tail call fastcc void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage30ensure_overlay_identity_caches(ptr noalias noundef align 8 dereferenceable(688) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11713, !noalias !11714, !noundef !10
  %i.e = icmp eq i64 %i.d, 0
  %i.f = lshr i64 %.fr, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  br i1 %i.e, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %.fr to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11715)
  call void @llvm.experimental.noalias.scope.decl(metadata !11716)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !11717, !noalias !11718, !noundef !10 ; 4 uses
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !11717, !noalias !11718, !nonnull !10, !noundef !10 ; 5 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.r = icmp eq i32 %i.h, 0
  br i1 %i.r, label %.split.us44.i.i, label %.split.i.i

.split.us44.i.i:                                  ; preds = %bb.b, %bb.c
  %.sroa.9.0.i.us.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %bb.b ]
  %.pn.i.us.i.i = phi i64 [ %i.al, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.01.0.i.us.i.i = and i64 %.pn.i.us.i.i, %i.n ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.us.i.i
  %.sroa.0.0.copyload.i27.us.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !11719 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i, %i.q
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not33.us.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not33.us.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.split.us44.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i
  %.sroa.06.0.i34.us.us.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i ], [ %i.u, %.split.us44.i.i ] ; 3 uses
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.us.i.i, %i.w
  %i.y = and i64 %i.x, %i.n
  %i.z = sub nsw i64 0, %i.y                      ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.o, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %.val2.i.us.us.i.i = load i32, ptr %i.ab, align 4, !alias.scope !11720, !noalias !11721, !noundef !10
  %i.ac = icmp eq i32 %.val2.i.us.us.i.i, 0
  br i1 %i.ac, label %.split.us.us.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i, !prof !62

.split.us.us.i.i:                                 ; preds = %.lr.ph.us.i.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 -8
  %.val3.i.us.us.i.i = load i32, ptr %i.ad, align 4, !alias.scope !11720, !noalias !11721
  %i.ae = icmp eq i32 %.val3.i.us.us.i.i, %i.g
  br i1 %i.ae, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBQ_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i, !prof !64

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i: ; preds = %.split.us.us.i.i, %.lr.ph.us.i.i
  %i.af = add i16 %.sroa.06.0.i34.us.us.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i34.us.us.i.i ; 2 uses
  %.not.i.not.us.us.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.us.us.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.us.us.i.i, %.split.us44.i.i
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %select.unfold, !prof !20

bb.c:                                             ; preds = %._crit_edge.split.us.us.i.i
  %i.ak = add i64 %.sroa.9.0.i.us.i.i, 16         ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.us.i.i, %i.ak
  br label %.split.us44.i.i

.split.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ %i.bf, %bb.d ], [ 0, %bb.b ]
  %.pn.i.i.i = phi i64 [ %i.bg, %bb.d ], [ %i.j, %bb.b ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.n    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !11719 ; 2 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.q
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.be, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i ], [ %i.ao, %.split.i.i ] ; 3 uses
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.n
  %i.at = sub nsw i64 0, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds [12 x i8], ptr %i.o, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -12
  %.val2.i.i.i = load i32, ptr %i.av, align 4, !alias.scope !11720, !noalias !11721, !noundef !10 ; 2 uses
  %i.aw = icmp eq i32 %.val2.i.i.i, 0
  br i1 %i.aw, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.i.i, !prof !63

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ax = getelementptr i8, ptr %i.au, i64 -8
  %.val3.i.i.i = load i32, ptr %i.ax, align 4, !alias.scope !11720, !noalias !11721
  %i.ay = icmp eq i32 %.val2.i.i.i, %i.h
  %i.az = icmp eq i32 %.val3.i.i.i, %i.g
  %spec.select.i.i.i.i.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBQ_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i, !prof !64

._crit_edge.split.i.i:                            ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i, %.split.i.i
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.d, label %select.unfold, !prof !20

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.i.i, %.lr.ph.i.i
  %i.bd = add i16 %.sroa.06.0.i34.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.split.i.i
  %i.bf = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bg = add i64 %.sroa.01.0.i.i.i, %i.bf
  br label %.split.i.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBQ_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.i.i, %.split.us.us.i.i
  %.pre-phi.i = phi i64 [ %i.z, %.split.us.us.i.i ], [ %i.at, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBU_13SourceOrderIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B21_E0E0BY_.exit.i.i ]
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.o, i64 %.pre-phi.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !range !21, !noundef !10
  br label %bb.i

select.unfold:                                    ; preds = %._crit_edge.split.i.i, %._crit_edge.split.us.us.i.i, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11722)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !11722, !noundef !10 ; 7 uses
  %i.bn = icmp ult i64 %i.bm, 1152921504606846976
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ult i64 %i.bm, 4294967295
  br i1 %i.bo, label %_RNvXs1F_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %select.unfold
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #58, !noalias !11722
  unreachable

_RNvXs1F_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i: ; preds = %select.unfold
  %i.bp = load i64, ptr %i.bk, align 8, !range !22, !alias.scope !11723, !noundef !10
  %i.bq = icmp eq i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.f, label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit

bb.f:                                             ; preds = %_RNvXs1F_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
  br label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit

_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit: ; preds = %_RNvXs1F_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !11723, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bm
  store i64 %.fr, ptr %i.bt, align 4
  %i.bu = add nuw nsw i64 %i.bm, 1
  store i64 %i.bu, ptr %i.bl, align 8, !alias.scope !11723
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.bv, align 8, !noundef !10 ; 2 uses
  %.not.i7 = icmp eq ptr %.val, null
  br i1 %.not.i7, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage24adjusted_source_order_id.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 224
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !10
  %i.by = add i64 %i.bx, %i.bm                    ; 2 uses
  %i.bz = icmp ult i64 %i.by, 4294967295
  br i1 %i.bz, label %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage24adjusted_source_order_id.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #58
  unreachable

_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage24adjusted_source_order_id.exit: ; preds = %bb.g, %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit
  %.sroa.0.0.i8.in.in = phi i64 [ %i.bm, %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtBP_11SourceOrderE4pushBT_.exit ], [ %i.by, %bb.g ]
  %.sroa.0.0.i8.in = trunc nuw i64 %.sroa.0.0.i8.in.in to i32
  %.sroa.0.0.i8 = add nuw i32 %.sroa.0.0.i8.in, 1 ; 2 uses
  %i.ca = call noundef i32 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBP_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, i64 %.fr, i32 noundef %.sroa.0.0.i8) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage24adjusted_source_order_id.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBQ_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit
  %.sroa.01.0 = phi i32 [ %i.bj, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderNtBQ_13SourceOrderIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit ], [ %.sroa.0.0.i8, %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage24adjusted_source_order_id.exit ]
  ret i32 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order(ptr noalias noundef align 8 dereferenceable(688) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq i32 %2, 0
  %i.a = icmp eq i32 %1, %2
  %or.cond = or i1 %.not17, %i.a
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.011.0 = phi i32 [ %1, %bb.b ], [ %i.b, %bb.d ], [ %2, %bb.a ]
  ret i32 %.sroa.011.0

bb.d:                                             ; preds = %bb.b
  %.sroa.414.0.insert.ext = zext i32 %2 to i64
  %.sroa.414.0.insert.shift = shl nuw i64 %.sroa.414.0.insert.ext, 32
  %.sroa.013.0.insert.ext = zext i32 %1 to i64
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.414.0.insert.shift, %.sroa.013.0.insert.ext
  %i.b = tail call fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %0, i64 %.sroa.013.0.insert.insert)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage21constraint_support_id(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, %i.d
  br i1 %i.h, label %bb.d, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = add i32 %1, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.o, label %bb.p

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %i.p = sub nuw nsw i64 %i.d, %i.g               ; 3 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.j, label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11728)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11729)
  %i.s = lshr i64 %i.d, 6                         ; 6 uses
  %i.t = and i64 %i.d, 63                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11730, !noundef !10 ; 2 uses
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !11730, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !noalias !11730, !noundef !10 ; 2 uses
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !11730
  unreachable

bb.g:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !11730, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.ad = shl i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = and i64 %i.f, 7
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = add nuw nsw i64 %i.ag, %i.g
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  %i.aj = lshr i64 %i.ai, 6                       ; 2 uses
  %i.ak = icmp samesign ult i64 %i.s, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.ac, -8
  %i.am = getelementptr i8, ptr %.val.i.i, i64 %i.al
  %i.an = sub i64 0, %i.ac
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !11730, !noundef !10
  %i.ar = sub nuw nsw i64 64, %i.t
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add i32 %i.aa, %i.av
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !11730
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit: ; preds = %bb.e, %bb.h
  %.sroa.0.0.i.i = phi i32 [ %i.aw, %bb.h ], [ %i.aa, %bb.e ]
  %i.ax = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !noundef !10 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.l, label %bb.m

bb.j:                                             ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.p
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #58
  unreachable

bb.l:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ax
  br label %bb.n

bb.m:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #58
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.o
  %.sroa.0.0.in = phi ptr [ %i.bg, %bb.l ], [ %i.bd, %bb.j ], [ %i.bj, %bb.o ]
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 4, !range !21, !noundef !10
  ret i32 %.sroa.0.0

bb.o:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.l
  br label %bb.n

bb.p:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage25cached_constraint_implies(ptr noalias noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, i32 noundef range(i32 1, 0) %4, i32 noundef range(i32 1, 0) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %5, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !11747, !noalias !11748, !noundef !10
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdB1A_EEB1G_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11749)
  call void @llvm.experimental.noalias.scope.decl(metadata !11750)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !11751, !noalias !11752, !noundef !10 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !11751, !noalias !11752, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.l    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !11753 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %.val2.i.i.i = load i32, ptr %i.y, align 4, !range !21, !alias.scope !11754, !noalias !11755, !noundef !10
  %i.z = getelementptr i8, ptr %i.x, i64 -8
  %.val3.i.i.i = load i32, ptr %i.z, align 4, !alias.scope !11754, !noalias !11755
  %i.aa = icmp eq i32 %4, %.val2.i.i.i
  %i.ab = icmp eq i32 %5, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBP_EbNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBV_.exit, label %bb.d, !prof !16

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %select.unfold, !prof !20

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBP_EbNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBV_.exit: ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ak = load i8, ptr %i.aj, align 1, !range !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = trunc nuw i8 %i.ak to i1
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  %i.am = call fastcc noundef zeroext i1 @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies(i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef align 8 dereferenceable(688) %0, i32 noundef %5) ; 2 uses
  %i.an = call noundef i8 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBO_EbNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %i.am) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBP_EbNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBV_.exit
  %.sroa.0.0 = phi i1 [ %i.al, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBP_EbNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBV_.exit ], [ %i.am, %select.unfold ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage26intern_constraint_typevars(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(32) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 13 uses
  %i.b = alloca [192 x i8], align 8               ; 13 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !11788
  %i.f = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage14intern_typevar(ptr noalias noundef align 8 dereferenceable(688) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %5, i32 noundef %6)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.q, %bb.p, %bb.i, %bb.h, %.noexc, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.g, %bb.b ], [ %i.ak, %bb.n ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %.sroa.0.0.i = lshr i64 %i.i, 6
  invoke void @_RNvMsf_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_E6resizeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.0.0.i, i64 noundef 0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.j = add i32 %i.f, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = lshr i64 %i.k, 6
  %i.m = invoke noundef nonnull align 8 ptr @_RNvXsq_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_EINtNtNtCs4NRVxsYgnAr_4core3ops5index8IndexMutjE9index_mutCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %.noexc
  %i.n = and i64 %i.k, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = load i64, ptr %i.m, align 8, !noundef !10
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %i.m, align 8
  %i.r = load i32, ptr %7, align 4, !range !24, !noundef !10
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
end_hunk_6
begin_hunk_7_@_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage4load:bb.a
.body:                                            ; preds = %bb.q, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit ], [ %i.y, %bb.e ], [ %i.bb, %bb.q ]
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %.body
  %i.x = shl nuw nsw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.x, i64 noundef 4) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit

bb.e:                                             ; preds = %bb.r, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ab = load i64, ptr %i.u, align 8, !noundef !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.34.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.ae, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !11854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11855
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.g
  %i.ak = load i32, ptr %i.a, align 4, !range !55, !noalias !11855, !noundef !10
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #57
          to label %.body unwind label %bb.t

.loopexit:                                        ; preds = %bb.g, %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit

.loopexit.split-lp:                               ; preds = %.invoke, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit

bb.h:                                             ; preds = %.noexc
  %.sroa.08.0.copyload.i = load i64, ptr %i.ad, align 4, !noalias !11855 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11855
  %i.am = load i64, ptr %.sroa.34.0..sroa_idx, align 8, !alias.scope !11854, !noalias !11856, !noundef !10 ; 6 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %.sroa.34.0..sroa_idx, align 8, !alias.scope !11854, !noalias !11856
  %.sroa.746.20.extract.shift = lshr i64 %.sroa.08.0.copyload.i, 32 ; 2 uses
  %i.ao = and i64 %.sroa.08.0.copyload.i, 4294967295
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.u, label %bb.y

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.aq = invoke fastcc noundef i32 @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage4load12rebuild_node(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef align 8 dereferenceable(32) %i.b, i32 noundef %i.g)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.p, %bb.l, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit unwind label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.at = load i32, ptr %i.as, align 4, !noundef !10 ; 2 uses
  %.not26 = icmp eq i32 %i.at, 0
  br i1 %.not26, label %bb.l, label %bb.n, !prof !20

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #58
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.p, %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.au = add i32 %i.at, -1
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = load i64, ptr %i.af, align 8, !noundef !10 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.av
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load i32, ptr %i.az, align 4, !noundef !10 ; 2 uses
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit34 unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #58
          to label %bb.m unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit34: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEENtNtNtBJ_3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit34
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit34
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEENtNtNtBQ_3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit unwind label %bb.e

bb.s:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bd = icmp eq i64 %i.t, 0
  br i1 %i.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit37, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit
  %i.be = shl nuw nsw i64 %i.t, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.be, i64 noundef 4) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit37

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit37: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit, %bb.a
  %.sroa.3.0 = phi i32 [ 0, %bb.a ], [ %i.ba, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit ], [ %i.ba, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36 ]
  %.sroa.0.0 = phi i32 [ %i.g, %bb.a ], [ %i.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdEEEB1z_.exit ], [ %i.aq, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36 ]
  %i.bf = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bg = insertvalue { i32, i32 } %i.bf, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bg

bb.t:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdB1w_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.u:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !11857)
  %i.bi = add nuw nsw i64 %.sroa.746.20.extract.shift, 4294967295 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11858)
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = and i64 %i.bj, 67108863                 ; 6 uses
  %i.bl = and i64 %i.bi, 63                       ; 2 uses
  %i.bm = load i64, ptr %i.ah, align 8, !alias.scope !11859, !noundef !10 ; 2 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.ai, align 8, !alias.scope !11859, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !11859, !noundef !10 ; 2 uses
  %i.br = icmp eq i64 %i.bl, 0
  br i1 %i.br, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !11859, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i = load i64, ptr %i.aj, align 8, !alias.scope !11859, !noundef !10 ; 2 uses
  %i.bs = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.bt = lshr i64 %.val5.i.i, 3
  %i.bu = shl i64 %i.bs, 3
  %i.bv = and i64 %i.bu, 56
  %i.bw = and i64 %.val5.i.i, 7
  %i.bx = add nuw nsw i64 %i.bw, 63
  %i.by = add nuw nsw i64 %i.bx, %i.bt
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  %i.ca = lshr i64 %i.bz, 6                       ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bk, %i.ca
  br i1 %i.cb, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.cc = and i64 %i.bs, -8
  %i.cd = getelementptr i8, ptr %.val.i.i, i64 %i.cc
  %i.ce = sub i64 0, %i.bs
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bk
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !11859, !noundef !10
  %i.ci = sub nuw nsw i64 64, %i.bl
  %i.cj = shl nsw i64 -1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %i.cl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ck)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = add i32 %i.bq, %i.cm
  br label %bb.af

bb.y:                                             ; preds = %bb.h
  %i.co = add i64 %.sroa.08.0.copyload.i, 4294967295
  %i.cp = and i64 %i.co, 4294967295               ; 3 uses
  %i.cq = load i64, ptr %i.af, align 8, !noundef !10 ; 6 uses
  %i.cr = icmp ult i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %.invoke

.invoke:                                          ; preds = %bb.ag, %bb.af, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, %bb.z, %bb.y, %bb.w, %bb.u
  %i.cs = phi i64 [ %i.bk, %bb.w ], [ %i.cp, %bb.y ], [ %i.cz, %bb.z ], [ %i.am, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit ], [ %i.dj, %bb.af ], [ %i.bk, %bb.u ], [ %i.am, %bb.ag ]
  %i.ct = phi i64 [ %i.ca, %bb.w ], [ %i.cq, %bb.y ], [ %i.cq, %bb.z ], [ %i.df, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit ], [ %i.t, %bb.af ], [ %i.bm, %bb.u ], [ %i.dl, %bb.ag ]
  %i.cu = phi ptr [ @132, %bb.w ], [ @202, %bb.y ], [ @203, %bb.z ], [ @204, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit ], [ @205, %bb.af ], [ @131, %bb.u ], [ @206, %bb.ag ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #58
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.cv = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cp
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 4 uses
  %i.cy = add nuw nsw i64 %.sroa.746.20.extract.shift, 4294967295
  %i.cz = and i64 %i.cy, 4294967295               ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.cq
  br i1 %i.da, label %bb.aa, label %.invoke

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !noundef !10 ; 4 uses
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not17.i = icmp eq i32 %i.dc, 0
  %i.dd = icmp eq i32 %i.cx, %i.dc
  %or.cond.i = or i1 %.not17.i, %i.dd
  br i1 %or.cond.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.414.0.insert.ext.i = zext i32 %i.dc to i64
  %.sroa.414.0.insert.shift.i = shl nuw i64 %.sroa.414.0.insert.ext.i, 32
  %.sroa.013.0.insert.ext.i = zext i32 %i.cx to i64
  %.sroa.013.0.insert.insert.i = or disjoint i64 %.sroa.414.0.insert.shift.i, %.sroa.013.0.insert.ext.i
  %i.de = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %0, i64 %.sroa.013.0.insert.insert.i)
          to label %._RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit_crit_edge unwind label %.loopexit

._RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit_crit_edge: ; preds = %bb.ac
  %.pre = load i64, ptr %i.af, align 8
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit: ; preds = %._RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit_crit_edge, %bb.ab, %bb.aa
  %i.df = phi i64 [ %i.cq, %bb.ab ], [ %i.cq, %bb.aa ], [ %.pre, %._RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit_crit_edge ] ; 2 uses
  %.sroa.011.0.i = phi i32 [ %i.cx, %bb.ab ], [ %i.dc, %bb.aa ], [ %i.de, %._RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit_crit_edge ]
  %i.dg = icmp ult i64 %i.am, %i.df
  br i1 %i.dg, label %bb.ad, label %.invoke

bb.ad:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit
  %i.dh = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %.sink161 = phi ptr [ %i.dn, %bb.ah ], [ %i.dh, %bb.ad ]
  %.sink = phi i32 [ %i.dq, %bb.ah ], [ %.sroa.011.0.i, %bb.ad ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sink161, i64 %i.am
  store i32 %.sink, ptr %i.di, align 4
  br label %bb.g

bb.af:                                            ; preds = %bb.x, %bb.v
  %.sroa.0.0.i.i = phi i32 [ %i.cn, %bb.x ], [ %i.bq, %bb.v ]
  %i.dj = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.dk = icmp ugt i64 %i.t, %i.dj
  br i1 %i.dk, label %bb.ag, label %.invoke

bb.ag:                                            ; preds = %bb.af
  %i.dl = load i64, ptr %i.af, align 8, !noundef !10 ; 2 uses
  %i.dm = icmp ult i64 %i.am, %i.dl
  br i1 %i.dm, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !10
  br label %bb.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1d_13SourceOrderIdEEEEB1h_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtB7_31ApplyMaterializationEquivalenceTNtB7_4TypeB1R_EbKj1_E3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 8), (72, 92), (160, 161)) %0, i1 noundef zeroext %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 37, ptr %.sroa.42.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_4bool7TryBoolNtB7_4TypeINtNtCs4NRVxsYgnAr_4core6result6ResultNtCs2O29vuvTAEJ_14ty_python_core10TruthinessNtB1g_9BoolErrorEKj3_E3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) initializes((0, 40), (136, 156)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 37, ptr %.sroa.42.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_7typevar19VisitTypeVarDefaultNtB1g_15TypeVarInstanceINtNtCs4NRVxsYgnAr_4core6option6OptionNtB7_4TypeEKj6_E3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 24), (120, 136), (144, 148)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 37, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpTNtB7_4TypeNtNtNtB7_5infer11comparisons19NonIdentityOperatorB20_EINtNtCs4NRVxsYgnAr_4core6result6ResultB20_NtB2c_26UnsupportedComparisonErrorEKj1_E3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) initializes((0, 16), (88, 100), (240, 276)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(36) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 37, ptr %.sroa.42.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorTNtB7_4TypeB1e_B23_EINtNtCs4NRVxsYgnAr_4core6option6OptionB23_EKj1_E3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) initializes((0, 32), (104, 116)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 37, ptr %.sroa.42.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtB7_18FindLegacyTypeVarsNtB7_4TypeuKj3_E11begin_visitB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.619 = alloca [12 x i8], align 4          ; 2 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775807
  br i1 %i.g, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtBO_4TypeuEE6borrowBQ_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #58
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtBO_4TypeuEE6borrowBQ_.exit: ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.f, 1
  store i64 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = invoke fastcc noundef ptr @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_18CycleDetectorCacheNtB7_4TypeuE3getB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtBO_4TypeuEE6borrowBQ_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.e, align 8, !noundef !10
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.e, align 8
  br label %bb.z

bb.d:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtBO_4TypeuEE6borrowBQ_.exit
  %.not = icmp eq ptr %i.j, null
end_hunk_7
begin_hunk_8_@_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10PathBounds7compute:bb.a
  %i.gg = extractvalue { ptr, i64 } %i.gf, 0
  %i.gh = extractvalue { ptr, i64 } %i.gf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gg, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gh, ptr %i.gj, align 8
  store i64 2, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i83, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1I_11constraints23ConstraintBoundsBuilderEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd) #57
          to label %.thread155 unwind label %bb.cp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.cl
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1f_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i unwind label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1m_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd)
          to label %.thread155 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.cp:                                            ; preds = %bb.cm
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1m_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1k_11constraints23ConstraintBoundsBuilderINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit unwind label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1k_11constraints23ConstraintBoundsBuilderINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15PathAssignmentsEBH_(ptr noalias noundef align 8 dereferenceable(288) %i.bf)
          to label %bb.cq unwind label %.split

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1k_11constraints23ConstraintBoundsBuilderINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gq, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i92 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi) #57
          to label %common.resume unwind label %bb.cu

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i92: ; preds = %bb.cq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit93 unwind label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i92
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %common.resume unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

.thread167:                                       ; preds = %bb.dg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1v_.exit103, %._crit_edge
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread160

bb.cv:                                            ; preds = %bb.cj
  %i.gv = load ptr, ptr %.sroa.7.0..sroa_idx126, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.gw = load i64, ptr %i.ft, align 8, !noundef !10 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 576460752303423488
  call void @llvm.assume(i1 %i.gx)
  %.idx195 = shl nuw nsw i64 %i.gw, 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.gv, ptr %i.ba, align 8
  store ptr %i.gv, ptr %.sroa.48.0..sroa_idx, align 8
  store i64 %.sroa.0124.0.copyload125, ptr %.sroa.59.0..sroa_idx, align 8
  store ptr %i.gy, ptr %.sroa.610.0..sroa_idx, align 8
  %i.gz = icmp eq i64 %i.gw, 0
  br i1 %i.gz, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.dn, %bb.dp, %bb.du, %bb.dv, %bb.dw, %bb.dy, %bb.ea, %bb.ef, %bb.eg, %bb.dq, %bb.dr, %.noexc107, %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i, %bb.eb, %bb.ec, %.noexc112, %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.i.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread5.i.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i.i, %.noexc116, %bb.eh, %bb.ei, %.noexc120, %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i118
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.thread160 unwind label %bb.el

.lr.ph:                                           ; preds = %bb.cv, %bb.dz
  %i.ha = phi ptr [ %i.kn, %bb.dz ], [ %i.gv, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15408)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !15408
  %i.hc = load i32, ptr %i.ha, align 8, !range !21, !noalias !15408, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15409)
  %i.hd = load ptr, ptr %i.fu, align 8, !alias.scope !15409, !noalias !15410, !noundef !10 ; 7 uses
  %.not.i96 = icmp eq ptr %i.hd, null
  br i1 %.not.i96, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph
  %i.he = add i32 %i.hc, -1
  %i.hf = zext i32 %i.he to i64                   ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !15411, !noundef !10 ; 2 uses
  %i.hi = lshr i64 %i.hh, 3                       ; 3 uses
  %i.hj = icmp samesign ugt i64 %i.hi, %i.hf
  br i1 %i.hj, label %bb.cz, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i

bb.cy:                                            ; preds = %.lr.ph
  %i.hk = load i64, ptr %i.fv, align 8, !alias.scope !15409, !noalias !15410, !noundef !10 ; 2 uses
  %i.hl = add i32 %i.hc, -1
  %i.hm = zext i32 %i.hl to i64                   ; 3 uses
  %i.hn = icmp ugt i64 %i.hk, %i.hm
  br i1 %i.hn, label %bb.df, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i: ; preds = %bb.cx
  %i.ho = load i64, ptr %i.fv, align 8, !alias.scope !15409, !noalias !15410, !noundef !10 ; 2 uses
  %i.hp = sub nuw nsw i64 %i.hf, %i.hi            ; 3 uses
  %i.hq = icmp ugt i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.dd, label %.invoke

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !15412)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !15413)
  %i.hs = lshr i64 %i.hf, 6                       ; 6 uses
  %i.ht = and i64 %i.hf, 63                       ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !15414, !noalias !15411, !noundef !10 ; 2 uses
  %i.hw = icmp ult i64 %i.hs, %i.hv
  br i1 %i.hw, label %bb.da, label %.invoke

bb.da:                                            ; preds = %bb.cz
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !15414, !noalias !15411, !nonnull !10, !noundef !10
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hs
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !15415, !noundef !10 ; 2 uses
  %i.ib = icmp eq i64 %i.ht, 0
  br i1 %i.ib, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i, label %bb.db

.invoke:                                          ; preds = %bb.cy, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i, %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i, %bb.db, %bb.cz
  %i.ic = phi i64 [ %i.ja, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i ], [ %i.hs, %bb.cz ], [ %i.hs, %bb.db ], [ %i.hp, %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i ], [ %i.hm, %bb.cy ]
  %i.id = phi i64 [ %i.jc, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i ], [ %i.hv, %bb.cz ], [ %i.im, %bb.db ], [ %i.ho, %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i ], [ %i.hk, %bb.cy ]
  %i.ie = phi ptr [ @184, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i ], [ @131, %bb.cz ], [ @132, %bb.db ], [ @183, %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i ], [ @185, %bb.cy ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ic, i64 noundef %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ie) #58
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.db:                                            ; preds = %bb.da
  %.val.i.i.i = load ptr, ptr %i.hr, align 8, !alias.scope !15414, !noalias !15411, !nonnull !10, !noundef !10 ; 2 uses
  %i.if = ptrtoint ptr %.val.i.i.i to i64         ; 3 uses
  %i.ig = shl i64 %i.if, 3
  %i.ih = and i64 %i.ig, 56
  %i.ii = and i64 %i.hh, 7
  %i.ij = add nuw nsw i64 %i.ii, 63
  %i.ik = add nuw nsw i64 %i.ij, %i.hi
  %i.il = add nuw nsw i64 %i.ik, %i.ih
  %i.im = lshr i64 %i.il, 6                       ; 2 uses
  %i.in = icmp samesign ult i64 %i.hs, %i.im
  br i1 %i.in, label %bb.dc, label %.invoke

bb.dc:                                            ; preds = %bb.db
  %i.io = and i64 %i.if, -8
  %i.ip = getelementptr i8, ptr %.val.i.i.i, i64 %i.io
  %i.iq = sub i64 0, %i.if
  %i.ir = getelementptr i8, ptr %i.ip, i64 %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.hs
  %i.it = load i64, ptr %i.is, align 8, !noalias !15415, !noundef !10
  %i.iu = sub nuw nsw i64 64, %i.ht
  %i.iv = shl nsw i64 -1, %i.iu
  %i.iw = and i64 %i.it, %i.iv
  %i.ix = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iw)
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = add i32 %i.ia, %i.iy
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i: ; preds = %bb.dc, %bb.da
  %.sroa.0.0.i.i.i = phi i32 [ %i.iz, %bb.dc ], [ %i.ia, %bb.da ]
  %i.ja = zext i32 %.sroa.0.0.i.i.i to i64        ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !15411, !noundef !10 ; 2 uses
  %i.jd = icmp ugt i64 %i.jc, %i.ja
  br i1 %i.jd, label %bb.de, label %.invoke

bb.dd:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i
  %i.je = load ptr, ptr %i.fw, align 8, !alias.scope !15409, !noalias !15410, !nonnull !10, !noundef !10
  %i.jf = getelementptr inbounds nuw [40 x i8], ptr %i.je, i64 %i.hp
  br label %bb.dm

bb.de:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !15411, !nonnull !10, !noundef !10
  %i.ji = getelementptr inbounds nuw [40 x i8], ptr %i.jh, i64 %i.ja
  br label %bb.dm

bb.df:                                            ; preds = %bb.cy
  %i.jj = load ptr, ptr %i.fw, align 8, !alias.scope !15409, !noalias !15410, !nonnull !10, !noundef !10
  %i.jk = getelementptr inbounds nuw [40 x i8], ptr %i.jj, i64 %i.hm
  br label %bb.dm

._crit_edge:                                      ; preds = %bb.dz, %bb.cv
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1v_.exit103 unwind label %.thread167

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1v_.exit103: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBP_11constraints23ConstraintBoundsBuilderE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBR_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231)
          to label %bb.dg unwind label %.thread167

bb.dg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1v_.exit103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store ptr %1, ptr %i.gb, align 8
  store ptr %2, ptr %.sroa.437.0..sroa_idx, align 8
  store ptr %3, ptr %.sroa.538.0..sroa_idx, align 8
  %i.jl = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter5DrainNtNtBT_7typevar20BoundTypeVarInstanceNtBR_23ConstraintBoundsBuilderENCNvMso_BR_NtBR_10PathBounds7computes_0EEBV_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.dh unwind label %.thread167 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.jm = extractvalue { ptr, i64 } %i.jl, 0      ; 2 uses
  %i.jn = extractvalue { ptr, i64 } %i.jl, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.jo = load i64, ptr %i.fm, align 8, !alias.scope !15416, !noalias !15417, !noundef !10 ; 3 uses
  %i.jp = load i64, ptr %i.be, align 8, !range !22, !alias.scope !15416, !noalias !15417, !noundef !10
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.dl unwind label %bb.dj, !noalias !15417

bb.dj:                                            ; preds = %bb.di
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull align 8 %i.jm, i64 %i.jn) #57
          to label %.thread160 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.dl:                                            ; preds = %bb.di, %bb.dh
  %i.jt = load ptr, ptr %i.fl, align 8, !alias.scope !15416, !noalias !15417, !nonnull !10, !noundef !10
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.jo ; 2 uses
  store ptr %i.jm, ptr %i.ju, align 8, !noalias !15417
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i64 %i.jn, ptr %i.jv, align 8
  %i.jw = add i64 %i.jo, 1
  store i64 %i.jw, ptr %i.fm, align 8, !alias.scope !15416, !noalias !15417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.jx = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !15418, !noalias !15407, !nonnull !10, !noundef !10
  %i.jy = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !15418, !noalias !15407, !nonnull !10, !noundef !10 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jx
  br i1 %i.jz, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1c_.exit

bb.dm:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.sink.i = phi ptr [ %i.jf, %bb.dd ], [ %i.ji, %bb.de ], [ %i.jk, %bb.df ] ; 8 uses
  %i.ka = load <4 x i32>, ptr %.sink.i, align 4, !noalias !15409 ; 3 uses
  %.sroa.0128.0.copyload = load i32, ptr %.sink.i, align 4, !noalias !15409 ; 3 uses
  %.sroa.7129.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %.sroa.7129.0.copyload = load i32, ptr %.sroa.7129.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 9 uses
  %.sroa.8.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 20
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 4 uses
  %.sroa.9.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 24
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 4 uses
  %.sroa.10130.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 28
  %.sroa.10130.0.copyload = load i32, ptr %.sroa.10130.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 4 uses
  %.sroa.11131.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 32
  %.sroa.11131.0.copyload = load i32, ptr %.sroa.11131.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 4 uses
  %.sroa.12.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 36
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sink.i.sroa_idx, align 4, !noalias !15409 ; 4 uses
  %.not45 = icmp eq i32 %.sroa.0128.0.copyload, -1
  br i1 %.not45, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBR_11constraints23ConstraintBoundsBuilderINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE5entryBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd, i32 noundef %.sroa.11131.0.copyload, i32 noundef %.sroa.12.0.copyload)
          to label %bb.dp unwind label %.loopexit

bb.do:                                            ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit, %bb.dx, %bb.dm
  %.not46 = icmp eq i32 %.sroa.7129.0.copyload, -1
  br i1 %.not46, label %bb.dz, label %bb.dy

bb.dp:                                            ; preds = %bb.dn
  %i.kb = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5e9M2GLoJMY_8indexmap3map5entryINtB2_5EntryNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBT_11constraints23ConstraintBoundsBuilderE10or_defaultBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.az)
          to label %bb.dq unwind label %.loopexit ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store <4 x i32> %i.ka, ptr %i.ap, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !15419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !15421
  call void @llvm.experimental.noalias.scope.decl(metadata !15422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !15421
  %i.kc = invoke noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type26has_unspecialized_type_var(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc106 unwind label %.loopexit

.noexc106:                                        ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15423
  br i1 %i.kc, label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i, label %bb.dr

bb.dr:                                            ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15423
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type22bottom_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc107 unwind label %.loopexit

.noexc107:                                        ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15423
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type19top_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc108 unwind label %.loopexit

.noexc108:                                        ; preds = %.noexc107
  %i.kd = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !15424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15423
  br i1 %i.kd, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.noexc108
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  store i8 1, ptr %i.ke, align 8, !alias.scope !15425, !noalias !15426
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i

bb.dt:                                            ; preds = %.noexc108
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 113
  store i8 1, ptr %i.kf, align 1, !alias.scope !15425, !noalias !15426
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i

_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i: ; preds = %bb.dt, %bb.ds, %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15420
  %i.kg = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.kb, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ap)
          to label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit unwind label %.loopexit ; 0 uses

_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit: ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.kh = icmp ne i32 %.sroa.0128.0.copyload, 17
  call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp eq i32 %.sroa.0128.0.copyload, 29
  br i1 %i.ki, label %bb.du, label %bb.do

bb.du:                                            ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.kj = extractelement <4 x i32> %i.ka, i64 1
  %i.kk = extractelement <4 x i32> %i.ka, i64 2
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBR_11constraints23ConstraintBoundsBuilderINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE5entryBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd, i32 noundef %i.kj, i32 noundef %i.kk)
          to label %bb.dv unwind label %.loopexit

bb.dv:                                            ; preds = %bb.du
  %i.kl = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5e9M2GLoJMY_8indexmap3map5entryINtB2_5EntryNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBT_11constraints23ConstraintBoundsBuilderE10or_defaultBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ay)
          to label %bb.dw unwind label %.loopexit

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i32 %.sroa.11131.0.copyload, ptr %i.fx, align 4
  store i32 %.sroa.12.0.copyload, ptr %i.fy, align 4
  store i32 29, ptr %i.ax, align 4
  invoke fastcc void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_upper(ptr noalias noundef align 8 dereferenceable(120) %i.kl, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ax)
          to label %bb.dx unwind label %.loopexit

end_hunk_8
begin_hunk_9_@_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage23calculate_source_orders4walk:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  br i1 %.not.i, label %.split.us, label %tailrecurse

.split.us:                                        ; preds = %bb.a
  %i.i = add i32 %1, -1
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit.us, label %.split10.us

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit.us: ; preds = %.split.us, %tailrecurse.us
  %i.l = phi i64 [ %i.p, %tailrecurse.us ], [ %i.j, %.split.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16269)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %.sroa.0.0.i.us = load i64, ptr %i.m, align 4, !noalias !16269 ; 2 uses
  %.sroa.03.0.extract.trunc.us = trunc i64 %.sroa.0.0.i.us to i32 ; 2 uses
  %.sroa.4.0.extract.shift.us = lshr i64 %.sroa.0.0.i.us, 32 ; 2 uses
  %i.n = icmp eq i32 %.sroa.03.0.extract.trunc.us, 0
  br i1 %i.n, label %.split13.us.loopexit, label %tailrecurse.us

tailrecurse.us:                                   ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit.us
  tail call fastcc void @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage23calculate_source_orders4walk(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %0, i32 noundef %.sroa.03.0.extract.trunc.us, ptr noalias noundef align 8 dereferenceable(56) %2)
  %i.o = add nuw nsw i64 %.sroa.4.0.extract.shift.us, 4294967295
  %i.p = and i64 %i.o, 4294967295                 ; 3 uses
  %i.q = icmp ugt i64 %i.e, %i.p
  br i1 %i.q, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit.us, label %.split10.us

tailrecurse:                                      ; preds = %bb.a, %bb.e
  %.tr4 = phi i32 [ %.sroa.4.0.extract.trunc, %bb.e ], [ %1, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16269)
  %i.r = add i32 %.tr4, -1
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = load i64, ptr %i.c, align 8, !noalias !16269, !noundef !10 ; 2 uses
  %i.u = icmp ugt i64 %i.t, %i.s
  br i1 %i.u, label %bb.d, label %_RNvMs1B_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderId10from_usize.exit.i

_RNvMs1B_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderId10from_usize.exit.i: ; preds = %tailrecurse
  %i.v = sub nuw nsw i64 %i.s, %i.t               ; 3 uses
  %i.w = icmp ugt i64 %i.e, %i.v
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMs1B_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderId10from_usize.exit.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit

bb.c:                                             ; preds = %_RNvMs1B_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13SourceOrderId10from_usize.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #58, !noalias !16269
  unreachable

bb.d:                                             ; preds = %tailrecurse
  %i.y = load ptr, ptr %i.h, align 8, !noalias !16269, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit

.split10.us:                                      ; preds = %tailrecurse.us, %.split.us
  %.lcssa7.us = phi i64 [ %i.j, %.split.us ], [ %i.p, %tailrecurse.us ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.us, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #58, !noalias !16269
  unreachable

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.in.i = phi ptr [ %i.z, %bb.d ], [ %i.x, %bb.b ]
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 4, !noalias !16269 ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i64 %.sroa.0.0.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.03.0.extract.trunc, 0
  br i1 %i.aa, label %.split13.us, label %bb.e

.split13.us.loopexit:                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit.us
  %.sroa.4.0.extract.trunc.us = trunc nuw i64 %.sroa.4.0.extract.shift.us to i32
  br label %.split13.us

.split13.us:                                      ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit, %.split13.us.loopexit
  %.us-phi14 = phi i32 [ %.sroa.4.0.extract.trunc.us, %.split13.us.loopexit ], [ %.sroa.4.0.extract.trunc, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit ]
  %i.ab = tail call { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.us-phi14) ; 0 uses
  ret void

bb.e:                                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage17source_order_data.exit
  tail call fastcc void @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage23calculate_source_orders4walk(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %0, i32 noundef %.sroa.03.0.extract.trunc, ptr noalias noundef align 8 dereferenceable(56) %2)
  br label %tailrecurse
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage4load12rebuild_node(ptr noalias noundef nonnull align 8 dereferenceable(688) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %5, ptr %i.a, align 4
  %i.b = icmp ugt i32 %5, -3
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !16294, !noalias !16295, !noundef !10
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16296)
  call void @llvm.experimental.noalias.scope.decl(metadata !16297)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !16298, !noalias !16299, !noundef !10 ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !alias.scope !16298, !noalias !16299, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.af, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !16300 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val2.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !16301, !noalias !16302, !noundef !10
  %i.y = icmp eq i32 %5, %.val2.i.i.i
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit, label %bb.e, !prof !16

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %select.unfold, !prof !20

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.d

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !10
  br label %bb.l

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !16303)
  %i.ai = zext i32 %5 to i64                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !16304)
  %i.ak = lshr i64 %i.ai, 6                       ; 6 uses
  %i.al = and i64 %i.ai, 63                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !16305, !noundef !10 ; 2 uses
  %i.ao = icmp ult i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %select.unfold
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !16305, !nonnull !10, !noundef !10
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ak
  %i.as = load i32, ptr %i.ar, align 4, !noalias !16305, !noundef !10 ; 2 uses
  %i.at = icmp eq i64 %i.al, 0
  br i1 %i.at, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit, label %bb.i

bb.h:                                             ; preds = %select.unfold
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !16305
  unreachable

bb.i:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !16305, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val5.i.i = load i64, ptr %i.au, align 8, !alias.scope !16305, !noundef !10 ; 2 uses
  %i.av = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.aw = lshr i64 %.val5.i.i, 3
  %i.ax = shl i64 %i.av, 3
  %i.ay = and i64 %i.ax, 56
  %i.az = and i64 %.val5.i.i, 7
  %i.ba = add nuw nsw i64 %i.az, 63
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  %i.bd = lshr i64 %i.bc, 6                       ; 2 uses
  %i.be = icmp samesign ult i64 %i.ak, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = and i64 %i.av, -8
  %i.bg = getelementptr i8, ptr %.val.i.i, i64 %i.bf
  %i.bh = sub i64 0, %i.av
  %i.bi = getelementptr i8, ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ak
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !16305, !noundef !10
  %i.bl = sub nuw nsw i64 64, %i.al
  %i.bm = shl nsw i64 -1, %i.bl
  %i.bn = and i64 %i.bk, %i.bm
  %i.bo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bn)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add i32 %i.as, %i.bp
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !16305
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit: ; preds = %bb.g, %bb.j
  %.sroa.0.0.i.i = phi i32 [ %i.bq, %bb.j ], [ %i.as, %bb.g ]
  %i.br = zext i32 %.sroa.0.0.i.i to i64          ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !10 ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, %i.br
  br i1 %i.bu, label %bb.m, label %bb.s

bb.l:                                             ; preds = %bb.a, %bb.t, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit
  %.sroa.0.0 = phi i32 [ %i.dw, %bb.t ], [ %i.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit ], [ %5, %bb.a ]
  ret i32 %.sroa.0.0

bb.m:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.br ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !range !21, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !10
  %i.cf = call fastcc noundef i32 @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage4load12rebuild_node(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(32) %4, i32 noundef %i.ca)
  %i.cg = call fastcc noundef i32 @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage4load12rebuild_node(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(32) %4, i32 noundef %i.cc)
  %i.ch = call fastcc noundef i32 @_RNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_20ConstraintSetStorage4load12rebuild_node(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(32) %4, i32 noundef %i.ce)
  call void @llvm.experimental.noalias.scope.decl(metadata !16306)
  %i.ci = add i32 %i.by, -1
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !16307)
  %i.cl = lshr i64 %i.cj, 6                       ; 6 uses
  %i.cm = and i64 %i.cj, 63                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !16308, !noundef !10 ; 2 uses
  %i.cp = icmp ult i64 %i.cl, %i.co
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !16308, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cl
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !16308, !noundef !10 ; 2 uses
  %i.cu = icmp eq i64 %i.cm, 0
  br i1 %i.cu, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #58, !noalias !16308
  unreachable

bb.p:                                             ; preds = %bb.n
  %.val.i.i10 = load ptr, ptr %i.ck, align 8, !alias.scope !16308, !nonnull !10, !noundef !10 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val5.i.i11 = load i64, ptr %i.cv, align 8, !alias.scope !16308, !noundef !10 ; 2 uses
  %i.cw = ptrtoint ptr %.val.i.i10 to i64         ; 3 uses
  %i.cx = lshr i64 %.val5.i.i11, 3
  %i.cy = shl i64 %i.cw, 3
  %i.cz = and i64 %i.cy, 56
  %i.da = and i64 %.val5.i.i11, 7
  %i.db = add nuw nsw i64 %i.da, 63
  %i.dc = add nuw nsw i64 %i.db, %i.cx
  %i.dd = add nuw nsw i64 %i.dc, %i.cz
  %i.de = lshr i64 %i.dd, 6                       ; 2 uses
  %i.df = icmp samesign ult i64 %i.cl, %i.de
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = and i64 %i.cw, -8
  %i.dh = getelementptr i8, ptr %.val.i.i10, i64 %i.dg
  %i.di = sub i64 0, %i.cw
  %i.dj = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cl
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !16308, !noundef !10
  %i.dm = sub nuw nsw i64 64, %i.cm
  %i.dn = shl nsw i64 -1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %i.dp = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.do)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = add i32 %i.ct, %i.dq
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #58, !noalias !16308
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit: ; preds = %bb.n, %bb.q
  %.sroa.0.0.i.i12 = phi i32 [ %i.dr, %bb.q ], [ %i.ct, %bb.n ]
  %i.ds = zext i32 %.sroa.0.0.i.i12 to i64        ; 3 uses
  %i.dt = icmp samesign ugt i64 %3, %i.ds
  br i1 %i.dt, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner19retained_node_index.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #58
  unreachable

bb.t:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ds
  %i.dv = load i32, ptr %i.du, align 4, !noundef !10
  %i.dw = call fastcc noundef i32 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId13ite_uncertain(i32 noundef %i.dv, ptr noalias noundef align 8 dereferenceable(688) %0, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ch) ; 2 uses
  %i.dx = call { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdBN_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5, i32 noundef %i.dw) ; 0 uses
  br label %bb.l

bb.u:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_6NodeId13display_graph11format_node(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, i32 noundef %4, ptr noundef nonnull %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, ptr noundef nonnull align 8 %7, ptr noalias noundef nonnull align 8 dereferenceable(24) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 4                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  store ptr %5, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %6, ptr %i.p, align 8
  switch i32 %4, label %bb.b [
    i32 -1, label %bb.c
    i32 -2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %7, align 8, !noundef !10
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f, !prof !16

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %8, align 8, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !align !11, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !10, !nonnull !10
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 6)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %8, align 8, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !10, !align !11, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !10, !nonnull !10
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @254, i64 noundef 5)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %7, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ae, i32 noundef %4)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #58
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { i64, i1 } %i.af, 0
  %i.ah = extractvalue { i64, i1 } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.ag, ptr %i.n, align 8
  %i.ai = load i64, ptr %7, align 8, !noundef !10
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %7, align 8
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.ak = load ptr, ptr %8, align 8, !nonnull !10, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !10, !align !11, !noundef !10
  %i.an = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull @259, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage18interior_node_data(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ao = load i32, ptr %i.l, align 4, !range !21, !noundef !10
  store i32 0, ptr %i.k, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %3, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.au, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs_NvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBa_20ConstraintAssignment7displayNtB4_27DisplayConstraintAssignmentNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.av = load ptr, ptr %8, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  %i.ay = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noundef nonnull @260, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.ay, label %bb.s, label %bb.k

bb.j:                                             ; preds = %bb.s, %bb.h
  %.sroa.0.1 = phi i1 [ true, %bb.s ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.466.0..sroa_idx, align 8
  %i.az = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noundef nonnull @261, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.az, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.482.0..sroa_idx, align 8
  store ptr @262, ptr %i.h, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.bc, align 8
  %i.bd = call fastcc noundef zeroext i1 @_RNvNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB7_6NodeId13display_graph11format_node(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, i32 noundef %i.bb, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @263, ptr noundef nonnull align 8 %7, ptr noalias noundef align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.bd, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.o, ptr %i.f, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.486.0..sroa_idx, align 8
  %i.be = load ptr, ptr %8, align 8, !nonnull !10, !noundef !10
  %i.bf = load ptr, ptr %i.aw, align 8, !nonnull !10, !align !11, !noundef !10
  %i.bg = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf, ptr noundef nonnull @264, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bg, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.d, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.4102.0..sroa_idx, align 8
  store ptr @262, ptr %i.e, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_9
begin_hunk_10_@_RNvXNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId7displayNtB2_11DisplayNodeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #58
  unreachable

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15SatisfiedClauseEEB1d_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15SatisfiedClauseEBH_.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15SatisfiedClauseEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16788
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !10, !align !12, !noundef !10 ; 10 uses
  %i.ax = load ptr, ptr %i.an, align 8, !nonnull !10, !align !11, !noundef !10 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16791)
  call void @llvm.experimental.noalias.scope.decl(metadata !16792)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !16791, !noalias !16793, !nonnull !10, !noundef !10 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !16791, !noalias !16793, !noundef !10 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.bb, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %.preheader.split.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 680 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 16 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 16 uses
  %.sroa.5.0..sroa_idx2.i.i37.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.5.0..sroa_idx2.i4.i45.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i59.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.5.0..sroa_idx2.i4.i67.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.5.0..sroa_idx2.i4.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i15.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.0..sroa_idx2.i4.i23.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  br label %bb.o

.preheader.i:                                     ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i
  %i.bp = icmp ult i64 %i.bb, 384307168202282326
  call void @llvm.assume(i1 %i.bp)
  br label %.lr.ph87.i.i.preheader

bb.o:                                             ; preds = %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i, %.lr.ph.i
  %.sroa.0.0412.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bq, %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0412.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16794)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0412.i, i64 16 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.br, align 8, !alias.scope !16794, !noalias !16795 ; 3 uses
  %i.bs = icmp ult i64 %.promoted.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bs)
  %.not.i.i = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i.i, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i, label %.lr.ph62.lr.ph.i.i

.lr.ph62.lr.ph.i.i:                               ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0412.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !16794, !noalias !16795, !nonnull !10 ; 4 uses
  br label %.lr.ph62.i.i

.loopexit.i.i:                                    ; preds = %bb.p, %bb.dn
  %.promoted5865.i.i = phi i64 [ %.promoted5866.i.i, %bb.dn ], [ %.promoted5868.i.i, %bb.p ] ; 3 uses
  %i.bv = icmp ult i64 %.promoted5865.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ult i64 %i.bx, %.promoted5865.i.i
  br i1 %i.bw, label %.lr.ph62.i.i, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i

.lr.ph62.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph62.lr.ph.i.i
  %.sroa.01.0.ph76.i.i = phi i64 [ 0, %.lr.ph62.lr.ph.i.i ], [ %i.bx, %.loopexit.i.i ] ; 5 uses
  %.promoted586975.i.i = phi i64 [ %.promoted.i.i, %.lr.ph62.lr.ph.i.i ], [ %.promoted5865.i.i, %.loopexit.i.i ]
  %i.bx = add nuw nsw i64 %.sroa.01.0.ph76.i.i, 1 ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.01.0.ph76.i.i ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, %.lr.ph62.i.i
  %.promoted5868.i.i = phi i64 [ %.promoted586975.i.i, %.lr.ph62.i.i ], [ %i.ll, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i ] ; 4 uses
  %i.ca = icmp samesign ult i64 %i.bx, %.promoted5868.i.i
  br i1 %i.ca, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.dn
  %.promoted5867.i.i = phi i64 [ %.promoted5866.i.i, %bb.dn ], [ %.promoted5868.i.i, %bb.p ]
  %.sroa.07.052.i.i = phi i64 [ %.sroa.07.1.i.i, %bb.dn ], [ %i.bx, %bb.p ] ; 3 uses
  %i.cb = phi i64 [ %i.vb, %bb.dn ], [ %.promoted5868.i.i, %bb.p ] ; 6 uses
  %i.cc = icmp ult i64 %.sroa.01.0.ph76.i.i, %i.cb
  br i1 %i.cc, label %bb.q, label %.invoke

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.07.052.i.i ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !16796, !noundef !10 ; 7 uses
  %i.cg = load i32, ptr %i.cd, align 4, !range !25, !noalias !16796, !noundef !10
  %i.ch = load i32, ptr %i.by, align 4, !range !25, !noalias !16796, !noundef !10 ; 4 uses
  %i.ci = load i32, ptr %i.bz, align 4, !noalias !16796, !noundef !10 ; 7 uses
  switch i32 %i.cg, label %default.unreachable785 [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %.split21.i.i
  ]

default.unreachable.i.i:                          ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i
  unreachable

bb.r:                                             ; preds = %bb.q
  switch i32 %i.ch, label %default.unreachable785 [
    i32 0, label %.split.i.i
    i32 1, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.i.i
    i32 2, label %bb.ar
  ]

bb.s:                                             ; preds = %bb.q
  switch i32 %i.ch, label %default.unreachable785 [
    i32 0, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.i.i
    i32 1, label %.split22.i.i
    i32 2, label %bb.ar
  ]

.split21.i.i:                                     ; preds = %bb.q
  %i.cj = icmp eq i32 %i.ch, 2
  %i.ck = icmp eq i32 %i.cf, %i.ci
  %spec.select.i.i.i = and i1 %i.cj, %i.ck
  br i1 %spec.select.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4161.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6163.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4155.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6157.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !16797)
  %i.cl = load ptr, ptr %i.be, align 8, !alias.scope !16798, !noalias !16799, !noundef !10 ; 13 uses
  %.not.i117.i = icmp eq ptr %i.cl, null          ; 2 uses
  br i1 %.not.i117.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split.i.i
  %i.cm = add i32 %i.cf, -1
  %i.cn = zext i32 %i.cm to i64                   ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cp = load i64, ptr %i.co, align 8, !noalias !16800, !noundef !10 ; 2 uses
  %i.cq = lshr i64 %i.cp, 3                       ; 3 uses
  %i.cr = icmp samesign ugt i64 %i.cq, %i.cn
  br i1 %i.cr, label %bb.v, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i118.i

bb.u:                                             ; preds = %.split.i.i
  %i.cs = load i64, ptr %i.bf, align 8, !alias.scope !16798, !noalias !16799, !noundef !10 ; 2 uses
  %i.ct = add i32 %i.cf, -1
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = icmp ugt i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.ab, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i118.i: ; preds = %bb.t
  %i.cw = load i64, ptr %i.bf, align 8, !alias.scope !16798, !noalias !16799, !noundef !10 ; 2 uses
  %i.cx = sub nuw nsw i64 %i.cn, %i.cq            ; 3 uses
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.z, label %.invoke

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !16801), !noalias !16802
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16803), !noalias !16802
  %i.da = lshr i64 %i.cn, 6                       ; 6 uses
  %i.db = and i64 %i.cn, 63                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !16804, !noalias !16800, !noundef !10 ; 2 uses
  %i.de = icmp ult i64 %i.da, %i.dd
  br i1 %i.de, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !16804, !noalias !16800, !nonnull !10, !noundef !10
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.da
  %i.di = load i32, ptr %i.dh, align 4, !noalias !16805, !noundef !10 ; 2 uses
  %i.dj = icmp eq i64 %i.db, 0
  br i1 %i.dj, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i121.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i120.i = load ptr, ptr %i.cz, align 8, !alias.scope !16804, !noalias !16800, !nonnull !10, !noundef !10 ; 2 uses
  %i.dk = ptrtoint ptr %.val.i.i.i120.i to i64    ; 3 uses
  %i.dl = shl i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 56
  %i.dn = and i64 %i.cp, 7
  %i.do = add nuw nsw i64 %i.dn, 63
  %i.dp = add nuw nsw i64 %i.do, %i.cq
  %i.dq = add nuw nsw i64 %i.dp, %i.dm
  %i.dr = lshr i64 %i.dq, 6                       ; 2 uses
  %i.ds = icmp samesign ult i64 %i.da, %i.dr
  br i1 %i.ds, label %bb.y, label %.invoke

bb.y:                                             ; preds = %bb.x
  %i.dt = and i64 %i.dk, -8
  %i.du = getelementptr i8, ptr %.val.i.i.i120.i, i64 %i.dt
  %i.dv = sub i64 0, %i.dk
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.da
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !16805, !noundef !10
  %i.dz = sub nuw nsw i64 64, %i.db
  %i.ea = shl nsw i64 -1, %i.dz
  %i.eb = and i64 %i.dy, %i.ea
  %i.ec = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eb)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = add i32 %i.di, %i.ed
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i121.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i121.i: ; preds = %bb.y, %bb.w
  %.sroa.0.0.i.i.i122.i = phi i32 [ %i.ee, %bb.y ], [ %i.di, %bb.w ]
  %i.ef = zext i32 %.sroa.0.0.i.i.i122.i to i64   ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !16800, !noundef !10 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, %i.ef
  br i1 %i.ei, label %bb.aa, label %.invoke

bb.z:                                             ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i118.i
  %i.ej = load ptr, ptr %i.bg, align 8, !alias.scope !16798, !noalias !16799, !nonnull !10, !noundef !10
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.ej, i64 %i.cx
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i

bb.aa:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i121.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !noalias !16800, !nonnull !10, !noundef !10
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.em, i64 %i.ef
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i

bb.ab:                                            ; preds = %bb.u
  %i.eo = load ptr, ptr %i.bg, align 8, !alias.scope !16798, !noalias !16799, !nonnull !10, !noundef !10
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %i.cu
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink.i119.i = phi ptr [ %i.ek, %bb.z ], [ %i.en, %bb.aa ], [ %i.ep, %bb.ab ] ; 6 uses
  %.sroa.0160.0.copyload.i = load i32, ptr %.sink.i119.i, align 4, !noalias !16806 ; 2 uses
  %.sroa.4161.0..sink.i119.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i119.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4161.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4161.0..sink.i119.sroa_idx.i, i64 12, i1 false), !noalias !16806
  %.sroa.5162.0..sink.i119.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i119.i, i64 16
  %.sroa.5162.0.copyload.i = load i32, ptr %.sroa.5162.0..sink.i119.sroa_idx.i, align 4, !noalias !16806 ; 2 uses
  %.sroa.6163.0..sink.i119.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i119.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6163.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6163.0..sink.i119.sroa_idx.i, i64 12, i1 false), !noalias !16806
  %.sroa.7164.0..sink.i119.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i119.i, i64 32
  %.sroa.7164.0.copyload.i = load i32, ptr %.sroa.7164.0..sink.i119.sroa_idx.i, align 4, !noalias !16806
  %.sroa.8165.0..sink.i119.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i119.i, i64 36
  %.sroa.8165.0.copyload.i = load i32, ptr %.sroa.8165.0..sink.i119.sroa_idx.i, align 4, !noalias !16806
  call void @llvm.experimental.noalias.scope.decl(metadata !16807)
  br i1 %.not.i117.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i
  %i.eq = add i32 %i.ci, -1
  %i.er = zext i32 %i.eq to i64                   ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.et = load i64, ptr %i.es, align 8, !noalias !16808, !noundef !10 ; 2 uses
  %i.eu = lshr i64 %i.et, 3                       ; 3 uses
  %i.ev = icmp samesign ugt i64 %i.eu, %i.er
  br i1 %i.ev, label %bb.ae, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i111.i

bb.ad:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit123.i
  %i.ew = load i64, ptr %i.bf, align 8, !alias.scope !16809, !noalias !16810, !noundef !10 ; 2 uses
  %i.ex = add i32 %i.ci, -1
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = icmp ugt i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.ak, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i111.i: ; preds = %bb.ac
  %i.fa = load i64, ptr %i.bf, align 8, !alias.scope !16809, !noalias !16810, !noundef !10 ; 2 uses
  %i.fb = sub nuw nsw i64 %i.er, %i.eu            ; 3 uses
  %i.fc = icmp ugt i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ai, label %.invoke

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !16811), !noalias !16802
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16812), !noalias !16802
  %i.fe = lshr i64 %i.er, 6                       ; 6 uses
  %i.ff = and i64 %i.er, 63                       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !16813, !noalias !16808, !noundef !10 ; 2 uses
  %i.fi = icmp ult i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.af, label %.invoke

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !16813, !noalias !16808, !nonnull !10, !noundef !10
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fe
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !16814, !noundef !10 ; 2 uses
  %i.fn = icmp eq i64 %i.ff, 0
  br i1 %i.fn, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i114.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i113.i = load ptr, ptr %i.fd, align 8, !alias.scope !16813, !noalias !16808, !nonnull !10, !noundef !10 ; 2 uses
  %i.fo = ptrtoint ptr %.val.i.i.i113.i to i64    ; 3 uses
  %i.fp = shl i64 %i.fo, 3
  %i.fq = and i64 %i.fp, 56
  %i.fr = and i64 %i.et, 7
  %i.fs = add nuw nsw i64 %i.fr, 63
  %i.ft = add nuw nsw i64 %i.fs, %i.eu
  %i.fu = add nuw nsw i64 %i.ft, %i.fq
  %i.fv = lshr i64 %i.fu, 6                       ; 2 uses
  %i.fw = icmp samesign ult i64 %i.fe, %i.fv
  br i1 %i.fw, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.fx = and i64 %i.fo, -8
  %i.fy = getelementptr i8, ptr %.val.i.i.i113.i, i64 %i.fx
  %i.fz = sub i64 0, %i.fo
  %i.ga = getelementptr i8, ptr %i.fy, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fe
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !16814, !noundef !10
  %i.gd = sub nuw nsw i64 64, %i.ff
  %i.ge = shl nsw i64 -1, %i.gd
  %i.gf = and i64 %i.gc, %i.ge
  %i.gg = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gf)
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = add i32 %i.fm, %i.gh
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i114.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i114.i: ; preds = %bb.ah, %bb.af
  %.sroa.0.0.i.i.i115.i = phi i32 [ %i.gi, %bb.ah ], [ %i.fm, %bb.af ]
  %i.gj = zext i32 %.sroa.0.0.i.i.i115.i to i64   ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !16808, !noundef !10 ; 2 uses
  %i.gm = icmp ugt i64 %i.gl, %i.gj
  br i1 %i.gm, label %bb.aj, label %.invoke

bb.ai:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i111.i
  %i.gn = load ptr, ptr %i.bg, align 8, !alias.scope !16809, !noalias !16810, !nonnull !10, !noundef !10
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %i.fb
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit116.i

bb.aj:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i114.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !16808, !nonnull !10, !noundef !10
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.gj
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit116.i

bb.ak:                                            ; preds = %bb.ad
  %i.gs = load ptr, ptr %i.bg, align 8, !alias.scope !16809, !noalias !16810, !nonnull !10, !noundef !10
  %i.gt = getelementptr inbounds nuw [40 x i8], ptr %i.gs, i64 %i.ey
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit116.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit116.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sink.i112.i = phi ptr [ %i.go, %bb.ai ], [ %i.gr, %bb.aj ], [ %i.gt, %bb.ak ] ; 6 uses
  %.sroa.0154.0.copyload.i = load i32, ptr %.sink.i112.i, align 4, !noalias !16815 ; 2 uses
  %.sroa.4155.0..sink.i112.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i112.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4155.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4155.0..sink.i112.sroa_idx.i, i64 12, i1 false), !noalias !16815
  %.sroa.5156.0..sink.i112.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i112.i, i64 16
  %.sroa.5156.0.copyload.i = load i32, ptr %.sroa.5156.0..sink.i112.sroa_idx.i, align 4, !noalias !16815 ; 2 uses
  %.sroa.6157.0..sink.i112.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i112.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6157.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6157.0..sink.i112.sroa_idx.i, i64 12, i1 false), !noalias !16815
  %.sroa.7158.0..sink.i112.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i112.i, i64 32
  %.sroa.7158.0.copyload.i = load i32, ptr %.sroa.7158.0..sink.i112.sroa_idx.i, align 4, !noalias !16815
  %.sroa.8159.0..sink.i112.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i112.i, i64 36
  %.sroa.8159.0.copyload.i = load i32, ptr %.sroa.8159.0..sink.i112.sroa_idx.i, align 4, !noalias !16815
  %i.gu = invoke noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance18is_same_typevar_as(i32 noundef %.sroa.7164.0.copyload.i, i32 noundef %.sroa.8165.0.copyload.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, i32 noundef %.sroa.7158.0.copyload.i, i32 noundef %.sroa.8159.0.copyload.i)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit116.i
  br i1 %i.gu, label %bb.al, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.thread.i

bb.al:                                            ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16816
  store i32 6, ptr %i.i, align 4, !alias.scope !16817, !noalias !16818
  %.not.i.i57.i = icmp eq i32 %.sroa.0154.0.copyload.i, -1
  br i1 %.not.i.i57.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i60.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.sroa.0154.0.copyload.i, ptr %i.i, align 4, !alias.scope !16817, !noalias !16818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i.i59.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4155.i, i64 12, i1 false), !noalias !16816
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i60.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i60.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16816
  store i32 6, ptr %i.h, align 4, !alias.scope !16819, !noalias !16820
  %.not.i2.i65.i = icmp eq i32 %.sroa.0160.0.copyload.i, -1
  br i1 %.not.i2.i65.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i68.i, label %bb.an

bb.an:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i60.i
  store i32 %.sroa.0160.0.copyload.i, ptr %i.h, align 4, !alias.scope !16819, !noalias !16820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i4.i67.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4161.i, i64 12, i1 false), !noalias !16816
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i68.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i68.i: ; preds = %bb.an, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i60.i
  %i.gv = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16816
  br i1 %i.gv, label %bb.ao, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.thread.i

bb.ao:                                            ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16816
  store i32 5, ptr %i.bj, align 4, !alias.scope !16821, !noalias !16822
  store i32 18, ptr %i.g, align 4, !alias.scope !16821, !noalias !16822
  %.not.i7.i69.i = icmp eq i32 %.sroa.5162.0.copyload.i, -1
  br i1 %.not.i7.i69.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i70.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.5162.0.copyload.i, ptr %i.g, align 4, !alias.scope !16821, !noalias !16822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6163.i, i64 12, i1 false), !noalias !16816
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i70.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i70.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16816
  store i32 5, ptr %i.bk, align 4, !alias.scope !16823, !noalias !16824
  store i32 18, ptr %i.f, align 4, !alias.scope !16823, !noalias !16824
  %.not.i10.i71.i = icmp eq i32 %.sroa.5156.0.copyload.i, -1
  br i1 %.not.i10.i71.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i70.i
  store i32 %.sroa.5156.0.copyload.i, ptr %i.f, align 4, !alias.scope !16823, !noalias !16824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6157.i, i64 12, i1 false), !noalias !16816
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.thread.i: ; preds = %.noexc18, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4161.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6163.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4155.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6157.i)
  br label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.i: ; preds = %bb.aq, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i70.i
  %i.gw = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.f)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16816
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4161.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6163.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4155.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6157.i)
  br i1 %i.gw, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

bb.ar:                                            ; preds = %bb.s, %bb.r
  %i.gx = icmp eq i32 %i.ch, 2
  call void @llvm.assume(i1 %i.gx)
  br label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

.split22.i.i:                                     ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4149.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6151.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4143.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6145.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !16825)
  %i.gy = load ptr, ptr %i.be, align 8, !alias.scope !16826, !noalias !16827, !noundef !10 ; 13 uses
  %.not.i103.i = icmp eq ptr %i.gy, null          ; 2 uses
  br i1 %.not.i103.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.split22.i.i
  %i.gz = add i32 %i.ci, -1
  %i.ha = zext i32 %i.gz to i64                   ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !16828, !noundef !10 ; 2 uses
  %i.hd = lshr i64 %i.hc, 3                       ; 3 uses
  %i.he = icmp samesign ugt i64 %i.hd, %i.ha
  br i1 %i.he, label %bb.au, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i104.i

bb.at:                                            ; preds = %.split22.i.i
  %i.hf = load i64, ptr %i.bf, align 8, !alias.scope !16826, !noalias !16827, !noundef !10 ; 2 uses
  %i.hg = add i32 %i.ci, -1
  %i.hh = zext i32 %i.hg to i64                   ; 3 uses
  %i.hi = icmp ugt i64 %i.hf, %i.hh
  br i1 %i.hi, label %bb.ba, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i104.i: ; preds = %bb.as
  %i.hj = load i64, ptr %i.bf, align 8, !alias.scope !16826, !noalias !16827, !noundef !10 ; 2 uses
  %i.hk = sub nuw nsw i64 %i.ha, %i.hd            ; 3 uses
  %i.hl = icmp ugt i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.ay, label %.invoke

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !16829), !noalias !16830
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16831), !noalias !16830
  %i.hn = lshr i64 %i.ha, 6                       ; 6 uses
  %i.ho = and i64 %i.ha, 63                       ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !16832, !noalias !16828, !noundef !10 ; 2 uses
  %i.hr = icmp ult i64 %i.hn, %i.hq
  br i1 %i.hr, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !16832, !noalias !16828, !nonnull !10, !noundef !10
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hn
  %i.hv = load i32, ptr %i.hu, align 4, !noalias !16833, !noundef !10 ; 2 uses
  %i.hw = icmp eq i64 %i.ho, 0
  br i1 %i.hw, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i107.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val.i.i.i106.i = load ptr, ptr %i.hm, align 8, !alias.scope !16832, !noalias !16828, !nonnull !10, !noundef !10 ; 2 uses
  %i.hx = ptrtoint ptr %.val.i.i.i106.i to i64    ; 3 uses
  %i.hy = shl i64 %i.hx, 3
  %i.hz = and i64 %i.hy, 56
  %i.ia = and i64 %i.hc, 7
  %i.ib = add nuw nsw i64 %i.ia, 63
  %i.ic = add nuw nsw i64 %i.ib, %i.hd
  %i.id = add nuw nsw i64 %i.ic, %i.hz
  %i.ie = lshr i64 %i.id, 6                       ; 2 uses
  %i.if = icmp samesign ult i64 %i.hn, %i.ie
  br i1 %i.if, label %bb.ax, label %.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.ig = and i64 %i.hx, -8
  %i.ih = getelementptr i8, ptr %.val.i.i.i106.i, i64 %i.ig
  %i.ii = sub i64 0, %i.hx
  %i.ij = getelementptr i8, ptr %i.ih, i64 %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.hn
  %i.il = load i64, ptr %i.ik, align 8, !noalias !16833, !noundef !10
  %i.im = sub nuw nsw i64 64, %i.ho
  %i.in = shl nsw i64 -1, %i.im
  %i.io = and i64 %i.il, %i.in
  %i.ip = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.io)
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = add i32 %i.hv, %i.iq
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i107.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i107.i: ; preds = %bb.ax, %bb.av
  %.sroa.0.0.i.i.i108.i = phi i32 [ %i.ir, %bb.ax ], [ %i.hv, %bb.av ]
  %i.is = zext i32 %.sroa.0.0.i.i.i108.i to i64   ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.iu = load i64, ptr %i.it, align 8, !noalias !16828, !noundef !10 ; 2 uses
  %i.iv = icmp ugt i64 %i.iu, %i.is
  br i1 %i.iv, label %bb.az, label %.invoke

bb.ay:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i104.i
  %i.iw = load ptr, ptr %i.bg, align 8, !alias.scope !16826, !noalias !16827, !nonnull !10, !noundef !10
  %i.ix = getelementptr inbounds nuw [40 x i8], ptr %i.iw, i64 %i.hk
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i

bb.az:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i107.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !16828, !nonnull !10, !noundef !10
  %i.ja = getelementptr inbounds nuw [40 x i8], ptr %i.iz, i64 %i.is
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i

bb.ba:                                            ; preds = %bb.at
  %i.jb = load ptr, ptr %i.bg, align 8, !alias.scope !16826, !noalias !16827, !nonnull !10, !noundef !10
  %i.jc = getelementptr inbounds nuw [40 x i8], ptr %i.jb, i64 %i.hh
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %.sink.i105.i = phi ptr [ %i.ix, %bb.ay ], [ %i.ja, %bb.az ], [ %i.jc, %bb.ba ] ; 6 uses
  %.sroa.0148.0.copyload.i = load i32, ptr %.sink.i105.i, align 4, !noalias !16834 ; 2 uses
  %.sroa.4149.0..sink.i105.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i105.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4149.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4149.0..sink.i105.sroa_idx.i, i64 12, i1 false), !noalias !16834
  %.sroa.5150.0..sink.i105.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i105.i, i64 16
  %.sroa.5150.0.copyload.i = load i32, ptr %.sroa.5150.0..sink.i105.sroa_idx.i, align 4, !noalias !16834 ; 2 uses
  %.sroa.6151.0..sink.i105.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i105.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.0..sink.i105.sroa_idx.i, i64 12, i1 false), !noalias !16834
  %.sroa.7152.0..sink.i105.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i105.i, i64 32
  %.sroa.7152.0.copyload.i = load i32, ptr %.sroa.7152.0..sink.i105.sroa_idx.i, align 4, !noalias !16834
  %.sroa.8153.0..sink.i105.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i105.i, i64 36
  %.sroa.8153.0.copyload.i = load i32, ptr %.sroa.8153.0..sink.i105.sroa_idx.i, align 4, !noalias !16834
  call void @llvm.experimental.noalias.scope.decl(metadata !16835)
  br i1 %.not.i103.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i
  %i.jd = add i32 %i.cf, -1
  %i.je = zext i32 %i.jd to i64                   ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !16836, !noundef !10 ; 2 uses
  %i.jh = lshr i64 %i.jg, 3                       ; 3 uses
  %i.ji = icmp samesign ugt i64 %i.jh, %i.je
  br i1 %i.ji, label %bb.bd, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i97.i

bb.bc:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit109.i
  %i.jj = load i64, ptr %i.bf, align 8, !alias.scope !16837, !noalias !16838, !noundef !10 ; 2 uses
  %i.jk = add i32 %i.cf, -1
  %i.jl = zext i32 %i.jk to i64                   ; 3 uses
  %i.jm = icmp ugt i64 %i.jj, %i.jl
  br i1 %i.jm, label %bb.bj, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i97.i: ; preds = %bb.bb
  %i.jn = load i64, ptr %i.bf, align 8, !alias.scope !16837, !noalias !16838, !noundef !10 ; 2 uses
  %i.jo = sub nuw nsw i64 %i.je, %i.jh            ; 3 uses
  %i.jp = icmp ugt i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.bh, label %.invoke

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !16839), !noalias !16830
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16840), !noalias !16830
  %i.jr = lshr i64 %i.je, 6                       ; 6 uses
  %i.js = and i64 %i.je, 63                       ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !16841, !noalias !16836, !noundef !10 ; 2 uses
  %i.jv = icmp ult i64 %i.jr, %i.ju
  br i1 %i.jv, label %bb.be, label %.invoke

bb.be:                                            ; preds = %bb.bd
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.jx = load ptr, ptr %i.jw, align 8, !alias.scope !16841, !noalias !16836, !nonnull !10, !noundef !10
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jr
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !16842, !noundef !10 ; 2 uses
  %i.ka = icmp eq i64 %i.js, 0
  br i1 %i.ka, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i100.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i.i.i99.i = load ptr, ptr %i.jq, align 8, !alias.scope !16841, !noalias !16836, !nonnull !10, !noundef !10 ; 2 uses
  %i.kb = ptrtoint ptr %.val.i.i.i99.i to i64     ; 3 uses
  %i.kc = shl i64 %i.kb, 3
  %i.kd = and i64 %i.kc, 56
  %i.ke = and i64 %i.jg, 7
  %i.kf = add nuw nsw i64 %i.ke, 63
  %i.kg = add nuw nsw i64 %i.kf, %i.jh
  %i.kh = add nuw nsw i64 %i.kg, %i.kd
  %i.ki = lshr i64 %i.kh, 6                       ; 2 uses
  %i.kj = icmp samesign ult i64 %i.jr, %i.ki
  br i1 %i.kj, label %bb.bg, label %.invoke

bb.bg:                                            ; preds = %bb.bf
  %i.kk = and i64 %i.kb, -8
  %i.kl = getelementptr i8, ptr %.val.i.i.i99.i, i64 %i.kk
  %i.km = sub i64 0, %i.kb
  %i.kn = getelementptr i8, ptr %i.kl, i64 %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.jr
  %i.kp = load i64, ptr %i.ko, align 8, !noalias !16842, !noundef !10
  %i.kq = sub nuw nsw i64 64, %i.js
  %i.kr = shl nsw i64 -1, %i.kq
  %i.ks = and i64 %i.kp, %i.kr
  %i.kt = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ks)
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = add i32 %i.jz, %i.ku
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i100.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i100.i: ; preds = %bb.bg, %bb.be
  %.sroa.0.0.i.i.i101.i = phi i32 [ %i.kv, %bb.bg ], [ %i.jz, %bb.be ]
  %i.kw = zext i32 %.sroa.0.0.i.i.i101.i to i64   ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !16836, !noundef !10 ; 2 uses
  %i.kz = icmp ugt i64 %i.ky, %i.kw
  br i1 %i.kz, label %bb.bi, label %.invoke

bb.bh:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i97.i
  %i.la = load ptr, ptr %i.bg, align 8, !alias.scope !16837, !noalias !16838, !nonnull !10, !noundef !10
  %i.lb = getelementptr inbounds nuw [40 x i8], ptr %i.la, i64 %i.jo
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit102.i

bb.bi:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i100.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !16836, !nonnull !10, !noundef !10
  %i.le = getelementptr inbounds nuw [40 x i8], ptr %i.ld, i64 %i.kw
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit102.i

bb.bj:                                            ; preds = %bb.bc
  %i.lf = load ptr, ptr %i.bg, align 8, !alias.scope !16837, !noalias !16838, !nonnull !10, !noundef !10
  %i.lg = getelementptr inbounds nuw [40 x i8], ptr %i.lf, i64 %i.jl
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit102.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit102.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %.sink.i98.i = phi ptr [ %i.lb, %bb.bh ], [ %i.le, %bb.bi ], [ %i.lg, %bb.bj ] ; 6 uses
  %.sroa.0142.0.copyload.i = load i32, ptr %.sink.i98.i, align 4, !noalias !16843 ; 2 uses
  %.sroa.4143.0..sink.i98.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i98.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4143.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4143.0..sink.i98.sroa_idx.i, i64 12, i1 false), !noalias !16843
  %.sroa.5144.0..sink.i98.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i98.i, i64 16
  %.sroa.5144.0.copyload.i = load i32, ptr %.sroa.5144.0..sink.i98.sroa_idx.i, align 4, !noalias !16843 ; 2 uses
  %.sroa.6145.0..sink.i98.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i98.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6145.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6145.0..sink.i98.sroa_idx.i, i64 12, i1 false), !noalias !16843
  %.sroa.7146.0..sink.i98.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i98.i, i64 32
  %.sroa.7146.0.copyload.i = load i32, ptr %.sroa.7146.0..sink.i98.sroa_idx.i, align 4, !noalias !16843
  %.sroa.8147.0..sink.i98.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i98.i, i64 36
  %.sroa.8147.0.copyload.i = load i32, ptr %.sroa.8147.0..sink.i98.sroa_idx.i, align 4, !noalias !16843
  %i.lh = invoke noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance18is_same_typevar_as(i32 noundef %.sroa.7152.0.copyload.i, i32 noundef %.sroa.8153.0.copyload.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, i32 noundef %.sroa.7146.0.copyload.i, i32 noundef %.sroa.8147.0.copyload.i)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc30:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit102.i
  br i1 %i.lh, label %bb.bk, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.thread.i

bb.bk:                                            ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16844
  store i32 6, ptr %i.m, align 4, !alias.scope !16845, !noalias !16846
  %.not.i.i35.i = icmp eq i32 %.sroa.0142.0.copyload.i, -1
  br i1 %.not.i.i35.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i38.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 %.sroa.0142.0.copyload.i, ptr %i.m, align 4, !alias.scope !16845, !noalias !16846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i.i37.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4143.i, i64 12, i1 false), !noalias !16844
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i38.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i38.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16844
  store i32 6, ptr %i.l, align 4, !alias.scope !16847, !noalias !16848
  %.not.i2.i43.i = icmp eq i32 %.sroa.0148.0.copyload.i, -1
  br i1 %.not.i2.i43.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i46.i, label %bb.bm

bb.bm:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i38.i
  store i32 %.sroa.0148.0.copyload.i, ptr %i.l, align 4, !alias.scope !16847, !noalias !16848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i4.i45.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4149.i, i64 12, i1 false), !noalias !16844
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i46.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i46.i: ; preds = %bb.bm, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i38.i
  %i.li = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.l)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16844
  br i1 %i.li, label %bb.bn, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.thread.i

bb.bn:                                            ; preds = %.noexc31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16844
  store i32 5, ptr %i.bh, align 4, !alias.scope !16849, !noalias !16850
  store i32 18, ptr %i.k, align 4, !alias.scope !16849, !noalias !16850
  %.not.i7.i47.i = icmp eq i32 %.sroa.5150.0.copyload.i, -1
  br i1 %.not.i7.i47.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i48.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 %.sroa.5150.0.copyload.i, ptr %i.k, align 4, !alias.scope !16849, !noalias !16850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.i, i64 12, i1 false), !noalias !16844
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i48.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i48.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16844
  store i32 5, ptr %i.bi, align 4, !alias.scope !16851, !noalias !16852
  store i32 18, ptr %i.j, align 4, !alias.scope !16851, !noalias !16852
  %.not.i10.i49.i = icmp eq i32 %.sroa.5144.0.copyload.i, -1
  br i1 %.not.i10.i49.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i48.i
  store i32 %.sroa.5144.0.copyload.i, ptr %i.j, align 4, !alias.scope !16851, !noalias !16852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6145.i, i64 12, i1 false), !noalias !16844
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.thread.i: ; preds = %.noexc31, %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4149.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6151.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4143.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6145.i)
  br label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.i: ; preds = %bb.bp, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i48.i
  %i.lj = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.j)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4149.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6151.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4143.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6145.i)
  br i1 %i.lj, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.i.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16853
  invoke fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId9intersect(ptr noalias noundef align 4 captures(none) dereferenceable(40) %i.z, i32 noundef %i.cf, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.ax, i32 noundef %i.ci)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.i.i
  %.val18.i.i.i = load i32, ptr %i.z, align 4, !range !72, !noalias !16853, !noundef !10
  %i.lk = icmp eq i32 %.val18.i.i.i, 38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16853
  br i1 %i.lk, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i: ; preds = %.noexc33, %.noexc32, %.noexc19, %.split21.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16854)
  %i.ll = add nsw i64 %i.cb, -1                   ; 4 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 4, !noalias !16855
  store i64 %i.ln, ptr %i.by, align 4, !noalias !16855
  store i64 %i.ll, ptr %i.br, align 8, !alias.scope !16856, !noalias !16795
  %i.lo = icmp ult i64 %i.cb, 1152921504606846977
  call void @llvm.assume(i1 %i.lo)
  %i.lp = icmp ult i64 %.sroa.01.0.ph76.i.i, %i.ll
  br i1 %i.lp, label %bb.p, label %_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i

_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i: ; preds = %.noexc33, %.noexc32, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit51.thread.i, %bb.ar, %.noexc19, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit73.thread.i, %.split21.i.i
  %.pr.i.i = load i32, ptr %i.by, align 4, !noalias !16796
  %i.lq = load i32, ptr %i.bz, align 4, !noalias !16796, !noundef !10 ; 6 uses
  %i.lr = load i32, ptr %i.cd, align 4, !range !25, !noalias !16796, !noundef !10 ; 3 uses
  %i.ls = load i32, ptr %i.ce, align 4, !noalias !16796, !noundef !10 ; 6 uses
  switch i32 %.pr.i.i, label %default.unreachable.i.i [
    i32 0, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i
    i32 1, label %bb.bq
    i32 2, label %.split25.i.i
  ]

_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i: ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i
  switch i32 %i.lr, label %default.unreachable785 [
    i32 0, label %.split24.i.i
    i32 1, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.i.i
    i32 2, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i
  ]

bb.bq:                                            ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i
  %i.lt = icmp eq i32 %i.lr, 1
  br i1 %i.lt, label %.split26.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

.split25.i.i:                                     ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.i.i
  %i.lu = icmp eq i32 %i.lr, 2
  %i.lv = icmp eq i32 %i.lq, %i.ls
  %spec.select.i13.i.i = and i1 %i.lu, %i.lv
  br i1 %spec.select.i13.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

.split24.i.i:                                     ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4137.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6139.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4131.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6133.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !16857)
  %i.lw = load ptr, ptr %i.be, align 8, !alias.scope !16858, !noalias !16859, !noundef !10 ; 13 uses
  %.not.i89.i = icmp eq ptr %i.lw, null           ; 2 uses
  br i1 %.not.i89.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.split24.i.i
  %i.lx = add i32 %i.lq, -1
  %i.ly = zext i32 %i.lx to i64                   ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !16860, !noundef !10 ; 2 uses
  %i.mb = lshr i64 %i.ma, 3                       ; 3 uses
  %i.mc = icmp samesign ugt i64 %i.mb, %i.ly
  br i1 %i.mc, label %bb.bt, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i90.i

bb.bs:                                            ; preds = %.split24.i.i
  %i.md = load i64, ptr %i.bf, align 8, !alias.scope !16858, !noalias !16859, !noundef !10 ; 2 uses
  %i.me = add i32 %i.lq, -1
  %i.mf = zext i32 %i.me to i64                   ; 3 uses
  %i.mg = icmp ugt i64 %i.md, %i.mf
  br i1 %i.mg, label %bb.bz, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i90.i: ; preds = %bb.br
  %i.mh = load i64, ptr %i.bf, align 8, !alias.scope !16858, !noalias !16859, !noundef !10 ; 2 uses
  %i.mi = sub nuw nsw i64 %i.ly, %i.mb            ; 3 uses
  %i.mj = icmp ugt i64 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bx, label %.invoke

bb.bt:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !16861), !noalias !16862
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16863), !noalias !16862
  %i.ml = lshr i64 %i.ly, 6                       ; 6 uses
  %i.mm = and i64 %i.ly, 63                       ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lw, i64 96
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !16864, !noalias !16860, !noundef !10 ; 2 uses
  %i.mp = icmp ult i64 %i.ml, %i.mo
  br i1 %i.mp, label %bb.bu, label %.invoke

bb.bu:                                            ; preds = %bb.bt
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lw, i64 88
  %i.mr = load ptr, ptr %i.mq, align 8, !alias.scope !16864, !noalias !16860, !nonnull !10, !noundef !10
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ml
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !16865, !noundef !10 ; 2 uses
  %i.mu = icmp eq i64 %i.mm, 0
  br i1 %i.mu, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i93.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i.i92.i = load ptr, ptr %i.mk, align 8, !alias.scope !16864, !noalias !16860, !nonnull !10, !noundef !10 ; 2 uses
  %i.mv = ptrtoint ptr %.val.i.i.i92.i to i64     ; 3 uses
  %i.mw = shl i64 %i.mv, 3
  %i.mx = and i64 %i.mw, 56
  %i.my = and i64 %i.ma, 7
  %i.mz = add nuw nsw i64 %i.my, 63
  %i.na = add nuw nsw i64 %i.mz, %i.mb
  %i.nb = add nuw nsw i64 %i.na, %i.mx
  %i.nc = lshr i64 %i.nb, 6                       ; 2 uses
  %i.nd = icmp samesign ult i64 %i.ml, %i.nc
  br i1 %i.nd, label %bb.bw, label %.invoke

bb.bw:                                            ; preds = %bb.bv
  %i.ne = and i64 %i.mv, -8
  %i.nf = getelementptr i8, ptr %.val.i.i.i92.i, i64 %i.ne
  %i.ng = sub i64 0, %i.mv
  %i.nh = getelementptr i8, ptr %i.nf, i64 %i.ng
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ml
  %i.nj = load i64, ptr %i.ni, align 8, !noalias !16865, !noundef !10
  %i.nk = sub nuw nsw i64 64, %i.mm
  %i.nl = shl nsw i64 -1, %i.nk
  %i.nm = and i64 %i.nj, %i.nl
  %i.nn = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.nm)
  %i.no = trunc nuw nsw i64 %i.nn to i32
  %i.np = add i32 %i.mt, %i.no
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i93.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i93.i: ; preds = %bb.bw, %bb.bu
  %.sroa.0.0.i.i.i94.i = phi i32 [ %i.np, %bb.bw ], [ %i.mt, %bb.bu ]
  %i.nq = zext i32 %.sroa.0.0.i.i.i94.i to i64    ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !16860, !noundef !10 ; 2 uses
  %i.nt = icmp ugt i64 %i.ns, %i.nq
  br i1 %i.nt, label %bb.by, label %.invoke

bb.bx:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i90.i
  %i.nu = load ptr, ptr %i.bg, align 8, !alias.scope !16858, !noalias !16859, !nonnull !10, !noundef !10
  %i.nv = getelementptr inbounds nuw [40 x i8], ptr %i.nu, i64 %i.mi
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i

bb.by:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i93.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !16860, !nonnull !10, !noundef !10
  %i.ny = getelementptr inbounds nuw [40 x i8], ptr %i.nx, i64 %i.nq
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i

bb.bz:                                            ; preds = %bb.bs
  %i.nz = load ptr, ptr %i.bg, align 8, !alias.scope !16858, !noalias !16859, !nonnull !10, !noundef !10
  %i.oa = getelementptr inbounds nuw [40 x i8], ptr %i.nz, i64 %i.mf
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i: ; preds = %bb.bz, %bb.by, %bb.bx
  %.sink.i91.i = phi ptr [ %i.nv, %bb.bx ], [ %i.ny, %bb.by ], [ %i.oa, %bb.bz ] ; 6 uses
  %.sroa.0136.0.copyload.i = load i32, ptr %.sink.i91.i, align 4, !noalias !16866 ; 2 uses
  %.sroa.4137.0..sink.i91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i91.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4137.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4137.0..sink.i91.sroa_idx.i, i64 12, i1 false), !noalias !16866
  %.sroa.5138.0..sink.i91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i91.i, i64 16
  %.sroa.5138.0.copyload.i = load i32, ptr %.sroa.5138.0..sink.i91.sroa_idx.i, align 4, !noalias !16866 ; 2 uses
  %.sroa.6139.0..sink.i91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i91.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6139.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6139.0..sink.i91.sroa_idx.i, i64 12, i1 false), !noalias !16866
  %.sroa.7140.0..sink.i91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i91.i, i64 32
  %.sroa.7140.0.copyload.i = load i32, ptr %.sroa.7140.0..sink.i91.sroa_idx.i, align 4, !noalias !16866
  %.sroa.8141.0..sink.i91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i91.i, i64 36
  %.sroa.8141.0.copyload.i = load i32, ptr %.sroa.8141.0..sink.i91.sroa_idx.i, align 4, !noalias !16866
  call void @llvm.experimental.noalias.scope.decl(metadata !16867)
  br i1 %.not.i89.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i
  %i.ob = add i32 %i.ls, -1
  %i.oc = zext i32 %i.ob to i64                   ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.oe = load i64, ptr %i.od, align 8, !noalias !16868, !noundef !10 ; 2 uses
  %i.of = lshr i64 %i.oe, 3                       ; 3 uses
  %i.og = icmp samesign ugt i64 %i.of, %i.oc
  br i1 %i.og, label %bb.cc, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i83.i

bb.cb:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit95.i
  %i.oh = load i64, ptr %i.bf, align 8, !alias.scope !16869, !noalias !16870, !noundef !10 ; 2 uses
  %i.oi = add i32 %i.ls, -1
  %i.oj = zext i32 %i.oi to i64                   ; 3 uses
  %i.ok = icmp ugt i64 %i.oh, %i.oj
  br i1 %i.ok, label %bb.ci, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i83.i: ; preds = %bb.ca
  %i.ol = load i64, ptr %i.bf, align 8, !alias.scope !16869, !noalias !16870, !noundef !10 ; 2 uses
  %i.om = sub nuw nsw i64 %i.oc, %i.of            ; 3 uses
  %i.on = icmp ugt i64 %i.ol, %i.om
  br i1 %i.on, label %bb.cg, label %.invoke

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !16871), !noalias !16862
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lw, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16872), !noalias !16862
  %i.op = lshr i64 %i.oc, 6                       ; 6 uses
  %i.oq = and i64 %i.oc, 63                       ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.lw, i64 96
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !16873, !noalias !16868, !noundef !10 ; 2 uses
  %i.ot = icmp ult i64 %i.op, %i.os
  br i1 %i.ot, label %bb.cd, label %.invoke

bb.cd:                                            ; preds = %bb.cc
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lw, i64 88
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !16873, !noalias !16868, !nonnull !10, !noundef !10
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.op
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !16874, !noundef !10 ; 2 uses
  %i.oy = icmp eq i64 %i.oq, 0
  br i1 %i.oy, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i86.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i.i85.i = load ptr, ptr %i.oo, align 8, !alias.scope !16873, !noalias !16868, !nonnull !10, !noundef !10 ; 2 uses
  %i.oz = ptrtoint ptr %.val.i.i.i85.i to i64     ; 3 uses
  %i.pa = shl i64 %i.oz, 3
  %i.pb = and i64 %i.pa, 56
  %i.pc = and i64 %i.oe, 7
  %i.pd = add nuw nsw i64 %i.pc, 63
  %i.pe = add nuw nsw i64 %i.pd, %i.of
  %i.pf = add nuw nsw i64 %i.pe, %i.pb
  %i.pg = lshr i64 %i.pf, 6                       ; 2 uses
  %i.ph = icmp samesign ult i64 %i.op, %i.pg
  br i1 %i.ph, label %bb.cf, label %.invoke

bb.cf:                                            ; preds = %bb.ce
  %i.pi = and i64 %i.oz, -8
  %i.pj = getelementptr i8, ptr %.val.i.i.i85.i, i64 %i.pi
  %i.pk = sub i64 0, %i.oz
  %i.pl = getelementptr i8, ptr %i.pj, i64 %i.pk
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.op
  %i.pn = load i64, ptr %i.pm, align 8, !noalias !16874, !noundef !10
  %i.po = sub nuw nsw i64 64, %i.oq
  %i.pp = shl nsw i64 -1, %i.po
  %i.pq = and i64 %i.pn, %i.pp
  %i.pr = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.pq)
  %i.ps = trunc nuw nsw i64 %i.pr to i32
  %i.pt = add i32 %i.ox, %i.ps
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i86.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i86.i: ; preds = %bb.cf, %bb.cd
  %.sroa.0.0.i.i.i87.i = phi i32 [ %i.pt, %bb.cf ], [ %i.ox, %bb.cd ]
  %i.pu = zext i32 %.sroa.0.0.i.i.i87.i to i64    ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.pw = load i64, ptr %i.pv, align 8, !noalias !16868, !noundef !10 ; 2 uses
  %i.px = icmp ugt i64 %i.pw, %i.pu
  br i1 %i.px, label %bb.ch, label %.invoke

bb.cg:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i83.i
  %i.py = load ptr, ptr %i.bg, align 8, !alias.scope !16869, !noalias !16870, !nonnull !10, !noundef !10
  %i.pz = getelementptr inbounds nuw [40 x i8], ptr %i.py, i64 %i.om
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit88.i

bb.ch:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i86.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8, !noalias !16868, !nonnull !10, !noundef !10
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.pu
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit88.i

bb.ci:                                            ; preds = %bb.cb
  %i.qd = load ptr, ptr %i.bg, align 8, !alias.scope !16869, !noalias !16870, !nonnull !10, !noundef !10
  %i.qe = getelementptr inbounds nuw [40 x i8], ptr %i.qd, i64 %i.oj
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit88.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit88.i: ; preds = %bb.ci, %bb.ch, %bb.cg
  %.sink.i84.i = phi ptr [ %i.pz, %bb.cg ], [ %i.qc, %bb.ch ], [ %i.qe, %bb.ci ] ; 6 uses
  %.sroa.0130.0.copyload.i = load i32, ptr %.sink.i84.i, align 4, !noalias !16875 ; 2 uses
  %.sroa.4131.0..sink.i84.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i84.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4131.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4131.0..sink.i84.sroa_idx.i, i64 12, i1 false), !noalias !16875
  %.sroa.5132.0..sink.i84.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i84.i, i64 16
  %.sroa.5132.0.copyload.i = load i32, ptr %.sroa.5132.0..sink.i84.sroa_idx.i, align 4, !noalias !16875 ; 2 uses
  %.sroa.6133.0..sink.i84.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i84.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6133.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6133.0..sink.i84.sroa_idx.i, i64 12, i1 false), !noalias !16875
  %.sroa.7134.0..sink.i84.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i84.i, i64 32
  %.sroa.7134.0.copyload.i = load i32, ptr %.sroa.7134.0..sink.i84.sroa_idx.i, align 4, !noalias !16875
  %.sroa.8135.0..sink.i84.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i84.i, i64 36
  %.sroa.8135.0.copyload.i = load i32, ptr %.sroa.8135.0..sink.i84.sroa_idx.i, align 4, !noalias !16875
  %i.qf = invoke noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance18is_same_typevar_as(i32 noundef %.sroa.7140.0.copyload.i, i32 noundef %.sroa.8141.0.copyload.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, i32 noundef %.sroa.7134.0.copyload.i, i32 noundef %.sroa.8135.0.copyload.i)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc45:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit88.i
  br i1 %i.qf, label %bb.cj, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.thread.i

bb.cj:                                            ; preds = %.noexc45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16876
  store i32 6, ptr %i.q, align 4, !alias.scope !16877, !noalias !16878
  %.not.i.i13.i = icmp eq i32 %.sroa.0130.0.copyload.i, -1
  br i1 %.not.i.i13.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i16.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i32 %.sroa.0130.0.copyload.i, ptr %i.q, align 4, !alias.scope !16877, !noalias !16878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i.i15.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4131.i, i64 12, i1 false), !noalias !16876
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i16.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i16.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16876
  store i32 6, ptr %i.p, align 4, !alias.scope !16879, !noalias !16880
  %.not.i2.i21.i = icmp eq i32 %.sroa.0136.0.copyload.i, -1
  br i1 %.not.i2.i21.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i24.i, label %bb.cl

bb.cl:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i16.i
  store i32 %.sroa.0136.0.copyload.i, ptr %i.p, align 4, !alias.scope !16879, !noalias !16880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i4.i23.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4137.i, i64 12, i1 false), !noalias !16876
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i24.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i24.i: ; preds = %bb.cl, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i16.i
  %i.qg = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.q, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.p)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16876
  br i1 %i.qg, label %bb.cm, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.thread.i

bb.cm:                                            ; preds = %.noexc46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16876
  store i32 5, ptr %i.bn, align 4, !alias.scope !16881, !noalias !16882
  store i32 18, ptr %i.o, align 4, !alias.scope !16881, !noalias !16882
  %.not.i7.i25.i = icmp eq i32 %.sroa.5138.0.copyload.i, -1
  br i1 %.not.i7.i25.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i26.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 %.sroa.5138.0.copyload.i, ptr %i.o, align 4, !alias.scope !16881, !noalias !16882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6139.i, i64 12, i1 false), !noalias !16876
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i26.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i26.i: ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16876
  store i32 5, ptr %i.bo, align 4, !alias.scope !16883, !noalias !16884
  store i32 18, ptr %i.n, align 4, !alias.scope !16883, !noalias !16884
  %.not.i10.i27.i = icmp eq i32 %.sroa.5132.0.copyload.i, -1
  br i1 %.not.i10.i27.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.i, label %bb.co

bb.co:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i26.i
  store i32 %.sroa.5132.0.copyload.i, ptr %i.n, align 4, !alias.scope !16883, !noalias !16884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6133.i, i64 12, i1 false), !noalias !16876
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.thread.i: ; preds = %.noexc46, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4137.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6139.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4131.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6133.i)
  br label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.i: ; preds = %bb.co, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i26.i
  %i.qh = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.n)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4137.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6139.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4131.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6133.i)
  br i1 %i.qh, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

.split26.i.i:                                     ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4125.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6127.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !16885)
  %i.qi = load ptr, ptr %i.be, align 8, !alias.scope !16886, !noalias !16887, !noundef !10 ; 13 uses
  %.not.i75.i = icmp eq ptr %i.qi, null           ; 2 uses
  br i1 %.not.i75.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.split26.i.i
  %i.qj = add i32 %i.ls, -1
  %i.qk = zext i32 %i.qj to i64                   ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  %i.qm = load i64, ptr %i.ql, align 8, !noalias !16888, !noundef !10 ; 2 uses
  %i.qn = lshr i64 %i.qm, 3                       ; 3 uses
  %i.qo = icmp samesign ugt i64 %i.qn, %i.qk
  br i1 %i.qo, label %bb.cr, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i76.i

bb.cq:                                            ; preds = %.split26.i.i
  %i.qp = load i64, ptr %i.bf, align 8, !alias.scope !16886, !noalias !16887, !noundef !10 ; 2 uses
  %i.qq = add i32 %i.ls, -1
  %i.qr = zext i32 %i.qq to i64                   ; 3 uses
  %i.qs = icmp ugt i64 %i.qp, %i.qr
  br i1 %i.qs, label %bb.cx, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i76.i: ; preds = %bb.cp
  %i.qt = load i64, ptr %i.bf, align 8, !alias.scope !16886, !noalias !16887, !noundef !10 ; 2 uses
  %i.qu = sub nuw nsw i64 %i.qk, %i.qn            ; 3 uses
  %i.qv = icmp ugt i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.cv, label %.invoke

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !16889), !noalias !16890
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16891), !noalias !16890
  %i.qx = lshr i64 %i.qk, 6                       ; 6 uses
  %i.qy = and i64 %i.qk, 63                       ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !16892, !noalias !16888, !noundef !10 ; 2 uses
  %i.rb = icmp ult i64 %i.qx, %i.ra
  br i1 %i.rb, label %bb.cs, label %.invoke

bb.cs:                                            ; preds = %bb.cr
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qi, i64 88
  %i.rd = load ptr, ptr %i.rc, align 8, !alias.scope !16892, !noalias !16888, !nonnull !10, !noundef !10
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %i.qx
  %i.rf = load i32, ptr %i.re, align 4, !noalias !16893, !noundef !10 ; 2 uses
  %i.rg = icmp eq i64 %i.qy, 0
  br i1 %i.rg, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i79.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val.i.i.i78.i = load ptr, ptr %i.qw, align 8, !alias.scope !16892, !noalias !16888, !nonnull !10, !noundef !10 ; 2 uses
  %i.rh = ptrtoint ptr %.val.i.i.i78.i to i64     ; 3 uses
  %i.ri = shl i64 %i.rh, 3
  %i.rj = and i64 %i.ri, 56
  %i.rk = and i64 %i.qm, 7
  %i.rl = add nuw nsw i64 %i.rk, 63
  %i.rm = add nuw nsw i64 %i.rl, %i.qn
  %i.rn = add nuw nsw i64 %i.rm, %i.rj
  %i.ro = lshr i64 %i.rn, 6                       ; 2 uses
  %i.rp = icmp samesign ult i64 %i.qx, %i.ro
  br i1 %i.rp, label %bb.cu, label %.invoke

bb.cu:                                            ; preds = %bb.ct
  %i.rq = and i64 %i.rh, -8
  %i.rr = getelementptr i8, ptr %.val.i.i.i78.i, i64 %i.rq
  %i.rs = sub i64 0, %i.rh
  %i.rt = getelementptr i8, ptr %i.rr, i64 %i.rs
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.qx
  %i.rv = load i64, ptr %i.ru, align 8, !noalias !16893, !noundef !10
  %i.rw = sub nuw nsw i64 64, %i.qy
  %i.rx = shl nsw i64 -1, %i.rw
  %i.ry = and i64 %i.rv, %i.rx
  %i.rz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ry)
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = add i32 %i.rf, %i.sa
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i79.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i79.i: ; preds = %bb.cu, %bb.cs
  %.sroa.0.0.i.i.i80.i = phi i32 [ %i.sb, %bb.cu ], [ %i.rf, %bb.cs ]
  %i.sc = zext i32 %.sroa.0.0.i.i.i80.i to i64    ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.se = load i64, ptr %i.sd, align 8, !noalias !16888, !noundef !10 ; 2 uses
  %i.sf = icmp ugt i64 %i.se, %i.sc
  br i1 %i.sf, label %bb.cw, label %.invoke

bb.cv:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i76.i
  %i.sg = load ptr, ptr %i.bg, align 8, !alias.scope !16886, !noalias !16887, !nonnull !10, !noundef !10
  %i.sh = getelementptr inbounds nuw [40 x i8], ptr %i.sg, i64 %i.qu
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i

bb.cw:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i79.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.sj = load ptr, ptr %i.si, align 8, !noalias !16888, !nonnull !10, !noundef !10
  %i.sk = getelementptr inbounds nuw [40 x i8], ptr %i.sj, i64 %i.sc
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i

bb.cx:                                            ; preds = %bb.cq
  %i.sl = load ptr, ptr %i.bg, align 8, !alias.scope !16886, !noalias !16887, !nonnull !10, !noundef !10
  %i.sm = getelementptr inbounds nuw [40 x i8], ptr %i.sl, i64 %i.qr
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i: ; preds = %bb.cx, %bb.cw, %bb.cv
  %.sink.i77.i = phi ptr [ %i.sh, %bb.cv ], [ %i.sk, %bb.cw ], [ %i.sm, %bb.cx ] ; 6 uses
  %.sroa.0124.0.copyload.i = load i32, ptr %.sink.i77.i, align 4, !noalias !16894 ; 2 uses
  %.sroa.4125.0..sink.i77.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i77.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4125.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4125.0..sink.i77.sroa_idx.i, i64 12, i1 false), !noalias !16894
  %.sroa.5126.0..sink.i77.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i77.i, i64 16
  %.sroa.5126.0.copyload.i = load i32, ptr %.sroa.5126.0..sink.i77.sroa_idx.i, align 4, !noalias !16894 ; 2 uses
  %.sroa.6127.0..sink.i77.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i77.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6127.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6127.0..sink.i77.sroa_idx.i, i64 12, i1 false), !noalias !16894
  %.sroa.7128.0..sink.i77.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i77.i, i64 32
  %.sroa.7128.0.copyload.i = load i32, ptr %.sroa.7128.0..sink.i77.sroa_idx.i, align 4, !noalias !16894
  %.sroa.8129.0..sink.i77.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i77.i, i64 36
  %.sroa.8129.0.copyload.i = load i32, ptr %.sroa.8129.0..sink.i77.sroa_idx.i, align 4, !noalias !16894
  call void @llvm.experimental.noalias.scope.decl(metadata !16895)
  br i1 %.not.i75.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i
  %i.sn = add i32 %i.lq, -1
  %i.so = zext i32 %i.sn to i64                   ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  %i.sq = load i64, ptr %i.sp, align 8, !noalias !16896, !noundef !10 ; 2 uses
  %i.sr = lshr i64 %i.sq, 3                       ; 3 uses
  %i.ss = icmp samesign ugt i64 %i.sr, %i.so
  br i1 %i.ss, label %bb.da, label %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i.i

bb.cz:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit81.i
  %i.st = load i64, ptr %i.bf, align 8, !alias.scope !16897, !noalias !16898, !noundef !10 ; 2 uses
  %i.su = add i32 %i.lq, -1
  %i.sv = zext i32 %i.su to i64                   ; 3 uses
  %i.sw = icmp ugt i64 %i.st, %i.sv
  br i1 %i.sw, label %bb.dg, label %.invoke

_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i.i: ; preds = %bb.cy
  %i.sx = load i64, ptr %i.bf, align 8, !alias.scope !16897, !noalias !16898, !noundef !10 ; 2 uses
  %i.sy = sub nuw nsw i64 %i.so, %i.sr            ; 3 uses
  %i.sz = icmp ugt i64 %i.sx, %i.sy
  br i1 %i.sz, label %bb.de, label %.invoke

bb.da:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !16899), !noalias !16890
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !16900), !noalias !16890
  %i.tb = lshr i64 %i.so, 6                       ; 6 uses
  %i.tc = and i64 %i.so, 63                       ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !16901, !noalias !16896, !noundef !10 ; 2 uses
  %i.tf = icmp ult i64 %i.tb, %i.te
  br i1 %i.tf, label %bb.db, label %.invoke

bb.db:                                            ; preds = %bb.da
  %i.tg = getelementptr inbounds nuw i8, ptr %i.qi, i64 88
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !16901, !noalias !16896, !nonnull !10, !noundef !10
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.tb
  %i.tj = load i32, ptr %i.ti, align 4, !noalias !16902, !noundef !10 ; 2 uses
  %i.tk = icmp eq i64 %i.tc, 0
  br i1 %i.tk, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val.i.i.i.i = load ptr, ptr %i.ta, align 8, !alias.scope !16901, !noalias !16896, !nonnull !10, !noundef !10 ; 2 uses
  %i.tl = ptrtoint ptr %.val.i.i.i.i to i64       ; 3 uses
  %i.tm = shl i64 %i.tl, 3
  %i.tn = and i64 %i.tm, 56
  %i.to = and i64 %i.sq, 7
  %i.tp = add nuw nsw i64 %i.to, 63
  %i.tq = add nuw nsw i64 %i.tp, %i.sr
  %i.tr = add nuw nsw i64 %i.tq, %i.tn
  %i.ts = lshr i64 %i.tr, 6                       ; 2 uses
  %i.tt = icmp samesign ult i64 %i.tb, %i.ts
  br i1 %i.tt, label %bb.dd, label %.invoke

bb.dd:                                            ; preds = %bb.dc
  %i.tu = and i64 %i.tl, -8
  %i.tv = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.tu
  %i.tw = sub i64 0, %i.tl
  %i.tx = getelementptr i8, ptr %i.tv, i64 %i.tw
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.tb
  %i.tz = load i64, ptr %i.ty, align 8, !noalias !16902, !noundef !10
  %i.ua = sub nuw nsw i64 64, %i.tc
  %i.ub = shl nsw i64 -1, %i.ua
  %i.uc = and i64 %i.tz, %i.ub
  %i.ud = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.uc)
  %i.ue = trunc nuw nsw i64 %i.ud to i32
  %i.uf = add i32 %i.tj, %i.ue
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i.i

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i.i: ; preds = %bb.dd, %bb.db
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.uf, %bb.dd ], [ %i.tj, %bb.db ]
  %i.ug = zext i32 %.sroa.0.0.i.i.i.i to i64      ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.ui = load i64, ptr %i.uh, align 8, !noalias !16896, !noundef !10 ; 2 uses
  %i.uj = icmp ugt i64 %i.ui, %i.ug
  br i1 %i.uj, label %bb.df, label %.invoke

bb.de:                                            ; preds = %_RNvMs1k_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_12ConstraintId10from_usize.exit.i.i
  %i.uk = load ptr, ptr %i.bg, align 8, !alias.scope !16897, !noalias !16898, !nonnull !10, !noundef !10
  %i.ul = getelementptr inbounds nuw [40 x i8], ptr %i.uk, i64 %i.sy
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit.i

bb.df:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23OwnedConstraintSetInner25retained_constraint_index.exit.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.un = load ptr, ptr %i.um, align 8, !noalias !16896, !nonnull !10, !noundef !10
  %i.uo = getelementptr inbounds nuw [40 x i8], ptr %i.un, i64 %i.ug
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit.i

bb.dg:                                            ; preds = %bb.cz
  %i.up = load ptr, ptr %i.bg, align 8, !alias.scope !16897, !noalias !16898, !nonnull !10, !noundef !10
  %i.uq = getelementptr inbounds nuw [40 x i8], ptr %i.up, i64 %i.sv
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit.i: ; preds = %bb.dg, %bb.df, %bb.de
  %.sink.i.i = phi ptr [ %i.ul, %bb.de ], [ %i.uo, %bb.df ], [ %i.uq, %bb.dg ] ; 6 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sink.i.i, align 4, !noalias !16903 ; 2 uses
  %.sroa.4.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sink.i.sroa_idx.i, i64 12, i1 false), !noalias !16903
  %.sroa.5.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sink.i.sroa_idx.i, align 4, !noalias !16903 ; 2 uses
  %.sroa.6.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sink.i.sroa_idx.i, i64 12, i1 false), !noalias !16903
  %.sroa.7.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sink.i.sroa_idx.i, align 4, !noalias !16903
  %.sroa.8.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 36
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sink.i.sroa_idx.i, align 4, !noalias !16903
  %i.ur = invoke noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance18is_same_typevar_as(i32 noundef %.sroa.7128.0.copyload.i, i32 noundef %.sroa.8129.0.copyload.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %.sroa.8.0.copyload.i)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc58:                                         ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data.exit.i
  br i1 %i.ur, label %bb.dh, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.thread.i

bb.dh:                                            ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16904
  store i32 6, ptr %i.u, align 4, !alias.scope !16905, !noalias !16906
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i.i.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %.sroa.0.0.copyload.i, ptr %i.u, align 4, !alias.scope !16905, !noalias !16906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i, i64 12, i1 false), !noalias !16904
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i.i: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16904
  store i32 6, ptr %i.t, align 4, !alias.scope !16907, !noalias !16908
  %.not.i2.i.i = icmp eq i32 %.sroa.0124.0.copyload.i, -1
  br i1 %.not.i2.i.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i.i, label %bb.dj

bb.dj:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i.i
  store i32 %.sroa.0124.0.copyload.i, ptr %i.t, align 4, !alias.scope !16907, !noalias !16908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i4.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4125.i, i64 12, i1 false), !noalias !16904
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i.i: ; preds = %bb.dj, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit.i.i
  %i.us = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.u, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.t)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_lower.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16904
  br i1 %i.us, label %bb.dk, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.thread.i

bb.dk:                                            ; preds = %.noexc59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16904
  store i32 5, ptr %i.bl, align 4, !alias.scope !16909, !noalias !16910
  store i32 18, ptr %i.s, align 4, !alias.scope !16909, !noalias !16910
  %.not.i7.i.i = icmp eq i32 %.sroa.5126.0.copyload.i, -1
  br i1 %.not.i7.i.i, label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 %.sroa.5126.0.copyload.i, ptr %i.s, align 4, !alias.scope !16909, !noalias !16910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6127.i, i64 12, i1 false), !noalias !16904
  br label %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i.i

_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i.i: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16904
  store i32 5, ptr %i.bm, align 4, !alias.scope !16911, !noalias !16912
  store i32 18, ptr %i.r, align 4, !alias.scope !16911, !noalias !16912
  %.not.i10.i.i = icmp eq i32 %.sroa.5.0.copyload.i, -1
  br i1 %.not.i10.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i.i
  store i32 %.sroa.5.0.copyload.i, ptr %i.r, align 4, !alias.scope !16911, !noalias !16912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !noalias !16904
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.thread.i: ; preds = %.noexc59, %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4125.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6127.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.i: ; preds = %bb.dm, %_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16ConstraintBounds18materialized_upper.exit.i.i
  %i.ut = invoke noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type31is_constraint_set_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.s, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.r)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4125.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6127.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br i1 %i.ut, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.i.i: ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i, %bb.s
  %i.uu = phi i32 [ %i.lq, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i ], [ %i.ci, %bb.s ]
  %i.uv = phi i32 [ %i.ls, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i ], [ %i.cf, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16913
  invoke fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId9intersect(ptr noalias noundef align 4 captures(none) dereferenceable(40) %i.y, i32 noundef %i.uu, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.ax, i32 noundef %i.uv)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc61:                                         ; preds = %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.i.i
  %.val18.i16.i.i = load i32, ptr %i.y, align 4, !range !72, !noalias !16913, !noundef !10
  %i.uw = icmp eq i32 %.val18.i16.i.i, 38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16913
  br i1 %i.uw, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i, label %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i

_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i: ; preds = %.noexc61, %.noexc60, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit.thread.i, %.noexc47, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_12ConstraintId7implies.exit29.thread.i, %.split25.i.i, %bb.bq, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit.thread.thread.i.i
  %i.ux = add nuw nsw i64 %.sroa.07.052.i.i, 1
  br label %bb.dn

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i: ; preds = %.noexc61, %.noexc60, %.noexc47, %.split25.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16914)
  %i.uy = add nsw i64 %i.cb, -1                   ; 4 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.uy
  %i.va = load i64, ptr %i.uz, align 4, !noalias !16915
  store i64 %i.va, ptr %i.cd, align 4, !noalias !16915
  store i64 %i.uy, ptr %i.br, align 8, !alias.scope !16916, !noalias !16795
  br label %bb.dn

bb.dn:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i
  %.promoted5866.i.i = phi i64 [ %i.uy, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i ], [ %.promoted5867.i.i, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i ] ; 2 uses
  %i.vb = phi i64 [ %i.uy, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i ], [ %i.cb, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i ] ; 3 uses
  %.sroa.07.1.i.i = phi i64 [ %.sroa.07.052.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit19.i.i ], [ %i.ux, %_RNvMsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintAssignment7implies.exit17.thread.i.i ] ; 2 uses
  %i.vc = icmp ult i64 %i.vb, 1152921504606846976
  call void @llvm.assume(i1 %i.vc)
  %i.vd = icmp samesign ult i64 %.sroa.07.1.i.i, %i.vb
  br i1 %i.vd, label %.lr.ph.i.i, label %.loopexit.i.i

_RNvMsy_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_15SatisfiedClause8simplify.exit.i: ; preds = %.loopexit.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentE11swap_removeBJ_.exit.i.i, %bb.o
  %i.ve = icmp eq ptr %i.bq, %i.bc
  br i1 %i.ve, label %.preheader.i, label %bb.o

.lr.ph87.i.i.preheader:                           ; preds = %.preheader.i, %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses18simplify_one_round.exit.i
  %.promoted79.i.i350 = phi i64 [ %.promoted79.i659.i, %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses18simplify_one_round.exit.i ], [ %i.bb, %.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16917)
  br label %.lr.ph87.i.i

.loopexit62.i.i:                                  ; preds = %bb.dw, %.lr.ph87.i.i
  %.promoted79.i659.i = phi i64 [ %.promoted79.i662.i, %.lr.ph87.i.i ], [ %.promoted79.i660.i, %bb.dw ] ; 4 uses
  %.promoted80.i.i = phi i64 [ %.promoted8384.i.i, %.lr.ph87.i.i ], [ %.promoted81.i.i, %bb.dw ] ; 7 uses
  %.sroa.0.2.lcssa.i.i = phi i1 [ %.sroa.0.06085.i.i, %.lr.ph87.i.i ], [ %.sroa.0.3.i.i, %bb.dw ] ; 2 uses
  %i.vf = icmp ult i64 %.promoted80.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.vf)
  %i.vg = icmp samesign ult i64 %i.vi, %.promoted80.i.i
  br i1 %i.vg, label %.lr.ph87.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit62.i.i
  br i1 %.sroa.0.2.lcssa.i.i, label %_RNvMsz_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_16SatisfiedClauses18simplify_one_round.exit.i, label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %._crit_edge.i.i
  %i.vh = mul nuw nsw i64 %.promoted80.i.i, 24
  %scevgep.i.i = getelementptr i8, ptr %i.az, i64 %i.vh
  %exitcond.not.not.i413.i = icmp eq i64 %.promoted80.i.i, 0
  br i1 %exitcond.not.not.i413.i, label %.preheader.split.i._crit_edge.i, label %.lr.ph415.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.preheader, %.loopexit62.i.i
  %.promoted79.i662.i = phi i64 [ %.promoted79.i659.i, %.loopexit62.i.i ], [ %.promoted79.i.i350, %.lr.ph87.i.i.preheader ] ; 2 uses
  %.sroa.01.086.i.i = phi i64 [ %i.vi, %.loopexit62.i.i ], [ 0, %.lr.ph87.i.i.preheader ] ; 4 uses
  %.sroa.0.06085.i.i = phi i1 [ %.sroa.0.2.lcssa.i.i, %.loopexit62.i.i ], [ false, %.lr.ph87.i.i.preheader ] ; 2 uses
  %.promoted8384.i.i = phi i64 [ %.promoted80.i.i, %.loopexit62.i.i ], [ %.promoted79.i.i350, %.lr.ph87.i.i.preheader ] ; 4 uses
  %i.vi = add nuw nsw i64 %.sroa.01.086.i.i, 1    ; 4 uses
  %i.vj = icmp ult i64 %i.vi, %.promoted8384.i.i
  br i1 %i.vj, label %.lr.ph.i6.i, label %.loopexit62.i.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph87.i.i
end_hunk_10
begin_hunk_11_@_RNvXsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_14SubclassOfTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.aa:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.af, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.ag, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.ah, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.ai, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.aj, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !range !21, !alias.scope !19591, !noalias !19592, !noundef !10
  %i.cf = load i32, ptr %i.cc, align 4, !range !21, !alias.scope !19592, !noalias !19591, !noundef !10
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !range !21, !alias.scope !19591, !noalias !19592, !noundef !10
  %i.ck = load i32, ptr %i.ch, align 4, !range !21, !alias.scope !19592, !noalias !19591, !noundef !10
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !range !21, !alias.scope !19591, !noalias !19592, !noundef !10
  %i.cp = load i32, ptr %i.cm, align 4, !range !21, !alias.scope !19592, !noalias !19591, !noundef !10
  %i.cq = icmp eq i32 %i.co, %i.cp
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !range !21, !alias.scope !19591, !noalias !19592, !noundef !10
  %i.cu = load i32, ptr %i.cr, align 4, !range !21, !alias.scope !19592, !noalias !19591, !noundef !10
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !range !21, !alias.scope !19591, !noalias !19592, !noundef !10
  %i.cz = load i32, ptr %i.cw, align 4, !range !21, !alias.scope !19592, !noalias !19591, !noundef !10
  %i.da = icmp eq i32 %i.cy, %i.cz
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !range !21, !alias.scope !19587, !noalias !19588, !noundef !10
  %i.de = load i32, ptr %i.db, align 4, !range !21, !alias.scope !19588, !noalias !19587, !noundef !10
  %i.df = icmp eq i32 %i.dd, %i.de
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !alias.scope !19583, !noalias !19584, !noundef !10
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !alias.scope !19584, !noalias !19583, !noundef !10
  %i.dk = icmp eq i32 %i.dh, %i.dj
  br i1 %i.dk, label %bb.an, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !19583, !noalias !19584, !noundef !10
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !19584, !noalias !19583, !noundef !10
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %bb.ao, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !range !21, !alias.scope !19583, !noalias !19584, !noundef !10
  %i.dt = load i32, ptr %i.dq, align 4, !range !21, !alias.scope !19584, !noalias !19583, !noundef !10
  %i.du = icmp eq i32 %i.ds, %i.dt
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !range !21, !alias.scope !19583, !noalias !19584, !noundef !10
  %i.dy = load i32, ptr %i.dv, align 4, !range !21, !alias.scope !19584, !noalias !19583, !noundef !10
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !alias.scope !19571, !noalias !19572, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !alias.scope !19572, !noalias !19571, !noundef !10
  %i.ee = icmp eq i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.at, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.s
  %i.ef = icmp eq i32 %i.bb, 2
  br i1 %i.ef, label %bb.ar, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !alias.scope !19571, !noalias !19572, !noundef !10
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !alias.scope !19572, !noalias !19571, !noundef !10
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.as, label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load i32, ptr %i.em, align 4, !range !21, !alias.scope !19571, !noalias !19572, !noundef !10
  %i.eo = load i32, ptr %i.el, align 4, !range !21, !alias.scope !19572, !noalias !19571, !noundef !10
  %i.ep = icmp eq i32 %i.en, %i.eo
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.es = load i32, ptr %i.er, align 4, !range !21, !alias.scope !19571, !noalias !19572, !noundef !10
  %i.et = load i32, ptr %i.eq, align 4, !range !21, !alias.scope !19572, !noalias !19571, !noundef !10
  %i.eu = icmp eq i32 %i.es, %i.et
  br label %_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_15SubclassOfInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.ap ], [ false, %bb.s ], [ %i.ep, %bb.as ], [ false, %bb.ar ], [ true, %bb.aq ], [ false, %bb.a ], [ false, %bb.l ], [ %i.eu, %bb.at ], [ %i.az, %bb.r ], [ false, %bb.c ], [ false, %bb.e ], [ %i.aa, %bb.m ], [ false, %bb.f ], [ %i.af, %bb.n ], [ false, %bb.h ], [ %i.ak, %bb.o ], [ false, %bb.i ], [ %i.ap, %bb.p ], [ false, %bb.j ], [ %i.au, %bb.q ], [ false, %bb.k ], [ false, %bb.am ], [ %i.du, %bb.an ], [ false, %bb.t ], [ %i.dz, %bb.ao ], [ false, %bb.al ], [ %i.df, %bb.ak ], [ false, %bb.v ], [ false, %bb.x ], [ %i.cg, %bb.af ], [ false, %bb.y ], [ %i.cl, %bb.ag ], [ false, %bb.aa ], [ %i.cq, %bb.ah ], [ false, %bb.ab ], [ %i.cv, %bb.ai ], [ false, %bb.ac ], [ %i.da, %bb.aj ], [ false, %bb.ad ], [ false, %bb.ae ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXse_NtNtCsb80QtQtK5z0_6bitvec5slice4iterINtB5_8IterOnesyNtNtB9_5order4Msb0ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %i.f = lshr i64 %i.e, 3                         ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19599
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = shl i64 %i.i, 3
  %i.k = and i64 %i.j, 56                         ; 2 uses
  %i.l = and i64 %i.e, 7                          ; 2 uses
  %i.m = or disjoint i64 %i.k, %i.l               ; 5 uses
  %i.n = trunc nuw nsw i64 %i.m to i8             ; 2 uses
  %i.o = add nuw nsw i64 %i.f, 63                 ; 3 uses
  %i.p = add nuw nsw i64 %i.m, %i.o
  %i.q = lshr i64 %i.p, 6                         ; 2 uses
  %i.r = sub nuw nsw i64 64, %i.m                 ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.f, %i.r
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nuw nsw i64 %i.f, %i.r
  %i.t = trunc i64 %i.s to i8
  %i.u = and i8 %i.t, 63                          ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  %i.w = select i1 %i.v, i8 64, i8 %i.u
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.x = trunc nuw nsw i64 %i.f to i8
  %i.y = add nuw nsw i8 %i.n, %i.x
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.4.0.i.i.i = phi i8 [ %i.w, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.z = icmp eq i64 %i.m, 0
  %i.aa = icmp eq i8 %.sroa.4.0.i.i.i, 64         ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %spec.select.i.i = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.f:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  br i1 %i.aa, label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %i.q, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i.i = select i1 %i.ab, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic
  br label %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCsoTR8nlGN3X_18ty_python_semantic, %bb.f ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCsoTR8nlGN3X_18ty_python_semantic._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCsoTR8nlGN3X_18ty_python_semantic.i.i, %bb.g ], [ %spec.select.i.i, %bb.e ]
  %i.ac = and i64 %i.i, -8
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ac
  %i.ae = sub i64 0, %i.i
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae  ; 4 uses
  call void %.sroa.0.0.i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull readonly %i.af, i64 noundef %i.q, i8 noundef %i.n, i8 noundef %.sroa.4.0.i.i.i), !inline_history !19595
  %i.ag = load ptr, ptr %i.b, align 8, !noalias !19599, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.013.0.copyload.i = load ptr, ptr %i.ah, align 8, !noalias !19599 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !19599 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !19599, !noundef !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.016.0.copyload.i = load ptr, ptr %i.ak, align 8, !noalias !19599 ; 2 uses
  %.not35.i = icmp eq ptr %.sroa.016.0.copyload.i, null
  br i1 %.not35.i, label %bb.l, label %bb.k

bb.i:                                             ; preds = %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !19599, !nonnull !10, !noundef !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !19599, !noundef !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !19599, !noundef !10
  %.val38.i = load i64, ptr %i.am, align 8, !noundef !10
  %i.ar = and i64 %.val38.i, %i.ao                ; 2 uses
  %i.as = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.ar, i64 noundef %i.ao)
  br i1 %i.as, label %bb.j, label %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit

bb.j:                                             ; preds = %bb.i
  %i.at = zext i8 %i.aq to i64
  %i.au = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ar, i1 false)
  %i.av = add nuw nsw i64 %i.au, %i.at
  %i.aw = sub nsw i64 %i.o, %i.av
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %.sroa.820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %.sroa.820.0.copyload.i = load i8, ptr %.sroa.820.0..sroa_idx.i, align 1, !noalias !19599
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.618.0.copyload.i = load i64, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !19599 ; 2 uses
  %.sroa.016.0.copyload.val.i = load i64, ptr %.sroa.016.0.copyload.i, align 8, !noundef !10
  %i.ax = and i64 %.sroa.016.0.copyload.val.i, %.sroa.618.0.copyload.i ; 2 uses
  %i.ay = zext i8 %.sroa.820.0.copyload.i to i64
  %i.az = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 false)
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  %i.bb = sub nsw i64 %i.o, %i.ba                 ; 2 uses
  %i.bc = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.ax, i64 noundef %.sroa.618.0.copyload.i)
  br i1 %i.bc, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sroa.04.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.h, %bb.h ] ; 2 uses
  %i.bd = icmp eq i64 %i.aj, 0
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.bf = icmp eq ptr %i.ag, %i.bg
  br i1 %i.bf, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.04.1.i26 = phi i64 [ %.sroa.04.0.i, %.lr.ph ], [ %i.bi, %bb.m ]
  %.sroa.5.0.i25 = phi ptr [ %i.be, %.lr.ph ], [ %i.bg, %bb.m ]
  %i.bg = getelementptr inbounds i8, ptr %.sroa.5.0.i25, i64 -8 ; 3 uses
  %.val.i = load i64, ptr %i.bg, align 8, !noundef !10 ; 2 uses
  %i.bh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.val.i, i1 false)
  %i.bi = sub i64 %.sroa.04.1.i26, %i.bh          ; 3 uses
  %i.bj = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.val.i, i64 noundef -1)
  br i1 %i.bj, label %.loopexit, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %.sroa.04.1.i.lcssa = phi i64 [ %.sroa.04.0.i, %bb.l ], [ %i.bi, %bb.m ]
  %.not37.i = icmp eq ptr %.sroa.013.0.copyload.i, null
  br i1 %.not37.i, label %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %.sroa.013.0.copyload.val.i = load i64, ptr %.sroa.013.0.copyload.i, align 8, !noundef !10
  %i.bk = and i64 %.sroa.013.0.copyload.val.i, %.sroa.6.0.copyload.i ; 2 uses
  %i.bl = call noundef zeroext i1 @_RINvNtNtCsb80QtQtK5z0_6bitvec5slice14specialization7has_oneyECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.bk, i64 noundef %.sroa.6.0.copyload.i)
  br i1 %i.bl, label %bb.p, label %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bk, i1 false)
  %i.bn = sub i64 %.sroa.04.1.i.lcssa, %i.bm
  br label %.loopexit

_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.i, %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19599
  br label %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.k, %bb.p
  %.sroa.8.3.ph.i.ph = phi i64 [ %i.aw, %bb.j ], [ %i.bn, %bb.p ], [ %i.bb, %bb.k ], [ %i.bi, %bb.n ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19599
  %i.bo = add i64 %.sroa.8.3.ph.i.ph, %i.m
  %i.bp = ashr i64 %i.bo, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19600
  store i64 %i.bp, ptr %i.a, align 8, !noalias !19600
  %i.bq = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull readonly %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !19601 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19600
  %i.br = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.bs = and i64 %i.br, -8
  %i.bt = lshr exact i64 %i.k, 3
  %i.bu = shl i64 %.sroa.8.3.ph.i.ph, 3
  %i.bv = sub i64 %i.bt, %i.br
  %i.bw = getelementptr i8, ptr %i.af, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bs  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = or disjoint i64 %i.bu, %i.l
  store ptr %i.bx, ptr %0, align 8
  store i64 %i.by, ptr %i.c, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !10
  %i.cb = add i64 %i.ca, %.sroa.8.3.ph.i.ph
  br label %bb.q

_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.a, %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread, %.loopexit
  %.sroa.3.0 = phi i64 [ %i.cb, %.loopexit ], [ undef, %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ 0, %_RNvMNtNtNtCsb80QtQtK5z0_6bitvec5slice14specialization4msb0INtB6_8BitSliceyNtNtB8_5order4Msb0E11sp_last_oneCsoTR8nlGN3X_18ty_python_semantic.exit.thread ]
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.cd
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_13SliceContains14slice_containsCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #34 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19615)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2s_13SliceContains14slice_contains0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val1.i.i = load ptr, ptr %0, align 8, !alias.scope !19615, !noalias !19616, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 15
  %i.c = load i8, ptr %i.b, align 1, !range !31, !alias.scope !19617, !noalias !19618, !noundef !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19617, !noalias !19618, !noundef !10
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i4.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i5.i.i.i.i.i = select i1 %i.g, i64 %spec.store.select.i4.i.i.i.i.i, i64 %i.f ; 2 uses
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %.val1.i.i, align 8, !alias.scope !19617, !noalias !19618
  %.sroa.01.0.i6.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %.val1.i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i, %.lr.ph.i
  %i.l = phi ptr [ %1, %.lr.ph.i ], [ %i.m, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val3.i = load ptr, ptr %i.l, align 8, !noalias !19619, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19623)
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i, i64 15
  %i.o = load i8, ptr %i.n, align 1, !range !31, !alias.scope !19624, !noalias !19625, !noundef !10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !19624, !noalias !19625, !noundef !10
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = icmp ult i8 %i.o, -48
  %i.t = zext i8 %i.o to i64
  %i.u = add nsw i64 %i.t, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.s, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.r
  %i.v = icmp ugt i8 %i.o, -49
  %i.w = load ptr, ptr %.val3.i, align 8, !alias.scope !19624, !noalias !19625
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.v, ptr %i.w, ptr %.val3.i ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i5.i.i.i.i.i
  br i1 %i.x, label %bb.c, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i, %.sroa.01.0.i6.i.i.i.i.i
  br i1 %i.y, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2s_13SliceContains14slice_contains0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %.split.i

.split.i:                                         ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i), !noalias !19619
  %i.z = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.z, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2s_13SliceContains14slice_contains0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i: ; preds = %.split.i, %bb.b
  %.not10.i = icmp eq ptr %i.m, %i.a
  br i1 %.not10.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2s_13SliceContains14slice_contains0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2s_13SliceContains14slice_contains0ECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %.split.i, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_13SliceContains14slice_contains0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.i ], [ true, %bb.c ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

end_hunk_11
