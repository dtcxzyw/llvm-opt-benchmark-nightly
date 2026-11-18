Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_fixture-9afb7519003256ef.test_fixture.92a92005736a33cb-cgu.2?download=true
inline.NumInlined: 322
inline.NumDeleted: 154
begin_hunk_0_@_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !445 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB8_6option6OptionNtB1A_16CrateDisplayNameEEENtB6_5Debug3fmtCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !446 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !447, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB7_6option6OptionNtB12_16CrateDisplayNameEENtB5_5Debug3fmtCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB7_3BoxSTNtNtB9_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #5 !guid !448 {
bb.a:
  %i.a = icmp ult i64 %2, 164703072086692426
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2O_INtNtB2S_9enumerate9EnumerateINtNtNtB2W_5slice4iter4IterB1x_EENCNvMsm_B16_INtB16_5ArenaB1x_E4iter0ENCNvMsk_B1z_NtB1z_17CrateGraphBuilder4iter0EE9from_iterCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !459 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 240                 ; 3 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = icmp eq ptr %.val2, %.val
  br i1 %i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2d_INtNtB2h_9enumerate9EnumerateINtNtNtB2l_5slice4iter4IterB1a_EENCNvMsm_BJ_INtBJ_5ArenaB1a_E4iter0ENCNvMsk_B1c_NtB1c_17CrateGraphBuilder4iter0EECscAFBYSOo4Yh_12test_fixture.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !460
  %i.j = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !460 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2d_INtNtB2h_9enumerate9EnumerateINtNtNtB2l_5slice4iter4IterB1a_EENCNvMsm_BJ_INtBJ_5ArenaB1a_E4iter0ENCNvMsk_B1c_NtB1c_17CrateGraphBuilder4iter0EECscAFBYSOo4Yh_12test_fixture.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.h) #22
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2d_INtNtB2h_9enumerate9EnumerateINtNtNtB2l_5slice4iter4IterB1a_EENCNvMsm_BJ_INtBJ_5ArenaB1a_E4iter0ENCNvMsk_B1c_NtB1c_17CrateGraphBuilder4iter0EECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = icmp samesign ule i64 %i.g, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.m)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !461
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !461
  store ptr %i.o, ptr %i.a, align 8, !noalias !461
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !461
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2N_5ArenaB1T_E4iter0ENCNvMsk_B1V_NtB1V_17CrateGraphBuilder4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4h_8for_each4callINtB2N_3IdxB1T_ENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5J_3VecB5k_E14extend_trustedBN_E0E0ECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2d_INtNtB2h_9enumerate9EnumerateINtNtNtB2l_5slice4iter4IterB1a_EENCNvMsm_BJ_INtBJ_5ArenaB1a_E4iter0ENCNvMsk_B1c_NtB1c_17CrateGraphBuilder4iter0EECscAFBYSOo4Yh_12test_fixture.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.val3 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.s = icmp eq i64 %.val3, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val4 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.t = shl nuw i64 %.val3, 2
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !462
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit

bb.f:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2d_INtNtB2h_9enumerate9EnumerateINtNtNtB2l_5slice4iter4IterB1a_EENCNvMsm_BJ_INtBJ_5ArenaB1a_E4iter0ENCNvMsk_B1c_NtB1c_17CrateGraphBuilder4iter0EECscAFBYSOo4Yh_12test_fixture.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !473 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 4 uses
  %.not.i.i = icmp slt i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %.val2, %.val
  br i1 %i.g, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECscAFBYSOo4Yh_12test_fixture.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !474
  %i.h = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !474 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECscAFBYSOo4Yh_12test_fixture.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.f) #22
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.m, align 8, !noalias !475
  store ptr %i.l, ptr %i.a, align 8, !noalias !475
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.n, align 8, !noalias !475
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsbSS6DM8SDEO_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECscAFBYSOo4Yh_12test_fixture.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val3 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.p = icmp eq i64 %.val3, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val4 = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val3, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !476
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit

bb.g:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECscAFBYSOo4Yh_12test_fixture.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage32EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !490 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  %i.f = shl nuw nsw i64 %i.e, 4                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !492
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !492
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !493
  %i.j = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !493 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #22, !noalias !492
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !492
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !492
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %1 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %.lr.ph.preheader.i
  %.sroa.013.049.i = phi ptr [ %4, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 8 uses
  %.sroa.7.048.i = phi i64 [ %5, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.047.i = phi i64 [ %i.n, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %i.n = add nsw i64 %.sroa.10.047.i, -1          ; 2 uses
  %2 = icmp eq ptr %.sroa.013.049.i, %1
  br i1 %2, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %3

3:                                                ; preds = %.lr.ph.i
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 16
  %5 = add nuw nsw i64 %.sroa.7.048.i, 1
  %6 = load i8, ptr %.sroa.013.049.i, align 8, !range !7, !alias.scope !494, !noundef !5 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 8 ; 4 uses
  switch i8 %6, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %3
  unreachable

bb.d:                                             ; preds = %3
  %i.o = load i32, ptr %7, align 8, !range !13, !alias.scope !494, !noundef !5
  %.sroa.14.8.insert.ext18.i = zext nneg i32 %i.o to i64
  %i.p = inttoptr i64 %.sroa.14.8.insert.ext18.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.e:                                             ; preds = %3
  %.val4.i.i = load i64, ptr %7, align 8, !alias.scope !494
  %i.q = inttoptr i64 %.val4.i.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.f:                                             ; preds = %3
  %i.r = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7)
          to label %.noexc.i unwind label %bb.i, !noalias !495

.noexc.i:                                         ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 2
  %i.t = load i8, ptr %i.s, align 2, !range !14, !alias.scope !494, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 3
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !494
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.g:                                             ; preds = %3
  %i.w = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %7)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.i, !noalias !495

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.g, %.noexc.i, %bb.e, %bb.d
  %.sroa.14.0.i = phi ptr [ %i.r, %.noexc.i ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %i.w, %bb.g ]
  %.sroa.9.0.i = phi i8 [ %i.v, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.8.0.i = phi i8 [ %i.t, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.415.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 1
  %.sroa.415.0.i = load i8, ptr %.sroa.415.0.in.i, align 1, !alias.scope !494, !noundef !5
  %.sroa.1016.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 4
  %.sroa.1016.0.i = load i32, ptr %.sroa.1016.0.in.i, align 4, !alias.scope !494, !noundef !5
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.7.048.i ; 6 uses
  store i8 %6, ptr %i.x, align 8, !noalias !495
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %.sroa.415.0.i, ptr %.sroa.433.0..sroa_idx.i, align 1, !noalias !495
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %.sroa.8.0.i, ptr %.sroa.534.0..sroa_idx.i, align 2, !noalias !495
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %.sroa.9.0.i, ptr %.sroa.635.0..sroa_idx.i, align 1, !noalias !495
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.1016.0.i, ptr %.sroa.736.0..sroa_idx.i, align 4, !noalias !495
  %.sroa.837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.14.0.i, ptr %.sroa.837.0..sroa_idx.i, align 8, !noalias !495
  %i.y = icmp eq i64 %i.n, 0
  br i1 %i.y, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !495
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.048.i, ptr %i.m, align 8, !noalias !492
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage32EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.h, !noalias !495

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.i ], [ %i.ak, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i
  %8 = phi ptr [ %i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i ], [ %i.m, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.m, %.lr.ph.i ]
  store i64 %i.e, ptr %8, align 8, !noalias !492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.aa = load i64, ptr %i.b, align 8, !range !6, !alias.scope !496, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !496, !noundef !5 ; 5 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  %.sroa.410.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0.copyload.pre.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !496
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage32EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.j:                                             ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = shl nuw i64 %i.aa, 4                    ; 2 uses
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.k

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.af, i64 noundef range(i64 4, 9) 8) #20, !noalias !499
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage32EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = shl nuw i64 %i.ac, 4                    ; 2 uses
  %i.ai = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.af, i64 noundef range(i64 4, 9) 8, i64 noundef range(i64 12, 0) %i.ah) #20, !noalias !499 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage32EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.l:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage32EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #18
          to label %common.resume unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ah) #22
          to label %bb.n unwind label %bb.l, !noalias !496

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !496
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage32EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %._crit_edge.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.ai, %bb.k ]
  %i.am = icmp ult i64 %i.ac, 576460752303423488
  tail call void @llvm.assume(i1 %i.am)
  %i.an = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload.i, 0
  %i.ao = insertvalue { ptr, i64 } %i.an, i64 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage64EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !513 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  %i.f = mul nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !515
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !515
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !516
  %i.j = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !516 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #22, !noalias !515
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !515
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !515
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %1 = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %.lr.ph.preheader.i
  %.sroa.013.051.i = phi ptr [ %4, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 12 uses
  %.sroa.7.050.i = phi i64 [ %5, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.049.i = phi i64 [ %i.n, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %i.n = add nsw i64 %.sroa.10.049.i, -1          ; 2 uses
  %2 = icmp eq ptr %.sroa.013.051.i, %1
  br i1 %2, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %3

3:                                                ; preds = %.lr.ph.i
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 24
  %5 = add nuw nsw i64 %.sroa.7.050.i, 1
  %6 = load i8, ptr %.sroa.013.051.i, align 8, !range !7, !alias.scope !517, !noundef !5 ; 2 uses
  switch i8 %6, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %3
  unreachable

bb.d:                                             ; preds = %3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !range !13, !alias.scope !517, !noundef !5
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.e:                                             ; preds = %3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 12
  %.val6.i.i = load i32, ptr %i.r, align 4, !alias.scope !517, !noundef !5
  %.val3.i.i = load i64, ptr %i.q, align 8, !alias.scope !517
  %i.s = inttoptr i64 %.val3.i.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.f:                                             ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.u = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %.noexc.i unwind label %bb.i, !noalias !518

.noexc.i:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 2
  %i.w = load i8, ptr %i.v, align 2, !range !14, !alias.scope !517, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !517
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.g:                                             ; preds = %3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.aa = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.i, !noalias !518

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.g, %.noexc.i, %bb.e, %bb.d
  %.sroa.20.0.i = phi ptr [ %i.u, %.noexc.i ], [ undef, %bb.d ], [ %i.s, %bb.e ], [ %i.aa, %bb.g ]
  %.sroa.18.0.i = phi i32 [ undef, %.noexc.i ], [ %i.p, %bb.d ], [ %.val6.i.i, %bb.e ], [ undef, %bb.g ]
  %.sroa.9.0.i = phi i8 [ %i.y, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.8.0.i = phi i8 [ %i.w, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.415.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 1
  %.sroa.415.0.i = load i8, ptr %.sroa.415.0.in.i, align 1, !alias.scope !517, !noundef !5
  %.sroa.1016.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 4
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.7.050.i ; 7 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ac = load <2 x i32>, ptr %.sroa.1016.0.in.i, align 4, !alias.scope !517
  store i8 %6, ptr %i.ab, align 8, !noalias !518
  store i8 %.sroa.415.0.i, ptr %.sroa.433.0..sroa_idx.i, align 1, !noalias !518
  store i8 %.sroa.8.0.i, ptr %.sroa.534.0..sroa_idx.i, align 2, !noalias !518
  store i8 %.sroa.9.0.i, ptr %.sroa.635.0..sroa_idx.i, align 1, !noalias !518
  store <2 x i32> %i.ac, ptr %.sroa.736.0..sroa_idx.i, align 4, !noalias !518
  %.sroa.938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %.sroa.18.0.i, ptr %.sroa.938.0..sroa_idx.i, align 4, !noalias !518
  %.sroa.1039.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %.sroa.20.0.i, ptr %.sroa.1039.0..sroa_idx.i, align 8, !noalias !518
  %i.ad = icmp eq i64 %i.n, 0
  br i1 %i.ad, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !518
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.050.i, ptr %i.m, align 8, !noalias !515
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage64EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.h, !noalias !518

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.i ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i
  %7 = phi ptr [ %i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i ], [ %i.m, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.m, %.lr.ph.i ]
  store i64 %i.e, ptr %7, align 8, !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.af = load i64, ptr %i.b, align 8, !range !6, !alias.scope !519, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !519, !noundef !5 ; 5 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  %.sroa.410.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0.copyload.pre.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !519
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage64EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.j:                                             ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !522, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = mul nuw i64 %i.af, 24                   ; 2 uses
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.k

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 4, 9) 8) #20, !noalias !522
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage64EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.k:                                             ; preds = %bb.j
  %i.am = mul nuw i64 %i.ah, 24                   ; 2 uses
  %i.an = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 4, 9) 8, i64 noundef range(i64 12, 0) %i.am) #20, !noalias !522 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage64EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.l:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage64EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #18
          to label %common.resume unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.am) #22
          to label %bb.n unwind label %bb.l, !noalias !519

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !519
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage64EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %._crit_edge.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.an, %bb.k ]
  %i.ar = icmp ult i64 %i.ah, 384307168202282326
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload.i, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.at
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage96EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !537 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  %i.f = shl nuw nsw i64 %i.e, 5                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !539
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !539
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !540
  %i.j = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !540 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #22, !noalias !539
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !539
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !539
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %1 = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %.lr.ph.preheader.i
  %.sroa.013.059.i = phi ptr [ %i.n, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 10 uses
  %.sroa.7.058.i = phi i64 [ %i.o, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.057.i = phi i64 [ %2, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.057.i, -1            ; 2 uses
  %3 = icmp eq ptr %.sroa.013.059.i, %1
  br i1 %3, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 32
  %i.o = add nuw nsw i64 %.sroa.7.058.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.p = load i8, ptr %.sroa.013.059.i, align 8, !range !7, !alias.scope !542, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 16 ; 4 uses
  switch i8 %i.p, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.q, align 8, !range !13, !alias.scope !542, !noundef !5
  %.sroa.18.0.insert.ext.i = zext nneg i32 %i.r to i64
  %i.s = inttoptr i64 %.sroa.18.0.insert.ext.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.f:                                             ; preds = %bb.d
  %.sroa.18.0.copyload22.i = load i64, ptr %i.q, align 8, !alias.scope !543
  %i.t = inttoptr i64 %.sroa.18.0.copyload22.i to ptr
  %.sroa.22.20..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 24
  %.sroa.22.20.copyload.i = load i64, ptr %.sroa.22.20..sroa_idx.i, align 8, !alias.scope !543
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.g:                                             ; preds = %bb.d
  %i.u = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %.noexc.i unwind label %bb.j, !noalias !544

.noexc.i:                                         ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 2
  %i.w = load i8, ptr %i.v, align 2, !range !14, !alias.scope !542, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !542
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i

bb.h:                                             ; preds = %bb.d
  %i.z = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.j, !noalias !544

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.h, %.noexc.i, %bb.f, %bb.e
  %.sroa.18.0.i = phi ptr [ %i.u, %.noexc.i ], [ %i.s, %bb.e ], [ %i.t, %bb.f ], [ %i.z, %bb.h ]
  %.sroa.22.0.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.e ], [ %.sroa.22.20.copyload.i, %bb.f ], [ undef, %bb.h ]
  %.sroa.12.0.i = phi i8 [ %i.y, %.noexc.i ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.h ]
  %.sroa.11.0.i = phi i8 [ %i.w, %.noexc.i ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.h ]
  %.sroa.715.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 1
  %.sroa.715.0.i = load i8, ptr %.sroa.715.0.in.i, align 1, !alias.scope !542, !noundef !5
  %.sroa.13.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 4
  %.sroa.13.0.i = load i32, ptr %.sroa.13.0.in.i, align 4, !alias.scope !543
  %.sroa.17.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 8
  %.sroa.17.0.i = load i64, ptr %.sroa.17.0.in.i, align 8, !alias.scope !543
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.7.058.i ; 8 uses
  store i8 %i.p, ptr %i.aa, align 8, !noalias !544
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %.sroa.715.0.i, ptr %.sroa.441.0..sroa_idx.i, align 1, !noalias !544
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %.sroa.11.0.i, ptr %.sroa.542.0..sroa_idx.i, align 2, !noalias !544
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 %.sroa.12.0.i, ptr %.sroa.643.0..sroa_idx.i, align 1, !noalias !544
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %.sroa.13.0.i, ptr %.sroa.744.0..sroa_idx.i, align 4, !noalias !544
  %.sroa.845.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.17.0.i, ptr %.sroa.845.0..sroa_idx.i, align 8, !noalias !544
  %.sroa.946.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.18.0.i, ptr %.sroa.946.0..sroa_idx.i, align 8, !noalias !544
  %.sroa.1047.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.22.0.i, ptr %.sroa.1047.0..sroa_idx.i, align 8, !noalias !544
  %i.ab = icmp eq i64 %2, 0
  br i1 %i.ab, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

bb.i:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !544
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.058.i, ptr %i.m, align 8, !noalias !539
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.i, !noalias !544

common.resume:                                    ; preds = %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.j ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i
  %4 = phi ptr [ %i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscAFBYSOo4Yh_12test_fixture.exit.thread.i ], [ %i.m, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.m, %.lr.ph.i ]
  store i64 %i.e, ptr %4, align 8, !noalias !539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.ad = load i64, ptr %i.b, align 8, !range !6, !alias.scope !545, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !545, !noundef !5 ; 5 uses
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  %.sroa.410.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0.copyload.pre.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !545
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage96EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.k:                                             ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !548, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = shl nuw i64 %i.ad, 5                    ; 2 uses
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.l

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 4, 9) 8) #20, !noalias !548
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage96EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = shl nuw i64 %i.af, 5                    ; 2 uses
  %i.al = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 4, 9) 8, i64 noundef range(i64 12, 0) %i.ak) #20, !noalias !548 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage96EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

bb.m:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #18
          to label %common.resume unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ak) #22
          to label %bb.o unwind label %bb.m, !noalias !545

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !545
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage96EE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %._crit_edge.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.l
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.al, %bb.l ]
  %i.ap = icmp ult i64 %i.af, 288230376151711744
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload.i, 0
  %i.ar = insertvalue { ptr, i64 } %i.aq, i64 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !554 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.d = mul nuw nsw i64 %i.c, 12                 ; 3 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !555
  %i.f = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !555 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.d) #22, !noalias !556
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull readonly align 4 %i.a, i64 %i.d, i1 false), !noalias !557
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartE16into_boxed_sliceCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %bb.d
  %.sroa.5.0 = phi ptr [ %i.f, %bb.d ], [ inttoptr (i64 4 to ptr), %bb.a ]
  %i.h = icmp ult i64 %i.c, 768614336404564651
  tail call void @llvm.assume(i1 %i.h)
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.5.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.c, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1e_8vfs_path7VfsPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !564 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1b_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i
  %.sroa.0.012.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.012.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.012.i, 1        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !566 ; 2 uses
  %i.i = icmp eq i64 %.val8.i, 0
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECscAFBYSOo4Yh_12test_fixture.exit.sink.split.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECscAFBYSOo4Yh_12test_fixture.exit.sink.split.i.i.i.i: ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %.val9.i = load ptr, ptr %i.j, align 8, !alias.scope !565, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !567
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECscAFBYSOo4Yh_12test_fixture.exit.sink.split.i.i.i.i, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1b_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1b_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1a_8vfs_path7VfsPathEECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !guid !568 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1e_12CrateBuilderEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !571 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1b_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit.i
  %.sroa.0.010.i = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.010.i
  %i.i = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !572, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = ptrtoint ptr %.val7.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.val7.i, i64 -1   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCscAFBYSOo4Yh_12test_fixture(ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %bb.e, !noalias !572

.noexc.i:                                         ; preds = %bb.b
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  store ptr %i.o, ptr %i.b, align 8, !noalias !572
  %i.p = load atomic i64, ptr %i.o acquire, align 8, !noalias !572
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.c, label %.noexc8.i, !prof !4

bb.c:                                             ; preds = %.noexc.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc8.i unwind label %bb.e, !noalias !572

.noexc8.i:                                        ; preds = %bb.c, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !572
  store ptr %i.o, ptr %i.a, align 8, !noalias !572
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc9.i unwind label %bb.e, !noalias !572

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !572
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %.noexc9.i, %.lr.ph.i
  %i.r = icmp eq i64 %i.i, %i.f
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1b_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.0.1.i6, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.noexc8.i, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
end_hunk_0
