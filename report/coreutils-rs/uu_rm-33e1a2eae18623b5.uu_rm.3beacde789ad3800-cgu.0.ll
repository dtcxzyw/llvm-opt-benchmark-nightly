Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rm-33e1a2eae18623b5.uu_rm.3beacde789ad3800-cgu.0?download=true
inline.NumInlined: 1389
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3042, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !3042, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i, !prof !12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #21, !noalias !3043
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !3044, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3044, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !3044
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs58W9blM4WiW_5uu_rm.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !3044
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs_Cs58W9blM4WiW_5uu_rmNtB4_15InteractiveModeINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.e [
    i64 5, label %bb.b
    i64 4, label %bb.c
    i64 6, label %bb.d
  ], !prof !3045

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1702258030
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 114
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = icmp ne i32 %i.k, 1701015151
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = load i32, ptr %0, align 1
  %i.p = xor i32 %i.o, 1635216481
  %i.q = getelementptr i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 29561
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @114, ptr noundef nonnull inttoptr (i64 139 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #22
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 2, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCs58W9blM4WiW_5uu_rm(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 11) #21
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !3100, !noalias !3101, !noundef !5 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !3100, !noalias !3101, !noundef !5 ; 4 uses
  %i.b = sub nuw i64 %.val1.i.i, %.val.i.i        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3102, !noundef !5 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !6, !alias.scope !3102, !noundef !5
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 24) #21, !noalias !3100
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !3099
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3099, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  %i.k = icmp ule i64 %.val.i.i, %.val1.i.i
  tail call void @llvm.assume(i1 %i.k)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i, %.val1.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %1, align 8, !alias.scope !3109
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 1
  %i.m = icmp eq i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !3110, !noalias !3111, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3112, !noalias !3113, !nonnull !5, !noundef !5
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i.us.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !3112, !noalias !3113, !noundef !5 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i, label %.lr.ph.i.preheader3.i.i.i.i.i.i

.lr.ph.i.preheader3.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3114
  unreachable

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.us.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs7tKScEop1B6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0Cs58W9blM4WiW_5uu_rm.exit.i.us.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3114
  %i.q = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !3114 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.split.us.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %.val.i.i.us.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i1 false), !noalias !3115
  br label %_RNCINvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs7tKScEop1B6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0Cs58W9blM4WiW_5uu_rm.exit.i.us.i.i.i.i.i.i

_RNCINvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs7tKScEop1B6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0Cs58W9blM4WiW_5uu_rm.exit.i.us.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.us.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.us.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 3 uses
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !3116
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !3116
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !3116
  %i.t = add i64 %i.h, 1
  br label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i) #24, !noalias !3117
  unreachable

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i, %_RNCINvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs7tKScEop1B6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0Cs58W9blM4WiW_5uu_rm.exit.i.us.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs58W9blM4WiW_5uu_rm.exit.i ], [ %i.t, %_RNCINvMs8_NtNtNtCs6JMX4GRUq9U_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs7tKScEop1B6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0Cs58W9blM4WiW_5uu_rm.exit.i.us.i.i.i.i.i.i ]
  store i64 %.val1.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !3099, !noalias !3118
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs58W9blM4WiW_5uu_rm(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  %i.b = mul nuw nsw i64 %.16.val, 72             ; 2 uses
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs58W9blM4WiW_5uu_rm.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3136
  %i.d = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) 8) #21, !noalias !3136 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #24, !noalias !3137
  unreachable

.lr.ph.i:                                         ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.0.054.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.g, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ] ; 7 uses
  %.sroa.7.053.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %.sroa.10.052.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %1, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ]
  %1 = add nsw i64 %.sroa.10.052.i, -1            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 72
  %i.h = add nuw nsw i64 %.sroa.7.053.i, 1
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.sroa.7.053.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3137
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3139, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3139, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !3139, !noundef !5
  %.not.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #21, !noalias !3140
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !3141
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i13.i = phi i64 [ %.sroa.03.0.copyload.i.i, %bb.d ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !3139, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 16
  %.val4.i.i = load i64, ptr %i.q, align 8, !alias.scope !3139, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  %i.r = icmp eq i64 %.val4.i.i, 0
  br i1 %i.r, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = shl nuw nsw i64 %.val4.i.i, 4            ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3143
  %i.t = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, 9) 8) #21, !noalias !3143 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %3, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %xtraiter = and i64 %.val4.i.i, 1
  %2 = icmp eq i64 %.val4.i.i, 1
  br i1 %2, label %bb.g, label %.lr.ph.preheader.i.i.i.i.a

.lr.ph.preheader.i.i.i.i.a:                       ; preds = %bb.f
  %unroll_iter = and i64 %.val4.i.i, -2
  br label %.lr.ph.i.i.i.i

3:                                                ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #24, !noalias !3144
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.a
  %.sroa.0.022.i.i.i.i = phi ptr [ %.val.i.i, %.lr.ph.preheader.i.i.i.i.a ], [ %9, %.lr.ph.i.i.i.i ] ; 5 uses
  %.sroa.7.021.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.a ], [ %8, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.10.020.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.a ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 16
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.7.021.i.i.i.i ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i, align 8, !alias.scope !3142, !noalias !3145, !nonnull !5, !noundef !5
  %6 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i, i64 8
  %.val13.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !3142, !noalias !3145, !noundef !5
  store ptr %.val.i.i.i.i, ptr %5, align 8, !noalias !3144
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val13.i.i.i.i, ptr %7, align 8, !noalias !3144
  %8 = add nuw nsw i64 %.sroa.7.021.i.i.i.i, 2    ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 32 ; 2 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.7.021.i.i.i.i ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val.i.i.i.i.1 = load ptr, ptr %4, align 8, !alias.scope !3142, !noalias !3145, !nonnull !5, !noundef !5
  %12 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i, i64 24
  %.val13.i.i.i.i.1 = load i64, ptr %12, align 8, !alias.scope !3142, !noalias !3145, !noundef !5
  store ptr %.val.i.i.i.i.1, ptr %11, align 8, !noalias !3144
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.val13.i.i.i.i.1, ptr %13, align 8, !noalias !3144
  %niter.next.1 = add nuw i64 %.sroa.10.020.i.i.i.i, 2 ; 2 uses
  %i.v = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.v, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa, %bb.f
  %.sroa.0.022.i.i.i.i.epil.init = phi ptr [ %.val.i.i, %bb.f ], [ %9, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.021.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %8, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %.val4.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.7.021.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.epil.init, align 8, !alias.scope !3142, !noalias !3145, !nonnull !5, !noundef !5
  %i.x = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.epil.init, i64 8
  %.val13.i.i.i.i.a = load i64, ptr %i.x, align 8, !alias.scope !3142, !noalias !3145, !noundef !5
  store ptr %.val.i.i.i.i.a, ptr %i.w, align 8, !noalias !3144
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.val13.i.i.i.i.a, ptr %i.y, align 8, !noalias !3144
  br label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i: ; preds = %bb.g, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa, %bb.e
  %.sroa.10.0.i30.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.t, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.loopexit.unr-lcssa ], [ %i.t, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !10, !alias.scope !3139, !noundef !5
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !3134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3137
  store i64 %.val4.i.i, ptr %i.i, align 8, !noalias !3134
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !3134
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val4.i.i, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !3134
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.0.0.i13.i, ptr %.sroa.639.0..sroa_idx.i, align 8, !noalias !3134
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.k, ptr %.sroa.841.0..sroa_idx.i, align 8, !noalias !3134
  %.sroa.942.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %i.m, ptr %.sroa.942.0..sroa_idx.i, align 8, !noalias !3134
  %.sroa.1043.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 %i.aa, ptr %.sroa.1043.0..sroa_idx.i, align 8, !noalias !3134
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs58W9blM4WiW_5uu_rm.exit, label %bb.c

_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, %bb.a
  %.sroa.10.0.i64.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ]
  store i64 %.16.val, ptr %0, align 8, !alias.scope !3134
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i64.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3134
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser10parse_ref_Cs58W9blM4WiW_5uu_rm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #21
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3148
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #21, !noalias !3148 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24, !noalias !3148
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @117, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser15possible_valuesCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser7type_idCs58W9blM4WiW_5uu_rm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  call fastcc void @_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull readonly %.val, i64 %.val1) #21
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3151
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #21, !noalias !3151 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !noalias !3151
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @108, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9parse_refCs58W9blM4WiW_5uu_rm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #21
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3154
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #21, !noalias !3154 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24, !noalias !3154
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @117, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Cs58W9blM4WiW_5uu_rm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #21
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !3157
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #21, !noalias !3157 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24, !noalias !3157
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @117, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_0
