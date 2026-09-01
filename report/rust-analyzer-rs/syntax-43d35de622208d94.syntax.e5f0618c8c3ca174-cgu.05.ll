Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.05?download=true
inline.NumInlined: 825
inline.NumDeleted: 469
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCscAsMj0W7j8b_3std4sync4mpmc7channelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsjJXvCMGntp8_6syntax:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2r_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1n_Kj1_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_AB1n_B5n_E0EEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !252
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !252
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !252
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !252
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !258, !noalias !255, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !258, !noalias !255, !noundef !4 ; 3 uses
  %i.d = sub nuw i64 %.val3.i, %.val.i            ; 3 uses
  %.not.i = icmp eq i64 %.val3.i, %.val.i
  br i1 %.not.i, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i, label %bb.c

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2D_E0EEB1L_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e, !noalias !258

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !260, !noalias !258, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !range !10, !alias.scope !260, !noalias !258, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i unwind label %bb.e, !noalias !258

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj1_ENCINvNtNtB1x_14syntax_factory12constructors14iterator_inputB1r_AB1r_B2r_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callTB1r_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEENCINvNvNtB3M_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1r_EIB73_B4Q_EEB4L_E0E0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5h_E0EE6extendB1L_.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEj1_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %.val.i, i64 noundef %.val3.i)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5h_E0EE6extendB1L_.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2D_E0EEB1L_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2r_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1n_Kj2_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_AB1n_B5n_E0EEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !267
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !267
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !267
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !267
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !273, !noalias !270, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !273, !noalias !270, !noundef !4 ; 3 uses
  %i.d = sub nuw i64 %.val3.i, %.val.i            ; 3 uses
  %.not.i = icmp eq i64 %.val3.i, %.val.i
  br i1 %.not.i, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i, label %bb.c

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj2_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2D_E0EEB1L_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e, !noalias !273

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !273, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !range !10, !alias.scope !275, !noalias !273, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i unwind label %bb.e, !noalias !273

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj2_ENCINvNtNtB1x_14syntax_factory12constructors14iterator_inputB1r_AB1r_B2r_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callTB1r_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEENCINvNvNtB3M_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1r_EIB73_B4Q_EEB4L_E0E0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj2_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5h_E0EE6extendB1L_.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEj2_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.val.i, i64 noundef %.val3.i)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj2_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5h_E0EE6extendB1L_.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2q_EE14extend_reserveB1u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgKj2_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2D_E0EEB1L_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2s_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtB4t_4skip4SkipINtNtNtBa_7sources10successors10SuccessorsB1n_NCNvMsf_NtB1t_8node_extNtB1p_4Path8segments0EENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_B4P_E0EEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !282
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !282
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !282
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !288, !noalias !285, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !288, !noalias !285 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %.val.i, null
  %spec.select.i.i.i = zext i1 %.not.i.i.i.i to i64 ; 2 uses
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %spec.select.i.i.i, i64 %.val2.i) ; 3 uses
  %.not.not.i = icmp ult i64 %.val2.i, %spec.select.i.i.i
  br i1 %.not.not.i, label %bb.c, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.thr_comm.i, %bb.g ], [ %lpad.thr_comm.i, %bb.f ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_4skip4SkipINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB2d_8node_extNtB29_4Path8segments0EENCINvNtNtB2d_14syntax_factory12constructors14iterator_inputB27_B19_E0EEB2f_.exit unwind label %bb.i

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtNtBa_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB21_8node_extNtB1X_4Path8segments0EENCINvNtNtB21_14syntax_factory12constructors14iterator_inputB1V_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4M_8for_each4callTB1V_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB23_11syntax_node12RustLanguageEENCINvNvNtB4Q_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1V_EIB7W_B5U_EEB5P_E0E0EB23_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RNvXNvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIB15_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1J_11syntax_node12RustLanguageEEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtNtB4l_4skip4SkipINtNtNtB8_7sources10successors10SuccessorsB1B_NCNvMsf_NtB1H_8node_extNtB1D_4Path8segments0EENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B4H_E0EE6extendB1J_.exit unwind label %bb.b

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e, !noalias !288

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !290, !noalias !288, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !range !10, !alias.scope !290, !noalias !288, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i unwind label %bb.e, !noalias !288

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %2 = icmp eq ptr %.val.i, null
  br i1 %2, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !288, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !288
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #29
          to label %.body unwind label %bb.h, !noalias !288

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !288
  unreachable

_RNvXNvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIB15_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1J_11syntax_node12RustLanguageEEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtNtB4l_4skip4SkipINtNtNtB8_7sources10successors10SuccessorsB1B_NCNvMsf_NtB1H_8node_extNtB1D_4Path8segments0EENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B4H_E0EE6extendB1J_.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2r_EE14extend_reserveB1u_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_4skip4SkipINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB2d_8node_extNtB29_4Path8segments0EENCINvNtNtB2d_14syntax_factory12constructors14iterator_inputB27_B19_E0EEB2f_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2k_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1n_Kj0_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_AB1n_B5g_E0EEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !297
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !297
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !297
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !297
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !noalias !300
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.c, align 8, !noalias !300
  %i.d = sub nuw i64 %2, %1                       ; 3 uses
  %.not.i = icmp eq i64 %2, %1
  br i1 %.not.i, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i, label %bb.c

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj0_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2w_E0EEB1L_.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !303, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !range !10, !alias.scope !303, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i unwind label %bb.e

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj0_ENCINvNtNtB1x_14syntax_factory12constructors14iterator_inputB1r_AB1r_B2k_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callTB1r_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEENCINvNvNtB3F_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1r_EIB6W_B4J_EEB4E_E0E0EB1z_(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.g unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEj0_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %1, i64 noundef %2)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveB1u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj0_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2w_E0EEB1L_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2n_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtNtBa_7sources4once4OnceB1n_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_B4K_E0EEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !310
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !310
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !310
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !310
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = zext i1 %i.b to i64                      ; 3 uses
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.thr_comm.i, %bb.f ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B19_E0EEB1J_.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !316, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !range !10, !alias.scope !316, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i unwind label %bb.e

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENCINvNtNtB1v_14syntax_factory12constructors14iterator_inputB1p_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callTB1p_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1x_11syntax_node12RustLanguageEENCINvNvNtB3w_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1p_EIB6N_B4A_EEB4v_E0E0EB1x_(ptr noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBa_7sources4once4OnceB1D_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_B4E_E0EE6extendB1L_.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !313, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !313
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #29
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBa_7sources4once4OnceB1D_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_B4E_E0EE6extendB1L_.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2m_EE14extend_reserveB1u_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B19_E0EEB1J_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1b_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4recvs_0INtNtCshzWfHUSfYae_4core6result6ResultB1A_NtNtB9_4mpsc16RecvTimeoutErrorEEs0_0CsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.0.val, i64 32, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4recvs_0CsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #30
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !332, !nonnull !4, !noundef !4
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !332
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !342, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !342
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit8

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit8

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit8: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1b_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0INtNtCshzWfHUSfYae_4core6result6ResultuINtNtB7_5error16SendTimeoutErrorB1A_EEEs0_0CsjJXvCMGntp8_6syntax(ptr nofree captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.0.val, i64 40, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %i.d = invoke fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0CsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #30
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !352, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !352
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsjJXvCMGntp8_6syntax.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !362, !nonnull !4, !noundef !4
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !362
end_hunk_0
