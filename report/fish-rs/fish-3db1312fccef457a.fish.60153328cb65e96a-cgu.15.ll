Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB33_17LocalizationState15update_from_envs0_0EB2z_EB37_:bb.a
bb.c:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2343
  store ptr %i.m, ptr %i.a, align 8, !noalias !2343
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.n, align 8, !noalias !2343
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.o, align 8, !noalias !2343
  invoke void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNvXs0_NtNtB1p_8adapters10take_whileINtB3c_9TakeWhileppEB1j_8try_fold5checkBX_B2n_INtNtB1r_6result6ResultB2n_zENCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB50_17LocalizationState15update_from_envs0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0INtNtNtB1r_3ops12control_flow11ControlFlowB4p_B2n_EEB54_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2343
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2343
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.a
  %.pn7.i.i = phi ptr [ %i.q, %.noexc ], [ %i.f, %bb.a ]
  %i.r = ptrtoint ptr %.pn7.i.i to i64
  %i.s = ptrtoint ptr %i.f to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.w, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringB1L_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %bb.b

bb.g:                                             ; preds = %bb.e
  store i64 %i.e, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1u_6string6StringENCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2G_17LocalizationState15update_from_envs0_0EEB2K_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0ENtNtB2I_9utfstring11Utf32StringEB3y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !16
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB14_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB29_9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB5n_E0INtNtBc_6result6ResultB4M_zEEB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB1g_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0EEB3b_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE32forget_allocation_drop_remainingCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtBI_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB28_9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB1g_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0EEB3b_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0ENtNtB2I_9utfstring11Utf32StringEB3y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !16
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB14_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB29_9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB5m_E0INtNtBc_6result6ResultB4L_zEEB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB1g_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0EEB3b_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE32forget_allocation_drop_remainingCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtBI_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtB28_9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB1g_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0EEB3b_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtB2p_15parse_executionNtB39_16ExecutionContext26apply_variable_assignments0ENtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !16
  %i.g = mul i64 %i.c, 56                         ; 6 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtB1P_15parse_executionNtB2z_16ExecutionContext26apply_variable_assignments0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB56_E0INtNtBc_6result6ResultB4v_zEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtB21_15parse_executionNtB2L_16ExecutionContext26apply_variable_assignments0EEB21_.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB15_.exit.thread

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB15_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #31
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB15_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #31 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB15_.exit.thread, !prof !38

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtB21_15parse_executionNtB2L_16ExecutionContext26apply_variable_assignments0EEB21_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B2n_NtB2n_10BindingSet9get_namess_0ENtB2n_11BindingNameEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !16
  %i.g = mul i64 %i.c, 112                        ; 6 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1N_NtB1N_10BindingSet9get_namess_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1N_11BindingNameENCINvNtB12_16in_place_collect24write_in_place_with_dropB4x_E0INtNtBc_6result6ResultB3W_zEEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1Z_NtB1Z_10BindingSet9get_namess_0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB1N_11BindingNameEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 48                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB13_11BindingNameEB17_.exit.thread

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB13_11BindingNameEB17_.exit.thread: ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 48
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #31
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB13_11BindingNameEB17_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #31 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB13_11BindingNameEB17_.exit.thread, !prof !38

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1Z_NtB1Z_10BindingSet9get_namess_0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !27, !alias.scope !2346, !noundef !16 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2346
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !2346
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !2346
  %i.j = load i64, ptr %i.a, align 8, !range !26, !noalias !2346, !noundef !16
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !39, !noalias !2346, !noundef !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2346
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #35
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !2346, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2346
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !2346
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2346
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtCslEmbWASCaJL_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCs3oUPovFnLWP_4core3fmt9FormatterECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs8frGy5WneL6_4fish, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_RNvXNtCs3oUPovFnLWP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @4, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_IBP_INtNtNtB9_7sources8repeat_n7RepeatNcEB1c_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB1c_EB1c_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callcNCINvXs1V_NtB1Y_9utfstringNtB4b_11Utf32StringINtNtB31_7collect6ExtendcE6extendBO_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !range !2370, !noundef !16 ; 4 uses
  %.not = icmp eq i32 %i.k, -3
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.73.0.copyload = load i64, ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.94.0.copyload = load i64, ptr %.sroa.94.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8, !noalias !2371
  %.not.i = icmp eq i32 %.sroa.8.0.copyload, -4
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2371
  store ptr %i.h, ptr %i.g, align 8, !noalias !2372
  %.not.i.i = icmp eq i32 %.sroa.8.0.copyload, -3
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2372
  store ptr %i.g, ptr %i.f, align 8, !noalias !2373
  %.not.i.i.i = icmp eq i32 %.sroa.6.0.copyload, -2
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2373
  store ptr %i.f, ptr %i.e, align 8, !noalias !2374
  %.not.i8.i.i.i.i = icmp eq i32 %.sroa.6.0.copyload, -1
  br i1 %.not.i8.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3M_IB3M_IB3M_B3_B3_ENtNtNtB2l_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.sroa.5.0.copyload, %bb.e ]
  %i.l = add i64 %.sroa.0.010.i.i.i.i, -1         ; 2 uses
  %.not8.i.i.i.i.i = icmp eq i64 %i.l, 0
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQQQQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB22_11Utf32StringINtNtB12_7collect6ExtendcE6extendINtNtNtB14_8adapters5chain5ChainIB3v_IB3v_IB3v_INtNtNtB14_7sources8repeat_n7RepeatNcEB4f_ENtNtNtB24_6utfstr4iter10CharsUtf32EB4f_EB4f_EE0E0INtB7_5FnMutTucEE8call_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef range(i32 -1, 1114112) %.sroa.6.0.copyload), !noalias !2375
  br i1 %.not8.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3M_IB3M_IB3M_B3_B3_ENtNtNtB2l_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3M_IB3M_IB3M_B3_B3_ENtNtNtB2l_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2373
  br label %bb.f

bb.f:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3M_IB3M_IB3M_B3_B3_ENtNtNtB2l_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, %bb.d
  %.not2.i.i.i = icmp eq i32 %.sroa.8.0.copyload, -2
  br i1 %.not2.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNcEB10_ENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvNvB1G_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2X_11Utf32StringINtNtB1K_7collect6ExtendcE6extendIBP_IBP_IBP_BO_NtNtNtB2Z_6utfstr4iter10CharsUtf32EB10_EB10_EE0E0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.f, align 8, !noalias !2373, !nonnull !16, !align !24, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2373
  store ptr %i.m, ptr %i.d, align 8, !noalias !2376
  %.not.i8.i3.i.i.i = icmp eq i32 %.sroa.8.0.copyload, -1
  br i1 %.not.i8.i3.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2i_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3L_IB3L_IB3L_B3_B3_ENtNtNtB2k_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.g, %.lr.ph.i4.i.i.i
  %.sroa.0.010.i5.i.i.i = phi i64 [ %i.n, %.lr.ph.i4.i.i.i ], [ %.sroa.73.0.copyload, %bb.g ]
  %i.n = add i64 %.sroa.0.010.i5.i.i.i, -1        ; 2 uses
  %.not8.i.i6.i.i.i = icmp eq i64 %i.n, 0
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQQQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB21_11Utf32StringINtNtB11_7collect6ExtendcE6extendINtNtNtB13_8adapters5chain5ChainIB3u_IB3u_IB3u_INtNtNtB13_7sources8repeat_n7RepeatNcEB4e_ENtNtNtB23_6utfstr4iter10CharsUtf32EB4e_EB4e_EE0E0INtB7_5FnMutTucEE8call_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef range(i32 -1, 1114112) %.sroa.8.0.copyload), !noalias !2375
  br i1 %.not8.i.i6.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2i_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3L_IB3L_IB3L_B3_B3_ENtNtNtB2k_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i4.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2i_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3L_IB3L_IB3L_B3_B3_ENtNtNtB2k_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph.i4.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2373
  br label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNcEB10_ENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvNvB1G_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2X_11Utf32StringINtNtB1K_7collect6ExtendcE6extendIBP_IBP_IBP_BO_NtNtNtB2Z_6utfstr4iter10CharsUtf32EB10_EB10_EE0E0ECs8frGy5WneL6_4fish.exit.i.i

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNcEB10_ENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvNvB1G_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2X_11Utf32StringINtNtB1K_7collect6ExtendcE6extendIBP_IBP_IBP_BO_NtNtNtB2Z_6utfstr4iter10CharsUtf32EB10_EB10_EE0E0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNcENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB11_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2i_11Utf32StringINtNtB15_7collect6ExtendcE6extendINtNtNtBa_8adapters5chain5ChainIB3L_IB3L_IB3L_B3_B3_ENtNtNtB2k_6utfstr4iter10CharsUtf32EB3_EB3_EE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2372
  br label %bb.h

bb.h:                                             ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNcEB10_ENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvNvB1G_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2X_11Utf32StringINtNtB1K_7collect6ExtendcE6extendIBP_IBP_IBP_BO_NtNtNtB2Z_6utfstr4iter10CharsUtf32EB10_EB10_EE0E0ECs8frGy5WneL6_4fish.exit.i.i, %bb.c
  %.not2.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources8repeat_n7RepeatNcEB14_ENtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNvB2F_8for_each4callcNCINvXs1V_NtB1Q_9utfstringNtB3V_11Utf32StringINtNtB2J_7collect6ExtendcE6extendIBP_IBP_BO_B14_EB14_EE0E0ECs8frGy5WneL6_4fish.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.o = load ptr, ptr %i.g, align 8, !noalias !2372, !nonnull !16, !align !24, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2372
  store ptr %i.o, ptr %i.c, align 8, !noalias !2377
  %i.p = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB2A_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB4j_8completeNtB50_9Completer38mark_completions_duplicating_argumentsIBP_B4f_EE0ENCB4T_s_0EE9from_iterB4j_:bb.a
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6249
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB1P_8completeNtB2w_9Completer38mark_completions_duplicating_argumentsINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_8find_map5checkRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB5b_9utfstring11Utf32StringQNCB2p_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5R_EEB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.e)
          to label %.noexc.i unwind label %bb.b, !noalias !6247

.noexc.i:                                         ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !19, !noalias !6249, !noundef !16 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.i, label %bb.c, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6249
  store i64 0, ptr %0, align 8, !alias.scope !6247, !noalias !6250
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !6247, !noalias !6250
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !6247, !noalias !6250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6248
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !6247
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB2s_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB4b_8completeNtB4S_9Completer38mark_completions_duplicating_argumentsIBS_B47_EE0ENCB4L_s_0EE9from_iterB4b_.exit

bb.d:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i) ]
  %i.l = shl nuw i64 %i.f, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6251
  br label %bb.r

bb.f:                                             ; preds = %.noexc.i
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i, align 8, !noalias !6252 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.5.0.copyload.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i, align 8, !noalias !6252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6249
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6253
  %i.m = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6253 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #35
          to label %.noexc8.i unwind label %bb.d, !noalias !6247

.noexc8.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %i.f, ptr %i.m, align 8, !noalias !6247
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !6247
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !6247
  store i64 4, ptr %i.d, align 8, !noalias !6248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6248
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !6247
  call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  call void @llvm.experimental.noalias.scope.decl(metadata !6255)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.7.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i, %bb.h
  %i.p = phi ptr [ %i.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.m, %bb.h ]
  %i.q = phi i64 [ %i.y, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i ], [ 1, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6256
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB1P_8completeNtB2w_9Completer38mark_completions_duplicating_argumentsINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_8find_map5checkRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB5b_9utfstring11Utf32StringQNCB2p_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5R_EEB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull %i.o)
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !6257

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.r = load i64, ptr %i.a, align 8, !range !19, !noalias !6256, !noundef !16 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB1V_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3E_8completeNtB4l_9Completer38mark_completions_duplicating_argumentsIBx_B3A_EE0ENCB4e_s_0EEB3E_.exit.i.i, label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body.i unwind label %bb.o, !noalias !6257

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx9.i.i.i, align 8, !noalias !6258 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i, align 8, !noalias !6258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6256
  %i.t = icmp samesign ult i64 %i.q, 384307168202282326
  call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.d, align 8, !range !27, !alias.scope !6259, !noalias !6260, !noundef !16
  %i.v = icmp eq i64 %i.q, %i.u
  br i1 %i.v, label %bb.n, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i, %bb.k
  %i.w = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i ], [ %i.p, %bb.k ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.q ; 3 uses
  store i64 %i.r, ptr %i.x, align 8, !noalias !6257
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !6257
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !6257
  %i.y = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6259, !noalias !6260
  br label %bb.i

bb.l:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  %i.ab = shl nuw i64 %i.r, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6261
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.q, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !6247

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6259, !noalias !6260
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i.i

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6257
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB1V_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3E_8completeNtB4l_9Completer38mark_completions_duplicating_argumentsIBx_B3A_EE0ENCB4e_s_0EEB3E_.exit.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6256
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB29_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3S_8completeNtB4z_9Completer38mark_completions_duplicating_argumentsIBI_B3O_EE0ENCB4s_s_0EE11spec_extendB3S_.exit.i unwind label %bb.p, !noalias !6247

bb.p:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB1V_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3E_8completeNtB4l_9Completer38mark_completions_duplicating_argumentsIBx_B3A_EE0ENCB4e_s_0EEB3E_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #33, !noalias !6247
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB2v_8completeNtB3c_9Completer38mark_completions_duplicating_argumentsINtB1I_3VecB2r_EE0ENCB35_s_0EEB2v_.exit.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB29_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3S_8completeNtB4z_9Completer38mark_completions_duplicating_argumentsIBI_B3O_EE0ENCB4s_s_0EE11spec_extendB3S_.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB1V_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3E_8completeNtB4l_9Completer38mark_completions_duplicating_argumentsIBx_B3A_EE0ENCB4e_s_0EEB3E_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6248
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB2s_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB4b_8completeNtB4S_9Completer38mark_completions_duplicating_argumentsIBS_B47_EE0ENCB4L_s_0EE9from_iterB4b_.exit

bb.q:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6247
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB2v_8completeNtB3c_9Completer38mark_completions_duplicating_argumentsINtB1I_3VecB2r_EE0ENCB35_s_0EEB2v_.exit.i: ; preds = %bb.r, %.body.i
  %.pn22.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.r ]
  resume { ptr, i32 } %.pn22.i

bb.r:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB2v_8completeNtB3c_9Completer38mark_completions_duplicating_argumentsINtB1I_3VecB2r_EE0ENCB35_s_0EEB2v_.exit.i unwind label %bb.q, !noalias !6247

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB2s_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB4b_8completeNtB4S_9Completer38mark_completions_duplicating_argumentsIBS_B47_EE0ENCB4L_s_0EE9from_iterB4b_.exit: ; preds = %bb.c, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB29_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB3S_8completeNtB4z_9Completer38mark_completions_duplicating_argumentsIBI_B3O_EE0ENCB4s_s_0EE11spec_extendB3S_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B3M_NtB3M_9Completer21apply_var_assignmentsBY_E0EE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6266)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6266, !noalias !6265, !noundef !16 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !6266, !noalias !6265, !nonnull !16, !noundef !16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6266, !noalias !6265, !noundef !16
  %i.g = mul i64 %i.c, 56                         ; 6 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B1N_NtB1N_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3k_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB3k_E0INtNtBc_6result6ResultB4V_zEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !noalias !6265

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B1Z_NtB1Z_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EEB21_.exit.i unwind label %bb.l, !noalias !6265

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6267
  store ptr %i.d, ptr %i.a, align 8, !noalias !6267
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !6267
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8, !noalias !6267
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !noalias !6265

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs8frGy5WneL6_4fish8complete10CompletionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33, !noalias !6265
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond.i = select i1 %.not.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B2n_NtB2n_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EB3U_EB2p_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %i.g, 24
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #31, !noalias !6265
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B2n_NtB2n_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EB3U_EB2p_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.v)
  %i.w = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #31, !noalias !6265 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B2n_NtB2n_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EB3U_EB2p_.exit, !prof !38

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #35
          to label %bb.k unwind label %bb.e, !noalias !6265

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6265
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B1Z_NtB1Z_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EEB21_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %.pn.i

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B2n_NtB2n_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0EB3U_EB2p_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.03.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.w, %bb.i ], [ %i.d, %bb.f ]
  store i64 %i.h, ptr %0, align 8, !alias.scope !6265, !noalias !6266
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.z, align 8, !alias.scope !6265, !noalias !6266
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.aa, align 8, !alias.scope !6265, !noalias !6266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6267
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !6265
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRB1m_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB45_5SplitNtB47_16StringSubCommand6handles_0EE9from_iterB4b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = lshr exact i64 %i.h, 4                   ; 3 uses
  %i.j = mul i64 %i.i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.h, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6276
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6276 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = icmp samesign ule i64 %i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6280)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6281, !noalias !6282, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6281, !noalias !6282, !nonnull !16, !noundef !16
  %i.s = ptrtoint ptr %.val5.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp samesign ugt i64 %i.v, %.sroa.4.0.i
  br i1 %i.w, label %bb.f, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3t_5SplitNtB3v_16StringSubCommand6handles_0EEB3z_.exit.i, !prof !21

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.v, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i unwind label %bb.g, !noalias !6281

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !6282, !noalias !6281
  %.pre = load ptr, ptr %i.o, align 8, !alias.scope !6282, !noalias !6281
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3t_5SplitNtB3v_16StringSubCommand6handles_0EEB3z_.exit.i

bb.g:                                             ; preds = %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h, !noalias !6282

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !6282
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3t_5SplitNtB3v_16StringSubCommand6handles_0EEB3z_.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i, %bb.e
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ %.sroa.10.0.i, %bb.e ]
  %i.z = phi i64 [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit_crit_edge.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6283
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !6283
  store ptr %i.p, ptr %i.a, align 8, !noalias !6283
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !6283
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2F_5SplitNtB2H_16StringSubCommand6handles_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4b_8for_each4callINtNtB14_6borrow3CowB1M_ENCINvMsk_B12_INtB12_3VecB5e_E14extend_trustedBN_E0E0EB2L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3t_5SplitNtB3v_16StringSubCommand6handles_0EEB3z_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.thr_comm.i.i, %bb.g ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2R_5SplitNtB2T_16StringSubCommand6handles_0EEB2X_.exit

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRBZ_ENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3t_5SplitNtB3v_16StringSubCommand6handles_0EEB3z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2R_5SplitNtB2T_16StringSubCommand6handles_0EEB2X_.exit: ; preds = %.body, %bb.l
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %.pn8

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2R_5SplitNtB2T_16StringSubCommand6handles_0EEB2X_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRB1m_ENcNtB13_8Borrowed0EE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = lshr exact i64 %i.h, 4                   ; 3 uses
  %i.j = mul i64 %i.i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.h, 6148914691236517200
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6292
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6292 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = icmp samesign ule i64 %i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6296)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6297, !noalias !6298, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6297, !noalias !6298, !nonnull !16, !noundef !16
  %i.s = ptrtoint ptr %.val5.i.i to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
end_hunk_1
