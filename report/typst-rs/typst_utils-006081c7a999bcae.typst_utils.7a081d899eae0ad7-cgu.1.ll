Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-006081c7a999bcae.typst_utils.7a081d899eae0ad7-cgu.1?download=true
inline.NumInlined: 190
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/thin-vec-0.2.18/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\D8\01\00\00\09\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\B9\01\00\00\0E\00\00\00" }>, align 8
@3 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@4 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rustc-hash-2.1.1/src/lib.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00$\01\00\00:\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00%\01\00\00;\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\14\01\00\00G\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\15\01\00\00L\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\07\01\00\00=\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\08\01\00\00B\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\04\01\00\00=\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00\05\01\00\00B\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsv_NtCs3oUPovFnLWP_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmtCsatzsiS36G5T_11typst_utils }>, align 8
@14 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB1Z_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1v_ }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB20_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1w_ }>, align 8
@17 = private unnamed_addr constant [31 x i8] c"crates/typst-utils/src/pico.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00u\00\00\00(\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00S\00\00\00(\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\007\00\00\00-\00\00\00" }>, align 8
@21 = private unnamed_addr constant [14 x i8] c"accept-charset", align 1
@22 = private unnamed_addr constant [15 x i8] c"allowfullscreen", align 1
@23 = private unnamed_addr constant [14 x i8] c"annotation-xml", align 1
@24 = private unnamed_addr constant [21 x i8] c"aria-activedescendant", align 1
@25 = private unnamed_addr constant [17 x i8] c"aria-autocomplete", align 1
@26 = private unnamed_addr constant [13 x i8] c"aria-colcount", align 1
@27 = private unnamed_addr constant [13 x i8] c"aria-colindex", align 1
@28 = private unnamed_addr constant [13 x i8] c"aria-controls", align 1
@29 = private unnamed_addr constant [16 x i8] c"aria-describedby", align 1
@30 = private unnamed_addr constant [13 x i8] c"aria-disabled", align 1
@31 = private unnamed_addr constant [15 x i8] c"aria-dropeffect", align 1
@32 = private unnamed_addr constant [17 x i8] c"aria-errormessage", align 1
@33 = private unnamed_addr constant [13 x i8] c"aria-expanded", align 1
@34 = private unnamed_addr constant [13 x i8] c"aria-haspopup", align 1
@35 = private unnamed_addr constant [17 x i8] c"aria-keyshortcuts", align 1
@36 = private unnamed_addr constant [15 x i8] c"aria-labelledby", align 1
@37 = private unnamed_addr constant [14 x i8] c"aria-multiline", align 1
@38 = private unnamed_addr constant [20 x i8] c"aria-multiselectable", align 1
@39 = private unnamed_addr constant [16 x i8] c"aria-orientation", align 1
@40 = private unnamed_addr constant [16 x i8] c"aria-placeholder", align 1
@41 = private unnamed_addr constant [13 x i8] c"aria-posinset", align 1
@42 = private unnamed_addr constant [13 x i8] c"aria-readonly", align 1
@43 = private unnamed_addr constant [13 x i8] c"aria-relevant", align 1
@44 = private unnamed_addr constant [13 x i8] c"aria-required", align 1
@45 = private unnamed_addr constant [20 x i8] c"aria-roledescription", align 1
@46 = private unnamed_addr constant [13 x i8] c"aria-rowcount", align 1
@47 = private unnamed_addr constant [13 x i8] c"aria-rowindex", align 1
@48 = private unnamed_addr constant [13 x i8] c"aria-selected", align 1
@49 = private unnamed_addr constant [13 x i8] c"aria-valuemax", align 1
@50 = private unnamed_addr constant [13 x i8] c"aria-valuemin", align 1
@51 = private unnamed_addr constant [13 x i8] c"aria-valuenow", align 1
@52 = private unnamed_addr constant [14 x i8] c"aria-valuetext", align 1
@53 = private unnamed_addr constant [14 x i8] c"autocapitalize", align 1
@54 = private unnamed_addr constant [17 x i8] c"cjk-latin-spacing", align 1
@55 = private unnamed_addr constant [15 x i8] c"contenteditable", align 1
@56 = private unnamed_addr constant [23 x i8] c"discretionary-ligatures", align 1
@57 = private unnamed_addr constant [13 x i8] c"fetchpriority", align 1
@58 = private unnamed_addr constant [14 x i8] c"formnovalidate", align 1
@59 = private unnamed_addr constant [2 x i8] c"h5", align 1
@60 = private unnamed_addr constant [2 x i8] c"h6", align 1
@61 = private unnamed_addr constant [20 x i8] c"historical-ligatures", align 1
@62 = private unnamed_addr constant [13 x i8] c"linethickness", align 1
@63 = private unnamed_addr constant [13 x i8] c"mmultiscripts", align 1
@64 = private unnamed_addr constant [13 x i8] c"movablelimits", align 1
@65 = private unnamed_addr constant [16 x i8] c"number-clearance", align 1
@66 = private unnamed_addr constant [13 x i8] c"number-margin", align 1
@67 = private unnamed_addr constant [15 x i8] c"numbering-scope", align 1
@68 = private unnamed_addr constant [13 x i8] c"onbeforeprint", align 1
@69 = private unnamed_addr constant [14 x i8] c"onbeforeunload", align 1
@70 = private unnamed_addr constant [16 x i8] c"onlanguagechange", align 1
@71 = private unnamed_addr constant [14 x i8] c"onmessageerror", align 1
@72 = private unnamed_addr constant [18 x i8] c"onrejectionhandled", align 1
@73 = private unnamed_addr constant [20 x i8] c"onunhandledrejection", align 1
@74 = private unnamed_addr constant [14 x i8] c"page-numbering", align 1
@75 = private unnamed_addr constant [15 x i8] c"par-line-marker", align 1
@76 = private unnamed_addr constant [13 x i8] c"popovertarget", align 1
@77 = private unnamed_addr constant [19 x i8] c"popovertargetaction", align 1
@78 = private unnamed_addr constant [14 x i8] c"referrerpolicy", align 1
@79 = private unnamed_addr constant [18 x i8] c"shadowrootclonable", align 1
@80 = private unnamed_addr constant [31 x i8] c"shadowrootcustomelementregistry", align 1
@81 = private unnamed_addr constant [24 x i8] c"shadowrootdelegatesfocus", align 1
@82 = private unnamed_addr constant [14 x i8] c"shadowrootmode", align 1
@83 = private unnamed_addr constant [22 x i8] c"shadowrootserializable", align 1
@84 = private unnamed_addr constant [14 x i8] c"transparentize", align 1
@85 = private unnamed_addr constant [18 x i8] c"writingsuggestions", align 1
@86 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @21, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @22, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @24, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @25, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @27, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @29, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @30, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @31, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @32, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @36, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @38, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @43, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @44, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @47, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @48, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @49, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @51, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @52, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @53, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @54, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @55, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @56, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @57, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @58, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @59, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @62, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @63, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @66, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @67, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @68, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @69, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @70, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @71, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @77, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @78, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @79, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @80, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @81, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @82, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @83, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @84, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @85, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00?\00\00\003\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\82\00\00\00\1D\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00\82\00\00\00-\00\00\00" }>, align 8
@90 = private unnamed_addr constant [33 x i8] c"crates/typst-utils/src/scalar.rs\00", align 1
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\1E\00\00\00\00\00\00\00i\01\00\003\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\DD\06\00\00\18\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00h\04\00\00\12\00\00\00" }>, align 8
@_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER = external global { i64, i64 }
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00d\02\00\00\1A\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00X\04\00\00\12\00\00\00" }>, align 8
@96 = private unnamed_addr constant [38 x i8] c"failed to compile-time intern string \22", align 1
@97 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER = internal global <{ ptr, [64 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_, [64 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvNtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC = external global { { { ptr } } }
@98 = private unnamed_addr constant [5 x i8] c"\C0\02 d\00", align 1
@99 = private unnamed_addr constant [5 x i8] c"\C0\02 h\00", align 1
@100 = private unnamed_addr constant [7 x i8] c"\C0\04 min\00", align 1
@101 = private unnamed_addr constant [6 x i8] c"\C0\03 ns\00", align 1
@102 = private unnamed_addr constant [35 x i8] c"crates/typst-utils/src/duration.rs\00", align 1
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00@\00\00\00\0D\00\00\00" }>, align 8
@104 = private unnamed_addr constant [7 x i8] c"\C0\04 \C2\B5s\00", align 1
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00>\00\00\00\0D\00\00\00" }>, align 8
@106 = private unnamed_addr constant [6 x i8] c"\C0\03 ms\00", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00<\00\00\00\0D\00\00\00" }>, align 8
@108 = private unnamed_addr constant [5 x i8] c"\C0\02 s\00", align 1
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\009\00\00\00\11\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\007\00\00\00\11\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00(\00\00\00\0D\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00$\00\00\00\0D\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00 \00\00\00\0D\00\00\00" }>, align 8
@114 = private unnamed_addr constant [12 x i8] c"float is NaN", align 1
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c" \00\00\00\00\00\00\00a\00\00\00\09\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c" \00\00\00\00\00\00\00n\00\00\00&\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsaDvkSoazevh_14rustc_demangle }>, align 8
@118 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@119 = private unnamed_addr constant [90 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/adapters/step_by.rs\00", align 1
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"Y\00\00\00\00\00\00\00m\02\00\00\05\00\00\00" }>, align 8
@121 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@122 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @121, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define i64 @_RINvCslnPB5LbcFkI_8thin_vec10alloc_sizejECsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1 = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %1 = extractvalue { i64, i1 } %i.i, 0
  %not..i = xor i1 %i.j, true
  %.sroa.0.0.i2 = zext i1 %not..i to i64
  %i.k = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2, i64 %1)
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvCslnPB5LbcFkI_8thin_vec11alloc_alignjECsatzsiS36G5T_11typst_utils() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %0, i1 zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1.i.i = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i.i, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %2 = extractvalue { i64, i1 } %i.i, 0
  %not..i.i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i.i = zext i1 %not..i.i.i to i64
  %i.k = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i.i, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.m = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.k, i64 %i.l, ptr nonnull align 8 @2) #32 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.p = call noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 %i.o, i64 %i.n) #33 ; 4 uses
  %i.q = call zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCslnPB5LbcFkI_8thin_vec6Header7is_nullBE_(ptr %i.p) #32
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %0, ptr %i.r, align 8
  %i.s = call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull %i.p, ptr nonnull align 8 @1) #32
  ret ptr %i.s

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.n, i64 %i.o) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RINvCslnPB5LbcFkI_8thin_vec6layoutjECsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1.i = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %1 = extractvalue { i64, i1 } %i.i, 0
  %not..i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i = zext i1 %not..i.i to i64
  %i.k = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.m = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.k, i64 %i.l, ptr nonnull align 8 @2) #32
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -16) i64 @_RINvCslnPB5LbcFkI_8thin_vec7paddingjECsatzsiS36G5T_11typst_utils() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEBU_(ptr align 8 %0, ptr %1, i64 %2) #32
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define zeroext i1 @_RINvNtCs3oUPovFnLWP_4core3mem7replacebECsatzsiS36G5T_11typst_utils(ptr nofree captures(none) %0, i1 zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = zext i1 %1 to i8
  store i8 %i.c, ptr %0, align 1
  ret i1 %i.b
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13panic_displayReECsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @3, ptr nonnull %i.a, ptr align 8 %1) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvYNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRReECsatzsiS36G5T_11typst_utils(ptr %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = tail call i64 @_RNvXs2_Cs87aT6TjYOVO_10rustc_hashNtB5_13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher(ptr %0)
  store i64 %i.c, ptr %i.a, align 8
  call void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRReNtB8_4Hash4hashNtCs87aT6TjYOVO_10rustc_hash8FxHasherECsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #32
  %.val = load i64, ptr %i.a, align 8
  %i.d = call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftjECsatzsiS36G5T_11typst_utils(i64 %.val, i32 26) #33
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvYNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECsatzsiS36G5T_11typst_utils(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = tail call i64 @_RNvXs2_Cs87aT6TjYOVO_10rustc_hashNtB5_13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher(ptr %0)
  store i64 %i.d, ptr %i.a, align 8
  call void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsReNtB8_4Hash4hashNtCs87aT6TjYOVO_10rustc_hash8FxHasherECsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #32
  %.val = load i64, ptr %i.a, align 8
  %i.e = call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftjECsatzsiS36G5T_11typst_utils(i64 %.val, i32 26) #33
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNCNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3new0B1f_(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %0, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i1 } @_RNCNvMse_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3new0B1g_(ptr align 8 %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNCNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER0B5_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 9), (16, 72)) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @122, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecReE3newCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #5 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMNtCs3oUPovFnLWP_4core3stre3lenCsatzsiS36G5T_11typst_utils(ptr nofree readnone captures(none) %0, i64 returned %1) unnamed_addr #4 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden double @_RNvMNtCsaL1QbXo9JQH_3std3f64d5roundCsatzsiS36G5T_11typst_utils(double %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call double @llvm.round.f64(double %0)
  ret double %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr12try_constant(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %1, i64 %2)
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0 = phi i64 [ %i.o, %bb.f ], [ %i.k, %bb.c ]
  %i.l = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.f, 1
  %i.o = add i64 %i.n, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.p, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit
  %storemerge = phi i8 [ 1, %bb.g ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr3get(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.e = load i8, ptr %i.a, align 8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %0, i64 %1) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
end_hunk_0
begin_hunk_1_@_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr7resolve:bb.a
bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr @86, i64 %i.e ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.m, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i64 1, 0) i64 @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr8constant(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %0, i64 %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.f ], [ %i.k, %bb.c ]
  %i.l = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0.i) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.f, 1
  %i.n = add i64 %i.m, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = trunc nuw i8 %i.e to i1
  call void @_RNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern(i1 zeroext %i.o, ptr %0, i64 %1, ptr align 8 %2) #34
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar3get(double returned %0) unnamed_addr #6 {
bb.a:
  ret double %0
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar3new(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %0) #32
  %. = select i1 %i.a, double 0.000000e+00, double %0
  ret double %.
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar4powi(double %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not11 = icmp eq i32 %i.a, 0
  %.sroa.08.112 = select i1 %.not11, double 1.000000e+00, double %0 ; 2 uses
  %.sroa.0.0.off13 = add i32 %1, 1
  %i.b = icmp ult i32 %.sroa.0.0.off13, 3
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.116 = phi double [ %.sroa.08.1, %.lr.ph ], [ %.sroa.08.112, %bb.a ] ; 2 uses
  %.sroa.0.015 = phi i32 [ %i.c, %.lr.ph ], [ %1, %bb.a ]
  %.sroa.05.014 = phi double [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = sdiv i32 %.sroa.0.015, 2                 ; 3 uses
  %i.d = fmul double %.sroa.05.014, %.sroa.05.014 ; 2 uses
  %i.e = and i32 %i.c, 1
  %.not = icmp eq i32 %i.e, 0
  %i.f = fmul double %.sroa.08.116, %i.d
  %.sroa.08.1 = select i1 %.not, double %.sroa.08.116, double %i.f ; 2 uses
  %.sroa.0.0.off = add nsw i32 %i.c, 1
  %i.g = icmp ult i32 %.sroa.0.0.off, 3
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.08.1.lcssa = phi double [ %.sroa.08.112, %bb.a ], [ %.sroa.08.1, %.lr.ph ] ; 2 uses
  %i.h = icmp slt i32 %1, 0
  %i.i = fdiv double 1.000000e+00, %.sroa.08.1.lcssa
  %.sroa.08.2 = select i1 %i.h, double %i.i, double %.sroa.08.1.lcssa ; 2 uses
  %i.j = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %.sroa.08.2) #32
  %..i = select i1 %i.j, double 0.000000e+00, double %.sroa.08.2
  ret double %..i
}

; Function Attrs: nonlazybind uwtable
define double @_RNvMNtCsatzsiS36G5T_11typst_utils6scalarNtB2_6Scalar4sqrt(double %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.sqrt.f64(double %0) ; 2 uses
  %i.b = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nanCsatzsiS36G5T_11typst_utils(double %i.a) #32
  %..i = select i1 %i.b, double 0.000000e+00, double %i.a
  ret double %..i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtNtCskt5MLIAl8nl_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = load <2 x i64>, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x i64> zeroinitializer, ptr %i.d, align 16, !noalias !5
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.e, ptr nonnull align 16 %i.d) #32, !noalias !5
  %i.g = load <16 x i8>, ptr %i.e, align 16, !noalias !5
  store <2 x i64> %i.f, ptr %i.b, align 16, !noalias !5
  call void @_RNvMs1K_NtNtCs3oUPovFnLWP_4core9core_arch3x86NtB6_7___m128i8as_i8x16CsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.c, ptr nonnull align 16 %i.b) #32, !noalias !5
  %i.h = load <16 x i8>, ptr %i.c, align 16, !noalias !5
  %i.i = icmp sgt <16 x i8> %i.g, %i.h
  %i.j = sext <16 x i1> %i.i to <16 x i8>
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCscb9PBP19vM_15crossbeam_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i8 -128) #32
  %i.l = load <2 x i64>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = or <2 x i64> %i.l, %i.k
  store <2 x i64> %i.m, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCsatzsiS36G5T_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = tail call { ptr, i64 } @_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhjc_INtNtNtB7_3ops5index5IndexINtNtBG_5range7RangeTojEE5indexCsatzsiS36G5T_11typst_utils(ptr nonnull %i.i, i64 %i.l, ptr nonnull align 8 @91) #32 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = tail call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core3str8converts19from_utf8_uncheckedCsatzsiS36G5T_11typst_utils(ptr %i.n, i64 %i.o) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { ptr, i64 } [ %i.h, %bb.b ], [ %i.p, %bb.c ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull ptr @_RNvMs0_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNulljE8danglingCsatzsiS36G5T_11typst_utils() unnamed_addr #4 {
bb.a:
  ret ptr inttoptr (i64 8 to ptr)
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_addCsatzsiS36G5T_11typst_utils(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %2 = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %2, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_mulCsatzsiS36G5T_11typst_utils(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %2 = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %2, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_powCsatzsiS36G5T_11typst_utils(i64 %0, i32 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader52

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.14.0 = phi i64 [ 1, %bb.a ], [ undef, %bb.d ], [ undef, %bb.b ], [ %2, %bb.c ]
  %.sroa.026.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ]
  %i.b = insertvalue { i64, i64 } poison, i64 %.sroa.026.0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.sroa.14.0, 1
  ret { i64, i64 } %i.c

.preheader52:                                     ; preds = %bb.a, %bb.e
  %.sroa.034.0 = phi i64 [ %.sroa.034.1, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %.sroa.016.0 = phi i32 [ %i.j, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %3, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.d = and i32 %.sroa.016.0, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader52
  %i.e = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.034.0, i64 %.sroa.0.0) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = icmp eq i32 %.sroa.016.0, 1
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader52
  %.sroa.034.1 = phi i64 [ %2, %bb.c ], [ %.sroa.034.0, %.preheader52 ]
  %i.h = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0.0, i64 %.sroa.0.0) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = extractvalue { i64, i1 } %i.h, 0
  %i.j = lshr i32 %.sroa.016.0, 1
  br label %.preheader52
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 0, -9223372036854775807) i64 @_RNvMs1_NtCs3oUPovFnLWP_4core3numx3absCsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #4 {
bb.a:
  %.sroa.0.0 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE6insertB19_(ptr align 8 %0, ptr %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE6insertBT_(ptr align 8 %0, ptr %1, i64 %2, i64 %3)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10header_mutCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %1, i1 zeroext poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.f = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.b, i64 %i.e) #32
  %i.h = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.b) ; 2 uses
  %i.i = add i64 %i.h, 1152921504606846976
  %i.j = icmp ult i64 %i.i, 2305843009213693952
  %i.k = shl i64 %i.h, 3
  %.sroa.0.0.i1.i.i = zext i1 %i.j to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i.i, i64 %i.k)
  %i.m = call i64 @llvm.umax.i64(i64 %i.g, i64 16)
  %i.n = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 range(i64 16, 0) %i.m) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %2 = extractvalue { i64, i1 } %i.n, 0
  %not..i.i.i = xor i1 %i.o, true
  %.sroa.0.0.i2.i.i = zext i1 %not..i.i.i to i64
  %i.p = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i.i, i64 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.r = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.p, i64 %i.q, ptr nonnull align 8 @2) #32 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %1) #32
  %i.v = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.w = add i64 %i.v, 1152921504606846976
  %i.x = icmp ult i64 %i.w, 2305843009213693952
  %i.y = shl i64 %i.v, 3
  %.sroa.0.0.i1.i = zext i1 %i.x to i64
  %i.z = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i, i64 %i.y)
  %i.aa = call i64 @llvm.umax.i64(i64 %i.u, i64 16)
  %i.ab = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.z, i64 range(i64 16, 0) %i.aa) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %3 = extractvalue { i64, i1 } %i.ab, 0
  %not..i.i = xor i1 %i.ac, true
  %.sroa.0.0.i2.i = zext i1 %not..i.i to i64
  %i.ad = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = call noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr %i.f, i64 %i.t, i64 %i.s, i64 %i.ad) #33 ; 3 uses
  %i.af = call zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCslnPB5LbcFkI_8thin_vec6Header7is_nullBE_(ptr %i.ae) #32
  br i1 %i.af, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %storemerge = phi ptr [ %i.d, %bb.b ], [ %i.ag, %bb.e ]
  store ptr %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header16set_cap_and_auto(ptr align 8 %i.ae, i64 %1, i1 zeroext false)
  %i.ag = call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr %i.ae, ptr nonnull align 8 @92) #32
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ah = call { i64, i64 } @_RINvCslnPB5LbcFkI_8thin_vec6layoutjECsatzsiS36G5T_11typst_utils(i64 %1) ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.ai, i64 %i.aj) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12as_mut_sliceCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, label %bb.c

._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, %bb.c
  %i.i = phi ptr [ %i.f, %bb.c ], [ %.pre, %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.val.i = load i64, ptr %i.i, align 8
  %i.j = tail call { ptr, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice3raw18from_raw_parts_mutjECsatzsiS36G5T_11typst_utils(ptr nonnull %.sroa.0.0.i, i64 %.val.i, ptr nonnull align 8 @93) #32
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE12is_singletonCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE13is_auto_arrayCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE13with_capacityCsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 0 uses
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %0, i1 zeroext poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER, ptr nonnull align 8 @94) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %.sroa.0.0 = ptrtoint ptr %.sroa.0.0.in to i64
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14has_allocationCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.c = icmp ult i64 %i.b, 17
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.d)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.val.i
  store i64 %1, ptr %i.j, align 8
  %i.k = add i64 %.val.i, 1
  %i.l = load ptr, ptr %0, align 8
  store i64 %i.k, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE21set_len_non_singletonCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE27uses_stack_allocated_bufferCsatzsiS36G5T_11typst_utils(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE3lenCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load i64, ptr %i.a, align 8
  ret i64 %.val
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE3newCsatzsiS36G5T_11typst_utils() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 0 uses
  %i.b = tail call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull @_RNvCslnPB5LbcFkI_8thin_vec12EMPTY_HEADER, ptr nonnull align 8 @94) #32
  %.sroa.0.0.i = ptrtoint ptr %i.b to i64
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE3ptrCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8
  %i.b = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.a)
  %i.c = icmp eq i64 %.val.i, %i.b
  br i1 %i.c, label %bb.d, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.e, %bb.d, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %.val.i.i = load i64, ptr %i.d, align 8         ; 2 uses
  %i.e = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.g)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.e, i64 16)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE14push_uncheckedCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.l, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.val.i.i
  store i64 %1, ptr %i.m, align 8
  %i.n = add i64 %.val.i.i, 1
  %i.o = load ptr, ptr %0, align 8
end_hunk_1
