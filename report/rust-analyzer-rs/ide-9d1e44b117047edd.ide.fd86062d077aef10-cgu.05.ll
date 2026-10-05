Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.05?download=true
inline.NumInlined: 3162
inline.NumDeleted: 1279
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [28 x i8] c"crates/hir/src/semantics.rs\00", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtBd_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE14intern_id_coldINtNvB16_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2o_B14_17from_span_file_idDNtNtBf_8database8DatabaseEL_B2H_E0Es0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE14intern_id_coldINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2j_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2C_E0Es0_0CslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE14intern_id_coldINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2j_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2C_E0Es0_0CslLuZgPVt6hg_3ide }>, align 8
@2 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/interned.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00*\02\00\00H\00\00\00" }>, align 8
@4 = private unnamed_addr constant [43 x i8] c"interned value in LRU so must be in key_map", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\006\02\00\00\12\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtBd_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB16_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2i_B14_17from_span_file_idDNtNtBf_8database8DatabaseEL_B2B_E0Es3_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2d_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2w_E0Es3_0CslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2d_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2w_E0Es3_0CslLuZgPVt6hg_3ide }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\04\02\00\00!\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtBd_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB16_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2i_B14_17from_span_file_idDNtNtBf_8database8DatabaseEL_B2B_E0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2d_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2w_E0Es_0CslLuZgPVt6hg_3ide, ptr @_RNCINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvB11_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2d_BZ_17from_span_file_idDNtNtBa_8database8DatabaseEL_B2w_E0Es_0CslLuZgPVt6hg_3ide }>, align 8
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@_RNvNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl24descend_into_macros_impl10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1B\00\00\00\00\00\00\00\01\05\00\001\00\00\00" }>, align 8
@10 = private unnamed_addr constant [14 x i8] c"too many subst", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1B\00\00\00\00\00\00\00.\07\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3q_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs0_0CslLuZgPVt6hg_3ide }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3q_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs1_0CslLuZgPVt6hg_3ide }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3p_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprEs_0CslLuZgPVt6hg_3ide }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3t_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs0_0CslLuZgPVt6hg_3ide }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3t_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs1_0CslLuZgPVt6hg_3ide }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3s_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEs_0CslLuZgPVt6hg_3ide }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3i_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs0_0CslLuZgPVt6hg_3ide }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3i_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs1_0CslLuZgPVt6hg_3ide }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEs_0CslLuZgPVt6hg_3ide }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3l_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs0_0CslLuZgPVt6hg_3ide }>, align 8
@22 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3l_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs1_0CslLuZgPVt6hg_3ide }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3k_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEs_0CslLuZgPVt6hg_3ide }>, align 8
@24 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3m_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs0_0CslLuZgPVt6hg_3ide }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3m_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs1_0CslLuZgPVt6hg_3ide }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3l_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprEs_0CslLuZgPVt6hg_3ide }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3m_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs0_0CslLuZgPVt6hg_3ide }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3m_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs1_0CslLuZgPVt6hg_3ide }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBd_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3l_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1D_11syntax_node12RustLanguageEENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB8_13SemanticsImpl28descend_node_into_attributesNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatEs_0CslLuZgPVt6hg_3ide }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1B\00\00\00\00\00\00\00B\08\00\00P\00\00\00" }>, align 8
@31 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@32 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @31, [24 x i8] zeroinitializer }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1B\00\00\00\00\00\00\00\F6\04\00\000\00\00\00" }>, align 8
@34 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner.rs\00", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @34, [16 x i8] c"a\00\00\00\00\00\00\00.\00\00\00#\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECslLuZgPVt6hg_3ide, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsny_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ItemNtBa_7AstNode6syntax, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs5attrsCslLuZgPVt6hg_3ide, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs21inner_attributes_nodeCslLuZgPVt6hg_3ide }>, align 8
@37 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@38 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/range.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"a\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide, ptr @40, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCslLuZgPVt6hg_3ide, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @41, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCslLuZgPVt6hg_3ide, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8mir_bodyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase20mir_body_for_closureCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22monomorphized_mir_bodyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34monomorphized_mir_body_for_closureCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10const_evalCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15anon_const_evalCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_eval_staticCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23const_eval_discriminantCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18lookup_impl_methodCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase13layout_of_adtCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12layout_of_tyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18target_data_layoutCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase26dyn_compatibility_of_traitCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase2tyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase36type_for_type_alias_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8value_tyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14type_for_constCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase31type_for_const_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15type_for_staticCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase32type_for_static_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase29impl_self_ty_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12impl_self_tyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34const_param_types_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_param_typesCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14const_param_tyCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase27impl_trait_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10impl_traitCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase28field_types_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase11field_typesCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23callable_item_signatureCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase40callable_item_signature_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17trait_environmentCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase33generic_defaults_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase16generic_defaultsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34type_alias_bounds_with_diagnosticsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17type_alias_boundsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22type_alias_self_boundsCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12variances_ofCslLuZgPVt6hg_3ide, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase25zalsa_register_downcasterBx_ }>, align 8
@43 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/active_query.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"e\00\00\00\00\00\00\00v\01\00\00\18\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide, ptr @40, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCslLuZgPVt6hg_3ide, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @41, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCslLuZgPVt6hg_3ide, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCslLuZgPVt6hg_3ide, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide, ptr @40, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCslLuZgPVt6hg_3ide, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCslLuZgPVt6hg_3ide, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNvNtCslLuZgPVt6hg_3ide17highlight_related28highlight_branch_exit_pointss_00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_, ptr @_RNCNCNvNtCslLuZgPVt6hg_3ide17highlight_related28highlight_branch_exit_pointss_00B7_ }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECslLuZgPVt6hg_3ide, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9X_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_2FnNtBa_7AstNode6syntax, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtNtB8_6traits7HasName4nameCslLuZgPVt6hg_3ide }>, align 8
@49 = private unnamed_addr constant [36 x i8] c"crates/ide/src/highlight_related.rs\00", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"#\00\00\00\00\00\00\00\07\02\00\00<\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtCsaH4Z5sDJ4bD_9hashbrown5tableINtB5_11AbsentEntryNtNtCsd9Lm8bEdjjY_5salsa2id2IdENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@53 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@54 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvMNtCslLuZgPVt6hg_3ide17highlight_relatedNtB9_19WalkExpandedExprCtx4walk0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_once6vtableBb_, ptr @_RNCNvMNtCslLuZgPVt6hg_3ide17highlight_relatedNtB4_19WalkExpandedExprCtx4walk0B6_ }>, align 8
@55 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner/entry.rs\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"g\00\00\00\00\00\00\00E\00\00\00\1E\00\00\00" }>, align 8
@57 = private unnamed_addr constant [9 x i8] c"attribute", align 1
@58 = private unnamed_addr constant [12 x i8] c"builtin_attr", align 1
@59 = private unnamed_addr constant [8 x i8] c"constant", align 1
@60 = private unnamed_addr constant [11 x i8] c"const_param", align 1
@61 = private unnamed_addr constant [10 x i8] c"crate_root", align 1
@62 = private unnamed_addr constant [6 x i8] c"derive", align 1
@63 = private unnamed_addr constant [13 x i8] c"derive_helper", align 1
@64 = private unnamed_addr constant [4 x i8] c"enum", align 1
@65 = private unnamed_addr constant [5 x i8] c"field", align 1
@66 = private unnamed_addr constant [8 x i8] c"function", align 1
@67 = private unnamed_addr constant [6 x i8] c"method", align 1
@68 = private unnamed_addr constant [9 x i8] c"self_type", align 1
@69 = private unnamed_addr constant [3 x i8] c"reg", align 1
@70 = private unnamed_addr constant [5 x i8] c"label", align 1
@71 = private unnamed_addr constant [8 x i8] c"lifetime", align 1
@72 = private unnamed_addr constant [8 x i8] c"variable", align 1
@73 = private unnamed_addr constant [5 x i8] c"macro", align 1
@74 = private unnamed_addr constant [10 x i8] c"proc_macro", align 1
@75 = private unnamed_addr constant [6 x i8] c"module", align 1
@76 = private unnamed_addr constant [12 x i8] c"self_keyword", align 1
@77 = private unnamed_addr constant [17 x i8] c"self_type_keyword", align 1
@78 = private unnamed_addr constant [6 x i8] c"static", align 1
@79 = private unnamed_addr constant [6 x i8] c"struct", align 1
@80 = private unnamed_addr constant [11 x i8] c"tool_module", align 1
@81 = private unnamed_addr constant [5 x i8] c"trait", align 1
@82 = private unnamed_addr constant [10 x i8] c"type_alias", align 1
@83 = private unnamed_addr constant [10 x i8] c"type_param", align 1
@84 = private unnamed_addr constant [5 x i8] c"union", align 1
@85 = private unnamed_addr constant [11 x i8] c"value_param", align 1
@86 = private unnamed_addr constant [12 x i8] c"enum_variant", align 1
@87 = private unnamed_addr constant [17 x i8] c"attribute_bracket", align 1
@88 = private unnamed_addr constant [12 x i8] c"bool_literal", align 1
@89 = private unnamed_addr constant [12 x i8] c"builtin_type", align 1
@90 = private unnamed_addr constant [12 x i8] c"byte_literal", align 1
@91 = private unnamed_addr constant [12 x i8] c"char_literal", align 1
@92 = private unnamed_addr constant [7 x i8] c"comment", align 1
@93 = private unnamed_addr constant [15 x i8] c"escape_sequence", align 1
@94 = private unnamed_addr constant [16 x i8] c"format_specifier", align 1
@95 = private unnamed_addr constant [23 x i8] c"invalid_escape_sequence", align 1
@96 = private unnamed_addr constant [7 x i8] c"keyword", align 1
@97 = private unnamed_addr constant [15 x i8] c"numeric_literal", align 1
@98 = private unnamed_addr constant [7 x i8] c"bitwise", align 1
@99 = private unnamed_addr constant [10 x i8] c"arithmetic", align 1
@100 = private unnamed_addr constant [7 x i8] c"logical", align 1
@101 = private unnamed_addr constant [8 x i8] c"negation", align 1
@102 = private unnamed_addr constant [10 x i8] c"comparison", align 1
@103 = private unnamed_addr constant [8 x i8] c"operator", align 1
@104 = private unnamed_addr constant [7 x i8] c"bracket", align 1
@105 = private unnamed_addr constant [5 x i8] c"brace", align 1
@106 = private unnamed_addr constant [11 x i8] c"parenthesis", align 1
@107 = private unnamed_addr constant [5 x i8] c"angle", align 1
@108 = private unnamed_addr constant [5 x i8] c"comma", align 1
@109 = private unnamed_addr constant [3 x i8] c"dot", align 1
@110 = private unnamed_addr constant [5 x i8] c"colon", align 1
@111 = private unnamed_addr constant [9 x i8] c"semicolon", align 1
@112 = private unnamed_addr constant [10 x i8] c"macro_bang", align 1
@113 = private unnamed_addr constant [11 x i8] c"punctuation", align 1
@114 = private unnamed_addr constant [14 x i8] c"string_literal", align 1
@115 = private unnamed_addr constant [20 x i8] c"unresolved_reference", align 1
@116 = private unnamed_addr constant [4 x i8] c"none", align 1
@117 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/input.rs\00", align 1
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @117, [16 x i8] c"^\00\00\00\00\00\00\00\F0\00\00\00,\00\00\00" }>, align 8
@119 = private unnamed_addr constant [10 x i8] c"associated", align 1
@120 = private unnamed_addr constant [5 x i8] c"async", align 1
@121 = private unnamed_addr constant [8 x i8] c"callable", align 1
@122 = private unnamed_addr constant [5 x i8] c"const", align 1
@123 = private unnamed_addr constant [9 x i8] c"consuming", align 1
@124 = private unnamed_addr constant [7 x i8] c"control", align 1
@125 = private unnamed_addr constant [15 x i8] c"default_library", align 1
@126 = private unnamed_addr constant [11 x i8] c"declaration", align 1
@127 = private unnamed_addr constant [10 x i8] c"deprecated", align 1
@128 = private unnamed_addr constant [13 x i8] c"documentation", align 1
@129 = private unnamed_addr constant [8 x i8] c"injected", align 1
@130 = private unnamed_addr constant [14 x i8] c"intra_doc_link", align 1
@131 = private unnamed_addr constant [7 x i8] c"library", align 1
@132 = private unnamed_addr constant [7 x i8] c"mutable", align 1
@133 = private unnamed_addr constant [6 x i8] c"public", align 1
@134 = private unnamed_addr constant [9 x i8] c"reference", align 1
@135 = private unnamed_addr constant [6 x i8] c"unsafe", align 1
@136 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs\00", align 1
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @136, [16 x i8] c"g\00\00\00\00\00\00\00}\03\00\00=\00\00\00" }>, align 8
@138 = private unnamed_addr constant [40 x i8] c"should always have at least one `AttrId`", align 1
@139 = private unnamed_addr constant [29 x i8] c"crates/hir-expand/src/lib.rs\00", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @139, [16 x i8] c"\1C\00\00\00\00\00\00\00w\01\00\00\1C\00\00\00" }>, align 8
@141 = private unnamed_addr constant [68 x i8] c"assertion failed: self.hl_range.range.contains_range(hl_range.range)", align 1
@142 = private unnamed_addr constant [49 x i8] c"crates/ide/src/syntax_highlighting/highlights.rs\00", align 1
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @142, [16 x i8] c"0\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @142, [16 x i8] c"0\00\00\00\00\00\00\00@\00\00\00\1B\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @142, [16 x i8] c"0\00\00\00\00\00\00\00I\00\00\00\14\00\00\00" }>, align 8
@146 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\93\04\00\00\1A\00\00\00" }>, align 8
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\9E\04\00\00\17\00\00\00" }>, align 8
@148 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\9B\04\00\00\1B\00\00\00" }>, align 8
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\9B\04\00\003\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\87\04\00\00\1A\00\00\00" }>, align 8
@151 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\A9\04\00\00$\00\00\00" }>, align 8
@152 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\BC\04\00\00\17\00\00\00" }>, align 8
@153 = private unnamed_addr constant [52 x i8] c"attempted to insert an object that is already linked", align 1
@154 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/intrusive-collections-0.10.1/src/linked_list.rs\00", align 1
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"t\00\00\00\00\00\00\00\85\04\00\00\11\00\00\00" }>, align 8
@156 = private unnamed_addr constant [81 x i8] c"write lock taken; value leaked across threads or user functions not deterministic", align 1
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @136, [16 x i8] c"g\00\00\00\00\00\00\00l\04\00\00\15\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNSNvYNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext28is_closure_or_blk_with_modifINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableCslLuZgPVt6hg_3ide, ptr @_RNvYNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext28is_closure_or_blk_with_modifINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8call_mutCslLuZgPVt6hg_3ide, ptr @_RNvYNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext28is_closure_or_blk_with_modifINtNtNtCshzWfHUSfYae_4core3ops8function2FnTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE4callCslLuZgPVt6hg_3ide }>, align 8
@159 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBa_, ptr @_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss_0B5_ }>, align 8
@160 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNSNvYNvMNtCslLuZgPVt6hg_3ide17highlight_relatedNtB7_19WalkExpandedExprCtx31is_async_const_block_or_closureINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableB9_, ptr @_RNvYNvMNtCslLuZgPVt6hg_3ide17highlight_relatedNtB5_19WalkExpandedExprCtx31is_async_const_block_or_closureINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE8call_mutB7_, ptr @_RNvYNvMNtCslLuZgPVt6hg_3ide17highlight_relatedNtB5_19WalkExpandedExprCtx31is_async_const_block_or_closureINtNtNtCshzWfHUSfYae_4core3ops8function2FnTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE4callB7_ }>, align 8
@161 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBa_, ptr @_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss0_0B5_ }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBa_, ptr @_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related14hl_exit_pointss1_0B5_ }>, align 8
@163 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess4_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBa_, ptr @_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess4_0B5_ }>, align 8
@164 = private unnamed_addr constant [4 x i8] c" -> ", align 1
@165 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTQNtNtCs6oosyzwIepl_6ide_db9text_edit15TextEditBuilderEE9call_once6vtableBc_, ptr @_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_0B7_, ptr @_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss1_0B7_ }>, align 8
@166 = private unnamed_addr constant [7 x i8] c"'static", align 1
@_RNvNvNtCslLuZgPVt6hg_3ide17highlight_related17highlight_related10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCslLuZgPVt6hg_3ide17highlight_related17highlight_related10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@167 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls4_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_, ptr @_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls4_0B7_ }>, align 8
@168 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls5_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_, ptr @_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_break_points2hls5_0B7_ }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_yield_points2hls_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_, ptr @_RNCNvNvNtCslLuZgPVt6hg_3ide17highlight_related22highlight_yield_points2hls_0B7_ }>, align 8
@_RNvNvNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@170 = private unnamed_addr constant [17 x i8] c"highlight_related", align 1
@171 = private unnamed_addr constant [22 x i8] c"ide::highlight_related", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCslLuZgPVt6hg_3ide }>, align 8
@173 = private unnamed_addr constant [35 x i8] c"crates/ide/src/highlight_related.rs", align 1
@_RNvNvNvNtCslLuZgPVt6hg_3ide17highlight_related17highlight_related10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00?\00\00\00", ptr @170, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @171, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvNtCslLuZgPVt6hg_3ide17highlight_related17highlight_related10___CALLSITE, ptr @172, ptr @171, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @173, [9 x i8] c"#\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@174 = private unnamed_addr constant [9 x i8] c"highlight", align 1
@175 = private unnamed_addr constant [24 x i8] c"ide::syntax_highlighting", align 1
@176 = private unnamed_addr constant [37 x i8] c"crates/ide/src/syntax_highlighting.rs", align 1
@_RNvNvNvNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\C8\00\00\00", ptr @174, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @175, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight10___CALLSITE, ptr @172, ptr @175, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @176, [9 x i8] c"%\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@177 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8407916533717187642 to ptr), ptr inttoptr (i64 8687281100977841205 to ptr) }>, align 8
@178 = private unnamed_addr constant [23 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\11\10\12\13\14\15\16", align 1
@179 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@180 = private unnamed_addr constant [6 x i8] c"FileId", align 1
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@182 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@183 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs6_Cs4sl5YdnrCxp_3vfsNtB5_6FileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@184 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsuAhG64lL82_9text_size5range9TextRangeNtB6_5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@185 = private unnamed_addr constant [16 x i8] c"FileRangeWrapper", align 1
@186 = private unnamed_addr constant [7 x i8] c"file_id", align 1
@187 = private unnamed_addr constant [5 x i8] c"range", align 1
@188 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1
@189 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @188, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8
@190 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RNvXs2_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_9HighlightNtNtCshzWfHUSfYae_4core3fmt7Display3fmt = private unnamed_addr constant [23 x i8] c"\0A\05\09\08\05\09\07\0A\0F\0B\0A\0D\08\0E\07\05\07\0A\06\09\06\05\06", align 8
@switch.table._RNvXs2_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_9HighlightNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.536 = private unnamed_addr constant [23 x ptr] [ptr @119, ptr @120, ptr @57, ptr @121, ptr @122, ptr @123, ptr @124, ptr @61, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @73, ptr @132, ptr @74, ptr @133, ptr @134, ptr @78, ptr @81, ptr @135], align 8
@switch.table._RNvNtCslLuZgPVt6hg_3ide19syntax_highlighting8traverse = private unnamed_addr constant [3 x i8] c"\02\0C\0F", align 8
@switch.table._RNvXs1_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_5HlModNtNtCshzWfHUSfYae_4core3fmt7Display3fmt = private unnamed_addr constant [23 x i8] c"\0A\05\09\08\05\09\07\0A\0F\0B\0A\0D\08\0E\07\05\0A\07\06\09\06\05\06", align 8
@switch.table._RNvXs1_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_5HlModNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.541 = private unnamed_addr constant [23 x ptr] [ptr @119, ptr @120, ptr @57, ptr @121, ptr @122, ptr @123, ptr @124, ptr @61, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @73, ptr @74, ptr @132, ptr @133, ptr @134, ptr @78, ptr @81, ptr @135], align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt = private unnamed_addr constant [30 x ptr] [ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86], align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.542 = private unnamed_addr constant [30 x i8] c"\09\0C\08\0B\0A\06\0D\04\05\08\06\09\03\05\08\08\05\0A\06\0C\11\06\06\0B\05\0A\0A\05\0B\0C", align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.543 = private unnamed_addr constant [6 x ptr] [ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103], align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.544 = private unnamed_addr constant [6 x i8] c"\07\0A\07\08\0A\08", align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.545 = private unnamed_addr constant [10 x ptr] [ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113], align 8
@switch.table._RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.546 = private unnamed_addr constant [10 x i8] c"\07\05\0B\05\05\03\05\09\0A\0B", align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i64 0, 164703072086692426) i64 @_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0E0EBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0E0E0EBB_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  %.val.i.i.pre.i = load ptr, ptr %2, align 8, !noalias !49
  %.pre.i = load i32, ptr %.val.i.i.pre.i, align 4, !noalias !49 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.022.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.021.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 28
  %.val13.i = load i32, ptr %i.f, align 4, !alias.scope !48, !noalias !50, !noundef !5
  %.not.i.i.not.i19.i = icmp ugt i32 %.val13.i, %.pre.i
  %i.g = select i1 %.not.i.i.not.i19.i, i64 %.sroa.05.021.i, i64 %i.c, !unpredictable !5 ; 2 uses
  %i.h = sub nuw nsw i64 %.sroa.01.022.i, %i.b    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %.val16.i = load i32, ptr %i.k, align 4, !alias.scope !48, !noalias !50, !noundef !5
  %.not.i.i.not.i.i = icmp ule i32 %.val16.i, %.pre.i
  %i.l = zext i1 %.not.i.i.not.i.i to i64
  %i.m = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.l ; 2 uses
  %i.n = icmp ule i64 %i.m, %1
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0E0E0EBB_.exit

_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0E0E0EBB_.exit: ; preds = %bb.a, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.m, %._crit_edge.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i64 0, 164703072086692426) i64 @_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0Es_0EBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0Es_0E0EBB_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  %.val.i.i.pre.i = load ptr, ptr %2, align 8, !noalias !55 ; 3 uses
  %.pre.i = load i32, ptr %.val.i.i.pre.i, align 4, !noalias !55 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i.pre.i, i64 4
  br label %bb.b

._crit_edge.i:                                    ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %.val16.i = load i32, ptr %i.d, align 4, !alias.scope !54, !noalias !56, !noundef !5
  %.not.i.i.i.i = icmp ugt i32 %.val16.i, %.pre.i
  br i1 %.not.i.i.i.i, label %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i.i, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit.i

_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i.i: ; preds = %._crit_edge.i
  %i.e = getelementptr i8, ptr %i.c, i64 24
  %.val15.i = load i32, ptr %i.e, align 8, !alias.scope !54, !noalias !56
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.pre.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !55, !noundef !5
  %.24.val.fr.i.i = freeze i32 %.val15.i
  %.not1.i.not.i.i.i = icmp ugt i32 %i.g, %.24.val.fr.i.i
  %i.h = zext i1 %.not1.i.not.i.i.i to i64
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit.i

bb.b:                                             ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i, %.lr.ph.i
  %.sroa.01.026.i = phi i64 [ %1, %.lr.ph.i ], [ %i.q, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i ] ; 2 uses
  %.sroa.05.025.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.026.i, 1              ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.sroa.05.025.i    ; 3 uses
  %i.k = icmp ult i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 28
  %.val13.i = load i32, ptr %i.m, align 4, !alias.scope !54, !noalias !56, !noundef !5
  %.not.i.i.i19.i = icmp ugt i32 %.val13.i, %.pre.i
  br i1 %.not.i.i.i19.i, label %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i20.i, label %bb.c

_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i20.i: ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val12.i = load i32, ptr %i.n, align 8, !alias.scope !54, !noalias !56
  %i.o = load i32, ptr %i.b, align 4, !noalias !55, !noundef !5
  %.24.val.fr.i21.i = freeze i32 %.val12.i
  %.not1.i.not.i.i22.i = icmp ugt i32 %i.o, %.24.val.fr.i21.i
  br i1 %.not1.i.not.i.i22.i, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i, label %bb.c

bb.c:                                             ; preds = %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i20.i, %bb.b
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i

_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit24.i: ; preds = %bb.c, %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i20.i
  %i.p = phi i64 [ %.sroa.05.025.i, %bb.c ], [ %i.j, %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i20.i ] ; 2 uses
  %i.q = sub nuw nsw i64 %.sroa.01.026.i, %i.i    ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %bb.b, label %._crit_edge.i

_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit.i: ; preds = %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i.i, %._crit_edge.i
  %i.s = phi i64 [ 0, %._crit_edge.i ], [ %i.h, %_RNCINvCs89JjGp7luZU_4stdx14equal_range_byNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4NodeNCNvMs_BF_BD_3add0Es_0BJ_.exit.i.i ]
  %i.t = add nuw nsw i64 %i.s, %.sroa.05.0.lcssa.i ; 2 uses
  %i.u = icmp ule i64 %i.t, %1
  tail call void @llvm.assume(i1 %i.u)
  br label %_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0Es_0E0EBB_.exit

_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node16binary_search_byNCINvB2_15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBv_NCNvMs_Bx_Bv_3add0Es_0E0EBB_.exit: ; preds = %bb.a, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.t, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlights4Node15partition_pointNCINvCs89JjGp7luZU_4stdx14equal_range_byBx_NCNvMs_Bz_Bx_3add0Es_0E0BD_.exit.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE11map_or_elseNtNtCsuAhG64lL82_9text_size5range9TextRangeNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss_0NCB3d_s0_0EB3j_(ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %0, ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !6, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.g = load i32, ptr %i.f, align 8, !noundef !5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i32 [ %i.h, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.i = load i64, ptr %.val, align 8, !range !8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 4294967295
  %i.p = shl nuw i64 %i.n, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.o, i64 513, i64 %i.p ; 2 uses
  %i.q = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.q, label %bb.g, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #37
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.l, align 8, !noundef !5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.r, %bb.h ]
  %i.s = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i  ; 2 uses
  %.not.i.i = icmp ugt i32 %.sroa.0.0.i.i, %i.s
  br i1 %.not.i.i, label %bb.j, label %_RNCNvNtNtCslLuZgPVt6hg_3ide11inlay_hints11closure_ret5hintss0_0B7_.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.k:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 60
  %i.u = load i8, ptr %i.t, align 4, !range !6, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtBQ_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends0_0INtB5_15KMergePredicateINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE11kmerge_predCslLuZgPVt6hg_3ide:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i1.i = phi i32 [ %i.y, %bb.k ], [ %i.x, %bb.j ]
  %i.z = load i64, ptr %.val1, align 8, !range !8, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ab = trunc nuw i64 %i.z to i1
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 4294967295
  %i.ag = shl nuw i64 %i.ae, 32
  %.sroa.09.0.insert.insert.i.i4.i = select i1 %i.af, i64 513, i64 %i.ag ; 2 uses
  %i.ah = trunc i64 %.sroa.09.0.insert.insert.i.i4.i to i1
  br i1 %i.ah, label %bb.n, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i5.i, !prof !7

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #37
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i5.i: ; preds = %bb.m
  %.sroa.6.0.extract.shift.i.i.i6.i = lshr i64 %.sroa.09.0.insert.insert.i.i4.i, 32
  %.sroa.6.0.extract.trunc.i.i.i7.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i6.i to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %i.ac, align 8, !noundef !5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i5.i
  %.sroa.02.0.i2.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i7.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i5.i ], [ %i.ai, %bb.o ] ; 2 uses
  %i.aj = xor i32 %.sroa.0.0.i1.i, -1
  %.not.i3.i = icmp ugt i32 %.sroa.02.0.i2.i, %i.aj
  br i1 %.not.i3.i, label %bb.q, label %_RNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB7_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends0_0CslLuZgPVt6hg_3ide.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

_RNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB7_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends0_0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.p
  %i.ak = icmp ult i32 %.sroa.02.0.i.i, %.sroa.02.0.i2.i
  ret i1 %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCscFGNKo4Sl5v_9itertools11kmerge_implNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBQ_13SemanticsImpl22descend_node_at_offsets0_0INtB5_15KMergePredicateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB2C_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2y_3map3MapINtNtNtB2A_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB6o_9HirFileIdB3O_ENCNvBM_26ancestors_with_macros_file0ENCNvBM_21ancestors_with_macros0ENCNvBM_27token_ancestors_with_macros0EE11kmerge_predCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2576
  call fastcc void @_RNvXsK_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EIB1c_INtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB5E_9HirFileIdB1P_ENCNvB3q_26ancestors_with_macros_file0ENCNvB3q_21ancestors_with_macros0EENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) #40, !noalias !2577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2576
  invoke fastcc void @_RNvXsK_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EIB1c_INtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB5E_9HirFileIdB1P_ENCNvB3q_26ancestors_with_macros_file0ENCNvB3q_21ancestors_with_macros0EENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
          to label %_RNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl22descend_node_at_offsets0_0CslLuZgPVt6hg_3ide.exit unwind label %bb.b, !noalias !2578

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4h_9HirFileIdB1V_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5v_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5r_21ancestors_with_macros0ENCNvB5r_27token_ancestors_with_macros0ENCNCNvB5r_22descend_node_at_offsets0_00EECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4d_9HirFileIdB1F_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5r_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5n_21ancestors_with_macros0ENCNvB5n_27token_ancestors_with_macros0EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4h_9HirFileIdB1V_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5v_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5r_21ancestors_with_macros0ENCNvB5r_27token_ancestors_with_macros0ENCNCNvB5r_22descend_node_at_offsets0_00EECslLuZgPVt6hg_3ide.exit.i unwind label %bb.c, !noalias !2576

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2576
  unreachable

_RNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB7_13SemanticsImpl22descend_node_at_offsets0_0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2576
  %i.f = call noundef i8 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIB4_INtNtNtBa_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3Z_9HirFileIdB1D_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5d_13SemanticsImpl26ancestors_with_macros_file0ENCNvB59_21ancestors_with_macros0ENCNvB59_27token_ancestors_with_macros0ENCNCNvB59_22descend_node_at_offsets0_00ENtNtNtBa_6traits8iterator8Iterator14partial_cmp_byIB4_BR_NCB7I_s_0ENCINvYB3_B8k_11partial_cmpB98_E0ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b), !noalias !2576
  %i.g = icmp eq i8 %i.f, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2576
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgENCINvMNtNtB9_3ops9try_traitINtB2B_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3L_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB2D_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamENCINvMNtNtB9_3ops9try_traitINtB2D_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3N_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB2F_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvMNtNtB9_3ops9try_traitINtB2u_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3E_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB2w_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantENCINvMNtNtB9_3ops9try_traitINtB2x_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3H_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB2z_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundENCINvMNtNtB9_3ops9try_traitINtB2z_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3J_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB2B_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainINtNtNtB9_3mem12maybe_uninit11MaybeUninitTjyEENCINvMNtNtB9_3ops9try_traitINtB1G_17NeverShortCircuitB1v_E10wrap_mut_1BQ_NCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB2Q_12ArrayBuilderB1v_Kj2_E4takes_0E0ENtNtB1I_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3F_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3F_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3H_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3H_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3y_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3B_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3B_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB3D_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitTjyEEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB2K_12ArrayBuilderB2m_Kj2_E3new0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtNtB9_3mem12maybe_uninit11MaybeUninitTjyEEE10wrap_mut_1uNCNvMNtCscFGNKo4Sl5v_9itertools10next_arrayINtB2K_12ArrayBuilderB2m_Kj2_E4take0E0ENtNtBZ_4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_5HlModNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !44, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_5HlModNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_5HlModNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.541, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_0s_0s_0INtB7_5FnMutTNtCs8Xq8PKFYOms_3hir4ImplEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !18, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !18, !noundef !5
  call void @_RNvXsh_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir4ImplNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noundef nonnull align 8 %.val)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtBY_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00INtB7_5FnMutTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB3i_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEE8call_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.a = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !5 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !noundef !5
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.copyload) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.h

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i: ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !noundef !5
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %_RNCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB9_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00CslLuZgPVt6hg_3ide.exit

bb.g:                                             ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.copyload) #39
  br label %_RNCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB9_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00CslLuZgPVt6hg_3ide.exit

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.f

_RNCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB9_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00CslLuZgPVt6hg_3ide.exit: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i, %bb.g
  ret ptr %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvNtCslLuZgPVt6hg_3ide17highlight_related26highlight_closure_capturess_0s1_0INtB7_5FnMutTNtNtBW_17navigation_target16NavigationTargetEE8call_mutBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a), !noalias !2581
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0INtB7_5FnMutTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB28_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [12 x i8], align 4                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [12 x i8], align 4                ; 5 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 10 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.217.sroa.3.sroa.7.sroa.3.i = alloca [24 x i8], align 1 ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.410.sroa.3.sroa.0.i = alloca [3 x i8], align 1 ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 11 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = load ptr, ptr %1, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8             ; 11 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val1 = load ptr, ptr %i.v, align 8            ; 13 uses
  %.val2 = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.217.sroa.3.sroa.7.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.sroa.3.sroa.0.i)
  %i.w = getelementptr i8, ptr %.val2, i64 16
  %.val92.i = load ptr, ptr %i.w, align 8, !noalias !2584, !noundef !5 ; 19 uses
  %.not.i.i = icmp eq ptr %.val92.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.val92.i, i64 48 ; 31 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !2584, !noundef !5 ; 3 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41, !noalias !2584
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i32 %i.y, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.x, align 4, !noalias !2584
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.invoke.i, label %bb.h, !prof !7

bb.e:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !2584
  br label %_RNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0B5_.exit

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i, %bb.as, %bb.ar, %bb.ak, %bb.aj, %bb.r, %bb.q, %bb.j, %bb.i, %bb.g
  %.pn85.i = phi { ptr, i32 } [ %i.bq, %bb.aj ], [ %.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i ], [ %i.ai, %bb.i ], [ %i.at, %bb.q ], [ %i.af, %bb.g ], [ %i.ai, %bb.j ], [ %i.at, %bb.r ], [ %i.bq, %bb.ak ], [ %i.bz, %bb.as ], [ %i.bz, %bb.ar ]
  %i.ac = load i32, ptr %i.x, align 4, !noalias !2584, !noundef !5
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.x, align 4, !noalias !2584
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i

bb.f:                                             ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val92.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.ah, !noalias !2584

bb.g:                                             ; preds = %bb.bz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit131.i, %bb.bn, %bb.bk, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ax, %bb.an, %bb.z, %bb.w, %.invoke.i, %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.d
  %i.ag = add nuw i32 %i.y, 2
  store i32 %i.ag, ptr %i.x, align 4, !noalias !2584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2584
  store ptr %.val92.i, ptr %i.b, align 8, !noalias !2584
  %i.ah = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.k unwind label %bb.i, !noalias !2584

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i32, ptr %i.x, align 4, !noalias !2584, !noundef !5
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.x, align 4, !noalias !2584
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.body.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val92.i) #39
          to label %.body.i unwind label %bb.n, !noalias !2584

bb.k:                                             ; preds = %bb.h
  %i.am = icmp eq i16 %i.ah, 249
  br i1 %i.am, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.x, align 4, !noalias !2584, !noundef !5
  %i.ao = add i32 %i.an, -1                       ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !noalias !2584
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.p
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item0INtB7_5FnMutTNtCs8Xq8PKFYOms_3hir4ImplEE8call_mutBU_:bb.a
bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload1.i = load i8, ptr %i.p, align 4, !alias.scope !2636, !noalias !2637
  %.sroa.10.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.10.0..sroa_idx2.i, i64 11, i1 false), !alias.scope !2636, !noalias !2637
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.copyload1.i, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00B7_.exitthread-pre-split.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.r, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.v)
          to label %.noexc1.i unwind label %bb.h, !noalias !2631

.noexc1.i:                                        ; preds = %bb.f
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2638
  store ptr %i.y, ptr %i.b, align 8, !noalias !2638
  %i.z = load atomic i64, ptr %i.y acquire, align 8, !noalias !2638
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %bb.g, label %.noexc2.i, !prof !7

bb.g:                                             ; preds = %.noexc1.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc2.i unwind label %bb.h, !noalias !2631

.noexc2.i:                                        ; preds = %bb.g, %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2638
  store ptr %i.y, ptr %i.a, align 8, !noalias !2638
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc3.i unwind label %bb.h, !noalias !2631

.noexc3.i:                                        ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2638
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00B7_.exitthread-pre-split.i.i

_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00B7_.exitthread-pre-split.i.i: ; preds = %.noexc3.i, %bb.e
  %i.ab = icmp eq i8 %.sroa.0.0.i, -1
  br i1 %i.ab, label %.backedge.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapBQ_NCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00EB2k_.exit.i

.backedge.i.i:                                    ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00B7_.exitthread-pre-split.i.i, %.noexc.i
  %i.ac = icmp eq ptr %i.q, %i.l
  br i1 %i.ac, label %.loopexit.i, label %bb.b

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #42
          to label %common.resume.i unwind label %bb.m, !noalias !2631

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapBQ_NCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00EB2k_.exit.i: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00B7_.exitthread-pre-split.i.i
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.10.i, i64 11, i1 false), !noalias !2631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i8 %.sroa.0.0.i, ptr %i.d, align 4, !noalias !2631
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.i, !noalias !2631

bb.i:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapBQ_NCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00EB2k_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.j, !noalias !2631

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2631
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.i, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ae, %bb.i ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapBQ_NCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item00EB2k_.exit.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !2631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2631
  call void @_RNvXsm_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9AssocItemNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noundef nonnull align 8 %.val), !noalias !2639
  br label %_RNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item0B5_.exit

.loopexit.i:                                      ; preds = %.backedge.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 -2, ptr %0, align 8, !alias.scope !2630, !noalias !2639
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit5.i unwind label %bb.k, !noalias !2631

bb.k:                                             ; preds = %.loopexit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.l, !noalias !2631

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2631
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit5.i: ; preds = %.loopexit.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !2631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2631
  br label %_RNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item0B5_.exit

bb.m:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2631
  unreachable

_RNCNvNtCslLuZgPVt6hg_3ide19goto_implementation20impls_for_trait_item0B5_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2631
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtB6_5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !31, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2643
  store ptr %i.b, ptr %i.a, align 8, !noalias !2643
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 7, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2643
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCslLuZgPVt6hg_3ide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.06 ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.sroa.01.06 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load i32, ptr %i.e, align 4, !alias.scope !2654, !noalias !2655, !noundef !5
  %.val1.i.i = load i32, ptr %i.f, align 4, !alias.scope !2655, !noalias !2654, !noundef !5
  %i.g = icmp eq i32 %.val.i.i, %.val1.i.i
  br i1 %i.g, label %bb.c, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.c, align 4, !alias.scope !2654, !noalias !2655, !noundef !5
  %i.i = load i32, ptr %i.d, align 4, !alias.scope !2655, !noalias !2654, !noundef !5
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread

_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !2654, !noalias !2655, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !2655, !noalias !2654, !noundef !5
  %.not = icmp eq i32 %i.l, %i.n
  br i1 %.not, label %bb.b, label %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread

_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.b, %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCslLuZgPVt6hg_3ide.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_9HighlightNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB4_5HlTagNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.0.06.idx = phi i64 [ 0, %bb.b ], [ %.add, %switch.lookup ] ; 2 uses
  %i.d = icmp ne i64 %.sroa.0.06.idx, 23          ; 4 uses
  br i1 %i.d, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %.add, 23
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.idx15 = phi i64 [ %.add, %bb.d ], [ %.sroa.0.06.idx, %bb.c ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @178, i64 %.idx15
  %.add = add nuw nsw i64 %.idx15, 1              ; 3 uses
  %.val7.i = load i8, ptr %.ptr, align 1, !range !44, !noalias !2661, !noundef !5
  %i.f = zext nneg i8 %.val7.i to i32
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = and i32 %i.g, %i.c
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.d, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tags5HlModENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1E_4find5checkBJ_QNCNvMsc_BL_NtBL_6HlMods4iter0E0E0B3f_EBP_.exit

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tags5HlModENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1E_4find5checkBJ_QNCNvMsc_BL_NtBL_6HlMods4iter0E0E0B3f_EBP_.exit: ; preds = %.lr.ph
  %i.i = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 46)
  br i1 %i.i, label %.loopexit, label %switch.lookup

.loopexit:                                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tags5HlModENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1E_4find5checkBJ_QNCNvMsc_BL_NtBL_6HlMods4iter0E0E0B3f_EBP_.exit, %switch.lookup, %bb.c, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %switch.lookup ], [ %i.d, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tags5HlModENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1E_4find5checkBJ_QNCNvMsc_BL_NtBL_6HlMods4iter0E0E0B3f_EBP_.exit ]
  ret i1 %.sroa.0.0

switch.lookup:                                    ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tags5HlModENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1E_4find5checkBJ_QNCNvMsc_BL_NtBL_6HlMods4iter0E0E0B3f_EBP_.exit
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXs2_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_9HighlightNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, i64 %.idx15
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.j = zext i8 %switch.load to i64
  %switch.gep17 = getelementptr inbounds [8 x i8], ptr @switch.table._RNvXs2_NtNtCslLuZgPVt6hg_3ide19syntax_highlighting4tagsNtB5_9HighlightNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.536, i64 %.idx15
  %switch.load18 = load ptr, ptr %switch.gep17, align 8
  %i.k = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load18, i64 noundef %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2662
  br i1 %i.k, label %.loopexit, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYNtNtCs8K4cjrcxBsw_6hir_ty4drop8DropGlueNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B21_EE9call_onceCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #5 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !42, !noundef !5
  %.val1 = load i8, ptr %2, align 1, !range !42, !noundef !5
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val, i8 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYyNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRyB1p_EE9call_onceCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !5
  %.val1 = load i64, ptr %2, align 8, !noundef !5
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_Cs4sl5YdnrCxp_3vfsNtB5_6FileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #15 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @42, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs9X_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_2FnNtBa_7AstNode6syntax(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(8) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsK_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EIB1c_INtNtNtB9_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB5E_9HirFileIdB1P_ENCNvB3q_26ancestors_with_macros_file0ENCNvB3q_21ancestors_with_macros0EENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !align !18, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val15 = load ptr, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq ptr %.val15, null
  br i1 %.not.i.i, label %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
  unreachable

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.c
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %i.d, align 4
  br label %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit

_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit: ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i, %bb.b, %bb.a
  %.sroa.56.0 = phi ptr [ undef, %bb.a ], [ null, %bb.b ], [ %.val15, %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !range !28, !noundef !5 ; 4 uses
  %.not8 = icmp eq i32 %i.i, -1
  br i1 %.not8, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  %.not.i.i16 = icmp eq i32 %i.i, 2
  br i1 %.not.i.i16, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2685, !noalias !2686, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !2687, !noundef !5 ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.f
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.j, align 4, !noalias !2687
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i64, ptr %.sroa.6.8..sroa_idx.i.i, align 4, !alias.scope !2688, !noalias !2689
  br label %bb.m

bb.h:                                             ; preds = %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit, %bb.m
  %.sroa.7.sroa.5.0 = phi ptr [ %.val2.i.i, %bb.m ], [ undef, %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit ]
  %.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.0.i.i, %bb.m ], [ undef, %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit ]
  %.sroa.031.0 = phi ptr [ %.sroa.0.0.i.i, %bb.m ], [ undef, %_RNvXsa_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB2Z_13SemanticsImpl27token_ancestors_with_macros0ENtNtBb_5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !range !28, !noundef !5 ; 3 uses
  %.not9 = icmp eq i32 %i.p, -1
  br i1 %.not9, label %bb.q, label %bb.n

bb.i:                                             ; preds = %bb.r, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.v, %bb.l ]
  %i.q = icmp eq ptr %.sroa.56.0, null
  %or.cond.i.i = or i1 %.not, %i.q
  br i1 %or.cond.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.56.0, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !noundef !5
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.56.0) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB3u_13SemanticsImpl27token_ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit unwind label %bb.t

bb.l:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.m:                                             ; preds = %_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i, %bb.e
  %.sroa.7.sroa.0.0.i.i = phi i64 [ undef, %bb.e ], [ %i.n, %_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ undef, %bb.e ], [ %.val.i.i.i, %_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load ptr, ptr %i.w, align 8, !alias.scope !2690, !noalias !2689, !nonnull !5, !align !18, !noundef !5
  br label %bb.h

bb.n:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  %.not.i.i18 = icmp eq i32 %i.p, 2
  br i1 %.not.i.i18, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %.val.i.i.i19 = load ptr, ptr %i.x, align 8, !alias.scope !2695, !noalias !2696, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i19, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noalias !2697, !noundef !5 ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.p, label %_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i20, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
          to label %.noexc28 unwind label %bb.r

.noexc28:                                         ; preds = %bb.p
  unreachable

_RNvXsx_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit.i.i20: ; preds = %bb.o
end_hunk_2
