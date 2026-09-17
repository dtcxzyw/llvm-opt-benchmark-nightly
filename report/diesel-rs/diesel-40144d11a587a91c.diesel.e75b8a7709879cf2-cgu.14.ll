Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.14?download=true
inline.NumInlined: 221
inline.NumDeleted: 119
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel:bb.a
bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1b_10skip_while9SkipWhileINtNtB1b_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB3b_42gen_vec_of_appropriate_length_valid_digits0ENCB4l_s_0EEsEB3j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.i = load i64, ptr %1, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.d

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsEEB1V_.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsEEB1V_.exit ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB16_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10skip_while9SkipWhileINtNtBG_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2L_42gen_vec_of_appropriate_length_valid_digits0ENCB3V_s_0EEEB2T_.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !10, !alias.scope !80, !noalias !81, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.p = invoke { i16, i16 } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3N_4find5checksNCINvNvXs0_NtB8_10skip_whileINtB53_9SkipWhileppEB3N_4next5checksNCB2X_s_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowsEEB1V_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull dereferenceable(1) %i.l, ptr noalias noundef nonnull %i.o)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.q = extractvalue { i16, i16 } %i.p, 0
  %i.r = trunc i16 %i.q to i1
  br i1 %i.r, label %bb.g, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.f, %bb.d ], [ %i.v, %bb.g ]
  invoke void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5h_4TakepEB3N_8try_fold5checksB4u_INtNtBc_6result6ResultB4u_zENCINvNtB12_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB63_B4u_EEB1V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %.sroa.5.0.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.h)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %bb.f
  %.phi.trans.insert12.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre13.i.i = load ptr, ptr %.phi.trans.insert12.i.i, align 8, !noalias !77
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.s = extractvalue { i16, i16 } %i.p, 1
  %i.t = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.t, ptr %1, align 8, !alias.scope !82, !noalias !83
  store i16 %i.s, ptr %i.f, align 2, !noalias !84
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  br i1 %i.u, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i, label %bb.f

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i: ; preds = %bb.g, %.noexc11, %.noexc
  %i.w = phi ptr [ %.pre13.i.i, %.noexc11 ], [ %i.f, %.noexc ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  br label %bb.h

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i, %bb.a
  %.pn9.i.i = phi ptr [ %i.w, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i ], [ %i.f, %bb.a ]
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitE32forget_allocation_drop_remainingB16_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.y, align 8
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsEEB1V_.exit unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitsEEB1V_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.z = ptrtoint ptr %.pn9.i.i to i64
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 1
  store i64 %i.e, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB16_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_10skip_while9SkipWhileINtNtBG_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2L_42gen_vec_of_appropriate_length_valid_digits0ENCB3V_s_0EEEB2T_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjRvGck33osM_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.j, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i32 %i.d, %i.c                     ; 2 uses
  %i.f = load i64, ptr %0, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 23)
  %i.k = add i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 3 uses
  %i.n = shl i64 %i.m, 17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !120, !noalias !121, !noundef !4
  %i.q = xor i64 %i.p, %i.f                       ; 2 uses
  %i.r = xor i64 %i.m, %i.h                       ; 3 uses
  %i.s = xor i64 %i.q, %i.m                       ; 4 uses
  store i64 %i.s, ptr %i.l, align 8, !alias.scope !120, !noalias !121
  %i.t = xor i64 %i.r, %i.f                       ; 5 uses
  store i64 %i.t, ptr %0, align 8, !alias.scope !120, !noalias !121
  %i.u = xor i64 %i.q, %i.n                       ; 2 uses
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !120, !noalias !121
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 45) ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !120, !noalias !121
  %i.w = lshr i64 %i.k, 32
  %5 = zext i32 %4 to i64
  %i.x = mul nuw i64 %i.w, %5                     ; 2 uses
  %i.y = lshr i64 %i.x, 32                        ; 2 uses
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  %i.aa = sub i32 %i.c, %i.d
  %i.ab = icmp ult i32 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %i.v, %i.t                      ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 23)
  %i.ae = add i64 %i.ad, %i.t
  %i.af = shl i64 %i.s, 17
  %i.ag = xor i64 %i.u, %i.t                      ; 2 uses
  %i.ah = xor i64 %i.s, %i.v                      ; 3 uses
  %i.ai = xor i64 %i.ag, %i.s
  store i64 %i.ai, ptr %i.l, align 8, !alias.scope !122, !noalias !121
  %i.aj = xor i64 %i.ah, %i.t
  store i64 %i.aj, ptr %0, align 8, !alias.scope !122, !noalias !121
  %i.ak = xor i64 %i.ag, %i.af
  store i64 %i.ak, ptr %i.o, align 8, !alias.scope !122, !noalias !121
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 45)
  store i64 %i.al, ptr %i.g, align 8, !alias.scope !122, !noalias !121
  %i.am = lshr i64 %i.ae, 32
  %6 = trunc nuw i64 %i.am to i32
  %7 = tail call i32 @llvm.umulh.i32(i32 %6, i32 %4)
  %i.an = xor i32 %i.z, -1
  %.not11.i.i.i.i = icmp ugt i32 %7, %i.an
  %i.ao = zext i1 %.not11.i.i.i.i to i64
  %i.ap = add nuw nsw i64 %i.y, %i.ao
  br label %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.aq = sub nuw i64 %2, %1                      ; 2 uses
  %i.ar = load i64, ptr %0, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 2 uses
  %i.au = add i64 %i.at, %i.ar                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 23)
  %i.aw = add i64 %i.av, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 3 uses
  %i.az = shl i64 %i.ay, 17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !123, !noalias !124, !noundef !4
  %i.bc = xor i64 %i.bb, %i.ar                    ; 2 uses
  %i.bd = xor i64 %i.ay, %i.at                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.ay                    ; 4 uses
  store i64 %i.be, ptr %i.ax, align 8, !alias.scope !123, !noalias !124
  %i.bf = xor i64 %i.bd, %i.ar                    ; 5 uses
  store i64 %i.bf, ptr %0, align 8, !alias.scope !123, !noalias !124
  %i.bg = xor i64 %i.bc, %i.az                    ; 2 uses
  store i64 %i.bg, ptr %i.ba, align 8, !alias.scope !123, !noalias !124
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 45) ; 3 uses
  store i64 %i.bh, ptr %i.as, align 8, !alias.scope !123, !noalias !124
  %i.bi = zext i64 %i.aw to i128
  %i.bj = zext i64 %i.aq to i128
  %i.bk = mul nuw i128 %i.bi, %i.bj               ; 2 uses
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = trunc nuw i128 %i.bl to i64             ; 2 uses
  %i.bn = trunc i128 %i.bk to i64                 ; 2 uses
  %i.bo = sub i64 %1, %2
  %i.bp = icmp ult i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 23)
  %i.bs = add i64 %i.br, %i.bf
  %i.bt = shl i64 %i.be, 17
  %i.bu = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bv = xor i64 %i.be, %i.bh                    ; 3 uses
  %i.bw = xor i64 %i.bu, %i.be
  store i64 %i.bw, ptr %i.ax, align 8, !alias.scope !125, !noalias !124
  %i.bx = xor i64 %i.bv, %i.bf
  store i64 %i.bx, ptr %0, align 8, !alias.scope !125, !noalias !124
  %i.by = xor i64 %i.bu, %i.bt
  store i64 %i.by, ptr %i.ba, align 8, !alias.scope !125, !noalias !124
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 45)
  store i64 %i.bz, ptr %i.as, align 8, !alias.scope !125, !noalias !124
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.bs, i64 %i.aq)
  %i.ca = xor i64 %i.bn, -1
  %.not7.i.i.i.i = icmp ugt i64 %8, %i.ca
  %i.cb = zext i1 %.not7.i.i.i.i to i64
  %i.cc = add nuw i64 %i.cb, %i.bm
  br label %bb.h

_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ap, %bb.e ], [ %i.y, %bb.d ]
  %i.cd = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.67.0.extract.shift.i.i = and i64 %i.cd, 4294967295
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cc, %bb.g ], [ %i.bm, %bb.f ]
  %i.ce = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  store i8 0, ptr %i.a, align 1, !noalias !126
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #18, !noalias !127
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.67.0.extract.shift.i.i, %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i ], [ %i.ce, %bb.h ]
  ret i64 %.sroa.74.0.ph

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvMNtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB2_11InPlaceDropsE3lenCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 1, 25) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) %1, i64 noundef range(i64 1, 9) %0) #21 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb14read_jsonb_int(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 18 uses
  %.sroa.871 = alloca [7 x i8], align 1           ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.l, align 8
  %i.m = icmp ult i64 %2, %3
  br i1 %i.m, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.n = load i64, ptr %i.i, align 8, !range !3, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %2, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.p, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @13, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !134
  %i.q = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #21, !noalias !134 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, !prof !6

bb.c:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #19
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.v, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.v ], [ %i.s, %bb.d ], [ %i.bf, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @11, ptr %i.v, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.w = load i64, ptr %i.d, align 8, !range !3, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !5, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.x, label %bb.y, !prof !6

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.f, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ae, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8
  call void @_RINvNtCsc61CYD6Y1ak_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = load i8, ptr %i.h, align 8, !range !12, !noundef !4 ; 3 uses
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !7, !noundef !4
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsjRvGck33osM_6diesel(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.871)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.871, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.464.0..sroa_idx, i64 7, i1 false)
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.666.0.copyload = load i64, ptr %.sroa.666.0..sroa_idx, align 8 ; 4 uses
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.767.0.copyload = load i64, ptr %.sroa.767.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aj = ptrtoint ptr %.sroa.565.0.copyload to i64 ; 2 uses
  %i.ak = icmp eq i8 %i.af, 2
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  switch i64 %i.aj, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsjRvGck33osM_6diesel2pg13query_builder13on_constraintINtNtNtNtBa_13query_builder6upsert18on_conflict_target14ConflictTargetNtB4_12OnConstraintEINtB19_13QueryFragmentNtNtB8_7backend2PgNtB2S_18PgOnConflictClauseE8walk_ast:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsloy3FhB6CEa_4rand5distr7uniformNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 9, i64 10
  %.1 = select i1 %i.b, ptr @45, ptr @44
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @47, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @48, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB16_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitE32forget_allocation_drop_remainingB16_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5h_4TakepEB3N_8try_fold5checksB4u_INtNtBc_6result6ResultB4u_zENCINvNtB12_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB63_B4u_EEB1V_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i16, i16 } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3N_4find5checksNCINvNvXs0_NtB8_10skip_whileINtB53_9SkipWhileppEB3N_4next5checksNCB2X_s_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowsEEB1V_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef dereferenceable(1), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsc61CYD6Y1ak_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE6insertCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_2pg7backend2PgE15push_identifierB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noreturn }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{i64 0, i64 2}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775807}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i8 0, i8 6}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i8 -1, i8 6}
!13 = distinct !{!13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel"}
!14 = distinct !{!14, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 2"}
!15 = distinct !{!15, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 3"}
!16 = distinct !{!16, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 1"}
!17 = distinct !{!17, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 0"}
!18 = distinct !{!18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel"}
!19 = distinct !{!19, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 2"}
!20 = distinct !{!20, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 3"}
!21 = distinct !{!21, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 1"}
!22 = distinct !{!22, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 0"}
!23 = distinct !{!23, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!24 = distinct !{!24, !23, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!25 = distinct !{!25, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!26 = distinct !{!26, !25, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!27 = distinct !{!27, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!28 = distinct !{!28, !27, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!29 = distinct !{!29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!30 = distinct !{!30, !29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!31 = distinct !{!31, !29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!32 = distinct !{!32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!33 = distinct !{!33, !32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!35 = distinct !{!35, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjRvGck33osM_6diesel"}
!36 = distinct !{!36, !35, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjRvGck33osM_6diesel: argument 0"}
!37 = distinct !{!37, !53}
!38 = distinct !{!38, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!39 = distinct !{!39, !38, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!40 = !{!14}
!41 = !{!15}
!42 = !{!17, !16, !15}
!43 = !{!17, !16, !14}
!44 = !{!19}
!45 = !{!20}
!46 = !{!22, !21, !20}
!47 = !{!22, !21, !19}
!48 = !{!24}
!49 = !{!26}
!50 = !{!28}
!51 = !{!34, !33, !31, !30}
!52 = !{!36, !34, !33, !31, !30}
!53 = !{!"llvm.loop.peeled.count", i32 1}
!54 = !{!39}
!55 = distinct !{!55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplECsjRvGck33osM_6diesel"}
!56 = distinct !{!56, !55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplECsjRvGck33osM_6diesel: argument 0"}
!57 = distinct !{!57, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsjRvGck33osM_6diesel"}
!58 = distinct !{!58, !57, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsjRvGck33osM_6diesel: argument 0"}
!59 = !{!56}
!60 = !{!58}
!61 = !{i64 0, i64 25}
!62 = !{!58, !56}
!63 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!64 = !{i64 1, i64 536870913}
!65 = distinct !{!65, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtBU_10skip_while9SkipWhileINtNtBU_3map3MapINtNtB7_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2S_42gen_vec_of_appropriate_length_valid_digits0ENCB42_s_0EEINtB5_18SpecInPlaceCollectsBP_E16collect_in_placeB30_"}
!66 = distinct !{!66, !65, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtBU_10skip_while9SkipWhileINtNtBU_3map3MapINtNtB7_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2S_42gen_vec_of_appropriate_length_valid_digits0ENCB42_s_0EEINtB5_18SpecInPlaceCollectsBP_E16collect_in_placeB30_: argument 0"}
!67 = distinct !{!67, !"_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB5_4TakeINtNtB7_10skip_while9SkipWhileINtNtB7_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2y_42gen_vec_of_appropriate_length_valid_digits0ENCB3I_s_0EENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB1N_13in_place_drop11InPlaceDropsENCINvNtB1N_16in_place_collect24write_in_place_with_dropsE0INtNtBb_6result6ResultB5q_zEEB2G_"}
!68 = distinct !{!68, !67, !"_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB5_4TakeINtNtB7_10skip_while9SkipWhileINtNtB7_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2y_42gen_vec_of_appropriate_length_valid_digits0ENCB3I_s_0EENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB1N_13in_place_drop11InPlaceDropsENCINvNtB1N_16in_place_collect24write_in_place_with_dropsE0INtNtBb_6result6ResultB5q_zEEB2G_: argument 0"}
!69 = distinct !{!69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_"}
!70 = distinct !{!70, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 1"}
!71 = distinct !{!71, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 2"}
!72 = distinct !{!72, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 0"}
!73 = distinct !{!73, !"_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checksINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropsEINtNtBf_6result6ResultB1S_zENCINvNtB1X_16in_place_collect24write_in_place_with_dropsE0E0CsjRvGck33osM_6diesel"}
!74 = distinct !{!74, !73, !"_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checksINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropsEINtNtBf_6result6ResultB1S_zENCINvNtB1X_16in_place_collect24write_in_place_with_dropsE0E0CsjRvGck33osM_6diesel: argument 0"}
!75 = !{!66}
!76 = !{!68}
!77 = !{!68, !66}
!78 = !{!70}
!79 = !{!71}
!80 = !{!70, !68, !66}
!81 = !{!72, !71}
!82 = !{!71, !68, !66}
!83 = !{!74, !72, !70}
!84 = !{!74, !72, !70, !71, !68, !66}
!85 = distinct !{!85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!86 = distinct !{!86, !85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 1"}
!87 = distinct !{!87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel"}
!88 = distinct !{!88, !87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel: argument 1"}
!89 = distinct !{!89, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel"}
!90 = distinct !{!90, !89, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel: argument 0"}
!91 = distinct !{!91, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel"}
!92 = distinct !{!92, !91, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel: argument 0"}
!93 = distinct !{!93, !85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!94 = distinct !{!94, !87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel: argument 0"}
!95 = distinct !{!95, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randommECsjRvGck33osM_6diesel"}
!96 = distinct !{!96, !95, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randommECsjRvGck33osM_6diesel: argument 0"}
!97 = distinct !{!97, !"_RINvXs0_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!98 = distinct !{!98, !97, !"_RINvXs0_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!99 = distinct !{!99, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u32CsjRvGck33osM_6diesel"}
!100 = distinct !{!100, !99, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u32CsjRvGck33osM_6diesel: argument 0"}
!101 = distinct !{!101, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u32"}
!102 = distinct !{!102, !101, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u32: argument 0"}
!103 = distinct !{!103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel"}
!104 = distinct !{!104, !103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 1"}
!105 = distinct !{!105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel"}
!106 = distinct !{!106, !105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 1"}
!107 = distinct !{!107, !103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 0"}
!108 = distinct !{!108, !105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 0"}
!109 = distinct !{!109, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randomyECsjRvGck33osM_6diesel"}
!110 = distinct !{!110, !109, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randomyECsjRvGck33osM_6diesel: argument 0"}
!111 = distinct !{!111, !"_RINvXs1_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!112 = distinct !{!112, !111, !"_RINvXs1_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!113 = distinct !{!113, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u64CsjRvGck33osM_6diesel"}
!114 = distinct !{!114, !113, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u64CsjRvGck33osM_6diesel: argument 0"}
!115 = distinct !{!115, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u64"}
!116 = distinct !{!116, !115, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u64: argument 0"}
!117 = distinct !{!117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel"}
!118 = distinct !{!118, !117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel: argument 1"}
!119 = distinct !{!119, !117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel: argument 0"}
!120 = !{!92, !90, !88, !86}
!121 = !{!94, !93}
!122 = !{!102, !100, !98, !96, !92, !90, !88, !86}
!123 = !{!106, !104, !88, !86}
!124 = !{!108, !107, !94, !93}
!125 = !{!116, !114, !112, !110, !106, !104, !88, !86}
!126 = !{!119, !118}
!127 = !{!119}
!128 = distinct !{!128, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!129 = distinct !{!129, !128, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!130 = distinct !{!130, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!131 = distinct !{!131, !130, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!132 = distinct !{!132, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!133 = distinct !{!133, !132, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!134 = !{!129}
!135 = !{!131}
!136 = !{!133}
!137 = distinct !{!137, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!138 = distinct !{!138, !137, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!139 = distinct !{!139, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!140 = distinct !{!140, !139, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!141 = !{!138}
!142 = !{!140}
!143 = distinct !{!143, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!144 = distinct !{!144, !143, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!145 = distinct !{!145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel"}
!146 = distinct !{!146, !145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel: argument 0"}
!147 = distinct !{!147, !145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel: argument 1"}
!148 = !{!144}
!149 = !{!146}
!150 = !{!147}
!151 = distinct !{!151, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!152 = distinct !{!152, !151, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!153 = distinct !{!153, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!154 = distinct !{!154, !153, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!155 = distinct !{!155, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!156 = distinct !{!156, !155, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!157 = !{!152}
!158 = !{!154}
!159 = !{!156}
!160 = distinct !{!160, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!161 = distinct !{!161, !160, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!162 = distinct !{!162, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!163 = distinct !{!163, !162, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!164 = distinct !{!164, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!165 = distinct !{!165, !164, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!166 = !{!161}
!167 = !{!163}
end_hunk_1
