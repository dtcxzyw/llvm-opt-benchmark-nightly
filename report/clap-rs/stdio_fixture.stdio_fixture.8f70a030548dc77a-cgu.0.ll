Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command12MaxTermWidthNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command9TermWidthNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7styling6StylesNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 2 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !1307, !noalias !1308, !noundef !6 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !1307, !noalias !1308, !noundef !6 ; 4 uses
  %i.b = sub nuw i64 %.val1.i.i, %.val.i.i        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1309, !noundef !6 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !1309, !noundef !6
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 24) #19
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1306
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1306, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.k = icmp ule i64 %.val.i.i, %.val1.i.i
  tail call void @llvm.assume(i1 %i.k)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i, %.val1.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %1, align 8, !alias.scope !1316
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 1
  %i.m = icmp eq i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !1317, !noalias !1318, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1319, !noalias !1320, !nonnull !6, !noundef !6
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i.us.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1319, !noalias !1320, !noundef !6 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i, label %.lr.ph.i.preheader3.i.i.i.i.i.i

.lr.ph.i.preheader3.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1321
  unreachable

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.us.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1321
  %i.q = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #19, !noalias !1321 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.split.us.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %.val.i.i.us.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i1 false), !noalias !1322
  br label %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i

_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.us.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.us.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 3 uses
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !1323
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1323
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1323
  %i.t = add i64 %i.h, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i) #22, !noalias !1324
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i, %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i ], [ %i.t, %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i ]
  store i64 %.val1.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !1306, !noalias !1325
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser10parse_ref_CscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #19
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1328
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #19, !noalias !1328 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22, !noalias !1328
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @61, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser15possible_valuesCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1351
  %i.f = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #19, !noalias !1351 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #22, !noalias !1352
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.i, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 7 uses
  %.sroa.7.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %1, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ]
  %1 = add nsw i64 %.sroa.10.052.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.j = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1352
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1354, !noalias !1355, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1354, !noalias !1355, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !7, !alias.scope !1354, !noalias !1355, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #19, !noalias !1356
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1357
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.d ], [ -1, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1354, !noalias !1355, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !1354, !noalias !1355, !noundef !6 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.t = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.t, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1359
  %i.v = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 1, 9) 8) #19, !noalias !1359 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %3, label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %.val4.i.i.i.i, 1
  %2 = icmp eq i64 %.val4.i.i.i.i, 1
  br i1 %2, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i.a

.lr.ph.preheader.i.i.i.i.i.i.a:                   ; preds = %bb.f
  %unroll_iter = and i64 %.val4.i.i.i.i, -2
  br label %.lr.ph.i.i.i.i.i.i

3:                                                ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #22, !noalias !1360
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %9, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %8, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !1358, !noalias !1361, !nonnull !6, !noundef !6
  %6 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !1358, !noalias !1361, !noundef !6
  store ptr %.val.i.i.i.i.i.i, ptr %5, align 8, !noalias !1360
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %7, align 8, !noalias !1360
  %8 = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 32 ; 2 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val.i.i.i.i.i.i.1 = load ptr, ptr %4, align 8, !alias.scope !1358, !noalias !1361, !nonnull !6, !noundef !6
  %12 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 24
  %.val13.i.i.i.i.i.i.1 = load i64, ptr %12, align 8, !alias.scope !1358, !noalias !1361, !noundef !6
  store ptr %.val.i.i.i.i.i.i.1, ptr %11, align 8, !noalias !1360
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.val13.i.i.i.i.i.i.1, ptr %13, align 8, !noalias !1360
  %niter.next.1 = add nuw i64 %.sroa.10.020.i.i.i.i.i.i, 2 ; 2 uses
  %i.x = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.x, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.f
  %.sroa.0.022.i.i.i.i.i.i.epil.init = phi ptr [ %.val.i.i.i.i, %bb.f ], [ %9, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.021.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %8, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %.val4.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, align 8, !alias.scope !1358, !noalias !1361, !nonnull !6, !noundef !6
  %i.z = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, i64 8
  %.val13.i.i.i.i.i.i.a = load i64, ptr %i.z, align 8, !alias.scope !1358, !noalias !1361, !noundef !6
  store ptr %.val.i.i.i.i.i.i.a, ptr %i.y, align 8, !noalias !1360
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val13.i.i.i.i.i.i.a, ptr %i.aa, align 8, !noalias !1360
  br label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.g, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.e
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.v, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ], [ %i.v, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !range !1362, !alias.scope !1354, !noalias !1355, !noundef !6
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1352
  store i64 %.val4.i.i.i.i, ptr %i.k, align 8, !noalias !1363
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.o, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 %i.ac, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !1363
  %i.ad = icmp eq i64 %1, 0
  br i1 %i.ad, label %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i64.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1364
  %i.ae = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !1364 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.h:                                             ; preds = %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !1364
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.10.0.i64.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @60, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9parse_refCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #19
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1367
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #19, !noalias !1367 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22, !noalias !1367
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @61, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtCsfu0rQaTkGUu_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder5errorNtB5_7Message9formatted(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(126)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscjwHxV1jUiA_13stdio_fixture4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
