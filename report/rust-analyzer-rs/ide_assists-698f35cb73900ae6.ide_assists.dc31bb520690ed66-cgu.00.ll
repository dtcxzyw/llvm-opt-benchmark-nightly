Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.00?download=true
inline.NumInlined: 10380
inline.NumDeleted: 5557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2I_5slice4iter4IterTNtB19_3PatINtNtB2I_6option6OptionNtB19_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0EE9from_iterB58_:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.e = ptrtoint ptr %.val2 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 88                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.i = load i64, ptr %i.b, align 8, !range !10, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecIBx_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterTNtBM_3PatINtNtB27_6option6OptionNtBM_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0EEB4v_.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #34
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecIBx_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterTNtBM_3PatINtNtB27_6option6OptionNtBM_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0EEB4v_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15317
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !15317
  store ptr %i.r, ptr %i.a, align 8, !noalias !15317
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !15317
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatINtNtBc_6option6OptionNtB1q_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4l_8for_each4callINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1q_8PathExprENCINvMsk_B5r_IB5p_B5o_E14extend_trustedBN_E0E0EB3n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecIBx_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterTNtBM_3PatINtNtB27_6option6OptionNtBM_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0EEB4v_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #35
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecIBx_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterTNtBM_3PatINtNtB27_6option6OptionNtBM_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0EEB4v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB46_INtNtNtB4e_5slice4iter4IterNtNtNtNtB2n_3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB63_s_0EE9from_iterB69_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.e = ptrtoint ptr %.val2 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.b, align 8, !range !10, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB3u_INtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB5r_s_0EEB5x_.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #34
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB3u_INtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB5r_s_0EEB5x_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15324
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !15324
  store ptr %i.r, ptr %i.a, align 8, !noalias !15324
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !15324
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB2m_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB54_3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEINtB5T_11SyntaxTokenB6f_EENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7o_3VecB4Z_E14extend_trustedBN_E0E0EB2s_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB3u_INtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB5r_s_0EEB5x_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #35
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB3u_INtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes4NameENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable0ENCB5r_s_0EEB5x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB4a_7flatten7FlatMapINtNtNtB4e_5slice4iter4IterNtNtNtNtB2n_3ast9generated5nodes8MatchArmEAB13_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB6G_8ArmsEdit11append_arms0EINtNtB4e_6option8IntoIterB13_EEE9from_iterB6K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [152 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [152 x i8], align 8               ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i64, ptr %1, align 8, !range !17, !alias.scope !15340, !noalias !15341, !noundef !7 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load i64, ptr %i.g, align 8, !range !21, !alias.scope !15340, !noalias !15341, !noundef !7 ; 3 uses
  %.not7.i = icmp eq i64 %i.h, -1                 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i64 %i.f to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i11.i = load i64, ptr %i.j, align 8, !alias.scope !15340, !noalias !15341
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i12.i = load i64, ptr %i.k, align 8, !alias.scope !15340, !noalias !15341
  %i.l = sub nuw i64 %.val3.i.i.i12.i, %.val.i.i.i11.i
  %.sroa.7.0.i.i13.i = select i1 %i.i, i64 %i.l, i64 0 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i64, ptr %i.m, align 8, !range !10, !alias.scope !15340, !noalias !15341, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i56.i.i14.i = load i64, ptr %i.p, align 8, !alias.scope !15340, !noalias !15341
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i57.i.i15.i = load i64, ptr %i.q, align 8, !alias.scope !15340, !noalias !15341
  %i.r = sub nuw i64 %.val3.i57.i.i15.i, %.val.i56.i.i14.i
  %.sroa.8.0.i.i16.i = select i1 %i.o, i64 %i.r, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !15340, !noalias !15341, !noundef !7 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val54.i.i18.i = load ptr, ptr %i.u, align 8, !alias.scope !15340, !noalias !15341, !nonnull !7
  %i.v = ptrtoint ptr %.val54.i.i18.i to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  %.sroa.869.0.i.i19.i = select i1 %.not.i.i17.i, i64 0, i64 %i.y
  %i.z = add i64 %.sroa.8.0.i.i16.i, %.sroa.7.0.i.i13.i ; 3 uses
  %.not72.i.i20.i = icmp uge i64 %i.z, %.sroa.7.0.i.i13.i ; 3 uses
  %i.aa = add i64 %.sroa.869.0.i.i19.i, %i.z      ; 2 uses
  %i.ab = icmp uge i64 %i.aa, %i.z
  %or.cond.not.i.i21.i = select i1 %.not72.i.i20.i, i1 %i.ab, i1 false, !prof !15342 ; 2 uses
  %.sroa.8.3.i.i22.i = select i1 %.not72.i.i20.i, i64 %i.aa, i64 undef, !prof !15342 ; 3 uses
  br i1 %.not7.i, label %bb.e, label %.split

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %.thread10, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ne i64 %i.h, 2
  %i.ad = zext i1 %i.ac to i64
  br label %.thread10

.split:                                           ; preds = %bb.b
  %i.ae = icmp ne i64 %i.h, 2
  %i.af = zext i1 %i.ae to i64
  %i.ag = add i64 %.sroa.8.3.i.i22.i, %i.af       ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %.sroa.8.3.i.i22.i
  %.sroa.46.0.i = select i1 %.not72.i.i20.i, i64 %i.ag, i64 undef
  %narrow.i = select i1 %or.cond.not.i.i21.i, i1 %i.ah, i1 false
  br i1 %narrow.i, label %.thread10, label %bb.g, !prof !15343

bb.e:                                             ; preds = %bb.b
  br i1 %or.cond.not.i.i21.i, label %.thread10, label %bb.g, !prof !15343

.thread10:                                        ; preds = %bb.c, %bb.d, %.split, %bb.e
  %.sroa.46.0.sink.i14 = phi i64 [ %.sroa.46.0.i, %.split ], [ %.sroa.8.3.i.i22.i, %bb.e ], [ 0, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.46.0.sink.i14, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.thread10
  %i.ai = load i64, ptr %i.c, align 8, !range !10, !noundef !7
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !18, !noundef !7 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.h, !prof !12

bb.f:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #34
          to label %.noexc3 unwind label %bb.w

.noexc3:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.split, %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #34
          to label %bb.u unwind label %bb.w

bb.h:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.ap = icmp ule i64 %.sroa.46.0.sink.i14, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.al, ptr %i.e, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15347)
  %i.as = load i64, ptr %i.d, align 8, !range !17, !alias.scope !15348, !noalias !15349, !noundef !7 ; 2 uses
  %.not.i.i.i4 = icmp eq i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.au = load i64, ptr %i.at, align 8, !range !21, !alias.scope !15348, !noalias !15349, !noundef !7 ; 3 uses
  %.not7.i.i.i = icmp eq i64 %i.au, -1            ; 2 uses
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = trunc nuw i64 %i.as to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i11.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !15348, !noalias !15349
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val3.i.i.i12.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !15348, !noalias !15349
  %i.ay = sub nuw i64 %.val3.i.i.i12.i.i.i, %.val.i.i.i11.i.i.i
  %.sroa.7.0.i.i13.i.i.i = select i1 %i.av, i64 %i.ay, i64 0 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !range !10, !alias.scope !15348, !noalias !15349, !noundef !7
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val.i56.i.i14.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !15348, !noalias !15349
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val3.i57.i.i15.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !15348, !noalias !15349
  %i.be = sub nuw i64 %.val3.i57.i.i15.i.i.i, %.val.i56.i.i14.i.i.i
  %.sroa.8.0.i.i16.i.i.i = select i1 %i.bb, i64 %i.be, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !15348, !noalias !15349, !noundef !7 ; 2 uses
  %.not.i.i17.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.val54.i.i18.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !15348, !noalias !15349, !nonnull !7
  %i.bi = ptrtoint ptr %.val54.i.i18.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 2
  %.sroa.869.0.i.i19.i.i.i = select i1 %.not.i.i17.i.i.i, i64 0, i64 %i.bl
  %i.bm = add i64 %.sroa.8.0.i.i16.i.i.i, %.sroa.7.0.i.i13.i.i.i ; 3 uses
  %.not72.i.i20.i.i.i = icmp uge i64 %i.bm, %.sroa.7.0.i.i13.i.i.i ; 3 uses
  %i.bn = add i64 %.sroa.869.0.i.i19.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bm
  %or.cond.not.i.i21.i.i.i = select i1 %.not72.i.i20.i.i.i, i1 %i.bo, i1 false, !prof !15342 ; 2 uses
  %.sroa.8.3.i.i22.i.i.i = select i1 %.not72.i.i20.i.i.i, i64 %i.bn, i64 undef, !prof !15342 ; 3 uses
  br i1 %.not7.i.i.i, label %bb.l, label %.split.i.i

bb.j:                                             ; preds = %bb.h
  br i1 %.not7.i.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp ne i64 %i.au, 2
  %i.bq = zext i1 %i.bp to i64
  br label %.thread13.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.br = icmp ne i64 %i.au, 2
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %.sroa.8.3.i.i22.i.i.i, %i.bs   ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %.sroa.8.3.i.i22.i.i.i
  %.sroa.46.0.i.i.i = select i1 %.not72.i.i20.i.i.i, i64 %i.bt, i64 undef
  %narrow.i.i.i = select i1 %or.cond.not.i.i21.i.i.i, i1 %i.bu, i1 false
  br i1 %narrow.i.i.i, label %.thread13.i.i, label %bb.n, !prof !15343

bb.l:                                             ; preds = %bb.i
  br i1 %or.cond.not.i.i21.i.i.i, label %.thread13.i.i, label %bb.n, !prof !15343

.thread13.i.i:                                    ; preds = %bb.l, %.split.i.i, %bb.k
  %.sroa.46.0.sink.i17.i.i = phi i64 [ %.sroa.46.0.i.i.i, %.split.i.i ], [ %.sroa.8.3.i.i22.i.i.i, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.bv = icmp ugt i64 %.sroa.46.0.sink.i17.i.i, %i.al
  br i1 %i.bv, label %bb.m, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i, !prof !57

bb.m:                                             ; preds = %.thread13.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.sroa.46.0.sink.i17.i.i, i64 noundef 8, i64 noundef 16)
          to label %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i_crit_edge unwind label %bb.p, !noalias !15350

._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.aq, align 8, !alias.scope !15351, !noalias !15350
  %.pre16 = load i64, ptr %i.ar, align 8, !alias.scope !15351, !noalias !15350
  br label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i

bb.n:                                             ; preds = %bb.l, %.split.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #34
          to label %bb.o unwind label %bb.p, !noalias !15352

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB34_3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEINtB3T_11SyntaxTokenB4f_EEj2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB5n_8ArmsEdit11append_arms0EINtNtB4_6option8IntoIterB2Z_EEEB5r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.d) #35
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i: ; preds = %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i_crit_edge, %bb.j, %.thread13.i.i
  %i.bx = phi i64 [ %.pre16, %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i_crit_edge ], [ 0, %bb.j ], [ 0, %.thread13.i.i ]
  %i.by = phi ptr [ %.pre, %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i_crit_edge ], [ %i.ao, %bb.j ], [ %i.ao, %.thread13.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15353
  store ptr %i.ar, ptr %i.a, align 8, !noalias !15354
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bx, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15354
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.by, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !15354
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2R_3api10SyntaxNodeNtNtB1W_11syntax_node12RustLanguageEINtB3G_11SyntaxTokenB42_EEj2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB5a_8ArmsEdit11append_arms0EINtNtBb_6option8IntoIterB2M_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB7a_8for_each4callB2M_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8q_3VecB2M_E14extend_trustedBO_E0E0EB5e_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %lpad.thr_comm.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #35
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtNtB3C_5slice4iter4IterNtNtNtNtB1Z_3ast9generated5nodes8MatchArmEABG_j2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB63_8ArmsEdit11append_arms0EINtNtB3C_6option8IntoIterBG_EEEB67_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.t:                                             ; preds = %bb.w, %.body
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.u:                                             ; preds = %bb.g
  unreachable

bb.v:                                             ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.f, %.thread10, %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB34_3api10SyntaxNodeNtNtB29_11syntax_node12RustLanguageEINtB3T_11SyntaxTokenB4f_EEj2_NCNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB5n_8ArmsEdit11append_arms0EINtNtB4_6option8IntoIterB2Z_EEEB5r_(ptr noalias nofree noundef align 8 dereferenceable(152) %1) #35
          to label %bb.v unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB4e_5array4iter8IntoIterB13_Kj4_EINtNtB6_9into_iter8IntoIterB13_EEE9from_iterCsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i64, ptr %1, align 8, !range !10, !alias.scope !15370, !noalias !15371, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !15370, !noalias !15371, !noundef !7
  %.not7.i = icmp eq ptr %i.i, null               ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !15370, !noalias !15371, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i = load i64, ptr %i.k, align 8, !alias.scope !15370, !noalias !15371, !noundef !7
  %i.l = sub nuw i64 %.val9.i, %.val.i            ; 3 uses
  br i1 %.not7.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val14.i = load ptr, ptr %i.m, align 8, !alias.scope !15370, !noalias !15371, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val15.i = load ptr, ptr %i.n, align 8, !alias.scope !15370, !noalias !15371, !nonnull !7, !noundef !7
  %i.o = ptrtoint ptr %.val15.i to i64
  %i.p = ptrtoint ptr %.val14.i to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val12.i = load ptr, ptr %i.s, align 8, !alias.scope !15370, !noalias !15371, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val13.i = load ptr, ptr %i.t, align 8, !alias.scope !15370, !noalias !15371, !nonnull !7, !noundef !7
  %i.u = ptrtoint ptr %.val13.i to i64
  %i.v = ptrtoint ptr %.val12.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 4
  %i.y = add i64 %i.x, %i.l                       ; 2 uses
  %.not = icmp ult i64 %i.y, %i.l
  br i1 %.not, label %bb.f, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread, !prof !56

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit
  %.sink.i11 = phi i64 [ %i.y, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit ], [ 0, %bb.c ], [ %i.l, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sink.i11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread
  %i.z = load i64, ptr %i.c, align 8, !range !10, !noundef !7
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !18, !noundef !7 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.g, !prof !12

bb.e:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #34
          to label %.noexc3 unwind label %bb.u

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #34
          to label %bb.s unwind label %bb.u

bb.g:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.ag = icmp ule i64 %.sink.i11, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ac, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15375)
  %i.aj = load i64, ptr %i.d, align 8, !range !10, !alias.scope !15376, !noalias !15377, !noundef !7
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !15376, !noalias !15377, !noundef !7
  %.not7.i.i.i = icmp eq ptr %i.am, null          ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !15376, !noalias !15377, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val9.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !15376, !noalias !15377, !noundef !7
  %i.ap = sub nuw i64 %.val9.i.i.i, %.val.i.i.i   ; 3 uses
  br i1 %.not7.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1y_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2n_11SyntaxTokenB2J_EEKj4_EINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB1t_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.i:                                             ; preds = %bb.g
end_hunk_0
