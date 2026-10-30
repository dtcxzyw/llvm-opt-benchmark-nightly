Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.01?download=true
inline.NumInlined: 993
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXs1d_NtB4_5implsfNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@2 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@3 = private unnamed_addr constant [7 x i8] c"success", align 1
@4 = private unnamed_addr constant [7 x i8] c"failure", align 1
@5 = private unnamed_addr constant [7 x i8] c"version", align 1
@6 = private unnamed_addr constant [14 x i8] c"fonts_repo_sha", align 1
@7 = private unnamed_addr constant [7 x i8] c"sources", align 1
@8 = private unnamed_addr constant [5 x i8] c"fontc", align 1
@9 = private unnamed_addr constant [8 x i8] c"fontmake", align 1
@10 = private unnamed_addr constant [7 x i8] c"command", align 1
@11 = private unnamed_addr constant [6 x i8] c"stderr", align 1
@12 = private unnamed_addr constant [8 x i8] c"repo_url", align 1
@13 = private unnamed_addr constant [3 x i8] c"rev", align 1
@14 = private unnamed_addr constant [6 x i8] c"config", align 1
@15 = private unnamed_addr constant [18 x i8] c"config_is_external", align 1
@16 = private unnamed_addr constant [4 x i8] c"auth", align 1
@17 = private unnamed_addr constant [16 x i8] c"has_rev_conflict", align 1
@18 = private unnamed_addr constant [4 x i8] c"text", align 1
@19 = private unnamed_addr constant [4 x i8] c"link", align 1
@20 = private unnamed_addr constant [4 x i8] c"also", align 1
@21 = private unnamed_addr constant [30 x i8] c"struct Results with 2 elements", align 1
@22 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @21, [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs7N5MyPZKytm_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@24 = private unnamed_addr constant [32 x i8] c"struct SourceSet with 3 elements", align 1
@25 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @24, [8 x i8] c" \00\00\00\00\00\00\00" }>, align 8
@26 = private unnamed_addr constant [13 x i8] c"total_targets", align 1
@27 = private unnamed_addr constant [9 x i8] c"identical", align 1
@28 = private unnamed_addr constant [13 x i8] c"produced_diff", align 1
@29 = private unnamed_addr constant [12 x i8] c"fontc_failed", align 1
@30 = private unnamed_addr constant [15 x i8] c"fontmake_failed", align 1
@31 = private unnamed_addr constant [11 x i8] c"both_failed", align 1
@32 = private unnamed_addr constant [13 x i8] c"other_failure", align 1
@33 = private unnamed_addr constant [28 x i8] c"diff_perc_including_failures", align 1
@34 = private unnamed_addr constant [28 x i8] c"diff_perc_excluding_failures", align 1
@35 = private unnamed_addr constant [30 x i8] c"struct Summary with 9 elements", align 1
@36 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @35, [8 x i8] c"\1E\00\00\00\00\00\00\00" }>, align 8
@37 = private unnamed_addr constant [36 x i8] c"struct CompileFailed with 2 elements", align 1
@38 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @37, [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8
@39 = private unnamed_addr constant [38 x i8] c"struct CompilerFailure with 2 elements", align 1
@40 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @39, [8 x i8] c"&\00\00\00\00\00\00\00" }>, align 8
@41 = private unnamed_addr constant [5 x i8] c"began", align 1
@42 = private unnamed_addr constant [8 x i8] c"finished", align 1
@43 = private unnamed_addr constant [9 x i8] c"fontc_rev", align 1
@44 = private unnamed_addr constant [14 x i8] c"pip_freeze_sha", align 1
@45 = private unnamed_addr constant [12 x i8] c"results_file", align 1
@46 = private unnamed_addr constant [14 x i8] c"input_file_sha", align 1
@47 = private unnamed_addr constant [5 x i8] c"stats", align 1
@48 = private unnamed_addr constant [33 x i8] c"struct RunSummary with 7 elements", align 1
@49 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @48, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@50 = private unnamed_addr constant [33 x i8] c"struct FontSource with 6 elements", align 1
@51 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @50, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@52 = private unnamed_addr constant [33 x i8] c"struct Annotation with 3 elements", align 1
@53 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @52, [8 x i8] c"!\00\00\00\00\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtB13_6string6StringB2D_ENtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtB13_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtB4_8Expected3fmtB33_ }>, align 8
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB13_3vec3VecNtNtNtB2H_2ci4html10AnnotationEENtB4_8Expected3fmtB2H_ }>, align 8
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB2H_15ttx_diff_runner10DiffOutputENtB4_8Expected3fmtB2H_ }>, align 8
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB2H_15ttx_diff_runner9DiffErrorENtB4_8Expected3fmtB2H_ }>, align 8
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXs3f_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB13_6string6StringENtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtB4_8Expected3fmtB2d_ }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetENtB4_8Expected3fmtB2d_ }>, align 8
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCs8toYegCbHEN_20google_fonts_sources11font_source10FontSourceENtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4html10AnnotationENtB4_8Expected3fmtB2f_ }>, align 8
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtB4_5impls10StrVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtB4_5impls14PathBufVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtNtCsiaiXH4eeXUJ_6chrono8datetime5serde15DateTimeVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners4_1__NtBG_9DiffErrorNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_ }>, align 8
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners_1__NtBG_10DiffOutputNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_ }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtB4_5impls11BoolVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@71 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNtB4_5impls11UnitVisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deINtNvXNvCs1hTjP0dFAwJ_12fontc_craters_1__INtBH_7ResultsppENtB4_11Deserialize11deserialize9___VisitorNtNtBH_15ttx_diff_runner10DiffOutputNtB2d_9DiffErrorENtB4_8Expected3fmtBH_ }>, align 8
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvCs8toYegCbHEN_20google_fonts_sourcess_1__NtBG_9SourceSetNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners1_1__NtBG_7SummaryNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners5_1__NtBG_13CompileFailedNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners7_1__NtBG_15CompilerFailureNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater2cis_1__NtBG_10RunSummaryNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs8toYegCbHEN_20google_fonts_sources11font_sources_1__NtBG_10FontSourceNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCs1hTjP0dFAwJ_12fontc_crater }>, align 8
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtNtCs1hTjP0dFAwJ_12fontc_crater2ci4htmls_1__NtBG_10AnnotationNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_ }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs7N5MyPZKytm_10serde_core2deNtNvXNvNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runners2_1__NtBG_13RawDiffOutputNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBI_ }>, align 8
@81 = private unnamed_addr constant [15 x i8] c"newtype variant", align 1
@82 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @81, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@83 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/de.rs\00", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"a\00\00\00\00\00\00\00\A2\04\00\00\22\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"a\00\00\00\00\00\00\00\98\04\00\00&\00\00\00" }>, align 8
@_RNvNtCs2xcxdQoJA8F_10serde_json2de5POW10 = external local_unnamed_addr global [309 x double]

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtB16_15ttx_diff_runner10DiffOutputNtB1I_9DiffErrorEEB16_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNvCs1hTjP0dFAwJ_12fontc_craters_1__INtB5_7ResultsNtNtB5_15ttx_diff_runner10DiffOutputNtBS_9DiffErrorENtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2J_4read7StrReadEEB5_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.f, %bb.b ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.o

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !50, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !51 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !50, !nonnull !6, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.o = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !54, !noundef !6
  switch i8 %i.q, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !55
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  store i64 22, ptr %i.a, align 8, !noalias !48
  %i.s = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #14
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  store ptr %i.s, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner10DiffOutputENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner9DiffErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit.i: ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB18_15ttx_diff_runner9DiffErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_.exit unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit:                                        ; preds = %bb.f, %bb.d
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.m, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.y, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7: ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1E_15ttx_diff_runner10DiffOutputEEB1E_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1hTjP0dFAwJ_12fontc_crater7ResultsNtNtBE_15ttx_diff_runner10DiffOutputNtB1g_9DiffErrorEEBE_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.o:                                             ; preds = %bb.g, %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXsh_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtB8_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2D_4read7StrReadEEB1k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.f, %bb.b ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.p

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !71, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !72 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !71, !nonnull !6, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !75, !noundef !6
  switch i8 %i.p, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !76
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store i64 22, ptr %i.a, align 8, !noalias !69
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %.body unwind label %bb.p

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit unwind label %bb.b

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.w, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7: ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit: ; preds = %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1hTjP0dFAwJ_12fontc_crater2ci10RunSummaryEEB1c_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.p:                                             ; preds = %bb.g, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1c_6string6StringB22_EECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBT_6string6StringB1J_ENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB2K_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !92, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !93 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !92, !nonnull !6, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.o = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !96, !noundef !6
  switch i8 %i.q, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !97
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  store i64 22, ptr %i.a, align 8, !noalias !90
  %i.s = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.m

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  store ptr %i.s, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9: ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit7
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit7: ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit7
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB1c_3vec3VecNtNtNtB26_2ci4html10AnnotationEEEB26_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBT_3vec3VecNtNtNtB1N_2ci4html10AnnotationEENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB3Q_4read7StrReadEEB1N_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit: ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !113, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !114 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !113, !nonnull !6, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.o = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !117, !noundef !6
  switch i8 %i.q, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !118
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 22, ptr %i.a, align 8, !noalias !111
  %i.s = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit unwind label %bb.m

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  store ptr %i.s, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB8_3vec3VecNtNtNtB18_2ci4html10AnnotationEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit7 unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9: ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit7
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit7: ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit7
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtBK_3vec3VecNtNtNtB1E_2ci4html10AnnotationEEEB1E_.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB1c_6string6StringEECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs3f_NtNtCs7N5MyPZKytm_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBT_6string6StringENtB9_11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB3f_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !134, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !135 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !134, !nonnull !6, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.o = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !138, !noundef !6
  switch i8 %i.q, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !139
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132
  store i64 22, ptr %i.a, align 8, !noalias !132
  %i.s = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB8_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit unwind label %bb.m

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132
  store ptr %i.s, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB8_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit7 unwind label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9: ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit7
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit7: ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit9 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit7
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtBK_6string6StringEECs1hTjP0dFAwJ_12fontc_crater.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read7StrReadNtCs8toYegCbHEN_20google_fonts_sources9SourceSetECs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNvCs8toYegCbHEN_20google_fonts_sourcess_1__NtB5_9SourceSetNtNtCs7N5MyPZKytm_10serde_core2de11Deserialize11deserializeQINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtB22_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !155, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !156 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !155, !nonnull !6, !noundef !6
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !159, !noundef !6
  switch i8 %i.p, label %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !160
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  store i64 22, ptr %i.a, align 8, !noalias !153
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs8toYegCbHEN_20google_fonts_sources9SourceSetECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #14
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs3_NtCs2xcxdQoJA8F_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1hTjP0dFAwJ_12fontc_crater.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs8toYegCbHEN_20google_fonts_sources9SourceSetECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs2xcxdQoJA8F_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECs1hTjP0dFAwJ_12fontc_crater.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2xcxdQoJA8F_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner13RawDiffOutputEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_0
