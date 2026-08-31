Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.01?download=true
inline.NumInlined: 1341
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtBb_7Project5rules1__1__6___ctor:bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtBb_7Project7program1__1__6___ctor() unnamed_addr #4 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtBb_7Project7program1__1__11___INVENTORY, align 8, !nonnull !8, !noundef !8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtBb_7Project7program1__1__11___INVENTORY, i64 8), align 8, !nonnull !8, !align !15, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtBb_7Project7program1__1__11___INVENTORY)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects0_1__30check_file_impl_Configuration_ENtB2_3Any7type_idB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @115, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_ENtB2_3Any7type_idB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @116, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1p_7Project5rules1__21rules__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @117, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1p_7Project7program1__23program__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @118, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvCs4o81Y09oZk1_10ty_projects0_1__30check_file_impl_Configuration_ENtB2_3Any7type_idB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @119, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_ENtB2_3Any7type_idB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @120, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1l_7Project5rules1__21rules__Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @121, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1l_7Project7program1__23program__Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @123, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNvMsd_Cs4o81Y09oZk1_10ty_projectNtB8_7Project5rulesBy_NtB2_11InnerTrait_6rules_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(296) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !8, !alias.scope !1809, !nonnull !8
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2), !noalias !1809, !inline_history !1605 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtCs4o81Y09oZk1_10ty_project7ProjectEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1I_(ptr noundef nonnull align 4 @_RNvNvMs0_NvCs4o81Y09oZk1_10ty_project1__NtB9_7Project11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d), !noalias !1809
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtCs4o81Y09oZk1_10ty_project7ProjectE5fieldBV_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef range(i32 1, 0) %0, i32 noundef %1, i64 noundef 3), !noalias !1809
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1809, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1088
  %i.k = load ptr, ptr %i.j, align 16, !nonnull !8, !noundef !8 ; 2 uses
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXNvMsd_Cs4o81Y09oZk1_10ty_projectNtB8_7Project7programBy_NtB2_11InnerTrait_8program_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load ptr, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } %.val(ptr noundef nonnull %2), !inline_history !1300 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtCs4o81Y09oZk1_10ty_project7ProjectEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1I_(ptr noundef nonnull align 4 @_RNvNvMs0_NvCs4o81Y09oZk1_10ty_project1__NtB9_7Project11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtCs4o81Y09oZk1_10ty_project7ProjectE5fieldBV_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef range(i32 1, 0) %0, i32 noundef %1, i64 noundef 4)
  call fastcc void @_RNvXs8_NtCs2O29vuvTAEJ_14ty_python_core7programNtB5_15ProgramSettingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.g)
  %i.h = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core7programNtB4_7Program13from_settings(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(192) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i32, i32 } %i.h
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtCs45bxiIjzMqg_5salsa8databaseNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB5_13AsDynDatabase15as_dyn_databaseBE_(ptr noundef nonnull align 8 %0) unnamed_addr #11 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @28, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects0_1__30check_file_impl_Configuration_ENtB5_18FunctionIngredient10sync_tableB10_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_ENtB5_18FunctionIngredient10sync_tableB10_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB16_7Project5rules1__21rules__Configuration_ENtB5_18FunctionIngredient10sync_tableB16_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB16_7Project7program1__23program__Configuration_ENtB5_18FunctionIngredient10sync_tableB16_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs4o81Y09oZk1_10ty_project4globNtB5_20IncludeExcludeFilterNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(944) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB5_13IncludeFilterNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtNtCs4o81Y09oZk1_10ty_project4glob7excludeNtB4_13ExcludeFilterNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !15, !noundef !8
  %i.g = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @124, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvCs4o81Y09oZk1_10ty_projects0_1__NtB5_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1812, !noalias !1815, !noundef !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1815, !noalias !1812, !noundef !8 ; 3 uses
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1812, !noalias !1815, !nonnull !8, !noundef !8 ; 25 uses
  %.val2.i = load ptr, ptr %2, align 8, !alias.scope !1815, !noalias !1812, !nonnull !8, !noundef !8 ; 25 uses
  %i.g = icmp eq ptr %.val.i, %.val2.i
  br i1 %i.g, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.j = load i64, ptr %i.h, align 8, !range !1822, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !range !1822, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 3
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %i.t, i64 %i.o), !noalias !1825
  %i.w = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.w, label %bb.h, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.y = load i64, ptr %i.x, align 8, !range !133, !alias.scope !1817, !noalias !1823, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !range !133, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.ab = icmp eq i64 %i.aa, -1                   ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %i.ab, label %bb.l, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %.split.i.i.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

.split.i.i.i.i:                                   ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %bcmp20.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.ai, i64 %i.ad), !noalias !1825
  %i.al = icmp eq i32 %bcmp20.i.i.i.i, 0
  br i1 %i.al, label %bb.l, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.l:                                             ; preds = %.split.i.i.i.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.an = load i8, ptr %i.am, align 8, !range !1727, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 232
  %i.ap = load i8, ptr %i.ao, align 8, !range !1727, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.m, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val2.i, i64 200
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.n, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2.i, i64 192
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %bcmp21.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.ax, i64 %i.as), !noalias !1825
  %i.ba = icmp eq i32 %bcmp21.i.i.i.i, 0
  br i1 %i.ba, label %bb.o, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 216
  %.not22.i.i.i.i = icmp eq ptr %i.bc, null
  %i.be = getelementptr inbounds nuw i8, ptr %.val2.i, i64 208
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1820, !noalias !1824, !noundef !8 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  br i1 %.not22.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.bg, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.r

bb.q:                                             ; preds = %bb.o
  br i1 %i.bg, label %bb.s, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2.i, i64 216
  %i.bi = load i64, ptr %i.bd, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.bj = load i64, ptr %i.bh, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %.split30.i.i.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

.split30.i.i.i.i:                                 ; preds = %bb.r
  %bcmp24.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bc, ptr nonnull %i.bf, i64 %i.bi), !noalias !1825
  %i.bl = icmp eq i32 %bcmp24.i.i.i.i, 0
  br i1 %i.bl, label %bb.s, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.s:                                             ; preds = %.split30.i.i.i.i, %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2.i, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.t, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %i.bv = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationINtB5_14SlicePartialEqBC_E17equal_same_lengthCs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bs, i64 noundef %i.bn), !noalias !1825
  br i1 %i.bv, label %bb.u, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 80
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val2.i, i64 80
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.v, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %i.cf = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticINtB5_14SlicePartialEqBC_E17equal_same_lengthCs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cc, i64 noundef %i.bx), !noalias !1825
  br i1 %i.cf, label %bb.w, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 112 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !133, !alias.scope !1817, !noalias !1823, !noundef !8
  %.not25.i.i.i.i = icmp eq i64 %i.ch, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2.i, i64 112 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !133, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.ck = icmp eq i64 %i.cj, -1                   ; 2 uses
  br i1 %.not25.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ck, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %.split31.i.i.i.i

bb.y:                                             ; preds = %bb.w
  br i1 %i.ck, label %bb.z, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

.split31.i.i.i.i:                                 ; preds = %bb.x
  %i.cl = tail call fastcc noundef zeroext i1 @_RNvXsp_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_3FixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ci), !noalias !1826
  br i1 %i.cl, label %bb.z, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.z:                                             ; preds = %.split31.i.i.i.i, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i, i64 176
  %i.cn = load i32, ptr %i.cm, align 8, !range !1601, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 180
  %i.cp = trunc nuw i32 %i.cn to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2.i, i64 176
  %i.cr = load i32, ptr %i.cq, align 8, !range !1601, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.cs = trunc nuw i32 %i.cr to i1               ; 2 uses
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cs, label %.split32.i.i.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.cs, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.ac

.split32.i.i.i.i:                                 ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2.i, i64 180
  %i.cu = load i32, ptr %i.co, align 4, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.cv = load i32, ptr %i.ct, align 4, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.ac:                                            ; preds = %.split32.i.i.i.i, %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 184
  %i.cy = load i32, ptr %i.cx, align 8, !range !1601, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i, i64 188
  %i.da = trunc nuw i32 %i.cy to i1
  %i.db = getelementptr inbounds nuw i8, ptr %.val2.i, i64 184
  %i.dc = load i32, ptr %i.db, align 8, !range !1601, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.dd = trunc nuw i32 %i.dc to i1               ; 2 uses
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.dd, label %.split33.i.i.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.dd, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.af

.split33.i.i.i.i:                                 ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %.val2.i, i64 188
  %i.df = load i32, ptr %i.cz, align 4, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.dg = load i32, ptr %i.de, align 4, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.af:                                            ; preds = %.split33.i.i.i.i, %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %i.dj = load i64, ptr %i.di, align 8, !range !133, !alias.scope !1817, !noalias !1823, !noundef !8
  %.not27.i.i.i.i = icmp eq i64 %i.dj, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2.i, i64 152
  %i.dl = load i64, ptr %i.dk, align 8, !range !133, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.dm = icmp eq i64 %i.dl, -1                   ; 2 uses
  br i1 %.not27.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dm, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.dm, label %bb.aj, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 168
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !1817, !noalias !1823, !noundef !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val2.i, i64 168
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %.split34.i.i.i.i, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

.split34.i.i.i.i:                                 ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %.val2.i, i64 160
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1820, !noalias !1824, !nonnull !8, !noundef !8
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i, i64 160
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1817, !noalias !1823, !nonnull !8, !noundef !8
  %bcmp29.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.dv, ptr nonnull %i.dt, i64 %i.do), !noalias !1825
  %i.dw = icmp eq i32 %bcmp29.i.i.i.i, 0
  br i1 %i.dw, label %bb.aj, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.aj:                                            ; preds = %.split34.i.i.i.i, %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i, i64 224
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1817, !noalias !1823, !noundef !8
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2.i, i64 224
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !1820, !noalias !1824, !noundef !8
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.ak:                                            ; preds = %bb.b
  %3 = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %3)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i = load i64, ptr %i.ec, align 8, !alias.scope !1812, !noalias !1815, !noundef !8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i = load i64, ptr %4, align 8, !alias.scope !1815, !noalias !1812, !noundef !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.ed = icmp eq i64 %.val4.i, %.val6.i
  br i1 %i.ed, label %bb.al, label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

bb.al:                                            ; preds = %bb.ak
  %i.ee = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticINtB5_14SlicePartialEqBC_E17equal_same_lengthCs4o81Y09oZk1_10ty_project(ptr noundef nonnull readonly align 8 %i.a, ptr noundef nonnull readonly align 8 %i.c, i64 noundef range(i64 0, 1152921504606846976) %.val4.i), !noalias !1826
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB1j_ENtNtB7_3cmp9PartialEq2eqCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %.split.i.i.i.i, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r, %.split30.i.i.i.i, %bb.s, %bb.t, %bb.u, %bb.v, %bb.x, %bb.y, %.split31.i.i.i.i, %bb.aa, %bb.ab, %.split32.i.i.i.i, %bb.ad, %bb.ae, %.split33.i.i.i.i, %bb.ag, %bb.ah, %bb.ai, %.split34.i.i.i.i, %bb.aj, %bb.ak, %bb.al
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ false, %.split34.i.i.i.i ], [ true, %bb.c ], [ %i.eb, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.g ], [ false, %.split.i.i.i.i ], [ false, %.split30.i.i.i.i ], [ false, %.split31.i.i.i.i ], [ false, %.split32.i.i.i.i ], [ false, %.split33.i.i.i.i ], [ %i.ee, %bb.al ], [ false, %bb.ak ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvCs4o81Y09oZk1_10ty_projects0_1__NtB5_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(296) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvCs4o81Y09oZk1_10ty_projects0_1__NtB5_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 3 uses
  %i.j = alloca [104 x i8], align 8               ; 19 uses
  %i.k = alloca [104 x i8], align 8               ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %3, ptr %i.n, align 4, !noalias !1832
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %4, ptr %i.o, align 4, !noalias !1832
  %i.p = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile4file(i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2), !noalias !1827 ; 2 uses
  %i.q = extractvalue { i32, i32 } %i.p, 0
  %i.r = extractvalue { i32, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1832
  store ptr %1, ptr %i.m, align 8, !noalias !1832
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %2, ptr %i.s, align 8, !noalias !1832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1836
  call void @_RINvNtCs56aZGHL6Dc6_7ruff_db5panic12catch_unwindNCNvNvXs0_NvCs4o81Y09oZk1_10ty_projects0_1__NtBU_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtB4_10diagnostic10DiagnosticEB4g_EEBW_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.n), !noalias !1840
  %i.t = load i64, ptr %i.k, align 8, !range !1841, !noalias !1836, !noundef !8
  %.not.i.i = icmp eq i64 %i.t, -2
  br i1 %.not.i.i, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !1836
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  %i.v = invoke noundef ptr @_RINvMNtCs56aZGHL6Dc6_7ruff_db5panicNtB3_7Payload12downcast_refNtNtCs45bxiIjzMqg_5salsa9cancelled9CancelledECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %bb.c unwind label %.thread55.i.i, !noalias !1842 ; 2 uses

.thread55.i.i:                                    ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.b
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %.not16.i.i = icmp eq ptr %i.v, null
  br i1 %.not16.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.v, align 1, !range !53, !noalias !1842, !noundef !8
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1836
  %i.y = invoke noundef nonnull align 8 ptr @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File4pathDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EBZ_(i32 noundef range(i32 1, 0) %i.q, i32 noundef %i.r, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2)
          to label %bb.h unwind label %.thread55.i.i, !noalias !1842

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !8, !alias.scope !1843, !noalias !1844, !nonnull !8
  invoke void %i.aa(ptr noundef nonnull %1)
          to label %bb.e unwind label %.thread55.i.i, !noalias !1842

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !1836
  call void @_RNvMs0_NtCs56aZGHL6Dc6_7ruff_db5panicNtB5_10PanicError13resume_unwind(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.i) #40, !noalias !1842
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvMs0_NtCs56aZGHL6Dc6_7ruff_db5panicNtB6_10PanicError21to_diagnostic_messageRNtNtNtB8_5files4path8FilePathECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.y)
          to label %bb.i unwind label %.thread55.i.i, !noalias !1842

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1836
  store i64 0, ptr %i.f, align 8, !noalias !1836
  %i.ab = invoke noundef nonnull ptr @_RINvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB3_10Diagnostic3newNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i8 noundef 3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.j unwind label %.thread55.i.i, !noalias !1842

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.g, align 8, !noalias !1836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1836
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic23add_bug_sub_diagnostics(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 11)
          to label %bb.m unwind label %bb.l, !noalias !1842

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit42.i.i: ; preds = %bb.y, %bb.u, %bb.t, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ba, %bb.y ], [ %i.am, %bb.u ], [ %i.am, %bb.t ] ; 2 uses
  %.sroa.010.2.i.i = phi i1 [ %.sroa.010.3.i.i, %bb.l ], [ %.not17.i.i, %bb.y ], [ false, %bb.u ], [ false, %bb.t ] ; 2 uses
  %.sroa.08.2.i.i = phi i1 [ %.sroa.08.3.i.i, %bb.l ], [ false, %bb.y ], [ true, %bb.u ], [ true, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.ac = load ptr, ptr %i.g, align 8, !alias.scope !1854, !noalias !1836, !nonnull !8, !noundef !8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !1855
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit42.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.thread.i.i unwind label %bb.v, !noalias !1842

bb.l:                                             ; preds = %bb.z, %bb.x, %bb.s, %bb.j
  %.sroa.010.3.i.i = phi i1 [ %.not17.i.i, %bb.x ], [ %.not17.i.i, %bb.z ], [ false, %bb.s ], [ true, %bb.j ]
  %.sroa.08.3.i.i = phi i1 [ %.not18.i.i, %bb.x ], [ false, %bb.z ], [ true, %bb.s ], [ true, %bb.j ]
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit42.i.i

bb.m:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.j, align 8, !range !112, !noalias !1836, !noundef !8
  %.not17.i.i = icmp eq i64 %i.ag, -1             ; 4 uses
  br i1 %.not17.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !1836
  %i.ah = load i64, ptr %i.e, align 8, !range !19, !noalias !1836, !noundef !8
  switch i64 %i.ah, label %default.unreachable [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit.i.i
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1836, !align !15, !noundef !8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.aj, null           ; 2 uses
  br i1 %.not18.i.i, label %bb.x, label %bb.w

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ak = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECs4o81Y09oZk1_10ty_project(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 87)
          to label %.invoke.i.i unwind label %bb.t, !noalias !1842

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1836
  store ptr %i.e, ptr %i.c, align 8, !noalias !1836
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9BacktraceNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1836
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @2, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4o81Y09oZk1_10ty_project.exit.i.i unwind label %bb.t, !noalias !1842

bb.r:                                             ; preds = %.invoke.i.i
  %.pr.i.i = load i64, ptr %i.e, align 8, !alias.scope !1856, !noalias !1836
  %switch.i.i.i.i = icmp samesign ult i64 %.pr.i.i, 2
  br i1 %switch.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit.i.i unwind label %bb.l, !noalias !1842

bb.t:                                             ; preds = %.invoke.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4o81Y09oZk1_10ty_project.exit.i.i, %bb.q, %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load i64, ptr %i.e, align 8, !range !19, !alias.scope !1861, !noalias !1836, !noundef !8
  %switch.i.i40.i.i = icmp samesign ult i64 %i.an, 2
  br i1 %switch.i.i40.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit42.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs4o81Y09oZk1_10ty_project.exit42.i.i unwind label %bb.v, !noalias !1842

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4o81Y09oZk1_10ty_project.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1836
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.invoke.i.i unwind label %bb.t, !noalias !1842

end_hunk_0
