Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.15?download=true
inline.NumInlined: 3755
inline.NumDeleted: 1308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMsm_NtCshzWfHUSfYae_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB30_11SyntaxTokenB3m_EEEENCINvMBN_BK_10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB59_12ArrayBuilderB26_KBz_E4take0E0ECsiU5vK8fN4ZC_11ide_assists:bb.a
  %i.i = extractvalue { i64, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !783
  store i64 %i.h, ptr %0, align 8, !alias.scope !789, !noalias !793
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !789, !noalias !793
  call void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2r_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3g_11SyntaxTokenB3C_EEEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB5d_12ArrayBuilderB2m_Kj1_E4take0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3u_11SyntaxTokenB3Q_EEEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB5r_12ArrayBuilderB2A_Kj1_E4take0E0EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCshzWfHUSfYae_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEENCINvMBN_BK_10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3u_12ArrayBuilderB26_KBz_E3new0E0ECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !797
  store ptr %i.c, ptr %i.b, align 8, !noalias !799
  %i.f = invoke { i64, ptr } @_RNvXs0_NtNtCshzWfHUSfYae_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3z_12ArrayBuilderB2n_Kj1_E3new0E0EINtNtB10_8function5FnMutTjEE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj1_E3new0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3M_12ArrayBuilderB2A_Kj1_E3new0E0EECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.f, 0
  %i.i = extractvalue { i64, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !797
  store i64 %i.h, ptr %0, align 8, !alias.scope !803, !noalias !807
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !803, !noalias !807
  call void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj1_E3new0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3M_12ArrayBuilderB2A_Kj1_E3new0E0EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCshzWfHUSfYae_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEENCINvMBN_BK_10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3u_12ArrayBuilderB26_KBz_E4take0E0ECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !811
  store ptr %i.c, ptr %i.b, align 8, !noalias !813
  %i.f = invoke { i64, ptr } @_RNvXs0_NtNtCshzWfHUSfYae_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3z_12ArrayBuilderB2n_Kj1_E4take0E0EINtNtB10_8function5FnMutTjEE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj1_E4take0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3M_12ArrayBuilderB2A_Kj1_E4take0E0EECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.f, 0
  %i.i = extractvalue { i64, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !811
  store i64 %i.h, ptr %0, align 8, !alias.scope !817, !noalias !821
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !817, !noalias !821
  call void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj1_E4take0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3M_12ArrayBuilderB2A_Kj1_E4take0E0EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvMsm_NtCshzWfHUSfYae_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEENCINvMBN_BK_10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3z_12ArrayBuilderB26_KBz_E3new0E0ECsiU5vK8fN4ZC_11ide_assists() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !822
  store ptr %i.c, ptr %i.b, align 8, !noalias !825
  %i.f = invoke ptr @_RNvXs0_NtNtCshzWfHUSfYae_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3E_12ArrayBuilderB2n_Kj1_E3new0E0EINtNtB10_8function5FnMutTjEE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj1_E3new0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3R_12ArrayBuilderB2A_Kj1_E3new0E0EECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !822
  call void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj1_E3new0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.h

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3R_12ArrayBuilderB2A_Kj1_E3new0E0EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvMsm_NtCshzWfHUSfYae_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEENCINvMBN_BK_10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3z_12ArrayBuilderB26_KBz_E4take0E0ECsiU5vK8fN4ZC_11ide_assists() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !829
  store ptr %i.c, ptr %i.b, align 8, !noalias !832
  %i.f = invoke ptr @_RNvXs0_NtNtCshzWfHUSfYae_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3E_12ArrayBuilderB2n_Kj1_E4take0E0EINtNtB10_8function5FnMutTjEE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj1_E4take0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3R_12ArrayBuilderB2A_Kj1_E4take0E0EECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !829
  call void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj1_E4take0E0ENtNtBZ_4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.h

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3R_12ArrayBuilderB2A_Kj1_E4take0E0EECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCsbSS6DM8SDEO_5alloc6string6Stringj1_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.i:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.a

bb.a:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !836 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.b, label %.body.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !845, !nonnull !10, !noundef !10
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !846
  br label %.body.i

bb.c:                                             ; preds = %.lr.ph.i
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !836 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !845, !nonnull !10, !noundef !10
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !849
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.d, %bb.c
  ret void

.body.i:                                          ; preds = %bb.a, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !852 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !859, !nonnull !10, !noundef !10
  %i.e = shl nuw i64 %.val2.i.i, 6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !860
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !852 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !859, !nonnull !10, !noundef !10
  %i.h = shl nuw i64 %.val.i.i, 6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !863
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1z_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2o_11SyntaxTokenB2K_EENtNtB2O_13syntax_editor16SyntaxAnnotationEEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EENtNtB1Z_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !866 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EENtNtB2A_13syntax_editor16SyntaxAnnotationEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !873, !nonnull !10, !noundef !10
  %i.e = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !874
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EENtNtB2A_13syntax_editor16SyntaxAnnotationEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !866 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1D_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2s_11SyntaxTokenB2O_EENtNtB2S_13syntax_editor16SyntaxAnnotationEEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !873, !nonnull !10, !noundef !10
  %i.h = mul nuw i64 %.val.i.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !877
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1D_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2s_11SyntaxTokenB2O_EENtNtB2S_13syntax_editor16SyntaxAnnotationEEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1l_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2a_11SyntaxTokenB2w_EENtNtB2A_13syntax_editor16SyntaxAnnotationEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1D_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2s_11SyntaxTokenB2O_EENtNtB2S_13syntax_editor16SyntaxAnnotationEEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !880, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !881 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !886, !nonnull !10, !noundef !10
  %i.f = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !887
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !alias.scope !881 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !886, !nonnull !10, !noundef !10
  %i.i = mul nuw i64 %.val.i, 40
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !890
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change11SnippetEditEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !880, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13source_change11SnippetEditECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13source_change11SnippetEditECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTmNtNtCsuAhG64lL82_9text_size5range9TextRangeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !893 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTmNtNtCsuAhG64lL82_9text_size5range9TextRangeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !893, !nonnull !10, !noundef !10
  %i.f = mul nuw i64 %.val2.i.i, 12
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #38
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTmNtNtCsuAhG64lL82_9text_size5range9TextRangeEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !893 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13source_change11SnippetEditECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !893, !nonnull !10, !noundef !10
end_hunk_0
