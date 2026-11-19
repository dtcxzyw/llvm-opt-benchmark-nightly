Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.15?download=true
inline.NumInlined: 1240
inline.NumDeleted: 613
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [14 x i8] c"reentrant init", align 1, !guid !7
@1 = private unnamed_addr constant [78 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/cell/once.rs\00", align 1, !guid !7
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"M\00\00\00\00\00\00\00,\01\00\00B\00\00\00" }>, align 8, !guid !7
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtECs33K2ylI4knu_10hir_expand, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsm6_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_3AdtNtBa_7AstNode6syntax, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtNtNtB8_6traits8HasAttrs5attrsCs33K2ylI4knu_10hir_expand, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtNtNtB8_6traits8HasAttrs21inner_attributes_nodeCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs33K2ylI4knu_10hir_expand, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsny_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ItemNtBa_7AstNode6syntax, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs5attrsCs33K2ylI4knu_10hir_expand, ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs21inner_attributes_nodeCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@5 = private unnamed_addr constant [22 x i8] c"parse_macro_def_simple", align 1, !guid !7
@6 = private unnamed_addr constant [21 x i8] c"parse_macro_def_rules", align 1, !guid !7
@7 = private unnamed_addr constant [8 x i8] c";\00\00\00,\00\00\00", align 4, !guid !7
@8 = private unnamed_addr constant [36 x i8] c"expected `;` or `,` to delimit rules", align 1, !guid !7
@9 = private unnamed_addr constant [12 x i8] c"expected `;`", align 1, !guid !7
@10 = private unnamed_addr constant [16 x i8] c"expected subtree", align 1, !guid !7
@11 = private unnamed_addr constant [12 x i8] c"expected `>`", align 1, !guid !7
@12 = private unnamed_addr constant [12 x i8] c"expected `=`", align 1, !guid !7
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNtB6_5Debug3fmtBA_ }>, align 8, !guid !7
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB6_5Debug3fmtBA_ }>, align 8, !guid !7
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosENtB6_5Debug3fmtB1a_ }>, align 8, !guid !7
@17 = private unnamed_addr constant [31 x i8] c"crates/hir-expand/src/attrs.rs\00", align 1, !guid !7
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\93\00\00\00\16\00\00\00" }>, align 8, !guid !7
@19 = private unnamed_addr constant [39 x i8] c"crates/mbe/src/expander/transcriber.rs\00", align 1, !guid !7
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"&\00\00\00\00\00\00\00\E3\01\00\004\00\00\00" }>, align 8, !guid !7
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"&\00\00\00\00\00\00\00\14\02\00\00\17\00\00\00" }>, align 8, !guid !7
@_RNvNvMs_NtNtCs39E2wp1vf7X_6intern6symbol7symbolsNtB6_7Integer4LIST4LIST = external global [256 x { ptr, i64 }]
@22 = private unnamed_addr constant [75 x i8] c"metavariables of `${concat(..)}` must be of type `ident`, `literal` or `tt`", align 1, !guid !7
@23 = private unnamed_addr constant [52 x i8] c"`${concat(..)}` is not generating a valid identifier", align 1, !guid !7
@24 = private unnamed_addr constant [17 x i8] c"__ra_concat_dummy", align 1, !guid !7
@25 = private unnamed_addr constant [24 x i8] c"rustc_macro_transparency", align 1, !guid !7
@26 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1, !guid !7
@27 = private unnamed_addr constant [81 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/std/src/sync/mpmc/mod.rs\00", align 1, !guid !7
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"P\00\00\00\00\00\00\00\99\01\00\00-\00\00\00" }>, align 8, !guid !7
@29 = private unnamed_addr constant [37 x i8] c"crates/hir-expand/src/declarative.rs\00", align 1, !guid !7
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"$\00\00\00\00\00\00\00}\00\00\00I\00\00\00" }>, align 8, !guid !7
@31 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/mod.rs\00", align 1, !guid !7
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8, !guid !7
@33 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !7
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8, !guid !7
@35 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1, !guid !7
@36 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/range.rs\00", align 1, !guid !7
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"a\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8, !guid !7
@38 = private unnamed_addr constant [49 x i8] c"\22used an incorrect `AttrId`; crate=\C0\0A, attr_id=\C0\00", align 1, !guid !7
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\83\01\00\00\0D\00\00\00" }>, align 8, !guid !7
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"K\00\00\00\00\00\00\00]\03\00\00\15\00\00\00" }>, align 8, !guid !7
@_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL = external local_unnamed_addr global { { { i64 } } }
@41 = private unnamed_addr constant [21 x i8] c"expected a token tree", align 1, !guid !7
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"$\00\00\00\00\00\00\00\89\00\00\00A\00\00\00" }>, align 8, !guid !7
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"$\00\00\00\00\00\00\00\9B\00\00\00H\00\00\00" }>, align 8, !guid !7
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@45 = private unnamed_addr constant [6 x i8] c"FileId", align 1, !guid !7
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtB6_5Debug3fmtBy_ }>, align 8, !guid !7
@47 = private unnamed_addr constant [9 x i8] c"MacroFile", align 1, !guid !7
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@49 = private unnamed_addr constant [5 x i8] c"Crate", align 1, !guid !7
@50 = private unnamed_addr constant [6 x i8] c"\03 = \C0\00", align 1, !guid !7
@_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER = external global { i64, i64 }
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@52 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1, !guid !7
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6false_10SYMBOL_STR = external global { ptr, i64 }
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5true_10SYMBOL_STR = external global { ptr, i64 }
@53 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1, !guid !7
@54 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECs33K2ylI4knu_10hir_expand, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs33K2ylI4knu_10hir_expand, ptr @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@55 = private unnamed_addr constant [51 x i8] c"a formatting trait implementation returned an error", align 1, !guid !7
@56 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smol_str-0.3.6/src/lib.rs\00", align 1, !guid !7
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @56, [16 x i8] c"^\00\00\00\00\00\00\00<\03\00\00\09\00\00\00" }>, align 8, !guid !7
@58 = private unnamed_addr constant [5 x i8] c"Error", align 1, !guid !7
@59 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !7
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtCs33K2ylI4knu_10hir_expand13EagerCallInfoENtB6_5Debug3fmtB17_ }>, align 8, !guid !7
@61 = private unnamed_addr constant [4 x i8] c"Some", align 1, !guid !7
@62 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1, !guid !7
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8, !guid !7
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@65 = private unnamed_addr constant [6 x i8] c"AttrId", align 1, !guid !7
@66 = private unnamed_addr constant [2 x i8] c"id", align 1, !guid !7
@67 = private unnamed_addr constant [9 x i8] c"SendError", align 1, !guid !7
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6result6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENtNtCsgIpRO4v45SJ_7base_db5input21ProcMacroLoadingErrorENtB6_5Debug3fmtB1w_ }>, align 8, !guid !7
@69 = private unnamed_addr constant [15 x i8] c"CrateProcMacros", align 1, !guid !7
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxIBx_eEENtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@71 = private unnamed_addr constant [12 x i8] c"BindingError", align 1, !guid !7
@72 = private unnamed_addr constant [17 x i8] c"UnresolvedBinding", align 1, !guid !7
@73 = private unnamed_addr constant [14 x i8] c"LeftoverTokens", align 1, !guid !7
@74 = private unnamed_addr constant [13 x i8] c"LimitExceeded", align 1, !guid !7
@75 = private unnamed_addr constant [14 x i8] c"NoMatchingRule", align 1, !guid !7
@76 = private unnamed_addr constant [15 x i8] c"UnexpectedToken", align 1, !guid !7
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1N_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8, !guid !7
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroENtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand }>, align 8, !guid !7
@79 = private unnamed_addr constant [13 x i8] c"InFileWrapper", align 1, !guid !7
@80 = private unnamed_addr constant [7 x i8] c"file_id", align 1, !guid !7
@81 = private unnamed_addr constant [5 x i8] c"value", align 1, !guid !7

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i32 } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE3zipNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextECs33K2ylI4knu_10hir_expand(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !47 {
bb.a:
  %.not = icmp ne ptr %0, null                    ; 2 uses
  %i.a = trunc nuw i32 %1 to i1                   ; 3 uses
  %or.cond = and i1 %.not, %i.a
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.a, %.not.not
  %.mux = select i1 %or.cond, i32 %2, i32 undef
  %.mux6 = select i1 %i.a, ptr %0, ptr null
  br i1 %brmerge, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.c ], [ %.mux, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %.mux6, %bb.a ], [ null, %bb.b ]
  %i.b = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %i.c = insertvalue { ptr, i32 } %i.b, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #33
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindE3zipINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand(i16 noundef range(i16 -1, 329) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !48 {
bb.a:
  %.not = icmp eq i16 %0, -1
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.c, %bb.b, %bb.a
  %spec.select6 = select i1 %i.a, i16 %0, i16 -1
  %i.b = insertvalue { i16, ptr } poison, i16 %spec.select6, 0
  %i.c = insertvalue { i16, ptr } %i.b, ptr %1, 1
  ret { i16, ptr } %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #33
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtNtCshzWfHUSfYae_4core4cell4onceINtB3_8OnceCellRNtCs4kMRW8zVVbM_3cfg10CfgOptionsE15get_or_try_initNCINvB2_11get_or_initNCNCNvNtCs33K2ylI4knu_10hir_expand11cfg_process20macro_input_callback00E0zEB27_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !guid !49 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !9, !noundef !8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCshzWfHUSfYae_4core4cell4onceINtB3_8OnceCellRNtCs4kMRW8zVVbM_3cfg10CfgOptionsE8try_initNCINvB2_11get_or_initNCNCNvNtCs33K2ylI4knu_10hir_expand11cfg_process20macro_input_callback00E0zEB1Z_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtNtCshzWfHUSfYae_4core4cell4onceINtB3_8OnceCellRNtCs4kMRW8zVVbM_3cfg10CfgOptionsE8try_initNCINvB2_11get_or_initNCNCNvMs3_NtCs33K2ylI4knu_10hir_expand5attrsNtB21_6AttrId31find_attr_range_with_source_opt00E0zEB23_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !56 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !57, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !57, !nonnull !8, !noundef !8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !57, !nonnull !8, !noundef !8
  %i.a = load i32, ptr %.sroa.0.0.copyload.i, align 4, !range !11, !noalias !58, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 4
  %i.c = load i32, ptr %i.b, align 4, !noalias !58, !noundef !8
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate11cfg_optionsDNtBa_14SourceDatabaseEL_ECs33K2ylI4knu_10hir_expand(i32 noundef %i.a, i32 noundef %i.c, ptr noundef nonnull %.sroa.4.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.5.0.copyload.i), !noalias !58
  %i.e = load ptr, ptr %0, align 8, !align !9, !noundef !8
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !alias.scope !59
  ret ptr %0

.critedge:                                        ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #34
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtNtCshzWfHUSfYae_4core4cell4onceINtB3_8OnceCellRNtCs4kMRW8zVVbM_3cfg10CfgOptionsE8try_initNCINvB2_11get_or_initNCNCNvNtCs33K2ylI4knu_10hir_expand11cfg_process20macro_input_callback00E0zEB1Z_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !66 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !67, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !67, !nonnull !8, !noundef !8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67, !nonnull !8, !noundef !8
  %i.a = load i32, ptr %.sroa.0.0.copyload.i, align 4, !range !11, !noalias !68, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 4
  %i.c = load i32, ptr %i.b, align 4, !noalias !68, !noundef !8
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate11cfg_optionsDNtBa_14SourceDatabaseEL_ECs33K2ylI4knu_10hir_expand(i32 noundef %i.a, i32 noundef %i.c, ptr noundef nonnull %.sroa.4.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.5.0.copyload.i), !noalias !68
  %i.e = load ptr, ptr %0, align 8, !align !9, !noundef !8
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !alias.scope !69
  ret ptr %0

.critedge:                                        ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMs0_CsqiF3OZxLbD_3mbeNtB6_11ExpandError13binding_errorNtNtCsbSS6DM8SDEO_5alloc6string6StringECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !72 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsO_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCshzWfHUSfYae_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.d = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 513) 16, i64 noundef range(i64 1, 129) 8) #35 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxIBv_eEE3newCs33K2ylI4knu_10hir_expand.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %i.c, i64 noundef 1) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxIBv_eEE3newCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  store ptr %i.b, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.c, ptr %i.h, align 8
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !73
  %i.i = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 513) 56, i64 noundef range(i64 1, 129) 8) #35, !noalias !73 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEEE3newCs33K2ylI4knu_10hir_expand.exit, !prof !10

bb.e:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxIBv_eEE3newCs33K2ylI4knu_10hir_expand.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEEECs33K2ylI4knu_10hir_expand(i64 0, ptr nonnull %i.d) #37
  br label %common.resume

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEEE3newCs33K2ylI4knu_10hir_expand.exit: ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxIBv_eEE3newCs33K2ylI4knu_10hir_expand.exit
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx10, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 8
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMs0_CsqiF3OZxLbD_3mbeNtB6_11ExpandError13binding_errorReECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 52, 76) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !85
end_hunk_0
begin_hunk_1_@_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber10transcribeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB10_24DeclarativeMacroExpander6expand0EB12_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 3, ptr %i.j, align 4
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(44) %i.d)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.g, %bb.f, %bb.e, %bb.l, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.k, %bb.b ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber9ExpandCtxECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f) #37
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.l = invoke fastcc noundef ptr @_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander6expand0EB16_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(168) %i.e, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %3)
          to label %bb.d unwind label %bb.l       ; 4 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.e, i64 168, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8, !noalias !788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !788
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a)
          to label %bb.i unwind label %bb.e, !noalias !788

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !789
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %.body unwind label %bb.h, !noalias !788

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !788
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !790
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.r, align 8, !alias.scope !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber9ExpandCtxECs33K2ylI4knu_10hir_expand.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber9ExpandCtxECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.l:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage17TopSubtreeBuilderECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e) #37
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander17expand_unhygienic0EB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1078 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 5 uses
  %i.i = alloca [20 x i8], align 4                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [20 x i8], align 4                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [20 x i8], align 4                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 8                 ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 15 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 10 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [20 x i8], align 4               ; 4 uses
  %i.ae = alloca [96 x i8], align 8               ; 15 uses
  %i.af = alloca [48 x i8], align 4               ; 4 uses
  %i.ag = alloca [40 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 7 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [88 x i8], align 8               ; 7 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [176 x i8], align 8              ; 11 uses
  %i.am = alloca [40 x i8], align 8               ; 6 uses
  %i.an = alloca [40 x i8], align 8               ; 8 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [40 x i8], align 8               ; 11 uses
  %i.aq = alloca [40 x i8], align 8               ; 5 uses
  %i.ar = alloca [40 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [20 x i8], align 4               ; 2 uses
  %i.au = alloca [40 x i8], align 8               ; 7 uses
  %i.av = alloca [20 x i8], align 4               ; 4 uses
  %i.aw = alloca [20 x i8], align 4               ; 4 uses
  %i.ax = alloca [88 x i8], align 8               ; 4 uses
  %i.ay = alloca [88 x i8], align 8               ; 7 uses
  %i.az = alloca [40 x i8], align 8               ; 5 uses
  %i.ba = alloca [88 x i8], align 8               ; 4 uses
  %i.bb = alloca [88 x i8], align 8               ; 7 uses
  %i.bc = alloca [40 x i8], align 8               ; 5 uses
  %i.bd = alloca [176 x i8], align 8              ; 14 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [20 x i8], align 4               ; 4 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [48 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 13 uses
  %i.bj = alloca [40 x i8], align 8               ; 8 uses
  %i.bk = alloca [20 x i8], align 4               ; 4 uses
  %i.bl = alloca [40 x i8], align 8               ; 8 uses
  %i.bm = alloca [40 x i8], align 8               ; 9 uses
  %i.bn = alloca [20 x i8], align 4               ; 4 uses
  %i.bo = alloca [48 x i8], align 8               ; 6 uses
  %i.bp = alloca [20 x i8], align 8               ; 8 uses
  %i.bq = alloca [40 x i8], align 8               ; 7 uses
  %i.br = alloca [40 x i8], align 8               ; 9 uses
  %i.bs = alloca [8 x i8], align 8                ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr null, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bv, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge436, label %.lr.ph435

.lr.ph435:                                        ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %.sroa.6222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 37
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 38
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 37
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 8 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 17 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 88 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 104 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 37
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 37
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 7 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 41 ; 3 uses
  %.sroa.8.8..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %.sroa.9.8..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 33
  %.sroa.4.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.73.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.8.8..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.9.8..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 33
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.5116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.8.8..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.964.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %.sroa.863.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.1065.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph435, %.backedge351
  %.sroa.0.0433 = phi ptr [ %i.bt, %.lr.ph435 ], [ %i.do, %.backedge351 ] ; 28 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 64 ; 2 uses
  %i.dp = load i8, ptr %.sroa.0.0433, align 8, !range !26, !noundef !8
  switch i8 %i.dp, label %default.unreachable576 [
    i8 0, label %bb.c
    i8 1, label %bb.bf
    i8 2, label %bb.bg
    i8 3, label %bb.eg
    i8 4, label %bb.bh
    i8 5, label %bb.bi
    i8 6, label %bb.bj
    i8 7, label %bb.hp
    i8 8, label %bb.dm
    i8 9, label %bb.dn
    i8 10, label %bb.dq
  ]

._crit_edge436.loopexit:                          ; preds = %.backedge351
  %.pre535 = load ptr, ptr %i.bs, align 8
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge436.loopexit, %bb.a
  %i.dq = phi ptr [ %.pre535, %._crit_edge436.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  ret ptr %i.dq

default.unreachable576:                           ; preds = %bb.b, %bb.cj, %bb.fx, %.lr.ph424, %.lr.ph428
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, ptr noundef nonnull align 4 dereferenceable(20) %i.ds, i64 20, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1081
  %i.dt = load ptr, ptr %i.cr, align 8, !alias.scope !1079, !nonnull !8, !align !9, !noundef !8
  %i.du = load ptr, ptr %i.cc, align 8, !alias.scope !1079, !nonnull !8, !noundef !8
  %i.dv = load i64, ptr %i.cb, align 8, !alias.scope !1079, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ad, ptr noundef nonnull align 4 dereferenceable(20) %i.ds, i64 20, i1 false)
  invoke void @_RINvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB5_8Bindings12get_fragmentNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB1h_24DeclarativeMacroExpander17expand_unhygienic0EB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.ad, ptr noalias nofree noundef nonnull align 8 %i.du, i64 noundef %i.dv)
          to label %.noexc unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1081
  %i.dw = load i64, ptr %i.as, align 8, !range !28, !noalias !1081, !noundef !8 ; 5 uses
  %.not.i = icmp eq i64 %i.dw, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.dx = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1081, !nonnull !8, !noundef !8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !range !29, !noalias !1082, !noundef !8
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ax, label %bb.dr

bb.e:                                             ; preds = %.noexc
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1081 ; 4 uses
  %i.eb = icmp ne i64 %i.dw, 4
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nsw i64 %i.dw, -3
  %i.ed = icmp samesign ugt i64 %i.dw, 2
  %i.ee = select i1 %i.ed, i64 %i.ec, i64 1
  switch i64 %i.ee, label %bb.f [
    i64 0, label %bb.dr
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.as
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1081
  store i64 %i.dw, ptr %i.ar, align 8, !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx14.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !1081
  %i.ef = trunc nuw i8 %.sroa.8.0.copyload.i to i1
  br i1 %i.ef, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !1081
  store i8 %.sroa.8.0.copyload.i, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.8..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx.i, i64 7, i1 false), !noalias !1081
  invoke void @_RNvMs3_Cs4dcH4YgJDq_2ttNtB5_14TokenTreesView15strip_invisible(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.am)
          to label %bb.n unwind label %.body.i, !noalias !1082

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !1081
  store i8 %.sroa.8.0.copyload.i, ptr %.sroa.8.8..sroa_idx15.i, align 8, !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.8..sroa_idx19.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx.i, i64 7, i1 false), !noalias !1081
  invoke void @_RNvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber23fix_up_and_push_path_tt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ai)
          to label %bb.aq unwind label %.body.i, !noalias !1080

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !noalias !1081
  br label %bb.l
end_hunk_1
begin_hunk_2_@_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander17expand_unhygienic0EB16_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1081
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ap)
          to label %bb.av unwind label %.body.i, !noalias !1083

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1081
  br label %bb.dr

bb.aw:                                            ; preds = %bb.be, %bb.ba, %bb.ar
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1080
  unreachable

bb.ax:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1081
  store ptr %i.dx, ptr %i.ah, align 8, !noalias !1081
  %.sroa.6110.8.copyload.i = load ptr, ptr %i.bp, align 8, !alias.scope !1080
  %i.gf = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr)
          to label %.lr.ph.i.i.i unwind label %bb.bb, !noalias !1082

.lr.ph.i.i.i:                                     ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.964.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.bp, i64 20, i1 false), !noalias !1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %.sroa.8.8..sroa_idx111.i, i64 12, i1 false), !noalias !1096
  store i64 0, ptr %i.ae, align 8, !noalias !1081
  store i64 2, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !1081
  store i32 1, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !1081
  store i32 36, ptr %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx.i, align 4, !noalias !1081
  store ptr %.sroa.6110.8.copyload.i, ptr %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx.i, align 8, !noalias !1081
  store i8 0, ptr %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx.i, align 4, !noalias !1081
  store i32 2, ptr %.sroa.661.0..sroa_idx.i, align 8, !noalias !1081
  store ptr %i.gf, ptr %.sroa.863.0..sroa_idx.i, align 8, !noalias !1081
  store i8 0, ptr %.sroa.1065.0..sroa_idx.i, align 4, !noalias !1081
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1099
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %.sroa.560.0..sroa_idx.i)
          to label %.noexc.i.i unwind label %bb.ay, !noalias !1083

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx.i, i64 40, i1 false), !noalias !1100
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
          to label %.noexc.i.1.i unwind label %bb.ay, !noalias !1101

.noexc.i.1.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1099
  store i64 2, ptr %i.ae, align 8, !alias.scope !1102, !noalias !1081
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.560.0..sroa_idx.i, i64 noundef 2, i64 noundef 2)
          to label %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.bb, !noalias !1083

bb.ay:                                            ; preds = %.noexc.i.i, %.lr.ph.i.i.i
  %.lcssa.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ 2, %.noexc.i.i ] ; 2 uses
  %i.gg = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa.i, ptr %i.ae, align 8, !alias.scope !1102, !noalias !1081
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.560.0..sroa_idx.i, i64 noundef %.lcssa.i, i64 noundef 2)
          to label %.body99.i unwind label %bb.az, !noalias !1083

bb.az:                                            ; preds = %bb.ay
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1083
  unreachable

.body99.i:                                        ; preds = %bb.bb, %bb.ay
  %.pn.i = phi { ptr, i32 } [ %i.gg, %bb.ay ], [ %i.gl, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.gi = load ptr, ptr %i.ah, align 8, !alias.scope !1106, !noalias !1081, !nonnull !8, !noundef !8
  %i.gj = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !1107
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.ba, label %.thread290

bb.ba:                                            ; preds = %.body99.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #33
          to label %.thread290 unwind label %bb.aw, !noalias !1083

bb.bb:                                            ; preds = %bb.ax, %.noexc.i.1.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i

_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1081
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.gm = load ptr, ptr %i.ah, align 8, !alias.scope !1111, !noalias !1081, !nonnull !8, !noundef !8
  %i.gn = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !1112
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i

bb.bc:                                            ; preds = %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i: ; preds = %bb.bc, %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1081
  br label %bb.dr

bb.bd:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.gp = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1116, !noalias !1081, !nonnull !8, !noundef !8
  %i.gq = atomicrmw add ptr %i.gp, i64 -1 release, align 8, !noalias !1117
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.be, label %.thread290

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i) #33
          to label %.thread290 unwind label %bb.aw, !noalias !1080

bb.bf:                                            ; preds = %bb.b
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.gt = load ptr, ptr %i.cr, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bn, ptr noundef nonnull align 4 dereferenceable(20) %i.gu, i64 20, i1 false)
  %i.gv = load ptr, ptr %i.cc, align 8, !nonnull !8, !noundef !8
  %i.gw = load i64, ptr %i.cb, align 8, !noundef !8
  invoke void @_RINvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB5_8Bindings12get_fragmentNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB1h_24DeclarativeMacroExpander17expand_unhygienic0EB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gs, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.bn, ptr noalias nofree noundef nonnull align 8 %i.gv, i64 noundef %i.gw)
          to label %bb.dw unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.b
  %i.gx = load i64, ptr %i.cb, align 8, !noundef !8 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 576460752303423488
  call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !8
  %i.hb = xor i64 %i.ha, -1
  %i.hc = add i64 %i.gx, %i.hb                    ; 2 uses
  %.not313 = icmp ult i64 %i.hc, %i.gx
  br i1 %.not313, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander17expand_unhygienic0Es_0EB2k_.exit, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander17expand_unhygienic0Es_0EB2k_.exit.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander17expand_unhygienic0Es_0EB2k_.exit.thread: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  br label %bb.ed

bb.bh:                                            ; preds = %bb.b
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 16
  %i.he = load ptr, ptr %i.cr, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i64 20, i1 false)
  %i.hf = invoke { i64, ptr } @_RNvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB4_8Bindings3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.he, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hd, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.bk)
          to label %bb.ej unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.449.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.550.0..sroa_idx, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 32
  %i.hj = load i64, ptr %i.hi, align 8, !noundef !8 ; 2 uses
  %.idx439 = mul nuw nsw i64 %i.hj, 40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx439
  %i.hl = icmp eq i64 %i.hj, 0
  br i1 %i.hl, label %._crit_edge, label %.lr.ph424

bb.bj:                                            ; preds = %bb.b
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !range !31, !noundef !8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !noundef !8 ; 11 uses
  %.not = icmp eq ptr %i.hq, null
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hs = load i64, ptr %i.cb, align 8, !alias.scope !1121, !noundef !8 ; 3 uses
  %i.ht = load i64, ptr %0, align 8, !range !32, !alias.scope !1121, !noundef !8
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.bk, label %.noexc87

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE8grow_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #33
          to label %.noexc87 unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.bj, %bb.bk
  %i.hv = load ptr, ptr %i.cc, align 8, !alias.scope !1121, !nonnull !8, !noundef !8
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.hs
  store i128 0, ptr %i.hw, align 8
  %i.hx = add i64 %i.hs, 1
  store i64 %i.hx, ptr %i.cb, align 8, !alias.scope !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1122
  store ptr null, ptr %i.z, align 8, !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1122
  %i.hy = load i64, ptr %i.cd, align 8, !alias.scope !1120, !noundef !8 ; 2 uses
  %i.hz = load i64, ptr %i.ce, align 8, !alias.scope !1120, !noundef !8 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 1152921504606846976
  call void @llvm.assume(i1 %i.ia)
  %i.ib = load i64, ptr %2, align 8, !range !17, !alias.scope !1120, !noundef !8 ; 2 uses
  %i.ic = load i64, ptr %i.cf, align 8, !alias.scope !1120 ; 2 uses
  store i64 %i.hz, ptr %i.cg, align 8, !noalias !1122
  store i64 %i.hy, ptr %i.ch, align 8, !noalias !1122
  store i64 %i.ib, ptr %i.y, align 8, !noalias !1122
  store i64 %i.ic, ptr %i.ci, align 8, !noalias !1122
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 20 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 76
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hq, i64 32 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hq, i64 52 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 53
  %i.il = getelementptr inbounds nuw i8, ptr %i.hq, i64 54
  %i.im = icmp eq i8 %i.ho, 2
  br label %bb.bl

bb.bl:                                            ; preds = %.backedge337, %.noexc87
  %i.in = phi i64 [ %i.ic, %.noexc87 ], [ %i.jm, %.backedge337 ] ; 2 uses
  %i.io = phi i64 [ %i.ib, %.noexc87 ], [ %i.jl, %.backedge337 ] ; 2 uses
  %.sroa.028.0.i390 = phi i64 [ %i.hy, %.noexc87 ], [ %i.ji, %.backedge337 ] ; 2 uses
  %i.ip = phi i64 [ %i.hz, %.noexc87 ], [ %i.jj, %.backedge337 ] ; 2 uses
  %.sroa.03.0.i = phi i32 [ 0, %.noexc87 ], [ %i.jn, %.backedge337 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i64 20, i1 false), !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i64 20, i1 false)
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4open(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, i8 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.a)
          to label %.noexc210 unwind label %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !871

.noexc210:                                        ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1124
  %i.iq = invoke fastcc noundef ptr @_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander17expand_unhygienic0EB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hm, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2)
          to label %.noexc211 unwind label %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !871 ; 4 uses

.noexc211:                                        ; preds = %.noexc210
  store ptr %i.iq, ptr %i.c, align 8, !noalias !1124
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.b)
          to label %bb.bq unwind label %bb.bm, !noalias !1125, !inline_history !871

bb.bm:                                            ; preds = %.noexc211
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.is = icmp eq ptr %i.iq, null
  br i1 %i.is, label %.loopexit.split-lp327.loopexit.split-lp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.it = atomicrmw add ptr %i.iq, i64 -1 release, align 8, !noalias !1126
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.bo, label %.loopexit.split-lp327.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %.loopexit.split-lp327.loopexit.split-lp unwind label %bb.bp, !noalias !1125, !inline_history !871

bb.bp:                                            ; preds = %bb.bo
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1125, !inline_history !871
  unreachable

.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cy, %bb.bl, %.noexc210, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit205, %bb.dg, %bb.ce, %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp327.loopexit.split-lp

bb.bq:                                            ; preds = %.noexc211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1122
  store ptr %i.iq, ptr %i.x, align 8, !noalias !1122
  %i.iw = load i64, ptr %i.cb, align 8, !alias.scope !1118, !noundef !8 ; 2 uses
  %.not.i82 = icmp eq i64 %i.iw, 0
  br i1 %.not.i82, label %bb.br, label %bb.bs, !prof !10

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.bt unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.bs:                                            ; preds = %bb.bq
  %i.ix = load ptr, ptr %i.cc, align 8, !alias.scope !1118, !nonnull !8, !noundef !8
  %i.iy = getelementptr [16 x i8], ptr %i.ix, i64 %i.iw ; 3 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 -16    ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iy, i64 -7
  %i.jb = load i8, ptr %i.ja, align 1, !range !22, !noundef !8
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %.loopexit331, label %bb.bu

.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.ck, %bb.cq, %bb.cl, %bb.cu, %bb.ct, %bb.cn, %bb.bv, %.lr.ph, %bb.by, %bb.bw, %bb.br
  %lpad.loopexit.split-lp718 = landingpad { ptr, i32 }
          cleanup
  br label %.thread269

bb.bt:                                            ; preds = %bb.de, %bb.br
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.jd = getelementptr i8, ptr %i.iy, i64 -8     ; 2 uses
  %i.je = load i8, ptr %i.jd, align 8, !range !22, !noundef !8
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bv, label %.loopexit331

bb.bv:                                            ; preds = %bb.bu
  %i.jg = load i64, ptr %i.iz, align 8, !noundef !8
  %i.jh = add i64 %i.jg, 1
  store i64 %i.jh, ptr %i.iz, align 8
  store i8 0, ptr %i.jd, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder32remove_last_subtree_if_invisible(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2)
          to label %switch.lookup unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

switch.lookup:                                    ; preds = %bb.bv
  %i.ji = load i64, ptr %i.cd, align 8, !alias.scope !1120, !noundef !8 ; 3 uses
  %i.jj = load i64, ptr %i.ce, align 8, !alias.scope !1120, !noundef !8 ; 4 uses
  %i.jk = icmp ult i64 %i.jj, 1152921504606846976
  call void @llvm.assume(i1 %i.jk)
  %i.jl = load i64, ptr %2, align 8, !range !17, !alias.scope !1120, !noundef !8 ; 3 uses
  %i.jm = load i64, ptr %i.cf, align 8, !alias.scope !1120 ; 3 uses
  %i.jn = add nuw nsw i32 %.sroa.03.0.i, 1        ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 65536
  br i1 %i.jo, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %switch.lookup
  store i64 %i.jj, ptr %i.cj, align 8
  store i64 %i.ji, ptr %i.ck, align 8
  store i64 %i.jl, ptr %i.w, align 8
  store i64 %i.jm, ptr %i.cl, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder7restore(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.y)
          to label %bb.by unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.bx:                                            ; preds = %switch.lookup
  %i.jp = load ptr, ptr %i.x, align 8, !noalias !1122, !noundef !8 ; 4 uses
  %.not35.i = icmp eq ptr %i.jp, null
  br i1 %.not35.i, label %bb.cf, label %bb.cg

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i64 20, i1 false), !noalias !1127
  %i.jq = invoke noundef nonnull ptr @_RNvMs0_CsqiF3OZxLbD_3mbeNtB5_11ExpandError3new(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.v, i64 noundef 3, ptr undef)
          to label %bb.bz unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1122
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.jr = load ptr, ptr %i.z, align 8, !alias.scope !1128, !noundef !8 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jt = atomicrmw add ptr %i.jr, i64 -1 release, align 8, !noalias !1129
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207 unwind label %.thread264

.thread264:                                       ; preds = %bb.cb
  %i.jv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jq, ptr %i.z, align 8, !noalias !1122
  br label %.thread269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207: ; preds = %bb.ca, %bb.bz, %bb.cb
  store ptr %i.jq, ptr %i.z, align 8, !noalias !1122
  br label %bb.cc

.loopexit331:                                     ; preds = %bb.bs, %bb.bu, %.loopexit
  %i.jw = phi i64 [ %i.in, %bb.bu ], [ %i.jm, %.loopexit ], [ %i.in, %bb.bs ]
  %i.jx = phi i64 [ %i.io, %bb.bu ], [ %i.jl, %.loopexit ], [ %i.io, %bb.bs ]
  %.sroa.028.0.i395 = phi i64 [ %.sroa.028.0.i390, %bb.bu ], [ %i.ji, %.loopexit ], [ %.sroa.028.0.i390, %bb.bs ]
  %i.jy = phi i64 [ %i.ip, %bb.bu ], [ %i.jj, %.loopexit ], [ %i.ip, %bb.bs ]
  %.sroa.03.1.i.ph = phi i32 [ %.sroa.03.0.i, %bb.bu ], [ 1, %.loopexit ], [ %.sroa.03.0.i, %bb.bs ]
  store i64 %i.jy, ptr %i.cj, align 8
  store i64 %.sroa.028.0.i395, ptr %i.ck, align 8
  store i64 %i.jx, ptr %i.w, align 8
  store i64 %i.jw, ptr %i.cl, align 8
  %i.jz = icmp eq i32 %.sroa.03.1.i.ph, 0
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit331, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207
  %.sroa.03.1.i = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit207 ], [ %i.jz, %.loopexit331 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.ka = load ptr, ptr %i.x, align 8, !alias.scope !1130, !noundef !8 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit205, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kc = atomicrmw add ptr %i.ka, i64 -1 release, align 8, !noalias !1131
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.ce, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit205

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit205 unwind label %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.bx
  br i1 %.not, label %.loopexit, label %bb.cj

bb.cg:                                            ; preds = %bb.bx
  %i.ke = load ptr, ptr %i.z, align 8, !noalias !1122, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.jp, ptr %i.d, align 8
  %.not.i200 = icmp eq ptr %i.ke, null
  br i1 %.not.i200, label %bb.cz, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kf = atomicrmw add ptr %i.jp, i64 -1 release, align 8, !noalias !1132
  %i.kg = icmp eq i64 %i.kf, 1
  br i1 %i.kg, label %bb.ci, label %bb.cz

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %bb.cz unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.cf
  %i.kh = load i32, ptr %i.hr, align 8, !range !33, !alias.scope !1119, !noundef !8
  switch i32 %i.kh, label %default.unreachable576 [
    i32 0, label %bb.ck
    i32 1, label %bb.cl
    i32 2, label %bb.cm
    i32 3, label %bb.cn
  ]

.loopexit:                                        ; preds = %bb.cs, %bb.cm, %bb.cv, %bb.cr, %bb.cp, %bb.cf
  br i1 %i.im, label %.loopexit331, label %bb.cw

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1122
  %i.ki = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ih)
          to label %bb.co unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1122
  %i.kj = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ih)
          to label %bb.cq unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cm:                                            ; preds = %bb.cj
  %i.kk = load i32, ptr %i.id, align 4, !alias.scope !1119, !noundef !8 ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %.idx438 = mul nuw nsw i64 %i.kl, 28
  %i.km = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx438
  %i.kn = icmp eq i32 %i.kk, 0
  br i1 %i.kn, label %.loopexit, label %.lr.ph

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cm, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.id, i64 28, i1 false), !noalias !1133
  store i32 1, ptr %i.r, align 8, !noalias !1122
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.ct unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.co:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ii, i64 20, i1 false), !noalias !1133
  %i.ko = load i8, ptr %i.ik, align 1, !range !26, !alias.scope !1119, !noundef !8
  %i.kp = load i8, ptr %i.il, align 2, !alias.scope !1119
  %i.kq = load i8, ptr %i.ij, align 4, !alias.scope !1119, !noundef !8
  store ptr %i.ki, ptr %i.cq, align 8, !noalias !1122
  store i8 %i.kq, ptr %.sroa.510.0..sroa_idx.i, align 4, !noalias !1122
  store i8 %i.ko, ptr %.sroa.611.0..sroa_idx.i, align 1, !noalias !1122
  store i8 %i.kp, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !1122
  store i32 0, ptr %i.t, align 8, !noalias !1122
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.t)
          to label %bb.cp unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1122
  br label %.loopexit

bb.cq:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.0..sroa_idx.i85, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ii, i64 20, i1 false), !noalias !1133
  %i.kr = load i8, ptr %i.ij, align 4, !range !22, !alias.scope !1119, !noundef !8
  store ptr %i.kj, ptr %i.cp, align 8, !noalias !1122
  store i8 %i.kr, ptr %.sroa.5.0..sroa_idx.i86, align 4, !noalias !1122
  store i32 2, ptr %i.u, align 8, !noalias !1122
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.u)
          to label %bb.cr unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1122
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.cm, %bb.cs
  %.sroa.012.0.i375 = phi ptr [ %i.ks, %bb.cs ], [ %i.ih, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.co, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.012.0.i375, i64 28, i1 false), !noalias !1133
  store i32 1, ptr %i.s, align 8, !noalias !1122
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.s)
          to label %bb.cs unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cs:                                            ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i375, i64 28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1122
  %i.kt = icmp eq ptr %i.ks, %i.km
  br i1 %i.kt, label %.loopexit, label %.lr.ph

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1122
  %i.ku = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ie)
          to label %bb.cu unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.415.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.if, i64 20, i1 false), !noalias !1133
  %i.kv = load i8, ptr %i.ig, align 4, !range !22, !alias.scope !1119, !noundef !8
  store ptr %i.ku, ptr %i.cn, align 8, !noalias !1122
  store i8 %i.kv, ptr %.sroa.516.0..sroa_idx.i, align 4, !noalias !1122
  store i32 2, ptr %i.q, align 8, !noalias !1122
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.q)
          to label %bb.cv unwind label %.thread269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !883
end_hunk_2
begin_hunk_3_@_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander17expand_unhygienic0EB16_:bb.a
  br i1 %.not.i184, label %bb.ib, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ue = icmp eq ptr %i.tx, null
  br i1 %i.ue, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.uf = atomicrmw add ptr %i.tx, i64 -1 release, align 8, !noalias !1178
  %i.ug = icmp eq i64 %i.uf, 1
  br i1 %i.ug, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #33
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hx
  %.sroa.0.0.i185 = phi ptr [ %i.tx, %bb.hx ], [ %i.ud, %bb.hy ], [ %i.ud, %bb.hz ], [ %i.ud, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %.sroa.0.0.i185, ptr %i.bs, align 8
  br label %.backedge351

bb.ic:                                            ; preds = %bb.dm
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4220.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.uh, i64 20, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 37
  %i.uj = load i8, ptr %i.ui, align 1, !range !26, !noundef !8
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 38
  %i.ul = load i8, ptr %i.uk, align 2
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 36
  %i.un = load i8, ptr %i.um, align 4, !noundef !8
  store ptr %i.ly, ptr %i.bz, align 8
  store i8 %i.un, ptr %.sroa.5221.0..sroa_idx, align 4
  store i8 %i.uj, ptr %.sroa.6222.0..sroa_idx, align 1
  store i8 %i.ul, ptr %.sroa.7223.0..sroa_idx, align 2
  store i32 0, ptr %i.br, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.br)
          to label %bb.id unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %.backedge351

bb.ie:                                            ; preds = %bb.dq
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.uo, i64 20, i1 false)
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.0433, i64 36
  %i.uq = load i8, ptr %i.up, align 4, !range !22, !noundef !8
  store ptr %i.mj, ptr %i.by, align 8
  store i8 %i.uq, ptr %.sroa.5231.0..sroa_idx, align 4
  store i32 2, ptr %i.bq, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bq)
          to label %bb.if unwind label %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %.backedge351

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit189: ; preds = %bb.ig, %.thread290, %bb.ih
  resume { ptr, i32 } %.pn71281

.thread290:                                       ; preds = %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk, %.loopexit.split-lp327.loopexit.split-lp, %bb.dl, %.body.i, %.lr.ph.i.i.i.i, %bb.t, %bb.ar, %.body99.i, %bb.ba, %bb.bd, %bb.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit, %bb.hu, %bb.ht, %bb.hv, %bb.hj
  %.pn71281 = phi { ptr, i32 } [ %i.ty, %bb.hu ], [ %.pn.i, %bb.ba ], [ %.pn69, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit ], [ %i.eg, %.body.i ], [ %i.tn, %bb.hj ], [ %i.ty, %bb.hv ], [ %i.ty, %bb.ht ], [ %.pn39.i.ph274, %bb.dk ], [ %.pn39.i.ph.ph, %.loopexit.split-lp327.loopexit.split-lp ], [ %i.em, %.lr.ph.i.i.i.i ], [ %i.em, %bb.t ], [ %.pn39.i.ph274, %bb.dl ], [ %i.ga, %bb.ar ], [ %i.eg, %bb.bd ], [ %i.eg, %bb.be ], [ %.pn.i, %.body99.i ], [ %lpad.loopexit.split-lp714, %.thread300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.ur = load ptr, ptr %i.bs, align 8, !alias.scope !1179, !noundef !8 ; 2 uses
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit189, label %bb.ig

bb.ig:                                            ; preds = %.thread290
  %i.ut = atomicrmw add ptr %i.ur, i64 -1 release, align 8, !noalias !1180
  %i.uu = icmp eq i64 %i.ut, 1
  br i1 %i.uu, label %bb.ih, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit189

bb.ih:                                            ; preds = %bb.ig
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bs) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit189 unwind label %bb.fq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander6expand0EB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1497 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 6 uses
  %i.i = alloca [20 x i8], align 4                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [20 x i8], align 4                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [20 x i8], align 4                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 8                 ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 15 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 10 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [20 x i8], align 8               ; 6 uses
  %i.ae = alloca [96 x i8], align 8               ; 18 uses
  %i.af = alloca [48 x i8], align 4               ; 4 uses
  %i.ag = alloca [40 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 7 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [20 x i8], align 8               ; 6 uses
  %i.ak = alloca [20 x i8], align 8               ; 6 uses
  %i.al = alloca [88 x i8], align 8               ; 7 uses
  %i.am = alloca [40 x i8], align 8               ; 4 uses
  %i.an = alloca [176 x i8], align 8              ; 11 uses
  %i.ao = alloca [40 x i8], align 8               ; 6 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 11 uses
  %i.as = alloca [40 x i8], align 8               ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.0296 = alloca [16 x i8], align 4         ; 2 uses
  %i.aw = alloca [40 x i8], align 8               ; 8 uses
  %i.ax = alloca [20 x i8], align 4               ; 4 uses
  %i.ay = alloca [20 x i8], align 4               ; 4 uses
  %i.az = alloca [88 x i8], align 8               ; 4 uses
  %i.ba = alloca [88 x i8], align 8               ; 7 uses
  %i.bb = alloca [40 x i8], align 8               ; 5 uses
  %i.bc = alloca [88 x i8], align 8               ; 4 uses
  %i.bd = alloca [88 x i8], align 8               ; 7 uses
  %i.be = alloca [40 x i8], align 8               ; 5 uses
  %i.bf = alloca [176 x i8], align 8              ; 14 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [20 x i8], align 4               ; 4 uses
  %i.bj = alloca [48 x i8], align 8               ; 7 uses
  %i.bk = alloca [48 x i8], align 8               ; 10 uses
  %i.bl = alloca [24 x i8], align 8               ; 13 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  %i.bn = alloca [20 x i8], align 4               ; 4 uses
  %i.bo = alloca [40 x i8], align 8               ; 8 uses
  %i.bp = alloca [40 x i8], align 8               ; 9 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [20 x i8], align 4               ; 4 uses
  %i.bs = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.0247 = alloca [16 x i8], align 4         ; 2 uses
  %.sroa.6251 = alloca [16 x i8], align 4         ; 2 uses
  %.sroa.5238 = alloca [16 x i8], align 8         ; 4 uses
  %i.bt = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.bu = alloca [40 x i8], align 8               ; 10 uses
  %i.bv = alloca [8 x i8], align 8                ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr null, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.a
  %i.cb = load ptr, ptr %3, align 8               ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 25 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.5.0..sroa_idx.i.i92 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 37
  %.sroa.8235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 38
  %.sroa.0259.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.0259.sroa.7.20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 37
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 8 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 17 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 104 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 37
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %.sroa.5287.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6290.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.7293.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.8273.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.9281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 7 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 41 ; 3 uses
  %.sroa.8.8..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.sroa.9.8..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 33
  %.sroa.4.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.7.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.73.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.8.8..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.9.8..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 33
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 88 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.an, i64 96 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.sroa.5122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %.sroa.8273.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5106.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.8273.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5106.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.964.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.8273.0..sroa.964.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.sroa.9281.0..sroa.964.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.9281.8..sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %.sroa.863.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.1065.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph500, %.backedge414
  %.sroa.0.0498 = phi ptr [ %i.bw, %.lr.ph500 ], [ %i.eb, %.backedge414 ] ; 35 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 64 ; 2 uses
  %i.ec = load i8, ptr %.sroa.0.0498, align 8, !range !26, !noundef !8
  switch i8 %i.ec, label %default.unreachable641 [
    i8 0, label %bb.c
    i8 1, label %bb.bh
    i8 2, label %bb.bi
    i8 3, label %bb.ej
    i8 4, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bl
    i8 7, label %bb.do
    i8 8, label %bb.dp
    i8 9, label %bb.dq
    i8 10, label %bb.dt
  ]

._crit_edge501.loopexit:                          ; preds = %.backedge414
  %.pre600 = load ptr, ptr %i.bv, align 8
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit, %bb.a
  %i.ed = phi ptr [ %.pre600, %._crit_edge501.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  ret ptr %i.ed

default.unreachable641:                           ; preds = %bb.b, %bb.cl, %bb.ga, %.lr.ph489, %.lr.ph493
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 4
  %.sroa.0268.0.copyload = load ptr, ptr %i.ef, align 4 ; 5 uses
  %.sroa.8273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 12
  %.sroa.8273.0.copyload = load i64, ptr %.sroa.8273.0..sroa_idx, align 4 ; 5 uses
  %.sroa.9281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 20
  %.sroa.9281.0.copyload = load i32, ptr %.sroa.9281.0..sroa_idx, align 4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1499
  %i.eg = load ptr, ptr %i.de, align 8, !alias.scope !1498, !nonnull !8, !align !9, !noundef !8
  %i.eh = load ptr, ptr %i.cp, align 8, !alias.scope !1498, !nonnull !8, !noundef !8
  %i.ei = load i64, ptr %i.co, align 8, !alias.scope !1498, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1499
  store ptr %i.cb, ptr %i.au, align 8, !noalias !1500
  store ptr %i.cd, ptr %.sroa.5287.0..sroa_idx288, align 8, !noalias !1500
  store ptr %i.cf, ptr %.sroa.6290.0..sroa_idx291, align 8, !noalias !1500
  store ptr %i.ci, ptr %.sroa.7293.0..sroa_idx294, align 8, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1499
  store ptr %.sroa.0268.0.copyload, ptr %i.ad, align 8, !noalias !1501
  store i64 %.sroa.8273.0.copyload, ptr %.sroa.8273.0..sroa_idx274, align 8, !noalias !1501
  store i32 %.sroa.9281.0.copyload, ptr %.sroa.9281.0..sroa_idx282, align 8, !noalias !1501
  invoke void @_RINvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB5_8Bindings12get_fragmentNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB1h_24DeclarativeMacroExpander6expand0EB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ee, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.ad, ptr noalias nofree noundef nonnull align 8 %i.eh, i64 noundef %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.au)
          to label %.noexc unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1499
  %i.ej = load i64, ptr %i.av, align 8, !range !28, !noalias !1499, !noundef !8 ; 5 uses
  %.not.i = icmp eq i64 %i.ej, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ek = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1499, !nonnull !8, !noundef !8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load i64, ptr %i.el, align 8, !range !29, !noalias !1502, !noundef !8
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.az, label %bb.du

bb.e:                                             ; preds = %.noexc
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1499 ; 4 uses
  %i.eo = icmp ne i64 %i.ej, 4
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nsw i64 %i.ej, -3
  %i.eq = icmp samesign ugt i64 %i.ej, 2
  %i.er = select i1 %i.eq, i64 %i.ep, i64 1
  switch i64 %i.er, label %bb.f [
    i64 0, label %bb.du
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.au
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1499
  store i64 %i.ej, ptr %i.at, align 8, !noalias !1499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx14.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !1499
end_hunk_3
begin_hunk_4_@_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander6expand0EB16_:bb.a

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1499
  br label %bb.du

bb.ay:                                            ; preds = %bb.bg, %bb.bc, %bb.at
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1503
  unreachable

bb.az:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1499
  store ptr %i.ek, ptr %i.ah, align 8, !noalias !1499
  %i.gx = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ee)
          to label %.lr.ph.i.i.i unwind label %bb.bd, !noalias !1502

.lr.ph.i.i.i:                                     ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1499
  store ptr %.sroa.0268.0.copyload, ptr %.sroa.964.0..sroa_idx.i, align 8, !noalias !1501
  store i64 %.sroa.8273.0.copyload, ptr %.sroa.8273.0..sroa.964.0..sroa_idx.i.sroa_idx, align 8, !noalias !1501
  store i32 %.sroa.9281.0.copyload, ptr %.sroa.9281.0..sroa.964.0..sroa_idx.i.sroa_idx, align 8, !noalias !1501
  store i64 %.sroa.8273.0.copyload, ptr %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i, align 8, !noalias !1501
  store i32 %.sroa.9281.0.copyload, ptr %.sroa.9281.8..sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !1501
  store i64 0, ptr %i.ae, align 8, !noalias !1499
  store i64 2, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !1499
  store i32 1, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !1499
  store i32 36, ptr %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx.i, align 4, !noalias !1499
  store ptr %.sroa.0268.0.copyload, ptr %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx.i, align 8, !noalias !1499
  store i8 0, ptr %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx.i, align 4, !noalias !1499
  store i32 2, ptr %.sroa.661.0..sroa_idx.i, align 8, !noalias !1499
  store ptr %i.gx, ptr %.sroa.863.0..sroa_idx.i, align 8, !noalias !1499
  store i8 0, ptr %.sroa.1065.0..sroa_idx.i, align 4, !noalias !1499
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1520
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %.sroa.560.0..sroa_idx.i)
          to label %.noexc.i.i unwind label %bb.ba, !noalias !1504

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.661.0..sroa_idx.i, i64 40, i1 false), !noalias !1521
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
          to label %.noexc.i.1.i unwind label %bb.ba, !noalias !1522

.noexc.i.1.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1520
  store i64 2, ptr %i.ae, align 8, !alias.scope !1523, !noalias !1499
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.560.0..sroa_idx.i, i64 noundef 2, i64 noundef 2)
          to label %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.bd, !noalias !1504

bb.ba:                                            ; preds = %.noexc.i.i, %.lr.ph.i.i.i
  %.lcssa.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ 2, %.noexc.i.i ] ; 2 uses
  %i.gy = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa.i, ptr %i.ae, align 8, !alias.scope !1523, !noalias !1499
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.560.0..sroa_idx.i, i64 noundef %.lcssa.i, i64 noundef 2)
          to label %.body99.i unwind label %bb.bb, !noalias !1504

bb.bb:                                            ; preds = %bb.ba
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1504
  unreachable

.body99.i:                                        ; preds = %bb.bd, %bb.ba
  %.pn.i = phi { ptr, i32 } [ %i.gy, %bb.ba ], [ %i.hd, %bb.bd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.ha = load ptr, ptr %i.ah, align 8, !alias.scope !1527, !noalias !1499, !nonnull !8, !noundef !8
  %i.hb = atomicrmw add ptr %i.ha, i64 -1 release, align 8, !noalias !1528
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bc, label %.thread353

bb.bc:                                            ; preds = %.body99.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #33
          to label %.thread353 unwind label %bb.ay, !noalias !1504

bb.bd:                                            ; preds = %bb.az, %.noexc.i.1.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i

_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1499
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.he = load ptr, ptr %i.ah, align 8, !alias.scope !1532, !noalias !1499, !nonnull !8, !noundef !8
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !1533
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i

bb.be:                                            ; preds = %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsqiF3OZxLbD_3mbe11ExpandErrorECs33K2ylI4knu_10hir_expand.exit103.i: ; preds = %bb.be, %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1499
  br label %bb.du

bb.bf:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.hh = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1537, !noalias !1499, !nonnull !8, !noundef !8
  %i.hi = atomicrmw add ptr %i.hh, i64 -1 release, align 8, !noalias !1538
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.bg, label %.thread353

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i) #33
          to label %.thread353 unwind label %bb.ay, !noalias !1503

bb.bh:                                            ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.hl = load ptr, ptr %i.de, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, ptr noundef nonnull align 4 dereferenceable(20) %i.hm, i64 20, i1 false)
  %i.hn = load ptr, ptr %i.cp, align 8, !nonnull !8, !noundef !8
  %i.ho = load i64, ptr %i.co, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  invoke void @_RINvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB5_8Bindings12get_fragmentNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB1h_24DeclarativeMacroExpander6expand0EB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hk, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.br, ptr noalias nofree noundef nonnull align 8 %i.hn, i64 noundef %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.bq)
          to label %bb.dz unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.b
  %i.hp = load i64, ptr %i.co, align 8, !noundef !8 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 576460752303423488
  call void @llvm.assume(i1 %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !8
  %i.ht = xor i64 %i.hs, -1
  %i.hu = add i64 %i.hp, %i.ht                    ; 2 uses
  %.not376 = icmp ult i64 %i.hu, %i.hp
  br i1 %.not376, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander6expand0Es_0EB2k_.exit, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander6expand0Es_0EB2k_.exit.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE6map_orjNCINvBL_14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB2i_24DeclarativeMacroExpander6expand0Es_0EB2k_.exit.thread: ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  br label %bb.eg

bb.bj:                                            ; preds = %bb.b
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 16
  %i.hw = load ptr, ptr %i.de, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bn, ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i64 20, i1 false)
  %i.hx = invoke { i64, ptr } @_RNvMNtNtCsqiF3OZxLbD_3mbe8expander11transcriberNtB4_8Bindings3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hv, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.bn)
          to label %bb.em unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bk:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 0, ptr %i.bl, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.449.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.550.0..sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !8 ; 2 uses
  %.idx504 = mul nuw nsw i64 %i.ib, 40
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx504
  %i.id = icmp eq i64 %i.ib, 0
  br i1 %i.id, label %._crit_edge, label %.lr.ph489

bb.bl:                                            ; preds = %bb.b
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !range !31, !noundef !8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0498, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noundef !8 ; 11 uses
  %.not = icmp eq ptr %i.ii, null
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ik = load i64, ptr %i.co, align 8, !alias.scope !1542, !noundef !8 ; 3 uses
  %i.il = load i64, ptr %0, align 8, !range !32, !alias.scope !1542, !noundef !8
  %i.im = icmp eq i64 %i.ik, %i.il
  br i1 %i.im, label %bb.bm, label %.noexc87

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateE8grow_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #33
          to label %.noexc87 unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.bl, %bb.bm
  %i.in = load ptr, ptr %i.cp, align 8, !alias.scope !1542, !nonnull !8, !noundef !8
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %i.ik
  store i128 0, ptr %i.io, align 8
  %i.ip = add i64 %i.ik, 1
  store i64 %i.ip, ptr %i.co, align 8, !alias.scope !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1543
  store ptr null, ptr %i.z, align 8, !noalias !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1543
  %i.iq = load i64, ptr %i.cq, align 8, !alias.scope !1541, !noundef !8 ; 2 uses
  %i.ir = load i64, ptr %i.cr, align 8, !alias.scope !1541, !noundef !8 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 1152921504606846976
  call void @llvm.assume(i1 %i.is)
  %i.it = load i64, ptr %2, align 8, !range !17, !alias.scope !1541, !noundef !8 ; 2 uses
  %i.iu = load i64, ptr %i.cs, align 8, !alias.scope !1541 ; 2 uses
  store i64 %i.ir, ptr %i.ct, align 8, !noalias !1543
  store i64 %i.iq, ptr %i.cu, align 8, !noalias !1543
  store i64 %i.it, ptr %i.y, align 8, !noalias !1543
  store i64 %i.iu, ptr %i.cv, align 8, !noalias !1543
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ii, i64 76
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ii, i64 52 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 53
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 54
  %i.je = icmp eq i8 %i.ig, 2
  br label %bb.bn

bb.bn:                                            ; preds = %.backedge400, %.noexc87
  %i.jf = phi i64 [ %i.iu, %.noexc87 ], [ %i.ke, %.backedge400 ] ; 2 uses
  %i.jg = phi i64 [ %i.it, %.noexc87 ], [ %i.kd, %.backedge400 ] ; 2 uses
  %.sroa.028.0.i455 = phi i64 [ %i.iq, %.noexc87 ], [ %i.ka, %.backedge400 ] ; 2 uses
  %i.jh = phi i64 [ %i.ir, %.noexc87 ], [ %i.kb, %.backedge400 ] ; 2 uses
  %.sroa.03.0.i = phi i32 [ 0, %.noexc87 ], [ %i.kf, %.backedge400 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i64 20, i1 false), !noalias !1544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i64 20, i1 false)
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4open(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, i8 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.a)
          to label %.noexc222 unwind label %.loopexit.split-lp390.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1267

.noexc222:                                        ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1545
  %i.ji = invoke fastcc noundef ptr @_RINvNtNtCsqiF3OZxLbD_3mbe8expander11transcriber14expand_subtreeNCNvMNtCs33K2ylI4knu_10hir_expand11declarativeNtB14_24DeclarativeMacroExpander6expand0EB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ie, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %3)
          to label %.noexc223 unwind label %.loopexit.split-lp390.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1267 ; 4 uses

.noexc223:                                        ; preds = %.noexc222
  store ptr %i.ji, ptr %i.c, align 8, !noalias !1545
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.b)
          to label %bb.bs unwind label %bb.bo, !noalias !1546, !inline_history !1267

bb.bo:                                            ; preds = %.noexc223
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jk = icmp eq ptr %i.ji, null
  br i1 %i.jk, label %.loopexit.split-lp390.loopexit.split-lp, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jl = atomicrmw add ptr %i.ji, i64 -1 release, align 8, !noalias !1547
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.bq, label %.loopexit.split-lp390.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !noalias !1548
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %.loopexit.split-lp390.loopexit.split-lp unwind label %bb.br, !noalias !1546, !inline_history !1267

bb.br:                                            ; preds = %bb.bq
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !1546, !inline_history !1267
  unreachable

.loopexit.split-lp390.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.da, %bb.bn, %.noexc222, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit217, %bb.di, %bb.cg, %bb.dg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp390.loopexit.split-lp

bb.bs:                                            ; preds = %.noexc223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1543
  store ptr %i.ji, ptr %i.x, align 8, !noalias !1543
  %i.jo = load i64, ptr %i.co, align 8, !alias.scope !1539, !noundef !8 ; 2 uses
  %.not.i82 = icmp eq i64 %i.jo, 0
  br i1 %.not.i82, label %bb.bt, label %bb.bu, !prof !10

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.bv unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.bu:                                            ; preds = %bb.bs
  %i.jp = load ptr, ptr %i.cp, align 8, !alias.scope !1539, !nonnull !8, !noundef !8
  %i.jq = getelementptr [16 x i8], ptr %i.jp, i64 %i.jo ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 -16    ; 2 uses
  %i.js = getelementptr i8, ptr %i.jq, i64 -7
  %i.jt = load i8, ptr %i.js, align 1, !range !22, !noalias !1548, !noundef !8
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %.loopexit394, label %bb.bw

.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cq, %bb.cm, %bb.cs, %bb.cn, %bb.cw, %bb.cv, %bb.cp, %bb.bx, %.lr.ph, %bb.ca, %bb.by, %bb.bt
  %lpad.loopexit.split-lp787 = landingpad { ptr, i32 }
          cleanup
  br label %.thread332

bb.bv:                                            ; preds = %bb.dg, %bb.bt
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.jv = getelementptr i8, ptr %i.jq, i64 -8     ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 8, !range !22, !noalias !1548, !noundef !8
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.bx, label %.loopexit394

bb.bx:                                            ; preds = %bb.bw
  %i.jy = load i64, ptr %i.jr, align 8, !noalias !1548, !noundef !8
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.jr, align 8, !noalias !1548
  store i8 0, ptr %i.jv, align 8, !noalias !1548
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder32remove_last_subtree_if_invisible(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2)
          to label %switch.lookup unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

switch.lookup:                                    ; preds = %bb.bx
  %i.ka = load i64, ptr %i.cq, align 8, !alias.scope !1541, !noundef !8 ; 3 uses
  %i.kb = load i64, ptr %i.cr, align 8, !alias.scope !1541, !noundef !8 ; 4 uses
  %i.kc = icmp ult i64 %i.kb, 1152921504606846976
  call void @llvm.assume(i1 %i.kc)
  %i.kd = load i64, ptr %2, align 8, !range !17, !alias.scope !1541, !noundef !8 ; 3 uses
  %i.ke = load i64, ptr %i.cs, align 8, !alias.scope !1541 ; 3 uses
  %i.kf = add nuw nsw i32 %.sroa.03.0.i, 1        ; 2 uses
  %i.kg = icmp eq i32 %i.kf, 65536
  br i1 %i.kg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %switch.lookup
  store i64 %i.kb, ptr %i.cw, align 8
  store i64 %i.ka, ptr %i.cx, align 8
  store i64 %i.kd, ptr %i.w, align 8
  store i64 %i.ke, ptr %i.cy, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder7restore(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.y)
          to label %bb.ca unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.bz:                                            ; preds = %switch.lookup
  %i.kh = load ptr, ptr %i.x, align 8, !noalias !1543, !noundef !8 ; 4 uses
  %.not35.i = icmp eq ptr %i.kh, null
  br i1 %.not35.i, label %bb.ch, label %bb.ci

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i64 20, i1 false), !noalias !1549
  %i.ki = invoke noundef nonnull ptr @_RNvMs0_CsqiF3OZxLbD_3mbeNtB5_11ExpandError3new(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.v, i64 noundef 3, ptr undef)
          to label %bb.cb unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279 ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1543
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %i.kj = load ptr, ptr %i.z, align 8, !alias.scope !1550, !noalias !1548, !noundef !8 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kl = atomicrmw add ptr %i.kj, i64 -1 release, align 8, !noalias !1551
  %i.km = icmp eq i64 %i.kl, 1
  br i1 %i.km, label %bb.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !noalias !1548
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219 unwind label %.thread327

.thread327:                                       ; preds = %bb.cd
  %i.kn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ki, ptr %i.z, align 8, !noalias !1543
  br label %.thread332

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219: ; preds = %bb.cc, %bb.cb, %bb.cd
  store ptr %i.ki, ptr %i.z, align 8, !noalias !1543
  br label %bb.ce

.loopexit394:                                     ; preds = %bb.bu, %bb.bw, %.loopexit
  %i.ko = phi i64 [ %i.jf, %bb.bw ], [ %i.ke, %.loopexit ], [ %i.jf, %bb.bu ]
  %i.kp = phi i64 [ %i.jg, %bb.bw ], [ %i.kd, %.loopexit ], [ %i.jg, %bb.bu ]
  %.sroa.028.0.i460 = phi i64 [ %.sroa.028.0.i455, %bb.bw ], [ %i.ka, %.loopexit ], [ %.sroa.028.0.i455, %bb.bu ]
  %i.kq = phi i64 [ %i.jh, %bb.bw ], [ %i.kb, %.loopexit ], [ %i.jh, %bb.bu ]
  %.sroa.03.1.i.ph = phi i32 [ %.sroa.03.0.i, %bb.bw ], [ 1, %.loopexit ], [ %.sroa.03.0.i, %bb.bu ]
  store i64 %i.kq, ptr %i.cw, align 8
  store i64 %.sroa.028.0.i460, ptr %i.cx, align 8
  store i64 %i.kp, ptr %i.w, align 8
  store i64 %i.ko, ptr %i.cy, align 8
  %i.kr = icmp eq i32 %.sroa.03.1.i.ph, 0
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit394, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219
  %.sroa.03.1.i = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit219 ], [ %i.kr, %.loopexit394 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.ks = load ptr, ptr %i.x, align 8, !alias.scope !1552, !noalias !1548, !noundef !8 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit217, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ku = atomicrmw add ptr %i.ks, i64 -1 release, align 8, !noalias !1553
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.cg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit217

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !noalias !1548
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsqiF3OZxLbD_3mbe11ExpandErrorEECs33K2ylI4knu_10hir_expand.exit217 unwind label %.loopexit.split-lp390.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.bz
  br i1 %.not, label %.loopexit, label %bb.cl

bb.ci:                                            ; preds = %bb.bz
  %i.kw = load ptr, ptr %i.z, align 8, !noalias !1543, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.kh, ptr %i.d, align 8, !noalias !1548
  %.not.i212 = icmp eq ptr %i.kw, null
  br i1 %.not.i212, label %bb.db, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kx = atomicrmw add ptr %i.kh, i64 -1 release, align 8, !noalias !1554
  %i.ky = icmp eq i64 %i.kx, 1
  br i1 %i.ky, label %bb.ck, label %bb.db

bb.ck:                                            ; preds = %bb.cj
  fence acquire, !noalias !1548
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcTNtCsdovh4xi6v3I_4span4SpanNtCsqiF3OZxLbD_3mbe15ExpandErrorKindEE9drop_slowB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %bb.db unwind label %.thread363.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ch
  %i.kz = load i32, ptr %i.ij, align 8, !range !33, !alias.scope !1540, !noundef !8
  switch i32 %i.kz, label %default.unreachable641 [
    i32 0, label %bb.cm
    i32 1, label %bb.cn
    i32 2, label %bb.co
    i32 3, label %bb.cp
  ]

.loopexit:                                        ; preds = %bb.cu, %bb.co, %bb.cx, %bb.ct, %bb.cr, %bb.ch
  br i1 %i.je, label %.loopexit394, label %bb.cy

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1543
  %i.la = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iz)
          to label %bb.cq unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1543
  %i.lb = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iz)
          to label %bb.cs unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.co:                                            ; preds = %bb.cl
  %i.lc = load i32, ptr %i.iv, align 4, !alias.scope !1540, !noundef !8 ; 2 uses
  %i.ld = zext i32 %i.lc to i64
  %.idx503 = mul nuw nsw i64 %i.ld, 28
  %i.le = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.idx503
  %i.lf = icmp eq i32 %i.lc, 0
  br i1 %i.lf, label %.loopexit, label %.lr.ph

bb.cp:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cz, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.iv, i64 28, i1 false), !noalias !1555
  store i32 1, ptr %i.r, align 8, !noalias !1543
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.cv unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ja, i64 20, i1 false), !noalias !1555
  %i.lg = load i8, ptr %i.jc, align 1, !range !26, !alias.scope !1540, !noundef !8
  %i.lh = load i8, ptr %i.jd, align 2, !alias.scope !1540
  %i.li = load i8, ptr %i.jb, align 4, !alias.scope !1540, !noundef !8
  store ptr %i.la, ptr %i.dd, align 8, !noalias !1543
  store i8 %i.li, ptr %.sroa.510.0..sroa_idx.i, align 4, !noalias !1543
  store i8 %i.lg, ptr %.sroa.611.0..sroa_idx.i, align 1, !noalias !1543
  store i8 %i.lh, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !1543
  store i32 0, ptr %i.t, align 8, !noalias !1543
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.t)
          to label %bb.cr unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1543
  br label %.loopexit

bb.cs:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.0..sroa_idx.i85, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ja, i64 20, i1 false), !noalias !1555
  %i.lj = load i8, ptr %i.jb, align 4, !range !22, !alias.scope !1540, !noundef !8
  store ptr %i.lb, ptr %i.dc, align 8, !noalias !1543
  store i8 %i.lj, ptr %.sroa.5.0..sroa_idx.i86, align 4, !noalias !1543
  store i32 2, ptr %i.u, align 8, !noalias !1543
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.u)
          to label %bb.ct unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1543
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.co, %bb.cu
  %.sroa.012.0.i440 = phi ptr [ %i.lk, %bb.cu ], [ %i.iz, %bb.co ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.db, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.012.0.i440, i64 28, i1 false), !noalias !1555
  store i32 1, ptr %i.s, align 8, !noalias !1543
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.s)
          to label %bb.cu unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.cu:                                            ; preds = %.lr.ph
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i440, i64 28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1543
  %i.ll = icmp eq ptr %i.lk, %i.le
  br i1 %i.ll, label %.loopexit, label %.lr.ph

bb.cv:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1543
  %i.lm = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iw)
          to label %bb.cw unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.415.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ix, i64 20, i1 false), !noalias !1555
  %i.ln = load i8, ptr %i.iy, align 4, !range !22, !alias.scope !1540, !noundef !8
  store ptr %i.lm, ptr %i.da, align 8, !noalias !1543
  store i8 %i.ln, ptr %.sroa.516.0..sroa_idx.i, align 4, !noalias !1543
  store i32 2, ptr %i.q, align 8, !noalias !1543
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.q)
          to label %bb.cx unwind label %.thread332.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1548, !inline_history !1279
end_hunk_4
