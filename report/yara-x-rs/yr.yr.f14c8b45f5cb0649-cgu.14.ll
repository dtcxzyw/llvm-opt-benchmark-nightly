Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.14?download=true
inline.NumInlined: 1677
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs1ZTs3ySsPIM_12clap_builder5error7context11ContextKindNtBE_12ContextValueEECskIqAKC4t9Ft_2yr:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder5error7context12ContextValueECskIqAKC4t9Ft_2yr.exit

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder5error7context12ContextValueECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder5error7context12ContextValueECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrEECskIqAKC4t9Ft_2yr.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kind10SyntaxKindBM_ECskIqAKC4t9Ft_2yr(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor13vec_write_allNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !8  ; 6 uses
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !15, !alias.scope !1144, !noundef !8
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1144, !noundef !8 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i64 %i.a, %i.e
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1144, !noundef !8 ; 4 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ugt i64 %.val, %i.i
  br i1 %i.k, label %bb.d, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw i64 %.val, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1144, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  tail call void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.l, i8 0)
  store i64 %.val, ptr %i.h, align 8, !alias.scope !1144
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val8, i64 %.val
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false)
  %i.r = add i64 %.val, %3                        ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ugt i64 %i.r, %i.s
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, %bb.f
  store i64 %i.r, ptr %0, align 8
  %i.v = inttoptr i64 %3 to ptr
  %i.w = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.v, 1
  ret { i64, ptr } %i.w

bb.f:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit
  store i64 %i.r, ptr %i.h, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENCNvXs3_B2n_B2l_INtNtB1f_7convert4FromINtB4_3VecB2l_EE4from0EB2l_ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENCNvXs3_B1N_B1L_INtNtBc_7convert4FromINtB12_3VecB1L_EE4from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB4c_zEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENCNvXs3_B1Z_B1X_INtNtB4_7convert4FromINtB1e_3VecB1X_EE4from0EECskIqAKC4t9Ft_2yr.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE32forget_allocation_drop_remainingCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueB1L_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENCNvXs3_B1Z_B1X_INtNtB4_7convert4FromINtB1e_3VecB1X_EE4from0EECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = shl i64 %i.c, 5                          ; 4 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECskIqAKC4t9Ft_2yr.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1N_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #34 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !1145

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #33
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCslcwApyVHiOd_7bincode6varint15encode_unsigned17varint_encode_u32INtNtNtB6_8features8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = icmp ult i32 %2, 251
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %2, 65536
  br i1 %i.e, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = trunc nuw i32 %2 to i8                   ; 2 uses
  store i8 %i.f, ptr %i.c, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1197, !noalias !1198, !nonnull !8, !align !13, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !1199, !noalias !1200, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1199, !noalias !1200, !noundef !8 ; 4 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k), !noalias !1201
  %i.l = sub nsw i64 %i.h, %i.j
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit, !prof !27

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202), !noalias !1201
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1203, !noalias !1204, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  store i8 %i.f, ptr %i.p, align 1, !noalias !1205
  %i.q = add nuw i64 %i.j, 1
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1203, !noalias !1204
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c
  %i.s = call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #35, !noalias !1201 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1197, !noalias !1198, !noundef !8
  store i64 5, ptr %0, align 8, !alias.scope !1196, !noalias !1206
  %.sroa.423.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %.sroa.423.0..sroa_idx.i15, align 8, !alias.scope !1196, !noalias !1206
  %.sroa.524.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.524.0..sroa_idx.i16, align 8, !alias.scope !1196, !noalias !1206
  br label %_RNvXs2_NtNtCslcwApyVHiOd_7bincode8features8impl_stdINtB5_8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtB9_3enc5write6Writer5writeCskIqAKC4t9Ft_2yr.exit17

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit.thread, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit
  %i.v = phi ptr [ %i.r, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit.thread ], [ %i.t, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit ] ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1197, !noalias !1198, !noundef !8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !1197, !noalias !1198
  store i64 -1, ptr %0, align 8, !alias.scope !1196, !noalias !1206
  br label %_RNvXs2_NtNtCslcwApyVHiOd_7bincode8features8impl_stdINtB5_8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtB9_3enc5write6Writer5writeCskIqAKC4t9Ft_2yr.exit17

_RNvXs2_NtNtCslcwApyVHiOd_7bincode8features8impl_stdINtB5_8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtB9_3enc5write6Writer5writeCskIqAKC4t9Ft_2yr.exit17: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !1207, !noalias !1208, !nonnull !8, !align !13, !noundef !8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.z = load i64, ptr %i.y, align 8, !range !15, !alias.scope !1209, !noalias !1210, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1209, !noalias !1210, !noundef !8 ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac), !noalias !1211
  %i.ad = sub nsw i64 %i.z, %i.ab
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19, !prof !27

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19.thread: ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212), !noalias !1211
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1213, !noalias !1214, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  store i8 -4, ptr %i.ah, align 1, !noalias !1215
  %i.ai = add nuw i64 %i.ab, 1                    ; 2 uses
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !1213, !noalias !1214
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19: ; preds = %bb.f
  %i.ak = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 1) #35, !noalias !1211 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ak, null
  br i1 %.not.i10, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19._crit_edge, label %bb.h

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19
  %.pre = load i64, ptr %i.aa, align 8, !alias.scope !1216, !noalias !1217
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.am = load ptr, ptr %1, align 8, !alias.scope !1218, !noalias !1219, !nonnull !8, !align !13, !noundef !8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.an = load i64, ptr %i.am, align 8, !range !15, !alias.scope !1220, !noalias !1221, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1220, !noalias !1221, !noundef !8 ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq), !noalias !1222
  %i.ar = sub nsw i64 %i.an, %i.ap
  %i.as = icmp ugt i64 %i.ar, 1
  br i1 %i.as, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21, !prof !27

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21.thread: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223), !noalias !1222
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !1224, !noalias !1225, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ap
  store i8 -5, ptr %i.av, align 1, !noalias !1226
  %i.aw = add nuw i64 %i.ap, 1                    ; 2 uses
  store i64 %i.aw, ptr %i.ao, align 8, !alias.scope !1224, !noalias !1225
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21: ; preds = %bb.g
  %i.ay = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1) #35, !noalias !1222 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i6, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21._crit_edge, label %bb.l

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21._crit_edge: ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit21
  %.pre90 = load i64, ptr %i.ao, align 8, !alias.scope !1227, !noalias !1228
  br label %bb.m

bb.h:                                             ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19
  %i.ba = load i64, ptr %i.al, align 8, !alias.scope !1207, !noalias !1208, !noundef !8
  store i64 5, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %.sroa.565.0..sroa_idx, align 8
  br label %bb.p

bb.i:                                             ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19._crit_edge, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19.thread
  %i.bb = phi i64 [ %i.ai, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19.thread ], [ %.pre, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19._crit_edge ] ; 4 uses
  %i.bc = phi ptr [ %i.aj, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19.thread ], [ %i.al, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit19._crit_edge ] ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1207, !noalias !1208, !noundef !8 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !1207, !noalias !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.bf = load i64, ptr %i.y, align 8, !range !15, !alias.scope !1216, !noalias !1217, !noundef !8
  %i.bg = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bg), !noalias !1231
  %i.bh = sub nsw i64 %i.bf, %i.bb
  %i.bi = icmp ugt i64 %i.bh, 4
  br i1 %i.bi, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit23.thread, label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit23, !prof !27

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit23.thread: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232), !noalias !1231
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1233, !noalias !1234, !nonnull !8, !noundef !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bb
  store i32 %2, ptr %i.bl, align 1, !noalias !1235
  %i.bm = add nuw i64 %i.bb, 4
  store i64 %i.bm, ptr %i.aa, align 8, !alias.scope !1233, !noalias !1234
  br label %bb.k

_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr.exit23: ; preds = %bb.i
  %i.bn = call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #35, !noalias !1231 ; 2 uses
  %.not.i2 = icmp eq ptr %i.bn, null
  br i1 %.not.i2, label %bb.k, label %bb.j
end_hunk_0
