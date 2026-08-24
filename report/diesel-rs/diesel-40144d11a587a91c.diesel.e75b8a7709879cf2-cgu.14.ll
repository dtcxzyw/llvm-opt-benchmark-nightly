Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.14?download=true
inline.NumInlined: 221
inline.NumDeleted: 119
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.i = load i64, ptr %1, align 8, !alias.scope !68, !noundef !4 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !74, !alias.scope !75, !noalias !76, !noundef !4
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
  %.pre13.i.i = load ptr, ptr %.phi.trans.insert12.i.i, align 8, !noalias !68
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.s = extractvalue { i16, i16 } %i.p, 1
  %i.t = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.t, ptr %1, align 8, !alias.scope !78, !noalias !79
  store i16 %i.s, ptr %i.f, align 2, !noalias !82
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  br i1 %i.u, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i, label %bb.f

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_.exit.i.i: ; preds = %bb.g, %.noexc11, %.noexc
  %i.w = phi ptr [ %.pre13.i.i, %.noexc11 ], [ %i.f, %.noexc ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
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
  br i1 %.not, label %bb.b, label %bb.j, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 2 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw i64 %2, %1                       ; 2 uses
  %i.g = load i64, ptr %0, align 8, !alias.scope !84, !noalias !93, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !84, !noalias !93, !noundef !4 ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 23)
  %i.l = add i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !84, !noalias !93, !noundef !4 ; 3 uses
  %i.o = shl i64 %i.n, 17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !84, !noalias !93, !noundef !4
  %i.r = xor i64 %i.q, %i.g                       ; 2 uses
  %i.s = xor i64 %i.n, %i.i                       ; 3 uses
  %i.t = xor i64 %i.r, %i.n                       ; 4 uses
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !84, !noalias !93
  %i.u = xor i64 %i.s, %i.g                       ; 5 uses
  store i64 %i.u, ptr %0, align 8, !alias.scope !84, !noalias !93
  %i.v = xor i64 %i.r, %i.o                       ; 2 uses
  store i64 %i.v, ptr %i.p, align 8, !alias.scope !84, !noalias !93
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 45) ; 3 uses
  store i64 %i.w, ptr %i.h, align 8, !alias.scope !84, !noalias !93
  %i.x = lshr i64 %i.l, 32
  %i.y = mul nuw i64 %i.x, %i.f                   ; 2 uses
  %i.z = lshr i64 %i.y, 32                        ; 2 uses
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  %i.ab = sub i32 %i.c, %i.d
  %i.ac = icmp ult i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.w, %i.u                      ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 23)
  %i.af = add i64 %i.ae, %i.u
  %i.ag = shl i64 %i.t, 17
  %i.ah = xor i64 %i.v, %i.u                      ; 2 uses
  %i.ai = xor i64 %i.t, %i.w                      ; 3 uses
  %i.aj = xor i64 %i.ah, %i.t
  store i64 %i.aj, ptr %i.m, align 8, !alias.scope !96, !noalias !93
  %i.ak = xor i64 %i.ai, %i.u
  store i64 %i.ak, ptr %0, align 8, !alias.scope !96, !noalias !93
  %i.al = xor i64 %i.ah, %i.ag
  store i64 %i.al, ptr %i.p, align 8, !alias.scope !96, !noalias !93
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 45)
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !96, !noalias !93
  %i.an = lshr i64 %i.af, 32
  %i.ao = mul nuw i64 %i.an, %i.f
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = xor i32 %i.aa, -1
  %.not11.i.i.i.i = icmp ult i32 %i.ar, %i.aq
  %i.as = zext i1 %.not11.i.i.i.i to i64
  %i.at = add nuw nsw i64 %i.z, %i.as
  br label %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.au = sub nuw i64 %2, %1
  %i.av = load i64, ptr %0, align 8, !alias.scope !105, !noalias !110, !noundef !4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !105, !noalias !110, !noundef !4 ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 23)
  %i.ba = add i64 %i.az, %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !105, !noalias !110, !noundef !4 ; 3 uses
  %i.bd = shl i64 %i.bc, 17
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !105, !noalias !110, !noundef !4
  %i.bg = xor i64 %i.bf, %i.av                    ; 2 uses
  %i.bh = xor i64 %i.bc, %i.ax                    ; 3 uses
  %i.bi = xor i64 %i.bg, %i.bc                    ; 4 uses
  store i64 %i.bi, ptr %i.bb, align 8, !alias.scope !105, !noalias !110
  %i.bj = xor i64 %i.bh, %i.av                    ; 5 uses
  store i64 %i.bj, ptr %0, align 8, !alias.scope !105, !noalias !110
  %i.bk = xor i64 %i.bg, %i.bd                    ; 2 uses
  store i64 %i.bk, ptr %i.be, align 8, !alias.scope !105, !noalias !110
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 45) ; 3 uses
  store i64 %i.bl, ptr %i.aw, align 8, !alias.scope !105, !noalias !110
  %i.bm = zext i64 %i.ba to i128
  %i.bn = zext i64 %i.au to i128                  ; 2 uses
  %i.bo = mul nuw i128 %i.bm, %i.bn               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = trunc nuw i128 %i.bp to i64             ; 2 uses
  %i.br = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bs = sub i64 %1, %2
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 23)
  %i.bw = add i64 %i.bv, %i.bj
  %i.bx = shl i64 %i.bi, 17
  %i.by = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bz = xor i64 %i.bi, %i.bl                    ; 3 uses
  %i.ca = xor i64 %i.by, %i.bi
  store i64 %i.ca, ptr %i.bb, align 8, !alias.scope !113, !noalias !110
  %i.cb = xor i64 %i.bz, %i.bj
  store i64 %i.cb, ptr %0, align 8, !alias.scope !113, !noalias !110
  %i.cc = xor i64 %i.by, %i.bx
  store i64 %i.cc, ptr %i.be, align 8, !alias.scope !113, !noalias !110
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 45)
  store i64 %i.cd, ptr %i.aw, align 8, !alias.scope !113, !noalias !110
  %i.ce = zext i64 %i.bw to i128
  %i.cf = mul nuw i128 %i.ce, %i.bn
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = trunc nuw i128 %i.cg to i64
  %i.ci = xor i64 %i.br, -1
  %.not7.i.i.i.i = icmp ult i64 %i.ci, %i.ch
  %i.cj = zext i1 %.not7.i.i.i.i to i64
  %i.ck = add nuw i64 %i.cj, %i.bq
  br label %bb.h

_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.at, %bb.e ], [ %i.z, %bb.d ]
  %i.cl = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.67.0.extract.shift.i.i = and i64 %i.cl, 4294967295
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ck, %bb.g ], [ %i.bq, %bb.f ]
  %i.cm = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  store i8 0, ptr %i.a, align 1, !noalias !122
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #18, !noalias !126
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.67.0.extract.shift.i.i, %_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel.exit.i.i ], [ %i.cm, %bb.h ]
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
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !127
  %i.q = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #21, !noalias !127 ; 3 uses
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
end_hunk_0
