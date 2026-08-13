inline.NumInlined: 419
inline.NumDeleted: 258
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector20OwnedSqliteBindValueNtNtBI_7backend10SqliteTypeEEBK_:bb.a
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector20OwnedSqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector20OwnedSqliteBindValueEBJ_.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEEBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = load i32, ptr %0, align 8, !range !69, !alias.scope !66, !noundef !3
  switch i32 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit [
    i32 1, label %bb.b
    i32 3, label %bb.c
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.val3.sink.i = phi i64 [ %.val1.i, %bb.b ], [ %.val3.i, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !66, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.sink.i, i64 noundef 1) #17, !noalias !66
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !66, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !66, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %.val3.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueEBJ_.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropsENCINvNtNtB2d_8adapters3map12map_try_foldBX_sB3b_INtNtNtB2f_3ops12control_flow11ControlFlowINtNtB2f_6result6ResultB3b_zEB3b_ENCNvBZ_42gen_vec_of_appropriate_length_valid_digits0NCINvNvXs_NtB3U_4takeINtB6N_4TakepEB27_8try_fold5checksB3b_B5f_NCINvNtB8_16in_place_collect24write_in_place_with_dropsE0E0E0B4z_EB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !3  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi ptr [ %.promoted, %bb.a ], [ %i.f, %bb.c ] ; 3 uses
  %.sroa.4.0 = phi ptr [ %3, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.d, align 2, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %.val, align 8, !noalias !70, !noundef !3
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %.val, align 8, !noalias !70
  store i16 %i.e, ptr %.sroa.4.0, align 2, !noalias !70
  %i.i = load i64, ptr %.val, align 8, !noalias !70, !noundef !3
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 2 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.4.0.lcssa.sink = phi ptr [ %i.k, %bb.c ], [ %.sroa.4.0, %bb.b ]
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.m, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2d_8adapters3map12map_try_foldBX_suINtNtNtB2f_3ops12control_flow11ControlFlowsENCNvBZ_42gen_vec_of_appropriate_length_valid_digits0NCINvNvB27_4find5checksNCINvNvXs0_NtB3j_10skip_whileINtB61_9SkipWhileppEB27_4next5checksNCB4F_s_0E0E0E0B3V_EB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !3  ; 2 uses
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit: ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit
  %i.e = load i16, ptr %i.d, align 2, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load i8, ptr %.val, align 1, !range !75, !noundef !3
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp ne i16 %i.e, 0
  %or.cond.not.i.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit, %bb.c
  %.sroa.3.0 = phi i16 [ %i.e, %bb.c ], [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit ]
  %.sroa.0.0 = phi i16 [ 1, %bb.c ], [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsuINtNtNtBa_3ops12control_flow11ControlFlowsENCNvB11_42gen_vec_of_appropriate_length_valid_digits0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checksNCINvNvXs0_NtB6_10skip_whileINtB4K_9SkipWhileppEB3P_4next5checksNCB2T_s_0E0E0E0B19_.exit ]
  %i.j = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.k = insertvalue { i16, i16 } %i.j, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.k

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %.val, align 1
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYNtNtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup7pg_type7columns3oidNtNtNtBd_18expression_methods25global_expression_methods17ExpressionMethods2eqINtNtNtBd_10expression11sql_literal10SqlLiteralNtNtNtBb_5types9sql_types3OidINtB2v_13UncheckedBindIB2t_B3d_EINtNtB2x_5bound5BoundNtNtBd_9sql_types4TextReEEEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvYNtNtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup7pg_type7columns7typnameNtNtNtBd_18expression_methods25global_expression_methods17ExpressionMethods2eqRINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs8_NtNtCsjRvGck33osM_6diesel10type_impls10primitivesRINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtB9_10expression12AsExpressionNtNtB9_9sql_types4TextE13as_expressionB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitE32forget_allocation_drop_remainingB16_(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !76, !noundef !3 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !alias.scope !76, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.thread.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i, !prof !83

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !84, !noundef !3 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjRvGck33osM_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !84, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !84
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjRvGck33osM_6diesel.exit

_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjRvGck33osM_6diesel.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !84
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjRvGck33osM_6diesel.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !38, !alias.scope !85, !noundef !3
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i, !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !90
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !90, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjRvGck33osM_6diesel.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjRvGck33osM_6diesel.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE11extend_withCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !91, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !alias.scope !91, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjRvGck33osM_6diesel.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjRvGck33osM_6diesel.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjRvGck33osM_6diesel.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjRvGck33osM_6diesel.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjRvGck33osM_6diesel.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i32 %2, ptr %.sroa.0.0.lcssa28, align 4
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store i32 %2, ptr %.sroa.0.021, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !97
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvMs8_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collectorNtB5_23InternalSqliteBindValue9result_of(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !69, !noundef !3
  switch i32 %i.a, label %default.unreachable51 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

default.unreachable51:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2147483647
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit41, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 2147483647
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 5 uses
  %i.q = icmp ugt i64 %i.p, 2147483647
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit42, label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noundef !3
  tail call void @sqlite3_result_int(ptr noundef nonnull %1, i32 noundef %i.s) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  tail call void @sqlite3_result_int64(ptr noundef nonnull %1, i64 noundef %i.u) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load double, ptr %i.v, align 8, !noundef !3
  tail call void @sqlite3_result_double(ptr noundef nonnull %1, double noundef %i.w) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

bb.i:                                             ; preds = %bb.a
  tail call void @sqlite3_result_null(ptr noundef nonnull %1) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.z = trunc nuw nsw i64 %i.c to i32
  tail call void @sqlite3_result_text(ptr noundef nonnull %1, ptr noundef nonnull %i.y, i32 noundef %i.z, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit: ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.m, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit42, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit41
  %.sroa.0.0 = phi i8 [ 2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsjRvGck33osM_6diesel.exit42 ], [ 2, %bb.b ], [ 2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit41 ], [ -1, %bb.f ], [ -1, %bb.l ], [ -1, %bb.m ], [ 2, %bb.d ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i8 %.sroa.0.0

bb.k:                                             ; preds = %bb.c
  %i.aa = trunc nuw nsw i64 %i.h to i32
  tail call void @sqlite3_result_text(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef %i.aa, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #17
  %i.ab = icmp eq i64 %i.h, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %i.h, i64 noundef 1) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit41: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %i.h, i64 noundef 1) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit

bb.m:                                             ; preds = %bb.d
end_hunk_0
