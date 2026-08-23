Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-7142f47bbbb769aa.diesel_derives.eaea373b367c385f-cgu.14?download=true
inline.NumInlined: 33
inline.NumDeleted: 30
begin_hunk_0_@_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB1W_8generics12GenericParamNtNtB1W_5token5CommaEEENtNtNtBa_6traits8iterator8Iterator10filter_mapB1R_NCNvNtCskarGseaywcB_14diesel_derives12sql_function15expand_variadics1_0EB4h_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB1W_8generics12GenericParamNtNtB1W_5token5CommaEEENtNtNtBa_6traits8iterator8Iterator8find_mapB1R_QNCNvNtCskarGseaywcB_14diesel_derives12sql_function15expand_variadics1_0EB4f_(ptr nofree writeonly sret([472 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [472 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB12_8generics12GenericParamNtNtB12_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB2y_8adapters9enumerateINtB3H_9EnumeratepEB2s_8try_fold9enumerateBX_uINtNtNtB2A_3ops12control_flow11ControlFlowBX_ENCINvNvB2s_8find_map5checkTjBX_EBX_QNCNvNtCskarGseaywcB_14diesel_derives12sql_function15expand_variadics1_0E0E0B4S_EB6i_(ptr nonnull sret([472 x i8]) align 8 %i.a, ptr align 8 %1, ptr align 8 %2, ptr nonnull align 8 %i.b)
  %i.c = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(472) %i.a, i64 472, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB1l_8generics12GenericParamNtNtB1l_5token5CommaEEECskarGseaywcB_14diesel_derives(ptr nonnull align 8 %i.a)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map11make_hasherINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeEuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0CskarGseaywcB_14diesel_derives(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeEECskarGseaywcB_14diesel_derives(ptr align 8 %i.a, ptr align 8 %1)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map11make_hasherNtNtCshMFl0SviwmK_3syn2ty4TypeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_8lifetime8LifetimeEENtNtNtB1o_4hash6random11RandomStateE0CskarGseaywcB_14diesel_derives(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCshMFl0SviwmK_3syn2ty4TypeECskarGseaywcB_14diesel_derives(ptr align 8 %i.a, ptr align 8 %1)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map14equivalent_keyINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeEBO_uE0CskarGseaywcB_14diesel_derives(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeEINtB2_10EquivalentBq_E10equivalentCskarGseaywcB_14diesel_derives(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvNtCsfKiFC1ztrmh_9hashbrown3map14equivalent_keyNtNtCshMFl0SviwmK_3syn2ty4TypeBO_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBS_8lifetime8LifetimeEEE0CskarGseaywcB_14diesel_derives(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownNtNtCshMFl0SviwmK_3syn2ty4TypeINtB2_10EquivalentBq_E10equivalentCskarGseaywcB_14diesel_derives(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4attr9AttributeE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 256)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, i64 256, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4expr3ArmE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 248)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4item11ForeignItemE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 352)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %3, i64 352, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4item4ItemE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 352)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %3, i64 352, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4item8ImplItemE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 592)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %2, ptr noundef nonnull align 8 dereferenceable(592) %3, i64 592, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4item9TraitItemE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 560)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %2, ptr noundef nonnull align 8 dereferenceable(560) %3, i64 560, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNCINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect24write_in_place_with_dropNtNtCshMFl0SviwmK_3syn4stmt4StmtE0CskarGseaywcB_14diesel_derives(ptr nofree readnone align 8 captures(none) %0, ptr %1, ptr initializes((0, 352)) %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(352) %3, i64 352, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.b = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB2a_8generics12GenericParamNtNtB2a_5token5CommaEuINtNtNtBf_3ops12control_flow11ControlFlowB25_ENCINvNvB1e_8find_map5checkTjB25_EB25_QNCNvNtCskarGseaywcB_14diesel_derives12sql_function15expand_variadics1_0E0E0B52_(ptr nofree writeonly sret([472 x i8]) align 8 captures(none) initializes((0, 472)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [480 x i8], align 8               ; 3 uses
  %i.b = alloca [472 x i8], align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(472) %2, i64 472, i1 false)
  store i64 %i.e, ptr %i.a, align 8
  call void @_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkTjINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB1n_8generics12GenericParamNtNtB1n_5token5CommaEEB1i_QNCNvNtCskarGseaywcB_14diesel_derives12sql_function15expand_variadics1_0E0B2Y_(ptr nonnull sret([472 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 8 %i.a)
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(472) %i.b, i64 472, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCshMFl0SviwmK_3syn4data5FielduINtNtNtBf_3ops12control_flow11ControlFlowIB2F_NtNtCskarGseaywcB_14diesel_derives5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3o_NtNtB2a_5error5ErrorEuB2E_NCNCNvNtB3s_5model21fields_from_item_data00NCINvXBb_INtBb_12GenericShuntINtB4f_3MapIBX_INtNtB2a_10punctuated4IterB26_EEB5z_EIB4K_NtNtBf_7convert10InfallibleB59_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3o_B3j_NcNtB3j_5Break0E0B3j_E0E0E0B3s_(ptr nofree writeonly sret([1464 x i8]) align 8 captures(none) initializes((0, 1464)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1464 x i8], align 8              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  call void @_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldTjRNtNtCshMFl0SviwmK_3syn4data5FieldEINtNtBa_6result6ResultNtNtCskarGseaywcB_14diesel_derives5field5FieldNtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB33_B1W_EENCNCNvNtB20_5model21fields_from_item_data00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB16_10punctuated4IterB12_EEB3S_EIB1B_NtNtBa_7convert10InfallibleB2G_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6R_12try_for_each4callB1W_B3H_NcNtB3H_5Break0E0B3H_E0E0B20_(ptr nonnull sret([1464 x i8]) align 8 %i.a, ptr align 8 %1, i64 %i.d, ptr align 8 %2)
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1464) %0, ptr noundef nonnull align 8 dereferenceable(1464) %i.a, i64 1464, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNCNCNvNtCskarGseaywcB_14diesel_derives12as_changeset6derive000B9_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke zeroext i1 @_RNvXs1_NtCskarGseaywcB_14diesel_derives5attrsNtB5_13SqlIdentifierINtNtCscI6d9CVNmLh_4core3cmp9PartialEqNtCsf5uYjtxkodL_11proc_macro25IdentE2eq(ptr align 8 %1, ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr align 8 %1) #19
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr align 8 %1)
  ret i1 %i.a

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNCNvNtCskarGseaywcB_14diesel_derives12as_changeset6derive00B7_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  call void @_RNvMNtCskarGseaywcB_14diesel_derives5fieldNtB2_5Field11column_name(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %i.c)
  call void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierNtNtCshMFl0SviwmK_3syn5error5ErrorE3mapbNCNCNCNvNtBM_12as_changeset6derive000EBM_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr align 8 %1)
  %i.d = call zeroext i1 @_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultbNtNtCshMFl0SviwmK_3syn5error5ErrorE17unwrap_or_defaultCskarGseaywcB_14diesel_derives(ptr nonnull align 8 %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNCNvNtCskarGseaywcB_14diesel_derives8query_id6derive00B7_(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 40
  %i.c = icmp eq i64 %i.a, 42
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = tail call zeroext i1 @_RINvMs_NtCshMFl0SviwmK_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.e, ptr nonnull @4, i64 25)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = icmp eq i64 %i.g, 19
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.e, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.n, %bb.f ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, -9223372036854775801
  br i1 %i.k, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i8, ptr %i.l, align 4
  %i.n = trunc nuw i8 %i.m to i1
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCNvNtCskarGseaywcB_14diesel_derives10insertable13filter_bounds0B5_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB5_7HashSetINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeEE3lenCskarGseaywcB_14diesel_derives(ptr align 8 %0)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives10insertable6derive0B5_(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call fastcc void @_RNvNtCskarGseaywcB_14diesel_derives10insertable24derive_into_single_table(ptr noalias align 8 %0, ptr align 8 %i.a, ptr align 8 %i.c, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNCNvNtCskarGseaywcB_14diesel_derives12as_changeset20generate_field_bound0B5_(ptr align 8 %0, ptr nofree readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_RNvNtCskarGseaywcB_14diesel_derives12as_changeset25field_changeset_actual_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_RNvNtCskarGseaywcB_14diesel_derives4util12is_option_ty(ptr align 8 %0)
  br i1 %i.c, label %bb.c, label %_RNvNtCskarGseaywcB_14diesel_derives12as_changeset25field_changeset_actual_ty.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 8 ptr @_RNvNtCskarGseaywcB_14diesel_derives4util18inner_of_option_ty(ptr align 8 %0)
  br label %_RNvNtCskarGseaywcB_14diesel_derives12as_changeset25field_changeset_actual_ty.exit

_RNvNtCskarGseaywcB_14diesel_derives12as_changeset25field_changeset_actual_ty.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12as_changeset6derives1_0B5_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = icmp eq i64 %i.i, 17
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.k, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = tail call { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8lifetime8LifetimeNtNtB4_5token4PlusE4iterCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.l) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  store ptr %i.n, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = invoke zeroext i1 @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8lifetime8LifetimeNtNtB4_5token4PlusE8is_emptyB4_(ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn8generics12GenericParamNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.a)
          to label %bb.af unwind label %bb.ae

bb.d:                                             ; preds = %bb.j
  br i1 %.sroa.02.1, label %.thread, label %bb.ad

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.y unwind label %bb.e

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.d)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.q, %bb.k
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.q ], [ %i.s, %bb.k ] ; 2 uses
  %.sroa.02.1 = phi i1 [ false, %bb.q ], [ %.sroa.02.2, %bb.k ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.d) #19
          to label %bb.d unwind label %bb.x

bb.k:                                             ; preds = %bb.u, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.sroa.02.2 = phi i1 [ false, %bb.u ], [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.i ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_colon(ptr nonnull align 8 %i.d)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private13push_lifetime(ptr nonnull align 8 %i.d, ptr nonnull @5, i64 7)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8push_add(ptr nonnull align 8 %i.d)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = invoke { ptr, ptr } @_RNvYINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB7_8lifetime8LifetimeENtNtNtCsa66IwKi6YE3_5quote9___private3ext14RepIteratorExt15quote_into_iterCskarGseaywcB_14diesel_derives(ptr %i.t, ptr align 8 %i.u)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  store ptr %i.w, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %i.y, align 8
  invoke void @_RNvXs0_NtCsa66IwKi6YE3_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %bb.r unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.preheader, %bb.t, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBG_8lifetime8LifetimeEECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.c) #19
          to label %bb.j unwind label %bb.x

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvYINtNtCsa66IwKi6YE3_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCsjWx9XcG30NR_12darling_core()
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.r, %bb.w
  %i.z = invoke align 8 ptr @_RNvXst_NtCshMFl0SviwmK_3syn10punctuatedINtB5_4IterNtNtB7_8lifetime8LifetimeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.c)
          to label %bb.s unwind label %.loopexit  ; 2 uses

bb.s:                                             ; preds = %.preheader
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.z, ptr %i.b, align 8
  invoke void @_RNvXs5_NtCsa66IwKi6YE3_5quote9___privateINtB5_9RepInterpRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeENtNtB7_9to_tokens8ToTokens9to_tokensCskarGseaywcB_14diesel_derives(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.d)
          to label %bb.w unwind label %.loopexit

bb.u:                                             ; preds = %bb.s
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBG_8lifetime8LifetimeEECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.c)
          to label %bb.v unwind label %bb.k

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8push_add(ptr nonnull align 8 %i.d)
          to label %.preheader unwind label %.loopexit

bb.x:                                             ; preds = %bb.ae, %.thread, %bb.z, %bb.q, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.y:                                             ; preds = %bb.h
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.e)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.e) #19
          to label %.thread unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_colon(ptr nonnull align 8 %i.e)
          to label %bb.ab unwind label %bb.z

end_hunk_0
