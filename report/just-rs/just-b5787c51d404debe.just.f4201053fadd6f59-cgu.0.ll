Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0
@2754 = private unnamed_addr constant [27 x i8] c"\0Avariable `\C0\0D` not defined\00", align 1
@2755 = private unnamed_addr constant [22 x i8] c"\13expected character \C0\00", align 1
@2756 = private unnamed_addr constant [35 x i8] c"\1Eunexpected closing delimiter `\C0\01`\00", align 1
@2757 = private unnamed_addr constant [45 x i8] c"\13expected character \C0\16 but found end-of-file\00", align 1
@2758 = private unnamed_addr constant [26 x i8] c"\09expected \C0\0C, but found \C0\00", align 1
@2759 = private unnamed_addr constant [47 x i8] c"*expected hex digit [0-9A-Fa-f] but found `\C0\01`\00", align 1
@2760 = private unnamed_addr constant [63 x i8] c":expected unicode escape sequence delimiter `{` but found `\C0\01`\00", align 1
@2761 = private unnamed_addr constant [42 x i8] c"unicode escape sequences must not be empty", align 1
@2762 = private unnamed_addr constant [74 x i8] c"*unicode escape sequence starting with `\\u{\C0\1C` longer than six hex digits\00", align 1
@2763 = private unnamed_addr constant [83 x i8] c"\1Funicode escape sequence value `\C00` greater than maximum valid code point `10FFFF`\00", align 1
@2764 = private unnamed_addr constant [36 x i8] c"unterminated unicode escape sequence", align 1
@2765 = private unnamed_addr constant [39 x i8] c"\07alias `\C0\19` has an unknown target `\C0\01`\00", align 1
@2766 = private unnamed_addr constant [24 x i8] c"\13unknown attribute `\C0\01`\00", align 1
@2767 = private unnamed_addr constant [37 x i8] c"\0Dunknown key `\C0\07` for `\C0\0B` attribute\00", align 1
@2768 = private unnamed_addr constant [41 x i8] c"\08recipe `\C0\1A` has unknown dependency `\C0\01`\00", align 1
@2769 = private unnamed_addr constant [22 x i8] c"\11unknown setting `\C0\01`\00", align 1
@2770 = private unnamed_addr constant [29 x i8] c"\18unknown start of token '\C0\01'\00", align 1
@2771 = private unnamed_addr constant [15 x i8] c"\04 (U+\C3 \00\00i\04\00\01)\00", align 1
@2772 = private unnamed_addr constant [24 x i8] c"unpaired carriage return", align 1
@2773 = private unnamed_addr constant [21 x i8] c"unterminated backtick", align 1
@2774 = private unnamed_addr constant [26 x i8] c"unterminated interpolation", align 1
@2775 = private unnamed_addr constant [19 x i8] c"unterminated string", align 1
@2776 = private unnamed_addr constant [4 x i8] c"Plus", align 1
@2777 = private unnamed_addr constant [8 x i8] c"Singular", align 1
@2778 = private unnamed_addr constant [4 x i8] c"Star", align 1
@2779 = private unnamed_addr constant [28 x i8] c"used as `env` attribute name", align 1
@2780 = private unnamed_addr constant [18 x i8] c"\0Bpassed to `\C0\03()`\00", align 1
@2781 = private unnamed_addr constant [26 x i8] c"\0Dassigned to `\C0\09` setting\00", align 1
@2782 = private unnamed_addr constant [33 x i8] c"used as a `[timestamp]` attribute", align 1
@2783 = private unnamed_addr constant [41 x i8] c"used as a `[working-directory]` attribute", align 1
@2784 = private unnamed_addr constant [72 x i8] c"\01`\C0C` setting requires at least one element but evaluated to empty list\00", align 1
@2785 = private unnamed_addr constant [6 x i8] c"Format", align 1
@2786 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs2uF6e5yHHeh_6chrono6format10ParseErrorNtB6_5Debug3fmtCskXtk6F4WjxZ_4just }>, align 8
@2787 = private unnamed_addr constant [5 x i8] c"Parse", align 1
@2788 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just4item4ItemEBF_, [16 x i8] c"`\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCskXtk6F4WjxZ_4just4itemNtB4_4ItemNtNtB6_13color_display12ColorDisplay3fmt }>, align 8
@2789 = private unnamed_addr constant [13 x i8] c"\04set \C0\04 := \C0\00", align 1
@2790 = private unnamed_addr constant [7 x i8] c"\04set \C0\00", align 1
@2791 = private unnamed_addr constant [2 x i8] c"#\0A", align 1
@2792 = private unnamed_addr constant [8 x i8] c"\05) := \C0\00", align 1
@2793 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtBG_21unresolved_dependency20UnresolvedDependencyEEBG_, [16 x i8] c"`\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCskXtk6F4WjxZ_4just6recipeINtB5_6RecipeNtNtB7_21unresolved_dependency20UnresolvedDependencyENtNtB7_13color_display12ColorDisplay3fmtB7_ }>, align 8
@2794 = private unnamed_addr constant [12 x i8] c"\09unexport \C0\00", align 1
@2795 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEEB1c_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBJ_ }>, align 8
@2796 = private unnamed_addr constant [4 x i8] c"Line", align 1
@2797 = private unnamed_addr constant [9 x i8] c"fragments", align 1
@2798 = private unnamed_addr constant [8 x i8] c"\02, \C0\01 \C0\00", align 1
@2799 = private unnamed_addr constant [1 x i8] c"s", align 1
@2800 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @868, [16 x i8] c"\0C\00\00\00\00\00\00\00\1D\00\00\000\00\00\00" }>, align 8
@2801 = private unnamed_addr constant [9 x i8] c"\E2\80\94\E2\80\94\E2\96\B6", align 1
@2802 = private unnamed_addr constant [22 x i8] c"\D3 \00\00h\01\00\C8\02\00\01 \C0\01:\C0\01:\C0\01\0A\00", align 1
@2803 = private unnamed_addr constant [3 x i8] c"\E2\94\82", align 1
@2804 = private unnamed_addr constant [15 x i8] c"\D3 \00\00h\01\00\01 \C8\02\00\01\0A\00", align 1
@2805 = private unnamed_addr constant [7 x i8] c"\C0\04 \E2\94\82\00", align 1
@2806 = private unnamed_addr constant [7 x i8] c"\C0\01 \C0\01\0A\00", align 1
@2807 = private unnamed_addr constant [13 x i8] c"\D3 \00\00h\01\00\01 \C8\02\00\00", align 1
@2808 = private unnamed_addr constant [23 x i8] c"\01 \D3 \00\00h\01\00\C8\02\00\D3^\00\00\08\04\00\C8\05\00\00", align 1
@2809 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @868, [16 x i8] c"\0C\00\00\00\00\00\00\00T\00\00\00\05\00\00\00" }>, align 8
@2810 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @868, [16 x i8] c"\0C\00\00\00\00\00\00\007\00\00\00\05\00\00\00" }>, align 8
@2811 = private unnamed_addr constant [4 x i8] c"\01-\C0\00", align 1
@2812 = private unnamed_addr constant [5 x i8] c"\02--\C0\00", align 1
@2813 = private unnamed_addr constant [16 x i8] c"\0B [default: \C0\01]\00", align 1
@2814 = private unnamed_addr constant [11 x i8] c" [pattern: ", align 1
@2815 = private unnamed_addr constant [3 x i8] c" | ", align 1
@2816 = private unnamed_addr constant [8 x i8] c"\C0\01.\C0\01.\C0\00", align 1
@2817 = private unnamed_addr constant [8 x i8] c"warning:", align 1
@2818 = private unnamed_addr constant [5 x i8] c"\C0\01 \C0\00", align 1
@2819 = private unnamed_addr constant [2 x i8] c"\0A\0A", align 1
@2820 = private unnamed_addr constant [4 x i8] c"\01=\C0\00", align 1
@_RNvNtCskpFEDU8Hp5a_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }
@2821 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dotenvy-0.15.7/src/iter.rs\00", align 1
@2822 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2821, [16 x i8] c"_\00\00\00\00\00\00\00\95\00\00\00@\00\00\00" }>, align 8
@2823 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2821, [16 x i8] c"_\00\00\00\00\00\00\00\AA\00\00\00!\00\00\00" }>, align 8
@2824 = private unnamed_addr constant [95 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@2825 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2824, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@2826 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@2827 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyINtNtNtB4_3num7nonzero7NonZeroyENtB2_3Any7type_idCskXtk6F4WjxZ_4just }>, align 8
@2828 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just11indentation11IndentationNtB2_3Any7type_idBv_ }>, align 8
@2829 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleNtB2_3Any7type_idBv_ }>, align 8
@2830 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatNtB2_3Any7type_idBv_ }>, align 8
@2831 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorNtB2_3Any7type_idBv_ }>, align 8
@2832 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatNtB2_3Any7type_idBv_ }>, align 8
@2833 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just5shell5ShellNtB2_3Any7type_idBv_ }>, align 8
@2834 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCskXtk6F4WjxZ_4just9use_color8UseColorNtB2_3Any7type_idBv_ }>, align 8
@2835 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyhNtB2_3Any7type_idCskXtk6F4WjxZ_4just }>, align 8
@2836 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anybNtB2_3Any7type_idCskXtk6F4WjxZ_4just }>, align 8
@2837 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@2838 = private unnamed_addr constant [127 x i8] c"8internal config error, this may indicate a bug in just: \C0C consider filing an issue: https://github.com/casey/just/issues/new\00", align 1
@2839 = private unnamed_addr constant [26 x i8] c"\15invalid module path `\C0\01`\00", align 1
@2840 = private unnamed_addr constant [28 x i8] c"\17invalid override path `\C0\01`\00", align 1
@2841 = private unnamed_addr constant [28 x i8] c"\19failed to parse request: \C0\00", align 1
@2842 = private unnamed_addr constant [102 x i8] c"path-prefixed recipes may not be used with `--global-justfile`, `--working-directory`, or `--justfile`", align 1
@2843 = private unnamed_addr constant [35 x i8] c"\03`--\C0\17` used with unexpected \C0\02: \C0\00", align 1
@2844 = private unnamed_addr constant [42 x i8] c"\03`--\C0\22` used with unexpected overrides: \C0\00", align 1
@2845 = private unnamed_addr constant [61 x i8] c"\03`--\C0\22` used with unexpected overrides: \C0\11; and arguments: \C0\00", align 1
@2846 = private unnamed_addr constant [33 x i8] c"cannot initialize global justfile", align 1
@2847 = private unnamed_addr constant [25 x i8] c"global justfile not found", align 1
@2848 = private unnamed_addr constant [53 x i8] c"cannot use justfile from standard input with `--init`", align 1
@2849 = private unnamed_addr constant [32 x i8] c"\1Djustfile path had no parent: \C0\00", align 1
@2850 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @771, [16 x i8] c"\13\00\00\00\00\00\00\00\15\00\00\00\18\00\00\00" }>, align 8
@2851 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @771, [16 x i8] c"\13\00\00\00\00\00\00\00\15\00\00\00*\00\00\00" }>, align 8
@2852 = private unnamed_addr constant [47 x i8] c"'multiple candidate justfiles found in `\C0\03`: \C0\00", align 1
@2853 = private unnamed_addr constant [17 x i8] c"no justfile found", align 1
@2854 = private unnamed_addr constant [38 x i8] c"#error reading from standard input: \C0\00", align 1
@2855 = private unnamed_addr constant [43 x i8] c"(I/O error creating temporary directory: \C0\00", align 1
@2856 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskXtk6F4WjxZ_4just, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@2857 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskXtk6F4WjxZ_4just, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBd_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @2856, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCskXtk6F4WjxZ_4just, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCskXtk6F4WjxZ_4just, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCskXtk6F4WjxZ_4just, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCskXtk6F4WjxZ_4just, ptr @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCskXtk6F4WjxZ_4just }>, align 8
@2858 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@2859 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@2860 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@2861 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@2862 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@2863 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@2864 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @597, [16 x i8] c"g\00\00\00\00\00\00\00\85\08\00\005\00\00\00" }>, align 8
@2865 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1044, [16 x i8] c"f\00\00\00\00\00\00\00\AF\00\00\00\18\00\00\00" }>, align 8
@2866 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @597, [16 x i8] c"g\00\00\00\00\00\00\00\94\08\00\000\00\00\00" }>, align 8
@2867 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @597, [16 x i8] c"g\00\00\00\00\00\00\00\97\08\00\00/\00\00\00" }>, align 8
@2868 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @597, [16 x i8] c"g\00\00\00\00\00\00\00\9B\08\00\00#\00\00\00" }>, align 8
@2869 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @597, [16 x i8] c"g\00\00\00\00\00\00\00\9F\08\00\00+\00\00\00" }>, align 8
@2870 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @159, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@2871 = private unnamed_addr constant [10 x i8] c"NotPresent", align 1
@2872 = private unnamed_addr constant [10 x i8] c"NotUnicode", align 1
@2873 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@2874 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@2875 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@2876 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@2877 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2c_15EnumValueParserB1u_ENtB2c_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2c_15EnumValueParserB1u_ENtB2c_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@2878 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1E_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ }>, align 8
@_RNvCsb7keUx5WSfn_4itoa13DECIMAL_PAIRS = external local_unnamed_addr global { [200 x i8] }
@2879 = private unnamed_addr constant [2 x i8] c"()", align 1
@2880 = private unnamed_addr constant [15 x i8] c"\C0\0B is not in \C0\00", align 1
@2881 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @164, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@2882 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @164, [16 x i8] c"O\00\00\00\00\00\00\00\BF\04\00\00$\00\00\00" }>, align 8
@2883 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@2884 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @2883, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@2885 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @365, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@2886 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1908713678875343366 to ptr), ptr inttoptr (i64 -3742520806932090066 to ptr) }>, align 8
@2887 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1
@2888 = private unnamed_addr constant [31 x i8] c"\0Finvalid length \C0\0B, expected \C0\00", align 1
@2889 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@2890 = private unnamed_addr constant [34 x i8] c"\11unknown variant `\C0\0C`, expected \C0\00", align 1
@2891 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just3ast3AstEBF_, [16 x i8] c"\98\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCskXtk6F4WjxZ_4just3astNtB4_3AstNtNtB6_13color_display12ColorDisplay3fmt }>, align 8
@2892 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCskXtk6F4WjxZ_4just5tokenNtB4_5TokenNtNtB6_13color_display12ColorDisplay3fmt }>, align 8
@2893 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@2894 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1757779475519478851 to ptr), ptr inttoptr (i64 4337076244874487612 to ptr) }>, align 8
@2895 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3572905624829937844 to ptr), ptr inttoptr (i64 3013766732767653402 to ptr) }>, align 8
@2896 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1599374893429008851 to ptr), ptr inttoptr (i64 8746915308608185762 to ptr) }>, align 8
@switch.table._RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7eLnpY4j2ek_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECskXtk6F4WjxZ_4just = private unnamed_addr constant [7 x i8] [i8 0, i8 poison, i8 poison, i8 poison, i8 33, i8 32, i8 0], align 2
@switch.table._RNvMNtCskXtk6F4WjxZ_4just6configNtB2_6Config14from_arguments = private unnamed_addr constant [8 x i8] c"\FF\00\08\0E\04\0A\02\06", align 4
@switch.table._RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14accept_keyword = private unnamed_addr constant [11 x i8] c"\06\0C\0E\0E\0F\0B\0F\0B\0F\05\04", align 8
@switch.table._RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14accept_keyword.5063 = private unnamed_addr constant [11 x ptr] [ptr @513, ptr @2324, ptr @2325, ptr @2326, ptr @2327, ptr @2328, ptr @2329, ptr @2330, ptr @2331, ptr @422, ptr @2332], align 8
@switch.table._RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser15presume_keyword = private unnamed_addr constant [37 x i8] c"\05\17\19\06\0C\0E\0E\0F\0B\0F\0B\0F\05\04\06\01\08\05\06\02\0F\06\0B\04\05\0F\03\05\0F\14\05\12\03\05\07\04\08", align 8
@switch.table._RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser15presume_keyword.5064 = private unnamed_addr constant [37 x ptr] [ptr @1595, ptr @2322, ptr @2323, ptr @513, ptr @2324, ptr @2325, ptr @2326, ptr @2327, ptr @2328, ptr @2329, ptr @2330, ptr @2331, ptr @422, ptr @2332, ptr @423, ptr @1448, ptr @455, ptr @549, ptr @456, ptr @517, ptr @2333, ptr @1742, ptr @458, ptr @459, ptr @460, ptr @2334, ptr @2335, ptr @495, ptr @496, ptr @500, ptr @419, ptr @2336, ptr @2148, ptr @464, ptr @465, ptr @550, ptr @1745], align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand4name = private unnamed_addr constant [19 x i8] c"\09\06\05\07\0B\04\04\08\06\06\04\04\03\07\03\04\07\05\09", align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand4name.5067 = private unnamed_addr constant [19 x ptr] [ptr @2519, ptr @2520, ptr @2521, ptr @2388, ptr @2522, ptr @2523, ptr @2524, ptr @871, ptr @2401, ptr @2525, ptr @2526, ptr @2527, ptr @2528, ptr @2529, ptr @2530, ptr @2531, ptr @2532, ptr @2533, ptr @2534], align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute = private unnamed_addr constant [6 x ptr] [ptr @1203, ptr @1204, ptr @1205, ptr @1206, ptr @1207, ptr @1208], align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute.5068 = private unnamed_addr constant [6 x i16] [i16 34, i16 43, i16 33, i16 367, i16 103, i16 125], align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute.5069 = private unnamed_addr constant [31 x i8] c"\06\06\07\06\07\07\06\06\07\07\07\07\07\07\07\09\07\07\07\07\07\07\06\07\07\09\07\08\05\06\06", align 8
@switch.table._RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute.5070 = private unnamed_addr constant [31 x ptr] [ptr @919, ptr @920, ptr @921, ptr @1282, ptr @1283, ptr @1284, ptr @1285, ptr @1286, ptr @1287, ptr @1288, ptr @1289, ptr @1290, ptr @1291, ptr @1292, ptr @1293, ptr @1294, ptr @1295, ptr @1296, ptr @1297, ptr @1298, ptr @1299, ptr @1300, ptr @1301, ptr @1302, ptr @1303, ptr @1304, ptr @1305, ptr @1306, ptr @1307, ptr @1308, ptr @1309], align 8
@switch.table._RNvXNtCskXtk6F4WjxZ_4just10token_kindNtB2_9TokenKindNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt = private unnamed_addr constant [42 x ptr] [ptr @1392, ptr @1393, ptr @1394, ptr @1395, ptr @1396, ptr @1397, ptr @1398, ptr @1399, ptr @1400, ptr @1401, ptr @1402, ptr @1403, ptr @1404, ptr @1405, ptr @1406, ptr @1407, ptr @1408, ptr @1409, ptr @1410, ptr @1411, ptr @1412, ptr @1413, ptr @1414, ptr @1415, ptr @1416, ptr @1417, ptr @1418, ptr @1419, ptr @1420, ptr @1421, ptr @1422, ptr @1423, ptr @1424, ptr @1425, ptr @1426, ptr @1427, ptr @1391, ptr @1428, ptr @1429, ptr @1430, ptr @1431, ptr @1432], align 8
@switch.table._RNvXNtCskXtk6F4WjxZ_4just10token_kindNtB2_9TokenKindNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5072 = private unnamed_addr constant [42 x i8] c"\04\03\03\08\03\04\04\04\03\03\03\03\0F\03\04\04\03\07\06\03\0B\0B\03\04\04\16\11\0D\0A\06\04\04\03\03\03\04\01\03\06\0C\0B\0A", align 8
@switch.table._RNvXNtCskXtk6F4WjxZ_4just16string_delimiterNtB2_15StringDelimiterNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\08\0B\0B", align 8
@switch.table._RNvXNtCskXtk6F4WjxZ_4just16string_delimiterNtB2_15StringDelimiterNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5073 = private unnamed_addr constant [3 x ptr] [ptr @1453, ptr @1454, ptr @1455], align 8
@switch.table._RNvXs0_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt = private unnamed_addr constant [30 x i8] c"\07\03\05\07\08\07\03\09\03\0C\09\07\05\05\05\08\06\05\0F\08\07\08\14\07\06\05\09\04\07\11", align 8
@switch.table._RNvXs0_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5075 = private unnamed_addr constant [30 x ptr] [ptr @470, ptr @471, ptr @478, ptr @482, ptr @483, ptr @484, ptr @415, ptr @485, ptr @486, ptr @487, ptr @488, ptr @489, ptr @490, ptr @491, ptr @492, ptr @493, ptr @494, ptr @495, ptr @496, ptr @497, ptr @498, ptr @499, ptr @500, ptr @418, ptr @501, ptr @464, ptr @502, ptr @503, ptr @504, ptr @505], align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs2uF6e5yHHeh_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCskXtk6F4WjxZ_4just = private unnamed_addr constant [8 x i8] c"\0A\0A\09\07\08\07\09\0F", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs2uF6e5yHHeh_6chrono6format14ParseErrorKindNtB6_5Debug3fmtCskXtk6F4WjxZ_4just.5080 = private unnamed_addr constant [8 x ptr] [ptr @1762, ptr @1763, ptr @1764, ptr @1765, ptr @1766, ptr @1767, ptr @1768, ptr @1769], align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtB6_5Debug3fmtBA_ = private unnamed_addr constant [3 x i8] c"\0D\0C\14", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtB6_5Debug3fmtBA_.5081 = private unnamed_addr constant [3 x ptr] [ptr @1788, ptr @1789, ptr @1790], align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just18format_string_part16FormatStringPartNtB6_5Debug3fmtBA_ = private unnamed_addr constant [4 x i8] c"\08\03\06\05", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just18format_string_part16FormatStringPartNtB6_5Debug3fmtBA_.5082 = private unnamed_addr constant [4 x ptr] [ptr @1676, ptr @1677, ptr @1678, ptr @1679], align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskXtk6F4WjxZ_4just = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskXtk6F4WjxZ_4just.5084 = private unnamed_addr constant [6 x ptr] [ptr @2858, ptr @2859, ptr @2860, ptr @2861, ptr @2862, ptr @2863], align 8
@switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just20conditional_operator19ConditionalOperatorNtB6_7Display3fmtBA_ = private unnamed_addr constant [4 x ptr] [ptr @1608, ptr @1609, ptr @1610, ptr @1611], align 8
@switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just4item8ItemKindNtB6_7Display3fmtBA_ = private unnamed_addr constant [10 x ptr] [ptr @1595, ptr @1741, ptr @1409, ptr @1495, ptr @1742, ptr @1743, ptr @1744, ptr @402, ptr @1503, ptr @1745], align 8
@switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just4item8ItemKindNtB6_7Display3fmtBA_.5085 = private unnamed_addr constant [10 x i8] c"\05\0A\07\08\06\06\07\06\07\08", align 8
@switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB6_7Display3fmtBA_ = private unnamed_addr constant [15 x ptr] [ptr @919, ptr @920, ptr @921, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @1293], align 8
@switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB6_7Display3fmtBA_.5086 = private unnamed_addr constant [15 x i8] [i8 6, i8 6, i8 7, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 7], align 8
@switch.table._RNvXs2_NtCskXtk6F4WjxZ_4just20conditional_operatorNtB5_19ConditionalOperatorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\08\0A\0A\0D", align 8
@switch.table._RNvXs2_NtCskXtk6F4WjxZ_4just20conditional_operatorNtB5_19ConditionalOperatorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5087 = private unnamed_addr constant [4 x ptr] [ptr @1795, ptr @1796, ptr @1797, ptr @1798], align 8
@switch.table._RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [256 x i8] [i8 11, i8 12, i8 10, i8 15, i8 7, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 12, i8 5, i8 6, i8 5, i8 5, i8 3, i8 5, i8 5, i8 7, i8 5, i8 6, i8 6, i8 6, i8 6, i8 6, i8 7, i8 5, i8 6, i8 5, i8 6, i8 7, i8 6, i8 6, i8 6, i8 6, i8 6, i8 7, i8 5, i8 6, i8 6, i8 5, i8 6, i8 5, i8 4, i8 6, i8 7, i8 12, i8 6, i8 6, i8 9, i8 5, i8 poison, i8 6, i8 5, i8 6, i8 8, i8 6, i8 6, i8 6, i8 7, i8 6, i8 6, i8 5, i8 5, i8 6, i8 6, i8 7, i8 7, i8 poison, i8 6, i8 6, i8 7, i8 5, i8 5, i8 6, i8 6, i8 7, i8 7, i8 4, i8 6, i8 5, i8 6, i8 9, i8 7, i8 7, i8 9, i8 8, i8 6, i8 7, i8 7, i8 7, i8 7, i8 7, i8 8, i8 6, i8 8, i8 8, i8 6, i8 8, i8 12, i8 8, i8 10, i8 11, i8 15, i8 15, i8 10, i8 12, i8 12, i8 10, i8 13, i8 8, i8 11, i8 9, i8 12, i8 10, i8 7, i8 7, i8 8, i8 9, i8 12, i8 9, i8 12, i8 9, i8 12, i8 8, i8 11, i8 6, i8 7, i8 7, i8 7, i8 6, i8 9, i8 6, i8 9, i8 11, i8 9, i8 6, i8 11], align 8
@switch.table._RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5088 = private unnamed_addr constant [256 x ptr] [ptr @1982, ptr @1983, ptr @1984, ptr @1985, ptr @1986, ptr @1987, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @1856, ptr @1857, ptr @1858, ptr @1859, ptr @1860, ptr @1861, ptr @1862, ptr @1863, ptr @1864, ptr @1865, ptr @1866, ptr @1867, ptr @1868, ptr @1869, ptr @1870, ptr @1871, ptr @1872, ptr @1873, ptr @1874, ptr @1875, ptr @1876, ptr @1877, ptr @1878, ptr @1879, ptr @1880, ptr @1881, ptr @1882, ptr @1883, ptr @1884, ptr @1885, ptr @1886, ptr @1887, ptr @1888, ptr @1889, ptr @1890, ptr @1891, ptr @1892, ptr @1893, ptr @1894, ptr @1895, ptr @1896, ptr poison, ptr @1897, ptr @1898, ptr @1899, ptr @1900, ptr @1901, ptr @1902, ptr @1903, ptr @1904, ptr @1905, ptr @1906, ptr @1907, ptr @1908, ptr @1909, ptr @1910, ptr @1911, ptr @1912, ptr poison, ptr @1913, ptr @1914, ptr @1915, ptr @1916, ptr @1917, ptr @1918, ptr @1919, ptr @1920, ptr @1921, ptr @1922, ptr @1923, ptr @1924, ptr @1925, ptr @1926, ptr @1927, ptr @1928, ptr @1929, ptr @1930, ptr @1931, ptr @1932, ptr @1933, ptr @1934, ptr @1935, ptr @1936, ptr @1937, ptr @1938, ptr @1939, ptr @1940, ptr @1941, ptr @1942, ptr @1943, ptr @1944, ptr @1945, ptr @1946, ptr @1947, ptr @1948, ptr @1949, ptr @1950, ptr @1951, ptr @1952, ptr @1953, ptr @1954, ptr @1955, ptr @1956, ptr @1957, ptr @1958, ptr @1959, ptr @1960, ptr @1961, ptr @1962, ptr @1963, ptr @1964, ptr @1965, ptr @1966, ptr @1967, ptr @1968, ptr @1969, ptr @1970, ptr @1971, ptr @1972, ptr @1973, ptr @1974, ptr @1975, ptr @1976, ptr @1977, ptr @1978, ptr @1979, ptr @1980, ptr @1981], align 8
@switch.table._RNvXs6_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [15 x i8] [i8 6, i8 9, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 9], align 8
@switch.table._RNvXs6_NtCskXtk6F4WjxZ_4just6signalNtB5_6SignalNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5089 = private unnamed_addr constant [15 x ptr] [ptr @2572, ptr @2573, ptr @2574, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @2575], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just13compile_errorNtB4_12CompileErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5092 = private unnamed_addr constant [4 x ptr] [ptr @539, ptr @542, ptr @847, ptr @983], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just13compile_errorNtB4_12CompileErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5093 = private unnamed_addr constant [10 x i8] c"\02\02\01\01\02\01\01\01\01\02", align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just13compile_errorNtB4_12CompileErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5094 = private unnamed_addr constant [10 x ptr] [ptr @1030, ptr @1030, ptr @1029, ptr @1029, ptr @1030, ptr @1029, ptr @1029, ptr @1029, ptr @1029, ptr @1030], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just13compile_errorNtB4_12CompileErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5095 = private unnamed_addr constant [4 x i8] c"\01\01\02\01", align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just13compile_errorNtB4_12CompileErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.5096 = private unnamed_addr constant [4 x ptr] [ptr @541, ptr @540, ptr @849, ptr @934], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just14parameter_kindNtB4_13ParameterKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\08\04", align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just14parameter_kindNtB4_13ParameterKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5097 = private unnamed_addr constant [3 x ptr] [ptr @2776, ptr @2777, ptr @2778], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq = private unnamed_addr constant [42 x i8] c"\05\17\19\06\0C\0E\0E\0F\0B\0F\0B\0F\05\04\06\01\08\05\06\02\0F\06\0B\04\05\0F\03\05\0F\14\05\12\03\05\07\04\08\08\12\0D\11\01", align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.5098 = private unnamed_addr constant [42 x ptr] [ptr @1595, ptr @2322, ptr @2323, ptr @513, ptr @2324, ptr @2325, ptr @2326, ptr @2327, ptr @2328, ptr @2329, ptr @2330, ptr @2331, ptr @422, ptr @2332, ptr @423, ptr @1448, ptr @455, ptr @549, ptr @456, ptr @517, ptr @2333, ptr @1742, ptr @458, ptr @459, ptr @460, ptr @2334, ptr @2335, ptr @495, ptr @496, ptr @500, ptr @419, ptr @2336, ptr @2148, ptr @464, ptr @465, ptr @550, ptr @1745, ptr @466, ptr @2337, ptr @2338, ptr @505, ptr @1447], align 8
@switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7signalsNtB4_7SignalsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next = private unnamed_addr constant [15 x i8] [i8 1, i8 2, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 15], align 4
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ = private unnamed_addr constant [3 x ptr] [ptr @1991, ptr @1992, ptr @1993], align 8
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5099 = private unnamed_addr constant [3 x i8] c"\04\05\08", align 8
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ = private unnamed_addr constant [7 x ptr] [ptr @1359, ptr @1360, ptr @1361, ptr @1362, ptr @1997, ptr @1363, ptr @1364], align 8
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5100 = private unnamed_addr constant [7 x i8] c"\05\04\04\05\06\03\06", align 8
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_ = private unnamed_addr constant [3 x ptr] [ptr @2568, ptr @2368, ptr @2569], align 8
@switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5101 = private unnamed_addr constant [3 x i8] c"\06\04\05", align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 53, 67) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %i.e, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 9>, ptr %i.f, align 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !156
  %i.g = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !156 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #71
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.a) #72
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.r, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !157
  %i.k = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 9) 1) #70, !noalias !157 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %1) #71
          to label %.noexc64 unwind label %bb.j

.noexc64:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.m = load i64, ptr %i.g, align 8, !range !27, !alias.scope !162, !noalias !160, !noundef !28
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !164, !noalias !160 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.p, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !164, !noalias !160, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !165
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split.i.i.i, %bb.h, %bb.g
  store i64 0, ptr %i.g, align 8, !alias.scope !159, !noalias !160
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !166
  %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !166
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %1, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !166
  ret ptr %i.g

bb.j:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECskXtk6F4WjxZ_4just(ptr %i.g) #72
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBB_8justfileNtB1u_8Justfile3runs0_0EBB_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMB2_SBH_11sort_by_keyReNCNvMNtBM_8justfileNtB1S_8Justfile3runs0_0E0EBM_.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyReNCNvMNtB14_8justfileNtB2z_8Justfile3runs0_0E0INtNtB1L_3vec3VecBZ_EEB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #74
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMB2_SBH_11sort_by_keyReNCNvMNtBM_8justfileNtB1S_8Justfile3runs0_0E0EBM_.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1m_11sort_by_keyReNCNvMNtB1r_8justfileNtB2X_8Justfile3runs0_0E0EB1r_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1)
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMB2_SBH_11sort_by_keyReNCNvMNtBM_8justfileNtB1S_8Justfile3runs0_0E0EBM_.exit

_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMB2_SBH_11sort_by_keyReNCNvMNtBM_8justfileNtB1S_8Justfile3runs0_0E0EBM_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mut:bb.a
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [104 x i8], align 8              ; 4 uses
  %i.ac = alloca [104 x i8], align 8              ; 7 uses
  %i.ad = alloca [104 x i8], align 8              ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [40 x i8], align 8               ; 4 uses
  %i.am = alloca [40 x i8], align 8               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [40 x i8], align 8               ; 4 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 4 uses
  %i.as = alloca [40 x i8], align 8               ; 4 uses
  %i.at = alloca [40 x i8], align 8               ; 4 uses
  %i.au = alloca [112 x i8], align 8              ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [120 x i8], align 8              ; 4 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [112 x i8], align 8              ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [120 x i8], align 8              ; 4 uses
  %i.bb = alloca [40 x i8], align 8               ; 4 uses
  %i.bc = alloca [40 x i8], align 8               ; 4 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [40 x i8], align 8               ; 4 uses
  %i.bf = alloca [40 x i8], align 8               ; 4 uses
  %i.bg = alloca [40 x i8], align 8               ; 4 uses
  %i.bh = alloca [40 x i8], align 8               ; 4 uses
  %i.bi = alloca [40 x i8], align 8               ; 4 uses
  %i.bj = alloca [40 x i8], align 8               ; 4 uses
  %i.bk = alloca [40 x i8], align 8               ; 4 uses
  %i.bl = alloca [112 x i8], align 8              ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [120 x i8], align 8              ; 4 uses
  %i.bo = alloca [40 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 4 uses
  %i.bq = alloca [40 x i8], align 8               ; 4 uses
  %i.br = alloca [40 x i8], align 8               ; 4 uses
  %i.bs = alloca [112 x i8], align 8              ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [120 x i8], align 8              ; 4 uses
  %i.bv = alloca [40 x i8], align 8               ; 4 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [40 x i8], align 8               ; 4 uses
  %i.by = alloca [40 x i8], align 8               ; 4 uses
  %i.bz = alloca [40 x i8], align 8               ; 4 uses
  %i.ca = alloca [112 x i8], align 8              ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [120 x i8], align 8              ; 4 uses
  %i.cd = alloca [112 x i8], align 8              ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [120 x i8], align 8              ; 4 uses
  %i.cg = alloca [112 x i8], align 8              ; 4 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [120 x i8], align 8              ; 4 uses
  %i.cj = alloca [40 x i8], align 8               ; 4 uses
  %i.ck = alloca [40 x i8], align 8               ; 8 uses
  %i.cl = alloca [40 x i8], align 8               ; 6 uses
  %i.cm = alloca [40 x i8], align 8               ; 6 uses
  %i.cn = alloca [40 x i8], align 8               ; 6 uses
  %i.co = alloca [40 x i8], align 8               ; 6 uses
  %i.cp = alloca [40 x i8], align 8               ; 8 uses
  %i.cq = alloca [40 x i8], align 8               ; 6 uses
  %i.cr = alloca [40 x i8], align 8               ; 8 uses
  %i.cs = alloca [112 x i8], align 8              ; 5 uses
  %i.ct = alloca [120 x i8], align 8              ; 10 uses
  %i.cu = alloca [40 x i8], align 8               ; 6 uses
  %i.cv = alloca [40 x i8], align 8               ; 6 uses
  %i.cw = alloca [24 x i8], align 8               ; 9 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [24 x i8], align 8               ; 39 uses
  %i.cz = alloca [160 x i8], align 8              ; 7 uses
  %i.da = alloca [160 x i8], align 8              ; 28 uses
  %i.db = alloca [112 x i8], align 8              ; 6 uses
  %i.dc = alloca [24 x i8], align 8               ; 34 uses
  %i.dd = alloca [24 x i8], align 8               ; 49 uses
  %i.de = alloca [112 x i8], align 8              ; 6 uses
  %i.df = alloca [24 x i8], align 8               ; 34 uses
  %i.dg = alloca [24 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 7 uses
  %i.di = alloca [112 x i8], align 8              ; 5 uses
  %i.dj = alloca [24 x i8], align 8               ; 64 uses
  %i.dk = alloca [24 x i8], align 8               ; 99 uses
  %i.dl = alloca [112 x i8], align 8              ; 6 uses
  %i.dm = alloca [24 x i8], align 8               ; 67 uses
  %i.dn = alloca [112 x i8], align 8              ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 82 uses
  %i.dp = alloca [112 x i8], align 8              ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 82 uses
  %i.dr = alloca [112 x i8], align 8              ; 6 uses
  %i.ds = alloca [24 x i8], align 8               ; 82 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 5 uses
  %i.dt = alloca [24 x i8], align 8               ; 64 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cv, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @2122, ptr %i.aj, align 8, !noalias !85258
  %i.du = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 11, ptr %i.du, align 8, !noalias !85258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !85258
  %i.dv = load i64, ptr %i.cv, align 8, !range !27, !alias.scope !85258, !noundef !28
  %.not.i = icmp eq i64 %i.dv, 2
  %.sink2613.sroa.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink2613.sroa.gep2614 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink2613.sroa.gep2616 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink2613.sroa.gep2617 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink2613.sroa.gep2619 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink2613.sroa.gep2620 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br i1 %.not.i, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cv, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !85258
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !85258
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !85258
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.dw, align 8, !noalias !85258
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !85258
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85258
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit: ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !range !54, !alias.scope !85258, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !85258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %.not = icmp eq i8 %i.dy, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2123, i64 noundef 13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @2123, ptr %i.ag, align 8, !noalias !85260
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 13, ptr %i.dz, align 8, !noalias !85260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !85260
  %i.ea = load i64, ptr %i.cu, align 8, !range !27, !alias.scope !85259, !noalias !85261, !noundef !28
  %.not.i1176 = icmp eq i64 %i.ea, 2
  br i1 %.not.i1176, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cu, i64 40, i1 false), !noalias !85261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !85260
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !85260
  %.sroa.42.0..sroa_idx.i1177 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1177, align 8, !noalias !85260
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.eb, align 8, !noalias !85260
  %.sroa.46.0..sroa_idx.i1178 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1178, align 8, !noalias !85260
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85259
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.ed = load i8, ptr %i.ec, align 8, !range !38, !alias.scope !85259, !noalias !85261, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !85260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %.not404 = icmp eq i8 %i.ed, 2
  br i1 %.not404, label %bb.m, label %bb.f, !prof !32

bb.e:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit
  %i.ee = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @738, i64 noundef 61)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.ef, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.tl

bb.f:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !85263
  call fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 9) #76, !noalias !85262
  %i.eg = load i64, ptr %i.ac, align 8, !range !59, !noalias !85263, !noundef !28 ; 2 uses
  switch i64 %i.eg, label %bb.g [
    i64 -1, label %bb.l
    i64 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i, i64 96, i1 false), !noalias !85263
  store i64 %i.eg, ptr %i.ad, align 8, !noalias !85263
  %i.eh = invoke noundef i64 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ad)
          to label %bb.i unwind label %bb.j, !noalias !85264

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i8 0, i64 16, i1 false), !alias.scope !85262, !noalias !85265
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !85263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 104, i1 false), !noalias !85263
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  call void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.ab), !noalias !85266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !85263
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @_RNSINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs4wP2HXfJTCR_5alloc6string6StringE5reifyCskXtk6F4WjxZ_4just, ptr %i.ei, align 8, !alias.scope !85262, !noalias !85265
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  store i64 %i.eh, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !85262, !noalias !85265
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit

common.resume.sink.split:                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313.thread, %bb.ce, %.thread2291, %bb.bs, %.thread2285, %bb.bd, %.thread2279, %bb.ar, %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204, %bb.ae, %bb.q, %bb.u, %bb.v
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fa, %bb.v ], [ %.pn409, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204 ], [ %i.gp, %bb.ar ], [ %i.hh, %bb.bd ], [ %i.ic, %bb.bs ], [ %i.ij, %bb.ce ], [ %.pn432.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313 ], [ %i.jh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338 ], [ %i.jn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357 ], [ %i.jt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376 ], [ %i.jz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395 ], [ %.pn473, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414 ], [ %.pn483.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434 ], [ %i.lj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463 ], [ %i.lv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493 ], [ %i.mj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530 ], [ %i.mx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567 ], [ %i.nl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604 ], [ %i.nz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641 ], [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678 ], [ %i.pb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715 ], [ %i.pp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752 ], [ %.pn610.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789 ], [ %i.rl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835 ], [ %i.sy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882 ], [ %i.ty, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929 ], [ %i.uy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976 ], [ %i.wa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029 ], [ %i.xc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082 ], [ %.pn735, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135 ], [ %i.ev, %bb.q ], [ %i.fa, %bb.u ], [ %.pn409, %bb.ae ], [ %i.gp, %.thread ], [ %i.hh, %.thread2279 ], [ %i.ic, %.thread2285 ], [ %i.ij, %.thread2291 ], [ %.pn432.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313.thread ], [ %i.jh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338.thread ], [ %i.jn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357.thread ], [ %i.jt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376.thread ], [ %i.jz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395.thread ], [ %.pn473, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414.thread ], [ %.pn483.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434.thread ], [ %i.lj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463.thread ], [ %i.lv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493.thread ], [ %i.mj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530.thread ], [ %i.mx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567.thread ], [ %i.nl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604.thread ], [ %i.nz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641.thread ], [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678.thread ], [ %i.pb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715.thread ], [ %i.pp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752.thread ], [ %.pn610.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789.thread ], [ %i.rl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835.thread ], [ %i.sy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882.thread ], [ %i.ty, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929.thread ], [ %i.uy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976.thread ], [ %i.wa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029.thread ], [ %i.xc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082.thread ], [ %.pn735, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135.thread ], [ %.pn641, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240.thread ], [ %.pn641, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240 ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt) #72
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ej, %bb.j ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.g
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ad) #72
          to label %common.resume unwind label %bb.k, !noalias !85264

bb.k:                                             ; preds = %bb.j
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !85264
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.el = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(40) %i.el, i64 40, i1 false), !noalias !85265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !85263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @405, ptr %i.aa, align 8, !noalias !85269
  %i.en = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 9, ptr %i.en, align 8, !noalias !85269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !85269
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.eo, i64 40, i1 false), !noalias !85270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !85269
  store ptr %i.aa, ptr %i.y, align 8, !noalias !85269
  %.sroa.42.0..sroa_idx.i1180 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1180, align 8, !noalias !85269
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.ep, align 8, !noalias !85269
  %.sroa.46.0..sroa_idx.i1181 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1181, align 8, !noalias !85269
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85271
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !85263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !85272
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.02256.0.copyload2257 = load ptr, ptr %i.eq, align 8, !alias.scope !85271, !noalias !85273 ; 2 uses
  %.sroa.6.0..sroa_idx2258 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx2258, i64 104, i1 false), !alias.scope !85271, !noalias !85273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !85269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  %.not405 = icmp eq ptr %.sroa.02256.0.copyload2257, null
  br i1 %.not405, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  %i.er = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @747, i64 noundef 63)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %i.es, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.tl

bb.n:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store ptr %.sroa.02256.0.copyload2257, ptr %i.cs, align 8
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.o:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %i.dt, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %i.eu, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2124, i64 noundef 7)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !85274)
  call void @llvm.experimental.noalias.scope.decl(metadata !85275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @2124, ptr %i.x, align 8, !noalias !85276
  %i.ew = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 7, ptr %i.ew, align 8, !noalias !85276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !85276
  %i.ex = load i64, ptr %i.cr, align 8, !range !27, !alias.scope !85275, !noalias !85277, !noundef !28
  %.not.i1182 = icmp eq i64 %i.ex, 2
  br i1 %.not.i1182, label %bb.t, label %bb.s, !prof !29

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cr, i64 40, i1 false), !noalias !85277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !85276
  store ptr %i.x, ptr %i.v, align 8, !noalias !85276
  %.sroa.42.0..sroa_idx.i1183 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1183, align 8, !noalias !85276
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.ey, align 8, !noalias !85276
  %.sroa.46.0..sroa_idx.i1184 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1184, align 8, !noalias !85276
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.02259.0.copyload2260 = load i64, ptr %i.ez, align 8, !alias.scope !85278, !noalias !85279 ; 118 uses
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.98.0.copyload2261 = load ptr, ptr %.sroa.98.0..sroa_idx, align 8, !alias.scope !85278, !noalias !85279 ; 111 uses
  %.sroa.161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.161.0.copyload2262 = load i64, ptr %.sroa.161.0..sroa_idx, align 8, !alias.scope !85278, !noalias !85279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !85276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2125, i64 noundef 5)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.aa, %bb.x, %bb.t
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.v, label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85280
  br label %common.resume.sink.split

bb.w:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !85281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @2125, ptr %i.u, align 8, !noalias !85282
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 5, ptr %i.fb, align 8, !noalias !85282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !85282
  %i.fc = load i64, ptr %i.cq, align 8, !range !27, !alias.scope !85281, !noalias !85283, !noundef !28
  %.not.i1185 = icmp eq i64 %i.fc, 2
  br i1 %.not.i1185, label %bb.y, label %bb.x, !prof !29

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !noalias !85283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !85282
  store ptr %i.u, ptr %i.s, align 8, !noalias !85282
  %.sroa.42.0..sroa_idx.i1186 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1186, align 8, !noalias !85282
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.fd, align 8, !noalias !85282
  %.sroa.46.0..sroa_idx.i1187 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1187, align 8, !noalias !85282
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc1188 unwind label %bb.u

.noexc1188:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ff = load i8, ptr %i.fe, align 8, !range !38, !alias.scope !85281, !noalias !85283, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !85282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.not406 = icmp eq i8 %i.ff, 2
  br i1 %.not406, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2126, i64 noundef 7)
          to label %bb.ag unwind label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.fg = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @739, i64 noundef 55)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts1_0B9_.exit unwind label %bb.u

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts1_0B9_.exit: ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8
  store i64 -1, ptr %0, align 8
  %.0.val.off.i1191 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1192 = icmp ult i64 %.0.val.off.i1191, -2
  br i1 %switch.i1192, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193

bb.ab:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts1_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193: ; preds = %bb.ab, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts1_0B9_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !85285)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i = load ptr, ptr %i.fi, align 8, !alias.scope !85285, !nonnull !28, !noundef !28 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i = load i64, ptr %i.fj, align 8, !alias.scope !85285, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85286)
  %i.fk = icmp eq i64 %.val1.i, 0
  br i1 %i.fk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.fm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.fm = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85287)
  call void @llvm.experimental.noalias.scope.decl(metadata !85288)
  %.val.i.i.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !85289, !noalias !85285 ; 2 uses
  %i.fn = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !85289, !noalias !85285, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85290
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i
  %i.fp = icmp eq i64 %i.fm, %.val1.i
  br i1 %i.fp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1193
  %.val2.i = load i64, ptr %i.dt, align 8, !alias.scope !85285 ; 2 uses
  %i.fq = icmp eq i64 %.val2.i, 0
  br i1 %i.fq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.ad

bb.ad:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.fr = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85285
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204: ; preds = %bb.ak, %bb.aj, %bb.af
  %.pn409 = phi { ptr, i32 } [ %i.fs, %bb.af ], [ %i.fx, %bb.aj ], [ %i.fx, %bb.ak ] ; 2 uses
  %.0.val.off.i1194 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1195 = icmp ult i64 %.0.val.off.i1194, -2
  br i1 %switch.i1195, label %bb.ae, label %common.resume.sink.split

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85291
  br label %common.resume.sink.split

bb.af:                                            ; preds = %bb.ah, %bb.z
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204

bb.ag:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !85292)
  call void @llvm.experimental.noalias.scope.decl(metadata !85293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @2126, ptr %i.r, align 8, !noalias !85294
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7, ptr %i.ft, align 8, !noalias !85294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !85294
  %i.fu = load i64, ptr %i.cp, align 8, !range !27, !alias.scope !85293, !noalias !85295, !noundef !28
  %.not.i1197 = icmp eq i64 %i.fu, 2
  br i1 %.not.i1197, label %bb.ai, label %bb.ah, !prof !29

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cp, i64 40, i1 false), !noalias !85295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !85294
  store ptr %i.r, ptr %i.p, align 8, !noalias !85294
  %.sroa.42.0..sroa_idx.i1198 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1198, align 8, !noalias !85294
  %i.fv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.fv, align 8, !noalias !85294
  %.sroa.46.0..sroa_idx.i1199 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1199, align 8, !noalias !85294
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc1200 unwind label %bb.af

.noexc1200:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.fw, align 8, !alias.scope !85296, !noalias !85297 ; 121 uses
  %.sroa.95.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.95.0.copyload = load ptr, ptr %.sroa.95.0..sroa_idx, align 8, !alias.scope !85296, !noalias !85297 ; 121 uses
  %.sroa.156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.156.0.copyload = load i64, ptr %.sroa.156.0..sroa_idx, align 8, !alias.scope !85296, !noalias !85297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !85294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.co, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2127, i64 noundef 16)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ap, %bb.am, %bb.ai
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i1202 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1203 = icmp ult i64 %.0.val.off.i1202, -2
  br i1 %switch.i1203, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85298
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1204

bb.al:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !85299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @2127, ptr %i.o, align 8, !noalias !85300
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.fy, align 8, !noalias !85300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !85300
  %i.fz = load i64, ptr %i.co, align 8, !range !27, !alias.scope !85299, !noalias !85301, !noundef !28
  %.not.i1205 = icmp eq i64 %i.fz, 2
  br i1 %.not.i1205, label %bb.an, label %bb.am, !prof !29

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.co, i64 40, i1 false), !noalias !85301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !85300
  store ptr %i.o, ptr %i.m, align 8, !noalias !85300
  %.sroa.42.0..sroa_idx.i1206 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1206, align 8, !noalias !85300
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.ga, align 8, !noalias !85300
  %.sroa.46.0..sroa_idx.i1207 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1207, align 8, !noalias !85300
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc1208 unwind label %bb.aj

.noexc1208:                                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.gc = load i8, ptr %i.gb, align 8, !range !38, !alias.scope !85299, !noalias !85301, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !85300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %.not408 = icmp eq i8 %i.gc, 2
  br i1 %.not408, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cn, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ax unwind label %bb.av

bb.ap:                                            ; preds = %bb.an
  %i.gd = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @740, i64 noundef 66)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts2_0B9_.exit unwind label %bb.aj

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts2_0B9_.exit: ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gd, ptr %i.ge, align 8
  store i64 -1, ptr %0, align 8
  %.0.val.off.i1211 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1212 = icmp ult i64 %.0.val.off.i1211, -2
  br i1 %switch.i1212, label %bb.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1213

bb.aq:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts2_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85302
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1213

bb.ar:                                            ; preds = %bb.aw, %bb.av
  %.0.val.off.i1214 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1215 = icmp ult i64 %.0.val.off.i1214, -2
  br i1 %switch.i1215, label %.thread, label %common.resume.sink.split

.thread:                                          ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85303
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1213: ; preds = %bb.aq, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts2_0B9_.exit
  %.0.val.off.i1217 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1218 = icmp ult i64 %.0.val.off.i1217, -2
  br i1 %switch.i1218, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85304
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1213
  call void @llvm.experimental.noalias.scope.decl(metadata !85305)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i1220 = load ptr, ptr %i.gf, align 8, !alias.scope !85305, !nonnull !28, !noundef !28 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i1221 = load i64, ptr %i.gg, align 8, !alias.scope !85305, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85306)
  %i.gh = icmp eq i64 %.val1.i1221, 0
  br i1 %i.gh, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1227, label %.lr.ph.i.i.i1222

.lr.ph.i.i.i1222:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226
  %.sroa.0.010.i.i.i1223 = phi i64 [ %i.gj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %.val.i1220, i64 %.sroa.0.010.i.i.i1223 ; 2 uses
  %i.gj = add nuw nsw i64 %.sroa.0.010.i.i.i1223, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85307)
  call void @llvm.experimental.noalias.scope.decl(metadata !85308)
  %.val.i.i.i.i.i1224 = load i64, ptr %i.gi, align 8, !alias.scope !85309, !noalias !85305 ; 2 uses
  %i.gk = icmp eq i64 %.val.i.i.i.i.i1224, 0
  br i1 %i.gk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i1222
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.val1.i.i.i.i.i1225 = load ptr, ptr %i.gl, align 8, !alias.scope !85309, !noalias !85305, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i1225, i64 noundef %.val.i.i.i.i.i1224, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85310
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226: ; preds = %bb.at, %.lr.ph.i.i.i1222
  %i.gm = icmp eq i64 %i.gj, %.val1.i1221
  br i1 %i.gm, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1227, label %.lr.ph.i.i.i1222

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1227: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1226, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1219
  %.val2.i1228 = load i64, ptr %i.dt, align 8, !alias.scope !85305 ; 2 uses
  %i.gn = icmp eq i64 %.val2.i1228, 0
  br i1 %i.gn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1229, label %bb.au

bb.au:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1227
  %i.go = mul nuw i64 %.val2.i1228, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1220, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85305
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1229

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1229: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1227, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.av:                                            ; preds = %bb.ao, %bb.bb, %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i1230 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1231 = icmp ult i64 %.0.val.off.i1230, -2
  br i1 %switch.i1231, label %bb.aw, label %bb.ar

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85311
  br label %bb.ar

bb.ax:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !85312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @2128, ptr %i.l, align 8, !noalias !85312
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 5, ptr %i.gq, align 8, !noalias !85312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !85312
  %i.gr = load i64, ptr %i.cn, align 8, !range !27, !alias.scope !85312, !noundef !28
  %.not.i1233 = icmp eq i64 %i.gr, 2
  br i1 %.not.i1233, label %bb.az, label %bb.ay, !prof !29

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cn, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !85312
  store ptr %i.l, ptr %i.j, align 8, !noalias !85312
  %.sroa.42.0..sroa_idx.i1234 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1234, align 8, !noalias !85312
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.gs, align 8, !noalias !85312
  %.sroa.46.0..sroa_idx.i1235 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1235, align 8, !noalias !85312
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc1236 unwind label %bb.av

.noexc1236:                                       ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gu = load i8, ptr %i.gt, align 8, !range !54, !alias.scope !85312, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !85312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %.not412 = icmp eq i8 %i.gu, -1
  br i1 %.not412, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cm, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.bj unwind label %bb.bh

bb.bb:                                            ; preds = %bb.az
  %i.gv = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @741, i64 noundef 55)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts3_0B9_.exit unwind label %bb.av

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts3_0B9_.exit: ; preds = %bb.bb
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %i.gw, align 8
  store i64 -1, ptr %0, align 8
  %.0.val.off.i1238 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1239 = icmp ult i64 %.0.val.off.i1238, -2
  br i1 %switch.i1239, label %bb.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1240

bb.bc:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts3_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85313
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1240

bb.bd:                                            ; preds = %bb.bi, %bb.bh
  %.0.val.off.i1241 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1242 = icmp ult i64 %.0.val.off.i1241, -2
  br i1 %switch.i1242, label %.thread2279, label %common.resume.sink.split

.thread2279:                                      ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85314
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1240: ; preds = %bb.bc, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts3_0B9_.exit
  %.0.val.off.i1244 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1245 = icmp ult i64 %.0.val.off.i1244, -2
  br i1 %switch.i1245, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85315
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1240
  call void @llvm.experimental.noalias.scope.decl(metadata !85316)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i1247 = load ptr, ptr %i.gx, align 8, !alias.scope !85316, !nonnull !28, !noundef !28 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i1248 = load i64, ptr %i.gy, align 8, !alias.scope !85316, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85317)
  %i.gz = icmp eq i64 %.val1.i1248, 0
  br i1 %i.gz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1254, label %.lr.ph.i.i.i1249

.lr.ph.i.i.i1249:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253
  %.sroa.0.010.i.i.i1250 = phi i64 [ %i.hb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %.val.i1247, i64 %.sroa.0.010.i.i.i1250 ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.0.010.i.i.i1250, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85318)
  call void @llvm.experimental.noalias.scope.decl(metadata !85319)
  %.val.i.i.i.i.i1251 = load i64, ptr %i.ha, align 8, !alias.scope !85320, !noalias !85316 ; 2 uses
  %i.hc = icmp eq i64 %.val.i.i.i.i.i1251, 0
  br i1 %i.hc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i1249
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.val1.i.i.i.i.i1252 = load ptr, ptr %i.hd, align 8, !alias.scope !85320, !noalias !85316, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i1252, i64 noundef %.val.i.i.i.i.i1251, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85321
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253: ; preds = %bb.bf, %.lr.ph.i.i.i1249
  %i.he = icmp eq i64 %i.hb, %.val1.i1248
  br i1 %i.he, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1254, label %.lr.ph.i.i.i1249

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1254: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1253, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1246
  %.val2.i1255 = load i64, ptr %i.dt, align 8, !alias.scope !85316 ; 2 uses
  %i.hf = icmp eq i64 %.val2.i1255, 0
  br i1 %i.hf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1256, label %bb.bg

bb.bg:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1254
  %i.hg = mul nuw i64 %.val2.i1255, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1247, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85316
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1256

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1256: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1254, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.bh:                                            ; preds = %bb.ba, %bb.bq, %.invoke, %bb.bl
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i1257 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1258 = icmp ult i64 %.0.val.off.i1257, -2
  br i1 %switch.i1258, label %bb.bi, label %bb.bd

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85322
  br label %bb.bd

bb.bj:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !85323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @2129, ptr %i.i, align 8, !noalias !85323
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 13, ptr %i.hi, align 8, !noalias !85323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85323
  %i.hj = load i64, ptr %i.cm, align 8, !range !27, !alias.scope !85323, !noundef !28
  %.not.i1260 = icmp eq i64 %i.hj, 2
  br i1 %.not.i1260, label %bb.bl, label %bb.bk, !prof !29

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cm, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !85323
  store ptr %i.i, ptr %i.g, align 8, !noalias !85323
  br label %.invoke

bb.bl:                                            ; preds = %bb.bj
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.hl = load i8, ptr %i.hk, align 8, !range !127, !alias.scope !85323, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cl, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2130, i64 noundef 16)
          to label %bb.bm unwind label %bb.bh

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !85324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @2130, ptr %i.f, align 8, !noalias !85325
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 16, ptr %i.hm, align 8, !noalias !85325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85325
  %i.hn = load i64, ptr %i.cl, align 8, !range !27, !alias.scope !85324, !noalias !85326, !noundef !28
  %.not.i1264 = icmp eq i64 %i.hn, 2
  br i1 %.not.i1264, label %bb.bo, label %bb.bn, !prof !29

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !noalias !85326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85325
  store ptr %i.f, ptr %i.d, align 8, !noalias !85325
  br label %.invoke

.invoke:                                          ; preds = %bb.bk, %bb.bn
  %.sink2613.sroa.phi = phi ptr [ %.sink2613.sroa.gep, %bb.bk ], [ %.sink2613.sroa.gep2614, %bb.bn ]
  %.sink2613.sroa.phi2615 = phi ptr [ %.sink2613.sroa.gep2616, %bb.bk ], [ %.sink2613.sroa.gep2617, %bb.bn ]
  %.sink2613.sroa.phi2618 = phi ptr [ %.sink2613.sroa.gep2619, %bb.bk ], [ %.sink2613.sroa.gep2620, %bb.bn ]
  %.sink2613 = phi ptr [ %i.g, %bb.bk ], [ %i.d, %bb.bn ]
  %.sink2610 = phi ptr [ %i.h, %bb.bk ], [ %i.e, %bb.bn ]
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sink2613.sroa.phi, align 8, !noalias !28
  store ptr %.sink2610, ptr %.sink2613.sroa.phi2615, align 8, !noalias !28
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sink2613.sroa.phi2618, align 8, !noalias !28
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %.sink2613, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.cont unwind label %bb.bh

.cont:                                            ; preds = %.invoke
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.hp = load i8, ptr %i.ho, align 8, !range !38, !alias.scope !85324, !noalias !85326, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %.not416 = icmp eq i8 %i.hp, 2
  br i1 %.not416, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ck, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @878, i64 noundef 7)
          to label %bb.by unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bo
  %i.hq = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @742, i64 noundef 66)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts4_0B9_.exit unwind label %bb.bh

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts4_0B9_.exit: ; preds = %bb.bq
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hq, ptr %i.hr, align 8
  store i64 -1, ptr %0, align 8
  %.0.val.off.i1270 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1271 = icmp ult i64 %.0.val.off.i1270, -2
  br i1 %switch.i1271, label %bb.br, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1272

bb.br:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts4_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85327
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1272

bb.bs:                                            ; preds = %bb.bx, %bb.bw
  %.0.val.off.i1273 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1274 = icmp ult i64 %.0.val.off.i1273, -2
  br i1 %switch.i1274, label %.thread2285, label %common.resume.sink.split

.thread2285:                                      ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85328
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1272: ; preds = %bb.br, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts4_0B9_.exit
  %.0.val.off.i1276 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1277 = icmp ult i64 %.0.val.off.i1276, -2
  br i1 %switch.i1277, label %bb.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278

bb.bt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1272
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85329
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278: ; preds = %bb.bt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1272
  call void @llvm.experimental.noalias.scope.decl(metadata !85330)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i1279 = load ptr, ptr %i.hs, align 8, !alias.scope !85330, !nonnull !28, !noundef !28 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i1280 = load i64, ptr %i.ht, align 8, !alias.scope !85330, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85331)
  %i.hu = icmp eq i64 %.val1.i1280, 0
  br i1 %i.hu, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1286, label %.lr.ph.i.i.i1281

.lr.ph.i.i.i1281:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285
  %.sroa.0.010.i.i.i1282 = phi i64 [ %i.hw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %.val.i1279, i64 %.sroa.0.010.i.i.i1282 ; 2 uses
  %i.hw = add nuw nsw i64 %.sroa.0.010.i.i.i1282, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85332)
  call void @llvm.experimental.noalias.scope.decl(metadata !85333)
  %.val.i.i.i.i.i1283 = load i64, ptr %i.hv, align 8, !alias.scope !85334, !noalias !85330 ; 2 uses
  %i.hx = icmp eq i64 %.val.i.i.i.i.i1283, 0
  br i1 %i.hx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i1281
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.val1.i.i.i.i.i1284 = load ptr, ptr %i.hy, align 8, !alias.scope !85334, !noalias !85330, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i1284, i64 noundef %.val.i.i.i.i.i1283, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85335
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285: ; preds = %bb.bu, %.lr.ph.i.i.i1281
  %i.hz = icmp eq i64 %i.hw, %.val1.i1280
  br i1 %i.hz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1286, label %.lr.ph.i.i.i1281

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1286: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i1285, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1278
  %.val2.i1287 = load i64, ptr %i.dt, align 8, !alias.scope !85330 ; 2 uses
  %i.ia = icmp eq i64 %.val2.i1287, 0
  br i1 %i.ia, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1288, label %bb.bv

bb.bv:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1286
  %i.ib = mul nuw i64 %.val2.i1287, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1279, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85330
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1288

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1288: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i1286, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.bw:                                            ; preds = %bb.cc, %bb.bz, %bb.bp
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i1289 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1290 = icmp ult i64 %.0.val.off.i1289, -2
  br i1 %switch.i1290, label %bb.bx, label %bb.bs

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85336
  br label %bb.bs

bb.by:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !85337)
  call void @llvm.experimental.noalias.scope.decl(metadata !85338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @878, ptr %i.c, align 8, !noalias !85339
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 7, ptr %i.id, align 8, !noalias !85339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85339
  %i.ie = load i64, ptr %i.ck, align 8, !range !27, !alias.scope !85338, !noalias !85340, !noundef !28
  %.not.i1292 = icmp eq i64 %i.ie, 2
  br i1 %.not.i1292, label %bb.ca, label %bb.bz, !prof !29

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ck, i64 40, i1 false), !noalias !85340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85339
  store ptr %i.c, ptr %i.a, align 8, !noalias !85339
  %.sroa.42.0..sroa_idx.i1293 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i1293, align 8, !noalias !85339
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.if, align 8, !noalias !85339
  %.sroa.46.0..sroa_idx.i1294 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1294, align 8, !noalias !85339
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
          to label %.noexc1295 unwind label %bb.bw

.noexc1295:                                       ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.02267.0.copyload = load i64, ptr %i.ig, align 8, !alias.scope !85341, !noalias !85342 ; 106 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85341, !noalias !85342 ; 105 uses
  %.sroa.62268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.62268.0.copyload = load i64, ptr %.sroa.62268.0..sroa_idx, align 8, !alias.scope !85341, !noalias !85342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %.not420 = icmp eq i64 %.sroa.02267.0.copyload, -1
  br i1 %.not420, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cj, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 12)
          to label %bb.ci unwind label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  %i.ih = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @743, i64 noundef 57)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts5_0B9_.exit unwind label %bb.bw

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts5_0B9_.exit: ; preds = %bb.cc
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ih, ptr %i.ii, align 8
  store i64 -1, ptr %0, align 8
  %.0.val.off.i1298 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1299 = icmp ult i64 %.0.val.off.i1298, -2
  br i1 %switch.i1299, label %bb.cd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1300

bb.cd:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts5_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85343
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1300

bb.ce:                                            ; preds = %bb.ub, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit
  %.0.val.off.i1301 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1302 = icmp ult i64 %.0.val.off.i1301, -2
  br i1 %switch.i1302, label %.thread2291, label %common.resume.sink.split

.thread2291:                                      ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85344
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1300: ; preds = %bb.cd, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts5_0B9_.exit
  %.0.val.off.i1304 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1305 = icmp ult i64 %.0.val.off.i1304, -2
  br i1 %switch.i1305, label %bb.cf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1306

bb.cf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1300
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85345
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1306

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1306: ; preds = %bb.cf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1300
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.cg:                                            ; preds = %bb.cl, %bb.ci, %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ik, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85346
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.ci:                                            ; preds = %bb.cb
  %i.il = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cj)
          to label %bb.cj unwind label %bb.cg     ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %.not424 = icmp eq i8 %i.il, 2
  br i1 %.not424, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.ci, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 14)
          to label %bb.ct unwind label %bb.cs

bb.cl:                                            ; preds = %bb.cj
  %i.im = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 62)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts6_0B9_.exit unwind label %bb.cg

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts6_0B9_.exit: ; preds = %bb.cl
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %i.in, align 8
  store i64 -1, ptr %0, align 8
  %i.io = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.io, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1310, label %bb.cm

bb.cm:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts6_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85347
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1310

bb.cn:                                            ; preds = %bb.cr, %bb.cq
  %.0.val.off.i1311 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1312 = icmp ult i64 %.0.val.off.i1311, -2
  br i1 %switch.i1312, label %.thread2297, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313

.thread2297:                                      ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85348
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1310: ; preds = %bb.cm, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts6_0B9_.exit
  %.0.val.off.i1314 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1315 = icmp ult i64 %.0.val.off.i1314, -2
  br i1 %switch.i1315, label %bb.co, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1316

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1310
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85349
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1316

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313: ; preds = %.thread2297, %bb.cn
  %.0.val.off.i1317 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1318 = icmp ult i64 %.0.val.off.i1317, -2
  br i1 %switch.i1318, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1313
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85350
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1316: ; preds = %bb.co, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1310
  %.0.val.off.i1320 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1321 = icmp ult i64 %.0.val.off.i1320, -2
  br i1 %switch.i1321, label %bb.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1322

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85351
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1322

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1322: ; preds = %bb.cp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1316
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.cq:                                            ; preds = %bb.cy, %bb.cs
  %.pn432.pn.pn = phi { ptr, i32 } [ %.pn432.pn, %bb.cy ], [ %i.iq, %bb.cs ] ; 2 uses
  %i.ip = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ip, label %bb.cn, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85352
  br label %bb.cn

bb.cs:                                            ; preds = %bb.cv, %bb.ct, %bb.ck
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ct:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.ci)
          to label %bb.cu unwind label %bb.cs

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.ir = load ptr, ptr %i.dr, align 8, !noundef !28
  %.not428 = icmp eq ptr %i.ir, null
  br i1 %.not428, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cg, ptr noundef nonnull align 8 dereferenceable(112) %i.dr, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.cg)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts7_0B9_.exit unwind label %bb.cs

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  store i64 0, ptr %i.ds, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 0, ptr %i.it, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts7_0B9_.exit, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.cf, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 15)
          to label %bb.da unwind label %bb.cz

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts7_0B9_.exit: ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.cx

bb.cy:                                            ; preds = %bb.df, %bb.cz
  %.pn432.pn = phi { ptr, i32 } [ %.pn432, %bb.df ], [ %i.iu, %bb.cz ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  br label %bb.cq

bb.cz:                                            ; preds = %bb.dc, %bb.da, %bb.cx
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cx
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.cf)
          to label %bb.db unwind label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.iv = load ptr, ptr %i.dp, align 8, !noundef !28
  %.not429 = icmp eq ptr %i.iv, null
  br i1 %.not429, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cd, ptr noundef nonnull align 8 dereferenceable(112) %i.dp, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.cd)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts8_0B9_.exit unwind label %bb.cz

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  store i64 0, ptr %i.dq, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 0, ptr %i.ix, align 8
  br label %bb.de

bb.de:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts8_0B9_.exit, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.cc, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @453, i64 noundef 11)
          to label %bb.dh unwind label %bb.dg

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts8_0B9_.exit: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.de

bb.df:                                            ; preds = %bb.dm, %bb.dg
  %.pn432 = phi { ptr, i32 } [ %i.jc, %bb.dm ], [ %i.iy, %bb.dg ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  br label %bb.cy

bb.dg:                                            ; preds = %bb.dj, %bb.dh, %bb.de
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %bb.de
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @453, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.cc)
          to label %bb.di unwind label %bb.dg

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.iz = load ptr, ptr %i.dn, align 8, !noundef !28
  %.not430 = icmp eq ptr %i.iz, null
  br i1 %.not430, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ca, ptr noundef nonnull align 8 dereferenceable(112) %i.dn, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ca)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts9_0B9_.exit unwind label %bb.dg

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  store i64 0, ptr %i.do, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 0, ptr %i.jb, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts9_0B9_.exit, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bz, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2131, i64 noundef 7)
          to label %bb.dn unwind label %bb.dm

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_muts9_0B9_.exit: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.dl

bb.dm:                                            ; preds = %bb.dq, %bb.dn, %bb.dl
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  br label %bb.df

bb.dn:                                            ; preds = %bb.dl
  %i.jd = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2131, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bz)
          to label %bb.do unwind label %bb.dm     ; 2 uses

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.not431 = icmp eq i8 %i.jd, 2
  br i1 %.not431, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.by, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.dw unwind label %bb.dv

bb.dq:                                            ; preds = %bb.do
  %i.je = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @748, i64 noundef 57)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsa_0B9_.exit unwind label %bb.dm

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsa_0B9_.exit: ; preds = %bb.dq
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.je, ptr %i.jf, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.jg = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.jg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1335, label %bb.ds

bb.dr:                                            ; preds = %bb.dv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85353
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332

bb.ds:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsa_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85354
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1335

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332: ; preds = %bb.dr, %bb.dv
  %.0.val.off.i1336 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1337 = icmp ult i64 %.0.val.off.i1336, -2
  br i1 %switch.i1337, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85355
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1335: ; preds = %bb.ds, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsa_0B9_.exit
  %.0.val.off.i1339 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1340 = icmp ult i64 %.0.val.off.i1339, -2
  br i1 %switch.i1340, label %bb.dt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1341

bb.dt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1335
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85356
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1341

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332
  %.0.val.off.i1342 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1343 = icmp ult i64 %.0.val.off.i1342, -2
  br i1 %switch.i1343, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1338
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85357
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1341: ; preds = %bb.dt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1335
  %.0.val.off.i1345 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1346 = icmp ult i64 %.0.val.off.i1345, -2
  br i1 %switch.i1346, label %bb.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1347

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85358
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1347

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1347: ; preds = %bb.du, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1341
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.dv:                                            ; preds = %bb.dp, %bb.dw, %bb.dz
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.ji = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ji, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1332, label %bb.dr

bb.dw:                                            ; preds = %bb.dp
  %i.jj = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEEB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.by)
          to label %bb.dx unwind label %bb.dv     ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %.not439 = icmp eq i8 %i.jj, 2
  br i1 %.not439, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ef unwind label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %i.jk = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @749, i64 noundef 61)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsb_0B9_.exit unwind label %bb.dv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsb_0B9_.exit: ; preds = %bb.dz
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jk, ptr %i.jl, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.jm = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.jm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1354, label %bb.eb

bb.ea:                                            ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85359
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351

bb.eb:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsb_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85360
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1354

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351: ; preds = %bb.ea, %bb.ee
  %.0.val.off.i1355 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1356 = icmp ult i64 %.0.val.off.i1355, -2
  br i1 %switch.i1356, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85361
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1354: ; preds = %bb.eb, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsb_0B9_.exit
  %.0.val.off.i1358 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1359 = icmp ult i64 %.0.val.off.i1358, -2
  br i1 %switch.i1359, label %bb.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1360

bb.ec:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1354
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85362
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1360

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351
  %.0.val.off.i1361 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1362 = icmp ult i64 %.0.val.off.i1361, -2
  br i1 %switch.i1362, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85363
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1360: ; preds = %bb.ec, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1354
  %.0.val.off.i1364 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1365 = icmp ult i64 %.0.val.off.i1364, -2
  br i1 %switch.i1365, label %bb.ed, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1366

bb.ed:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1360
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85364
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1366

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1366: ; preds = %bb.ed, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1360
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ee:                                            ; preds = %bb.dy, %bb.ef, %bb.ei
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.jo = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.jo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1351, label %bb.ea

bb.ef:                                            ; preds = %bb.dy
  %i.jp = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEEB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bx)
          to label %bb.eg unwind label %bb.ee     ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.not447 = icmp eq i8 %i.jp, 2
  br i1 %.not447, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bw, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2134, i64 noundef 7)
          to label %bb.eo unwind label %bb.en

bb.ei:                                            ; preds = %bb.eg
  %i.jq = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @750, i64 noundef 65)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsc_0B9_.exit unwind label %bb.ee

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsc_0B9_.exit: ; preds = %bb.ei
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jq, ptr %i.jr, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.js = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.js, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1373, label %bb.ek

bb.ej:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85365
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370

bb.ek:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsc_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85366
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1373

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370: ; preds = %bb.ej, %bb.en
  %.0.val.off.i1374 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1375 = icmp ult i64 %.0.val.off.i1374, -2
  br i1 %switch.i1375, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85367
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1373: ; preds = %bb.ek, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsc_0B9_.exit
  %.0.val.off.i1377 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1378 = icmp ult i64 %.0.val.off.i1377, -2
  br i1 %switch.i1378, label %bb.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1379

bb.el:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1373
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85368
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1379

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370
  %.0.val.off.i1380 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1381 = icmp ult i64 %.0.val.off.i1380, -2
  br i1 %switch.i1381, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1376
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85369
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1379: ; preds = %bb.el, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1373
  %.0.val.off.i1383 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1384 = icmp ult i64 %.0.val.off.i1383, -2
  br i1 %switch.i1384, label %bb.em, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1385

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1379
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85370
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1385

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1385: ; preds = %bb.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1379
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.en:                                            ; preds = %bb.er, %bb.eo, %bb.eh
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.ju = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ju, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1370, label %bb.ej

bb.eo:                                            ; preds = %bb.eh
  %i.jv = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2134, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bw)
          to label %bb.ep unwind label %bb.en     ; 2 uses

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.not455 = icmp eq i8 %i.jv, 2
  br i1 %.not455, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2135, i64 noundef 15)
          to label %bb.ex unwind label %bb.ew

bb.er:                                            ; preds = %bb.ep
  %i.jw = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @751, i64 noundef 57)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsd_0B9_.exit unwind label %bb.en

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsd_0B9_.exit: ; preds = %bb.er
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jw, ptr %i.jx, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.jy = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.jy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1392, label %bb.et

bb.es:                                            ; preds = %bb.ew
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85371
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389

bb.et:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsd_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85372
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1392

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389: ; preds = %bb.es, %bb.ew
  %.0.val.off.i1393 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1394 = icmp ult i64 %.0.val.off.i1393, -2
  br i1 %switch.i1394, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85373
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1392: ; preds = %bb.et, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsd_0B9_.exit
  %.0.val.off.i1396 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1397 = icmp ult i64 %.0.val.off.i1396, -2
  br i1 %switch.i1397, label %bb.eu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1398

bb.eu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1392
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85374
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1398

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389
  %.0.val.off.i1399 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1400 = icmp ult i64 %.0.val.off.i1399, -2
  br i1 %switch.i1400, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1395
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85375
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1398: ; preds = %bb.eu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1392
  %.0.val.off.i1402 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1403 = icmp ult i64 %.0.val.off.i1402, -2
  br i1 %switch.i1403, label %bb.ev, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1404

bb.ev:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1398
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85376
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1404

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1404: ; preds = %bb.ev, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1398
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ew:                                            ; preds = %bb.fa, %bb.ex, %bb.eq
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.ka = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ka, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1389, label %bb.es

bb.ex:                                            ; preds = %bb.eq
  %i.kb = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2135, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bv)
          to label %bb.ey unwind label %bb.ew     ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.not463 = icmp eq i8 %i.kb, 2
  br i1 %.not463, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.bu, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5)
          to label %bb.fh unwind label %bb.fg

bb.fa:                                            ; preds = %bb.ey
  %i.kc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @752, i64 noundef 65)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutse_0B9_.exit unwind label %bb.ew

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutse_0B9_.exit: ; preds = %bb.fa
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kc, ptr %i.kd, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.ke = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ke, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1411, label %bb.fc

bb.fb:                                            ; preds = %bb.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85377
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408

bb.fc:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutse_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85378
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1411

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408: ; preds = %bb.fb, %bb.ff
  %.0.val.off.i1412 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1413 = icmp ult i64 %.0.val.off.i1412, -2
  br i1 %switch.i1413, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85379
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1411: ; preds = %bb.fc, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutse_0B9_.exit
  %.0.val.off.i1415 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1416 = icmp ult i64 %.0.val.off.i1415, -2
  br i1 %switch.i1416, label %bb.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1417

bb.fd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1411
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85380
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1417

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408
  %.0.val.off.i1418 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1419 = icmp ult i64 %.0.val.off.i1418, -2
  br i1 %switch.i1419, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1414
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85381
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1417: ; preds = %bb.fd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1411
  %.0.val.off.i1421 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1422 = icmp ult i64 %.0.val.off.i1421, -2
  br i1 %switch.i1422, label %bb.fe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1423

bb.fe:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85382
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1423

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1423: ; preds = %bb.fe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1417
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ff:                                            ; preds = %bb.fm, %bb.fg
  %.pn473 = phi { ptr, i32 } [ %i.kk, %bb.fm ], [ %i.kg, %bb.fg ] ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.kf = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.kf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1408, label %bb.fb

bb.fg:                                            ; preds = %bb.fj, %bb.fh, %bb.ez
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fh:                                            ; preds = %bb.ez
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.bu)
          to label %bb.fi unwind label %bb.fg

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.kh = load ptr, ptr %i.dl, align 8, !noundef !28
  %.not471 = icmp eq ptr %i.kh, null
  br i1 %.not471, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull align 8 dereferenceable(112) %i.dl, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.bs)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsf_0B9_.exit unwind label %bb.fg

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  store i64 0, ptr %i.dm, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 0, ptr %i.kj, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsf_0B9_.exit, %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.br, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2136, i64 noundef 9)
          to label %bb.fn unwind label %bb.fm

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsf_0B9_.exit: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.fl

bb.fm:                                            ; preds = %bb.fq, %bb.fn, %bb.fl
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  br label %bb.ff

bb.fn:                                            ; preds = %bb.fl
  %i.kl = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2136, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.br)
          to label %bb.fo unwind label %bb.fm     ; 2 uses

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %.not472 = icmp eq i8 %i.kl, 2
  br i1 %.not472, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11indentation11IndentationEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bq, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.fw unwind label %bb.fv

bb.fq:                                            ; preds = %bb.fo
  %i.km = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @753, i64 noundef 59)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsg_0B9_.exit unwind label %bb.fm

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsg_0B9_.exit: ; preds = %bb.fq
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.km, ptr %i.kn, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.ko = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ko, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1431, label %bb.fs

bb.fr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85383
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428

bb.fs:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsg_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85384
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1431

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428: ; preds = %bb.fr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446
  %.0.val.off.i1432 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1433 = icmp ult i64 %.0.val.off.i1432, -2
  br i1 %switch.i1433, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85385
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1431: ; preds = %bb.fs, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsg_0B9_.exit
  %.0.val.off.i1435 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1436 = icmp ult i64 %.0.val.off.i1435, -2
  br i1 %switch.i1436, label %bb.ft, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1437

bb.ft:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85386
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1437

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428
  %.0.val.off.i1438 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1439 = icmp ult i64 %.0.val.off.i1438, -2
  br i1 %switch.i1439, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1434
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85387
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1437: ; preds = %bb.ft, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1431
  %.0.val.off.i1441 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1442 = icmp ult i64 %.0.val.off.i1441, -2
  br i1 %switch.i1442, label %bb.fu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1443

bb.fu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1437
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85388
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1443

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1443: ; preds = %bb.fu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1437
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446: ; preds = %bb.gd, %bb.gc, %bb.fv
  %.pn483.pn = phi { ptr, i32 } [ %i.kq, %bb.fv ], [ %.pn483, %bb.gc ], [ %.pn483, %bb.gd ] ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.kp = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.kp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1428, label %bb.fr

bb.fv:                                            ; preds = %bb.fp, %bb.fx, %bb.fw, %bb.fy, %bb.ga, %bb.fz
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446

bb.fw:                                            ; preds = %bb.fp
  %i.kr = invoke fastcc { i64, i32 } @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11indentation11IndentationEEB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bq)
          to label %bb.fx unwind label %bb.fv     ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  %i.ks = extractvalue { i64, i32 } %i.kr, 0
  %i.kt = extractvalue { i64, i32 } %i.kr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneINtNtNtCsj6eKBz9Db1c_4core3num7nonzero7NonZeroyEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bp, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.fy unwind label %bb.fv

bb.fy:                                            ; preds = %bb.fx
  %i.ku = invoke fastcc noundef i64 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB1h_3num7nonzero7NonZeroyEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bp)
          to label %bb.fz unwind label %bb.fv

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bo, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 8)
          to label %bb.ga unwind label %bb.fv

bb.ga:                                            ; preds = %bb.fz
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bo)
          to label %bb.gb unwind label %bb.fv

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.kv = invoke noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14)
          to label %bb.gf unwind label %bb.ge

bb.gc:                                            ; preds = %bb.gn, %bb.ge
  %.pn483 = phi { ptr, i32 } [ %i.la, %bb.gn ], [ %i.ky, %bb.ge ] ; 2 uses
  %.val1080 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.kw = icmp sgt i64 %.val1080, 0
  br i1 %i.kw, label %bb.gd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446

bb.gd:                                            ; preds = %bb.gc
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1081 = load ptr, ptr %i.kx, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1081, i64 noundef %.val1080, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85389
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1446

bb.ge:                                            ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gb
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gf:                                            ; preds = %bb.gb
  br i1 %i.kv, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store i64 -1, ptr %i.dj, align 8
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.bn, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14)
          to label %bb.gj unwind label %bb.ge

bb.gi:                                            ; preds = %bb.gm, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bk, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2139, i64 noundef 12)
          to label %bb.go unwind label %bb.gn

bb.gj:                                            ; preds = %bb.gh
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.di, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.bn)
          to label %bb.gk unwind label %bb.ge

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.kz = load ptr, ptr %i.di, align 8, !noundef !28
  %.not481 = icmp eq ptr %i.kz, null
  br i1 %.not481, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bl, ptr noundef nonnull align 8 dereferenceable(112) %i.di, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.bl)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit unwind label %bb.ge

bb.gm:                                            ; preds = %bb.gk, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit
  %.sroa.6152.0 = phi i64 [ %.sroa.5157.0.copyload, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit ], [ 0, %bb.gk ]
  %.sroa.5149.0 = phi ptr [ %.sroa.4156.0.copyload, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit ], [ inttoptr (i64 8 to ptr), %bb.gk ]
  %.sroa.0147.0 = phi i64 [ %.sroa.0155.0.copyload, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit ], [ 0, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  store i64 %.sroa.0147.0, ptr %i.dj, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.sroa.5149.0, ptr %.sroa.5149.0..sroa_idx, align 8
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.sroa.6152.0, ptr %.sroa.6152.0..sroa_idx, align 8
  br label %bb.gi

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsh_0B9_.exit: ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %.sroa.0155.0.copyload = load i64, ptr %i.bm, align 8
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.4156.0.copyload = load ptr, ptr %.sroa.4156.0..sroa_idx, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.5157.0.copyload = load i64, ptr %.sroa.5157.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.gm

bb.gn:                                            ; preds = %bb.gr, %bb.go, %bb.gi
  %i.la = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  br label %bb.gc

bb.go:                                            ; preds = %bb.gi
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2139, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bk)
          to label %bb.gp unwind label %bb.gn

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.lb = load i64, ptr %i.dh, align 8, !range !37, !noundef !28 ; 74 uses
  %.not482 = icmp eq i64 %i.lb, -1
  br i1 %.not482, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.4383.0.copyload = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8 ; 73 uses
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.5384.0.copyload = load i64, ptr %.sroa.5384.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bj, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 11)
          to label %bb.ha unwind label %bb.gy

bb.gr:                                            ; preds = %bb.gp
  %i.lc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @754, i64 noundef 62)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsi_0B9_.exit unwind label %bb.gn

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsi_0B9_.exit: ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.ld, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1076 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.le = icmp sgt i64 %.val1076, 0
  br i1 %i.le, label %bb.gt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1454

bb.gs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1079 = load ptr, ptr %i.lf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1079, i64 noundef %.val1078, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85390
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1451

bb.gt:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsi_0B9_.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1077 = load ptr, ptr %i.lg, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1077, i64 noundef %.val1076, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85391
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1454

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1451: ; preds = %bb.gs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.lh = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.lh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457, label %bb.gu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1454: ; preds = %bb.gt, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsi_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.li = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.li, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1460, label %bb.gv

bb.gu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1451
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85392
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457

bb.gv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1454
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85393
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1460

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457: ; preds = %bb.gu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1451
  %.0.val.off.i1461 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1462 = icmp ult i64 %.0.val.off.i1461, -2
  br i1 %switch.i1462, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85394
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1460: ; preds = %bb.gv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1454
  %.0.val.off.i1464 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1465 = icmp ult i64 %.0.val.off.i1464, -2
  br i1 %switch.i1465, label %bb.gw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1466

bb.gw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1460
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85395
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1466

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1457
  %.0.val.off.i1467 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1468 = icmp ult i64 %.0.val.off.i1467, -2
  br i1 %switch.i1468, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85396
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1466: ; preds = %bb.gw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1460
  %.0.val.off.i1470 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1471 = icmp ult i64 %.0.val.off.i1470, -2
  br i1 %switch.i1471, label %bb.gx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1472

bb.gx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1466
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85397
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1472

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1472: ; preds = %bb.gx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1466
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.gy:                                            ; preds = %bb.hd, %bb.ha, %bb.gq
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = icmp eq i64 %i.lb, 0
  br i1 %i.lk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85398
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.ha:                                            ; preds = %bb.gq
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bj)
          to label %bb.hb unwind label %bb.gy

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.ll = load i64, ptr %i.dg, align 8, !range !37, !noundef !28 ; 70 uses
  %.not493 = icmp eq i64 %i.ll, -1
  br i1 %.not493, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.4389.0.copyload = load ptr, ptr %.sroa.4389.0..sroa_idx, align 8 ; 69 uses
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.5390.0.copyload = load i64, ptr %.sroa.5390.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bi, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2141, i64 noundef 15)
          to label %bb.hn unwind label %bb.hl

bb.hd:                                            ; preds = %bb.hb
  %i.lm = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @755, i64 noundef 61)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsj_0B9_.exit unwind label %bb.gy

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsj_0B9_.exit: ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lm, ptr %i.ln, align 8
  store i64 -1, ptr %0, align 8
  %i.lo = icmp eq i64 %i.lb, 0
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1478, label %bb.he

bb.he:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsj_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85399
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1478

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2252: ; preds = %bb.ua, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1505
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1066 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.lp = icmp sgt i64 %.val1066, 0
  br i1 %i.lp, label %bb.hf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1481

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1478: ; preds = %bb.he, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsj_0B9_.exit
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1064 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.lq = icmp sgt i64 %.val1064, 0
  br i1 %i.lq, label %bb.hg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1484

bb.hf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2252
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1067 = load ptr, ptr %i.lr, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1067, i64 noundef %.val1066, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85400
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1481

bb.hg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1478
  %i.ls = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1065 = load ptr, ptr %i.ls, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1065, i64 noundef %.val1064, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85401
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1484

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1481: ; preds = %bb.hf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2252
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.lt = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.lt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487, label %bb.hh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1484: ; preds = %bb.hg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.lu = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.lu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1490, label %bb.hi

bb.hh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85402
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487

bb.hi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1484
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85403
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1490

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487: ; preds = %bb.hh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1481
  %.0.val.off.i1491 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1492 = icmp ult i64 %.0.val.off.i1491, -2
  br i1 %switch.i1492, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85404
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1490: ; preds = %bb.hi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1484
  %.0.val.off.i1494 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1495 = icmp ult i64 %.0.val.off.i1494, -2
  br i1 %switch.i1495, label %bb.hj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1496

bb.hj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1490
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85405
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1496

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1487
  %.0.val.off.i1497 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1498 = icmp ult i64 %.0.val.off.i1497, -2
  br i1 %switch.i1498, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85406
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1496: ; preds = %bb.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1490
  %.0.val.off.i1500 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1501 = icmp ult i64 %.0.val.off.i1500, -2
  br i1 %switch.i1501, label %bb.hk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1502

bb.hk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85407
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1502

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1502: ; preds = %bb.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1496
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.hl:                                            ; preds = %bb.hq, %bb.hn, %bb.hc
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = icmp eq i64 %i.ll, 0
  br i1 %i.lw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1505, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85408
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1505

bb.hn:                                            ; preds = %bb.hc
  %i.lx = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2141, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bi)
          to label %bb.ho unwind label %bb.hl     ; 2 uses

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.not504 = icmp eq i8 %i.lx, 2
  br i1 %.not504, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bh, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 10)
          to label %bb.ic unwind label %bb.ia

bb.hq:                                            ; preds = %bb.ho
  %i.ly = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 65)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsk_0B9_.exit unwind label %bb.hl

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsk_0B9_.exit: ; preds = %bb.hq
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ly, ptr %i.lz, align 8
  store i64 -1, ptr %0, align 8
  %i.ma = icmp eq i64 %i.ll, 0
  br i1 %i.ma, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1509, label %bb.hr

bb.hr:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsk_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85409
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1509

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1542: ; preds = %bb.ib, %bb.ia
  %i.mb = icmp eq i64 %i.lb, 0
  br i1 %i.mb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1512, label %bb.hs

bb.hs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1542
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85410
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1512

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1509: ; preds = %bb.hr, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsk_0B9_.exit
  %i.mc = icmp eq i64 %i.lb, 0
  br i1 %i.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1515, label %bb.ht

bb.ht:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85411
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1515

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1512: ; preds = %bb.hs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1542
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1054 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.md = icmp sgt i64 %.val1054, 0
  br i1 %i.md, label %bb.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1518

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1515: ; preds = %bb.ht, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1509
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1052 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.me = icmp sgt i64 %.val1052, 0
  br i1 %i.me, label %bb.hv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1521

bb.hu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1512
  %i.mf = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1055 = load ptr, ptr %i.mf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1055, i64 noundef %.val1054, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85412
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1518

bb.hv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1515
  %i.mg = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1053 = load ptr, ptr %i.mg, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1053, i64 noundef %.val1052, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85413
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1521

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1518: ; preds = %bb.hu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1512
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.mh = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.mh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524, label %bb.hw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1521: ; preds = %bb.hv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.mi = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.mi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1527, label %bb.hx

bb.hw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85414
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524

bb.hx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85415
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1527

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524: ; preds = %bb.hw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1518
  %.0.val.off.i1528 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1529 = icmp ult i64 %.0.val.off.i1528, -2
  br i1 %switch.i1529, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85416
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1527: ; preds = %bb.hx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1521
  %.0.val.off.i1531 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1532 = icmp ult i64 %.0.val.off.i1531, -2
  br i1 %switch.i1532, label %bb.hy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1533

bb.hy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1527
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85417
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1533

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1524
  %.0.val.off.i1534 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1535 = icmp ult i64 %.0.val.off.i1534, -2
  br i1 %switch.i1535, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85418
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1533: ; preds = %bb.hy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1527
  %.0.val.off.i1537 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1538 = icmp ult i64 %.0.val.off.i1537, -2
  br i1 %switch.i1538, label %bb.hz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1539

bb.hz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1533
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85419
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1539

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1539: ; preds = %bb.hz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1533
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ia:                                            ; preds = %bb.if, %bb.ic, %bb.hp
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mk = icmp eq i64 %i.ll, 0
  br i1 %i.mk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1542, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85420
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1542

bb.ic:                                            ; preds = %bb.hp
  %i.ml = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bh)
          to label %bb.id unwind label %bb.ia     ; 2 uses

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.not516 = icmp eq i8 %i.ml, 2
  br i1 %.not516, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bg, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2143, i64 noundef 8)
          to label %bb.ir unwind label %bb.ip

bb.if:                                            ; preds = %bb.id
  %i.mm = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 60)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsl_0B9_.exit unwind label %bb.ia

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsl_0B9_.exit: ; preds = %bb.if
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mm, ptr %i.mn, align 8
  store i64 -1, ptr %0, align 8
  %i.mo = icmp eq i64 %i.ll, 0
  br i1 %i.mo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1546, label %bb.ig

bb.ig:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsl_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85421
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1546

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1579: ; preds = %bb.iq, %bb.ip
  %i.mp = icmp eq i64 %i.lb, 0
  br i1 %i.mp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1549, label %bb.ih

bb.ih:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1579
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85422
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1549

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1546: ; preds = %bb.ig, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsl_0B9_.exit
  %i.mq = icmp eq i64 %i.lb, 0
  br i1 %i.mq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1552, label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1546
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85423
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1552

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1549: ; preds = %bb.ih, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1579
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1042 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.mr = icmp sgt i64 %.val1042, 0
  br i1 %i.mr, label %bb.ij, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1555

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1552: ; preds = %bb.ii, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1546
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1040 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ms = icmp sgt i64 %.val1040, 0
  br i1 %i.ms, label %bb.ik, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1558

bb.ij:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1549
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1043 = load ptr, ptr %i.mt, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1043, i64 noundef %.val1042, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85424
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1555

bb.ik:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1552
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1041 = load ptr, ptr %i.mu, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1041, i64 noundef %.val1040, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85425
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1558

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1555: ; preds = %bb.ij, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1549
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.mv = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.mv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561, label %bb.il

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1558: ; preds = %bb.ik, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.mw = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.mw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1564, label %bb.im

bb.il:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1555
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85426
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561

bb.im:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1558
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85427
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1564

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561: ; preds = %bb.il, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1555
  %.0.val.off.i1565 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1566 = icmp ult i64 %.0.val.off.i1565, -2
  br i1 %switch.i1566, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85428
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1564: ; preds = %bb.im, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1558
  %.0.val.off.i1568 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1569 = icmp ult i64 %.0.val.off.i1568, -2
  br i1 %switch.i1569, label %bb.in, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1570

bb.in:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1564
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85429
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1570

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1561
  %.0.val.off.i1571 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1572 = icmp ult i64 %.0.val.off.i1571, -2
  br i1 %switch.i1572, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85430
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1570: ; preds = %bb.in, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1564
  %.0.val.off.i1574 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1575 = icmp ult i64 %.0.val.off.i1574, -2
  br i1 %switch.i1575, label %bb.io, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1576

bb.io:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85431
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1576

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1576: ; preds = %bb.io, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1570
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ip:                                            ; preds = %bb.iu, %bb.ir, %bb.ie
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = icmp eq i64 %i.ll, 0
  br i1 %i.my, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1579, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85432
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1579

bb.ir:                                            ; preds = %bb.ie
  %i.mz = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2143, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bg)
          to label %bb.is unwind label %bb.ip     ; 2 uses

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %.not529 = icmp eq i8 %i.mz, 2
  br i1 %.not529, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bf, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2144, i64 noundef 7)
          to label %bb.jg unwind label %bb.je

bb.iu:                                            ; preds = %bb.is
  %i.na = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @758, i64 noundef 58)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsm_0B9_.exit unwind label %bb.ip

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsm_0B9_.exit: ; preds = %bb.iu
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.na, ptr %i.nb, align 8
  store i64 -1, ptr %0, align 8
  %i.nc = icmp eq i64 %i.ll, 0
  br i1 %i.nc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1583, label %bb.iv

bb.iv:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsm_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85433
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1583

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1616: ; preds = %bb.jf, %bb.je
  %i.nd = icmp eq i64 %i.lb, 0
  br i1 %i.nd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1586, label %bb.iw

bb.iw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1616
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85434
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1586

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1583: ; preds = %bb.iv, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsm_0B9_.exit
  %i.ne = icmp eq i64 %i.lb, 0
  br i1 %i.ne, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1589, label %bb.ix

bb.ix:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1583
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85435
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1589

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1586: ; preds = %bb.iw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1616
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1030 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.nf = icmp sgt i64 %.val1030, 0
  br i1 %i.nf, label %bb.iy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1592

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1589: ; preds = %bb.ix, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1583
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1028 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ng = icmp sgt i64 %.val1028, 0
  br i1 %i.ng, label %bb.iz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1595

bb.iy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1586
  %i.nh = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1031 = load ptr, ptr %i.nh, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1031, i64 noundef %.val1030, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85436
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1592

bb.iz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1589
  %i.ni = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1029 = load ptr, ptr %i.ni, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1029, i64 noundef %.val1028, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85437
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1595

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1592: ; preds = %bb.iy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1586
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.nj = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.nj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598, label %bb.ja

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1595: ; preds = %bb.iz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.nk = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.nk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1601, label %bb.jb

bb.ja:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85438
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598

bb.jb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85439
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1601

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598: ; preds = %bb.ja, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1592
  %.0.val.off.i1602 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1603 = icmp ult i64 %.0.val.off.i1602, -2
  br i1 %switch.i1603, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85440
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1601: ; preds = %bb.jb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1595
  %.0.val.off.i1605 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1606 = icmp ult i64 %.0.val.off.i1605, -2
  br i1 %switch.i1606, label %bb.jc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1607

bb.jc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1601
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85441
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1607

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1598
  %.0.val.off.i1608 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1609 = icmp ult i64 %.0.val.off.i1608, -2
  br i1 %switch.i1609, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1604
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85442
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1607: ; preds = %bb.jc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1601
  %.0.val.off.i1611 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1612 = icmp ult i64 %.0.val.off.i1611, -2
  br i1 %switch.i1612, label %bb.jd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1613

bb.jd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1607
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85443
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1613

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1613: ; preds = %bb.jd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1607
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.je:                                            ; preds = %bb.jj, %bb.jg, %bb.it
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = icmp eq i64 %i.ll, 0
  br i1 %i.nm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1616, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85444
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1616

bb.jg:                                            ; preds = %bb.it
  %i.nn = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2144, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bf)
          to label %bb.jh unwind label %bb.je     ; 2 uses

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.not542 = icmp eq i8 %i.nn, 2
  br i1 %.not542, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 9)
          to label %bb.jv unwind label %bb.jt

bb.jj:                                            ; preds = %bb.jh
  %i.no = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @759, i64 noundef 57)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsn_0B9_.exit unwind label %bb.je

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsn_0B9_.exit: ; preds = %bb.jj
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.no, ptr %i.np, align 8
  store i64 -1, ptr %0, align 8
  %i.nq = icmp eq i64 %i.ll, 0
  br i1 %i.nq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1620, label %bb.jk

bb.jk:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsn_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85445
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1620

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1653: ; preds = %bb.ju, %bb.jt
  %i.nr = icmp eq i64 %i.lb, 0
  br i1 %i.nr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1623, label %bb.jl

bb.jl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1653
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85446
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1623

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1620: ; preds = %bb.jk, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsn_0B9_.exit
  %i.ns = icmp eq i64 %i.lb, 0
  br i1 %i.ns, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1626, label %bb.jm

bb.jm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1620
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85447
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1626

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1623: ; preds = %bb.jl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1653
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1018 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.nt = icmp sgt i64 %.val1018, 0
  br i1 %i.nt, label %bb.jn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1629

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1626: ; preds = %bb.jm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1620
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1016 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.nu = icmp sgt i64 %.val1016, 0
  br i1 %i.nu, label %bb.jo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1632

bb.jn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1623
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1019 = load ptr, ptr %i.nv, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1019, i64 noundef %.val1018, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85448
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1629

bb.jo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1626
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1017 = load ptr, ptr %i.nw, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1017, i64 noundef %.val1016, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85449
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1632

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1629: ; preds = %bb.jn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1623
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.nx = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.nx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635, label %bb.jp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1632: ; preds = %bb.jo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.ny = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ny, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1638, label %bb.jq

bb.jp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1629
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85450
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635

bb.jq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85451
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1638

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635: ; preds = %bb.jp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1629
  %.0.val.off.i1639 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1640 = icmp ult i64 %.0.val.off.i1639, -2
  br i1 %switch.i1640, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85452
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1638: ; preds = %bb.jq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1632
  %.0.val.off.i1642 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1643 = icmp ult i64 %.0.val.off.i1642, -2
  br i1 %switch.i1643, label %bb.jr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1644

bb.jr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1638
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85453
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1644

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1635
  %.0.val.off.i1645 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1646 = icmp ult i64 %.0.val.off.i1645, -2
  br i1 %switch.i1646, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1641
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85454
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1644: ; preds = %bb.jr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1638
  %.0.val.off.i1648 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1649 = icmp ult i64 %.0.val.off.i1648, -2
  br i1 %switch.i1649, label %bb.js, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1650

bb.js:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85455
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1650

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1650: ; preds = %bb.js, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1644
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.jt:                                            ; preds = %bb.jy, %bb.jv, %bb.ji
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = icmp eq i64 %i.ll, 0
  br i1 %i.oa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1653, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85456
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1653

bb.jv:                                            ; preds = %bb.ji
  %i.ob = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.be)
          to label %bb.jw unwind label %bb.jt     ; 2 uses

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.not555 = icmp eq i8 %i.ob, 2
  br i1 %.not555, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bd, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2146, i64 noundef 12)
          to label %bb.kk unwind label %bb.ki

bb.jy:                                            ; preds = %bb.jw
  %i.oc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @760, i64 noundef 59)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutso_0B9_.exit unwind label %bb.jt

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutso_0B9_.exit: ; preds = %bb.jy
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oc, ptr %i.od, align 8
  store i64 -1, ptr %0, align 8
  %i.oe = icmp eq i64 %i.ll, 0
  br i1 %i.oe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1657, label %bb.jz

bb.jz:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutso_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85457
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1657

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1690: ; preds = %bb.kj, %bb.ki
  %i.of = icmp eq i64 %i.lb, 0
  br i1 %i.of, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1660, label %bb.ka

bb.ka:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1690
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85458
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1660

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1657: ; preds = %bb.jz, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutso_0B9_.exit
  %i.og = icmp eq i64 %i.lb, 0
  br i1 %i.og, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1663, label %bb.kb

bb.kb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1657
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85459
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1663

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1660: ; preds = %bb.ka, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1690
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1006 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.oh = icmp sgt i64 %.val1006, 0
  br i1 %i.oh, label %bb.kc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1666

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1663: ; preds = %bb.kb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1657
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val1004 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.oi = icmp sgt i64 %.val1004, 0
  br i1 %i.oi, label %bb.kd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1669

bb.kc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1660
  %i.oj = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1007 = load ptr, ptr %i.oj, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1007, i64 noundef %.val1006, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85460
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1666

bb.kd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1663
  %i.ok = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1005 = load ptr, ptr %i.ok, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1005, i64 noundef %.val1004, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85461
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1669

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1666: ; preds = %bb.kc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1660
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.ol = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ol, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672, label %bb.ke

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1669: ; preds = %bb.kd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.om = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.om, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1675, label %bb.kf

bb.ke:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1666
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85462
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672

bb.kf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85463
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1675

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672: ; preds = %bb.ke, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1666
  %.0.val.off.i1676 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1677 = icmp ult i64 %.0.val.off.i1676, -2
  br i1 %switch.i1677, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85464
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1675: ; preds = %bb.kf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1669
  %.0.val.off.i1679 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1680 = icmp ult i64 %.0.val.off.i1679, -2
  br i1 %switch.i1680, label %bb.kg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1681

bb.kg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1675
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85465
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1681

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1672
  %.0.val.off.i1682 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1683 = icmp ult i64 %.0.val.off.i1682, -2
  br i1 %switch.i1683, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1678
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85466
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1681: ; preds = %bb.kg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1675
  %.0.val.off.i1685 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1686 = icmp ult i64 %.0.val.off.i1685, -2
  br i1 %switch.i1686, label %bb.kh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1687

bb.kh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85467
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1687

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1687: ; preds = %bb.kh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1681
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.ki:                                            ; preds = %bb.kn, %bb.kk, %bb.jx
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = icmp eq i64 %i.ll, 0
  br i1 %i.oo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1690, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85468
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1690

bb.kk:                                            ; preds = %bb.jx
  %i.op = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2146, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bd)
          to label %bb.kl unwind label %bb.ki     ; 2 uses

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.not568 = icmp eq i8 %i.op, 2
  br i1 %.not568, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bc, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 3)
          to label %bb.kz unwind label %bb.kx

bb.kn:                                            ; preds = %bb.kl
  %i.oq = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @761, i64 noundef 62)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsp_0B9_.exit unwind label %bb.ki

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsp_0B9_.exit: ; preds = %bb.kn
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oq, ptr %i.or, align 8
  store i64 -1, ptr %0, align 8
  %i.os = icmp eq i64 %i.ll, 0
  br i1 %i.os, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1694, label %bb.ko

bb.ko:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsp_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85469
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1694

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1727: ; preds = %bb.ky, %bb.kx
  %i.ot = icmp eq i64 %i.lb, 0
  br i1 %i.ot, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1697, label %bb.kp

bb.kp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1727
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85470
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1697

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1694: ; preds = %bb.ko, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsp_0B9_.exit
  %i.ou = icmp eq i64 %i.lb, 0
  br i1 %i.ou, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1700, label %bb.kq

bb.kq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1694
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85471
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1700

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1697: ; preds = %bb.kp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1727
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val994 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ov = icmp sgt i64 %.val994, 0
  br i1 %i.ov, label %bb.kr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1703

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1700: ; preds = %bb.kq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1694
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val992 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ow = icmp sgt i64 %.val992, 0
  br i1 %i.ow, label %bb.ks, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1706

bb.kr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1697
  %i.ox = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val995 = load ptr, ptr %i.ox, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val995, i64 noundef %.val994, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85472
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1703

bb.ks:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1700
  %i.oy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val993 = load ptr, ptr %i.oy, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val993, i64 noundef %.val992, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85473
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1706

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1703: ; preds = %bb.kr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1697
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.oz = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.oz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709, label %bb.kt

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1706: ; preds = %bb.ks, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.pa = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.pa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1712, label %bb.ku

bb.kt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1703
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85474
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709

bb.ku:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1706
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85475
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1712

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709: ; preds = %bb.kt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1703
  %.0.val.off.i1713 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1714 = icmp ult i64 %.0.val.off.i1713, -2
  br i1 %switch.i1714, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85476
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1712: ; preds = %bb.ku, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1706
  %.0.val.off.i1716 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1717 = icmp ult i64 %.0.val.off.i1716, -2
  br i1 %switch.i1717, label %bb.kv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1718

bb.kv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85477
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1718

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1709
  %.0.val.off.i1719 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1720 = icmp ult i64 %.0.val.off.i1719, -2
  br i1 %switch.i1720, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1715
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85478
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1718: ; preds = %bb.kv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1712
  %.0.val.off.i1722 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1723 = icmp ult i64 %.0.val.off.i1722, -2
  br i1 %switch.i1723, label %bb.kw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1724

bb.kw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1718
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85479
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1724

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1724: ; preds = %bb.kw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1718
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.kx:                                            ; preds = %bb.lc, %bb.kz, %bb.km
  %i.pb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pc = icmp eq i64 %i.ll, 0
  br i1 %i.pc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1727, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85480
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1727

bb.kz:                                            ; preds = %bb.km
  %i.pd = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bc)
          to label %bb.la unwind label %bb.kx     ; 2 uses

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.not581 = icmp eq i8 %i.pd, 2
  br i1 %.not581, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bb, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 5)
          to label %bb.lo unwind label %bb.lm

bb.lc:                                            ; preds = %bb.la
  %i.pe = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @762, i64 noundef 53)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsq_0B9_.exit unwind label %bb.kx

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsq_0B9_.exit: ; preds = %bb.lc
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pe, ptr %i.pf, align 8
  store i64 -1, ptr %0, align 8
  %i.pg = icmp eq i64 %i.ll, 0
  br i1 %i.pg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1731, label %bb.ld

bb.ld:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsq_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85481
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1731

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1764: ; preds = %bb.ln, %bb.lm
  %i.ph = icmp eq i64 %i.lb, 0
  br i1 %i.ph, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1734, label %bb.le

bb.le:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1764
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85482
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1734

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1731: ; preds = %bb.ld, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsq_0B9_.exit
  %i.pi = icmp eq i64 %i.lb, 0
  br i1 %i.pi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1737, label %bb.lf

bb.lf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85483
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1737

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1734: ; preds = %bb.le, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1764
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val982 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.pj = icmp sgt i64 %.val982, 0
  br i1 %i.pj, label %bb.lg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1740

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1737: ; preds = %bb.lf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1731
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val980 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.pk = icmp sgt i64 %.val980, 0
  br i1 %i.pk, label %bb.lh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1743

bb.lg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1734
  %i.pl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val983 = load ptr, ptr %i.pl, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val983, i64 noundef %.val982, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85484
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1740

bb.lh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1737
  %i.pm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val981 = load ptr, ptr %i.pm, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val981, i64 noundef %.val980, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85485
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1743

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1740: ; preds = %bb.lg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1734
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.pn = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.pn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746, label %bb.li

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1743: ; preds = %bb.lh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.po = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.po, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1749, label %bb.lj

bb.li:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1740
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85486
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746

bb.lj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1743
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85487
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1749

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746: ; preds = %bb.li, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1740
  %.0.val.off.i1750 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1751 = icmp ult i64 %.0.val.off.i1750, -2
  br i1 %switch.i1751, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85488
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1749: ; preds = %bb.lj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1743
  %.0.val.off.i1753 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1754 = icmp ult i64 %.0.val.off.i1753, -2
  br i1 %switch.i1754, label %bb.lk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1755

bb.lk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85489
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1755

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1746
  %.0.val.off.i1756 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1757 = icmp ult i64 %.0.val.off.i1756, -2
  br i1 %switch.i1757, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85490
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1755: ; preds = %bb.lk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1749
  %.0.val.off.i1759 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1760 = icmp ult i64 %.0.val.off.i1759, -2
  br i1 %switch.i1760, label %bb.ll, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1761

bb.ll:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1755
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85491
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1761

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1761: ; preds = %bb.ll, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1755
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.lm:                                            ; preds = %bb.lr, %bb.lo, %bb.lb
  %i.pp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pq = icmp eq i64 %i.ll, 0
  br i1 %i.pq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1764, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85492
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1764

bb.lo:                                            ; preds = %bb.lb
  %i.pr = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bb)
          to label %bb.lp unwind label %bb.lm     ; 2 uses

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %.not594 = icmp eq i8 %i.pr, 2
  br i1 %.not594, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.ba, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2148, i64 noundef 3)
          to label %bb.me unwind label %bb.md

bb.lr:                                            ; preds = %bb.lp
  %i.ps = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @763, i64 noundef 55)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsr_0B9_.exit unwind label %bb.lm

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsr_0B9_.exit: ; preds = %bb.lr
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ps, ptr %i.pt, align 8
  store i64 -1, ptr %0, align 8
  %i.pu = icmp eq i64 %i.ll, 0
  br i1 %i.pu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1768, label %bb.ls

bb.ls:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsr_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85493
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1768

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1801: ; preds = %bb.mc, %bb.mb
  %i.pv = icmp eq i64 %i.lb, 0
  br i1 %i.pv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1771, label %bb.lt

bb.lt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1801
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85494
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1771

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1768: ; preds = %bb.ls, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsr_0B9_.exit
  %i.pw = icmp eq i64 %i.lb, 0
  br i1 %i.pw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1774, label %bb.lu

bb.lu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1768
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85495
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1774

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1771: ; preds = %bb.lt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1801
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val970 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.px = icmp sgt i64 %.val970, 0
  br i1 %i.px, label %bb.lv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1777

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1774: ; preds = %bb.lu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1768
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val968 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.py = icmp sgt i64 %.val968, 0
  br i1 %i.py, label %bb.lw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1780

bb.lv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1771
  %i.pz = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val971 = load ptr, ptr %i.pz, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val971, i64 noundef %.val970, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85496
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1777

bb.lw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1774
  %i.qa = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val969 = load ptr, ptr %i.qa, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val969, i64 noundef %.val968, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85497
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1780

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1777: ; preds = %bb.lv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1771
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.qb = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.qb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783, label %bb.lx

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1780: ; preds = %bb.lw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.qc = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.qc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1786, label %bb.ly

bb.lx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1777
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85498
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783

bb.ly:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1780
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85499
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1786

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783: ; preds = %bb.lx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1777
  %.0.val.off.i1787 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1788 = icmp ult i64 %.0.val.off.i1787, -2
  br i1 %switch.i1788, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85500
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1786: ; preds = %bb.ly, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1780
  %.0.val.off.i1790 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1791 = icmp ult i64 %.0.val.off.i1790, -2
  br i1 %switch.i1791, label %bb.lz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1792

bb.lz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85501
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1792

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1783
  %.0.val.off.i1793 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1794 = icmp ult i64 %.0.val.off.i1793, -2
  br i1 %switch.i1794, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1789
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85502
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1792: ; preds = %bb.lz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1786
  %.0.val.off.i1796 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1797 = icmp ult i64 %.0.val.off.i1796, -2
  br i1 %switch.i1797, label %bb.ma, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1798

bb.ma:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1792
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85503
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1798

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1798: ; preds = %bb.ma, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1792
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.mb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, %bb.md
  %.pn610.pn.pn = phi { ptr, i32 } [ %.pn610.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit ], [ %i.qe, %bb.md ] ; 2 uses
  %i.qd = icmp eq i64 %i.ll, 0
  br i1 %i.qd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1801, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85504
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1801

bb.md:                                            ; preds = %bb.mg, %bb.me, %bb.lq
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.me:                                            ; preds = %bb.lq
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2148, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.ba)
          to label %bb.mf unwind label %bb.md

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.qf = load ptr, ptr %i.de, align 8, !noundef !28
  %.not607 = icmp eq ptr %i.qf, null
  br i1 %.not607, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull align 8 dereferenceable(112) %i.de, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ay)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutss_0B9_.exit unwind label %bb.md

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  store i64 0, ptr %i.df, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.qg, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 0, ptr %i.qh, align 8
  br label %bb.mi

bb.mi:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutss_0B9_.exit, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ax, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 5)
          to label %bb.mk unwind label %bb.mj

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutss_0B9_.exit: ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.mi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.mo, %bb.mn, %bb.mm, %bb.mj
  %.pn610.pn = phi { ptr, i32 } [ %i.qi, %bb.mj ], [ %.pn610, %bb.mm ], [ %.pn610, %bb.mn ], [ %.pn610, %bb.mo ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  br label %bb.mb

bb.mj:                                            ; preds = %bb.mk, %bb.mi
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

bb.mk:                                            ; preds = %bb.mi
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ax)
          to label %bb.ml unwind label %bb.mj

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.aw, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2149, i64 noundef 9)
          to label %bb.mq unwind label %bb.mp

bb.mm:                                            ; preds = %bb.mv, %bb.mp
  %.pn610 = phi { ptr, i32 } [ %i.qr, %bb.mv ], [ %i.qn, %bb.mp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85505)
  %i.qj = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85505, !noundef !28 ; 3 uses
  %i.qk = icmp eq i64 %i.qj, -1
  br i1 %i.qk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.experimental.noalias.scope.decl(metadata !85506)
  call void @llvm.experimental.noalias.scope.decl(metadata !85507)
  %i.ql = icmp eq i64 %i.qj, 0
  br i1 %i.ql, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.qm = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i = load ptr, ptr %i.qm, align 8, !alias.scope !85508, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.qj, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85508
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

bb.mp:                                            ; preds = %bb.ms, %bb.mq, %bb.ml
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.mq:                                            ; preds = %bb.ml
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2149, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.aw)
          to label %bb.mr unwind label %bb.mp

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.qo = load ptr, ptr %i.db, align 8, !noundef !28
  %.not608 = icmp eq ptr %i.qo, null
  br i1 %.not608, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.au, ptr noundef nonnull align 8 dereferenceable(112) %i.db, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.au)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutst_0B9_.exit unwind label %bb.mp

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  store i64 0, ptr %i.dc, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.qp, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 0, ptr %i.qq, align 8
  br label %bb.mu

bb.mu:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutst_0B9_.exit, %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.at, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2150, i64 noundef 13)
          to label %bb.mw unwind label %bb.mv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutst_0B9_.exit: ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.mu

bb.mv:                                            ; preds = %bb.mz, %bb.mw, %bb.mu
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  br label %bb.mm

bb.mw:                                            ; preds = %bb.mu
  %i.qs = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2150, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.at)
          to label %bb.mx unwind label %bb.mv     ; 2 uses

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.not609 = icmp eq i8 %i.qs, 2
  br i1 %.not609, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.np unwind label %bb.no

bb.mz:                                            ; preds = %bb.mx
  %i.qt = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @764, i64 noundef 63)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsu_0B9_.exit unwind label %bb.mv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsu_0B9_.exit: ; preds = %bb.mz
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qt, ptr %i.qu, align 8
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85509)
  %i.qv = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85509, !noundef !28 ; 3 uses
  %i.qw = icmp eq i64 %i.qv, -1
  br i1 %i.qw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808, label %bb.nc

bb.na:                                            ; preds = %bb.no
  call void @llvm.experimental.noalias.scope.decl(metadata !85510)
  call void @llvm.experimental.noalias.scope.decl(metadata !85511)
  %i.qx = icmp eq i64 %i.rm, 0
  br i1 %i.qx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.qy = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1805 = load ptr, ptr %i.qy, align 8, !alias.scope !85512, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1805, i64 noundef %i.rm, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85512
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806

bb.nc:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsu_0B9_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !85513)
  call void @llvm.experimental.noalias.scope.decl(metadata !85514)
  %i.qz = icmp eq i64 %i.qv, 0
  br i1 %i.qz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.ra = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1807 = load ptr, ptr %i.ra, align 8, !alias.scope !85515, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1807, i64 noundef %i.qv, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85515
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806: ; preds = %bb.nb, %bb.na, %bb.no
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.rb = icmp eq i64 %i.ll, 0
  br i1 %i.rb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1811, label %bb.ne

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808: ; preds = %bb.nd, %bb.nc, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsu_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.rc = icmp eq i64 %i.ll, 0
  br i1 %i.rc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1814, label %bb.nf

bb.ne:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85516
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1811

bb.nf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85517
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1814

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1811: ; preds = %bb.ne, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806
  %i.rd = icmp eq i64 %i.lb, 0
  br i1 %i.rd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1817, label %bb.ng

bb.ng:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1811
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85518
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1817

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1814: ; preds = %bb.nf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1808
  %i.re = icmp eq i64 %i.lb, 0
  br i1 %i.re, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1820, label %bb.nh

bb.nh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1814
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85519
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1820

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1817: ; preds = %bb.ng, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1811
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val958 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.rf = icmp sgt i64 %.val958, 0
  br i1 %i.rf, label %bb.ni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1823

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1820: ; preds = %bb.nh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1814
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val956 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.rg = icmp sgt i64 %.val956, 0
  br i1 %i.rg, label %bb.nj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1826

bb.ni:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1817
  %i.rh = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val959 = load ptr, ptr %i.rh, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val959, i64 noundef %.val958, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85520
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1823

bb.nj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1820
  %i.ri = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val957 = load ptr, ptr %i.ri, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val957, i64 noundef %.val956, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85521
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1826

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1823: ; preds = %bb.ni, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1817
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.rj = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.rj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829, label %bb.nk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1826: ; preds = %bb.nj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.rk = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.rk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1832, label %bb.nl

bb.nk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1823
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85522
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829

bb.nl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1826
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85523
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1832

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829: ; preds = %bb.nk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1823
  %.0.val.off.i1833 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1834 = icmp ult i64 %.0.val.off.i1833, -2
  br i1 %switch.i1834, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85524
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1832: ; preds = %bb.nl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1826
  %.0.val.off.i1836 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1837 = icmp ult i64 %.0.val.off.i1836, -2
  br i1 %switch.i1837, label %bb.nm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1838

bb.nm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1832
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85525
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1838

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1829
  %.0.val.off.i1839 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1840 = icmp ult i64 %.0.val.off.i1839, -2
  br i1 %switch.i1840, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1835
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85526
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1838: ; preds = %bb.nm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1832
  %.0.val.off.i1842 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1843 = icmp ult i64 %.0.val.off.i1842, -2
  br i1 %switch.i1843, label %bb.nn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1844

bb.nn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1838
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85527
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1844

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1844: ; preds = %bb.nn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1838
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.no:                                            ; preds = %bb.my
  %i.rl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85528)
  %i.rm = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85528, !noundef !28 ; 3 uses
  %i.rn = icmp eq i64 %i.rm, -1
  br i1 %i.rn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1806, label %bb.na

bb.np:                                            ; preds = %bb.my
  %i.ro = load i64, ptr %i.cz, align 8, !range !84, !noundef !28 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, -2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8            ; 2 uses
  br i1 %i.rp, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rr, ptr %i.rs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85529)
  %i.rt = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85529, !noundef !28 ; 3 uses
  %i.ru = icmp eq i64 %i.rt, -1
  br i1 %i.ru, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213, label %bb.tp

bb.nr:                                            ; preds = %bb.np
  %.sroa.5396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5295.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5396.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  store i64 %i.ro, ptr %i.da, align 8
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.rr, ptr %.sroa.4294.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.as, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 7)
          to label %bb.nt unwind label %bb.ns

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847: ; preds = %bb.nw, %bb.nv, %bb.ns
  %.pn641 = phi { ptr, i32 } [ %i.rx, %bb.ns ], [ %i.ry, %bb.nv ], [ %i.ry, %bb.nw ] ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85530)
  %i.rv = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85530, !noundef !28 ; 3 uses
  %i.rw = icmp eq i64 %i.rv, -1
  br i1 %i.rw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211, label %bb.tn

bb.ns:                                            ; preds = %bb.nt, %bb.nr
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847

bb.nt:                                            ; preds = %bb.nr
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.as)
          to label %bb.nu unwind label %bb.ns

bb.nu:                                            ; preds = %bb.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2151, i64 noundef 4)
          to label %bb.nx unwind label %bb.nv

bb.nv:                                            ; preds = %bb.oa, %bb.nx, %bb.nu
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val946 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.rz = icmp sgt i64 %.val946, 0
  br i1 %i.rz, label %bb.nw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847

bb.nw:                                            ; preds = %bb.nv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val947 = load ptr, ptr %i.sa, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val947, i64 noundef %.val946, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85531
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847

bb.nx:                                            ; preds = %bb.nu
  %i.sb = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2151, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ar)
          to label %bb.ny unwind label %bb.nv     ; 2 uses

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not640 = icmp eq i8 %i.sb, 2
  br i1 %.not640, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.aq, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 9)
          to label %bb.or unwind label %bb.op

bb.oa:                                            ; preds = %bb.ny
  %i.sc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @765, i64 noundef 54)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsv_0B9_.exit unwind label %bb.nv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsv_0B9_.exit: ; preds = %bb.oa
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sc, ptr %i.sd, align 8
  store i64 -1, ptr %0, align 8
  %.val944 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.se = icmp sgt i64 %.val944, 0
  br i1 %i.se, label %bb.ob, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1851

bb.ob:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsv_0B9_.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val945 = load ptr, ptr %i.sf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val945, i64 noundef %.val944, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85532
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1851

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1894: ; preds = %bb.oq, %bb.op
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85533)
  %i.sg = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85533, !noundef !28 ; 3 uses
  %i.sh = icmp eq i64 %i.sg, -1
  br i1 %i.sh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853, label %bb.oc

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1851: ; preds = %bb.ob, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsv_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85534)
  %i.si = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85534, !noundef !28 ; 3 uses
  %i.sj = icmp eq i64 %i.si, -1
  br i1 %i.sj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855, label %bb.oe

bb.oc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1894
  call void @llvm.experimental.noalias.scope.decl(metadata !85535)
  call void @llvm.experimental.noalias.scope.decl(metadata !85536)
  %i.sk = icmp eq i64 %i.sg, 0
  br i1 %i.sk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.sl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1852 = load ptr, ptr %i.sl, align 8, !alias.scope !85537, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1852, i64 noundef %i.sg, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85537
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853

bb.oe:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1851
  call void @llvm.experimental.noalias.scope.decl(metadata !85538)
  call void @llvm.experimental.noalias.scope.decl(metadata !85539)
  %i.sm = icmp eq i64 %i.si, 0
  br i1 %i.sm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.sn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1854 = load ptr, ptr %i.sn, align 8, !alias.scope !85540, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1854, i64 noundef %i.si, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85540
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853: ; preds = %bb.od, %bb.oc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1894
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.so = icmp eq i64 %i.ll, 0
  br i1 %i.so, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1858, label %bb.og

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855: ; preds = %bb.of, %bb.oe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.sp = icmp eq i64 %i.ll, 0
  br i1 %i.sp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1861, label %bb.oh

bb.og:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85541
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1858

bb.oh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85542
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1861

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1858: ; preds = %bb.og, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1853
  %i.sq = icmp eq i64 %i.lb, 0
  br i1 %i.sq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1864, label %bb.oi

bb.oi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1858
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85543
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1864

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1861: ; preds = %bb.oh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1855
  %i.sr = icmp eq i64 %i.lb, 0
  br i1 %i.sr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1867, label %bb.oj

bb.oj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1861
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85544
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1867

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1864: ; preds = %bb.oi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1858
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val942 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ss = icmp sgt i64 %.val942, 0
  br i1 %i.ss, label %bb.ok, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1870

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1867: ; preds = %bb.oj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1861
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val940 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.st = icmp sgt i64 %.val940, 0
  br i1 %i.st, label %bb.ol, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1873

bb.ok:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1864
  %i.su = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val943 = load ptr, ptr %i.su, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val943, i64 noundef %.val942, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85545
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1870

bb.ol:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1867
  %i.sv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val941 = load ptr, ptr %i.sv, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val941, i64 noundef %.val940, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85546
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1873

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1870: ; preds = %bb.ok, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1864
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.sw = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.sw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876, label %bb.om

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1873: ; preds = %bb.ol, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.sx = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.sx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1879, label %bb.on

bb.om:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85547
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876

bb.on:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1873
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85548
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1879

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876: ; preds = %bb.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1870
  %.0.val.off.i1880 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1881 = icmp ult i64 %.0.val.off.i1880, -2
  br i1 %switch.i1881, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85549
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1879: ; preds = %bb.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1873
  %.0.val.off.i1883 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1884 = icmp ult i64 %.0.val.off.i1883, -2
  br i1 %switch.i1884, label %bb.oo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1885

bb.oo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1879
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85550
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1885

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1876
  %.0.val.off.i1886 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1887 = icmp ult i64 %.0.val.off.i1886, -2
  br i1 %switch.i1887, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1882
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85551
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1885: ; preds = %bb.oo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1879
  %.0.val.off.i1889 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1890 = icmp ult i64 %.0.val.off.i1889, -2
  br i1 %switch.i1890, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

bb.op:                                            ; preds = %bb.ou, %bb.or, %bb.nz
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val930 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.sz = icmp sgt i64 %.val930, 0
  br i1 %i.sz, label %bb.oq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1894

bb.oq:                                            ; preds = %bb.op
  %i.ta = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val931 = load ptr, ptr %i.ta, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val931, i64 noundef %.val930, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85552
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1894

bb.or:                                            ; preds = %bb.nz
  %i.tb = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.aq)
          to label %bb.os unwind label %bb.op     ; 2 uses

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.not643 = icmp eq i8 %i.tb, 2
  br i1 %.not643, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2152, i64 noundef 16)
          to label %bb.pl unwind label %bb.pj

bb.ou:                                            ; preds = %bb.os
  %i.tc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 59)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsw_0B9_.exit unwind label %bb.op

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsw_0B9_.exit: ; preds = %bb.ou
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tc, ptr %i.td, align 8
  store i64 -1, ptr %0, align 8
  %.val928 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.te = icmp sgt i64 %.val928, 0
  br i1 %i.te, label %bb.ov, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1898

bb.ov:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsw_0B9_.exit
  %i.tf = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val929 = load ptr, ptr %i.tf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val929, i64 noundef %.val928, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85553
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1898

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1941: ; preds = %bb.pk, %bb.pj
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85554)
  %i.tg = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85554, !noundef !28 ; 3 uses
  %i.th = icmp eq i64 %i.tg, -1
  br i1 %i.th, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900, label %bb.ow

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1898: ; preds = %bb.ov, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsw_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85555)
  %i.ti = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85555, !noundef !28 ; 3 uses
  %i.tj = icmp eq i64 %i.ti, -1
  br i1 %i.tj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902, label %bb.oy

bb.ow:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1941
  call void @llvm.experimental.noalias.scope.decl(metadata !85556)
  call void @llvm.experimental.noalias.scope.decl(metadata !85557)
  %i.tk = icmp eq i64 %i.tg, 0
  br i1 %i.tk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.tl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1899 = load ptr, ptr %i.tl, align 8, !alias.scope !85558, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1899, i64 noundef %i.tg, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85558
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900

bb.oy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1898
  call void @llvm.experimental.noalias.scope.decl(metadata !85559)
  call void @llvm.experimental.noalias.scope.decl(metadata !85560)
  %i.tm = icmp eq i64 %i.ti, 0
  br i1 %i.tm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.tn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1901 = load ptr, ptr %i.tn, align 8, !alias.scope !85561, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1901, i64 noundef %i.ti, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85561
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900: ; preds = %bb.ox, %bb.ow, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1941
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.to = icmp eq i64 %i.ll, 0
  br i1 %i.to, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1905, label %bb.pa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902: ; preds = %bb.oz, %bb.oy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.tp = icmp eq i64 %i.ll, 0
  br i1 %i.tp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1908, label %bb.pb

bb.pa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85562
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1905

bb.pb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85563
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1908

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1905: ; preds = %bb.pa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1900
  %i.tq = icmp eq i64 %i.lb, 0
  br i1 %i.tq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1911, label %bb.pc

bb.pc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85564
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1911

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1908: ; preds = %bb.pb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1902
  %i.tr = icmp eq i64 %i.lb, 0
  br i1 %i.tr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1914, label %bb.pd

bb.pd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1908
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85565
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1914

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1911: ; preds = %bb.pc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1905
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val926 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ts = icmp sgt i64 %.val926, 0
  br i1 %i.ts, label %bb.pe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1917

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1914: ; preds = %bb.pd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1908
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val924 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.tt = icmp sgt i64 %.val924, 0
  br i1 %i.tt, label %bb.pf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1920

bb.pe:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1911
  %i.tu = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val927 = load ptr, ptr %i.tu, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val927, i64 noundef %.val926, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85566
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1917

bb.pf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1914
  %i.tv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val925 = load ptr, ptr %i.tv, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val925, i64 noundef %.val924, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85567
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1920

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1917: ; preds = %bb.pe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1911
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.tw = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.tw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923, label %bb.pg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1920: ; preds = %bb.pf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.tx = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.tx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1926, label %bb.ph

bb.pg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1917
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85568
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923

bb.ph:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1920
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85569
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1926

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923: ; preds = %bb.pg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1917
  %.0.val.off.i1927 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1928 = icmp ult i64 %.0.val.off.i1927, -2
  br i1 %switch.i1928, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85570
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1926: ; preds = %bb.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1920
  %.0.val.off.i1930 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1931 = icmp ult i64 %.0.val.off.i1930, -2
  br i1 %switch.i1931, label %bb.pi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1932

bb.pi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1926
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85571
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1932

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1923
  %.0.val.off.i1933 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1934 = icmp ult i64 %.0.val.off.i1933, -2
  br i1 %switch.i1934, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85572
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1932: ; preds = %bb.pi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1926
  %.0.val.off.i1936 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1937 = icmp ult i64 %.0.val.off.i1936, -2
  br i1 %switch.i1937, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

bb.pj:                                            ; preds = %bb.po, %bb.pl, %bb.ot
  %i.ty = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val914 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.tz = icmp sgt i64 %.val914, 0
  br i1 %i.tz, label %bb.pk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1941

bb.pk:                                            ; preds = %bb.pj
  %i.ua = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val915 = load ptr, ptr %i.ua, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val915, i64 noundef %.val914, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85573
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1941

bb.pl:                                            ; preds = %bb.ot
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2152, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ap)
          to label %bb.pm unwind label %bb.pj

bb.pm:                                            ; preds = %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ub = load i64, ptr %i.cx, align 8, !range !37, !noundef !28 ; 18 uses
  %.not661 = icmp eq i64 %i.ub, -1
  br i1 %.not661, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %.sroa.4398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.4398.0.copyload = load ptr, ptr %.sroa.4398.0..sroa_idx, align 8 ; 17 uses
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.5399.0.copyload = load i64, ptr %.sroa.5399.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2153, i64 noundef 8)
          to label %bb.qf unwind label %bb.qd

bb.po:                                            ; preds = %bb.pm
  %i.uc = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 66)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsx_0B9_.exit unwind label %bb.pj

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsx_0B9_.exit: ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uc, ptr %i.ud, align 8
  store i64 -1, ptr %0, align 8
  %.val912 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ue = icmp sgt i64 %.val912, 0
  br i1 %i.ue, label %bb.pp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1945

bb.pp:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsx_0B9_.exit
  %i.uf = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val913 = load ptr, ptr %i.uf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val913, i64 noundef %.val912, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85574
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1945

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2209: ; preds = %bb.tm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1988
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85575)
  %i.ug = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85575, !noundef !28 ; 3 uses
  %i.uh = icmp eq i64 %i.ug, -1
  br i1 %i.uh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947, label %bb.pq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1945: ; preds = %bb.pp, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsx_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85576)
  %i.ui = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85576, !noundef !28 ; 3 uses
  %i.uj = icmp eq i64 %i.ui, -1
  br i1 %i.uj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949, label %bb.ps

bb.pq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2209
  call void @llvm.experimental.noalias.scope.decl(metadata !85577)
  call void @llvm.experimental.noalias.scope.decl(metadata !85578)
  %i.uk = icmp eq i64 %i.ug, 0
  br i1 %i.uk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ul = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1946 = load ptr, ptr %i.ul, align 8, !alias.scope !85579, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1946, i64 noundef %i.ug, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85579
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947

bb.ps:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1945
  call void @llvm.experimental.noalias.scope.decl(metadata !85580)
  call void @llvm.experimental.noalias.scope.decl(metadata !85581)
  %i.um = icmp eq i64 %i.ui, 0
  br i1 %i.um, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.un = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1948 = load ptr, ptr %i.un, align 8, !alias.scope !85582, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1948, i64 noundef %i.ui, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85582
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947: ; preds = %bb.pr, %bb.pq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2209
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.uo = icmp eq i64 %i.ll, 0
  br i1 %i.uo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1952, label %bb.pu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949: ; preds = %bb.pt, %bb.ps, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.up = icmp eq i64 %i.ll, 0
  br i1 %i.up, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1955, label %bb.pv

bb.pu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85583
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1952

bb.pv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85584
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1955

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1952: ; preds = %bb.pu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1947
  %i.uq = icmp eq i64 %i.lb, 0
  br i1 %i.uq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1958, label %bb.pw

bb.pw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1952
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85585
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1958

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1955: ; preds = %bb.pv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1949
  %i.ur = icmp eq i64 %i.lb, 0
  br i1 %i.ur, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1961, label %bb.px

bb.px:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1955
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85586
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1961

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1958: ; preds = %bb.pw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1952
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val910 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.us = icmp sgt i64 %.val910, 0
  br i1 %i.us, label %bb.py, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1964

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1961: ; preds = %bb.px, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1955
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val908 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ut = icmp sgt i64 %.val908, 0
  br i1 %i.ut, label %bb.pz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1967

bb.py:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1958
  %i.uu = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val911 = load ptr, ptr %i.uu, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val911, i64 noundef %.val910, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85587
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1964

bb.pz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1961
  %i.uv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val909 = load ptr, ptr %i.uv, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val909, i64 noundef %.val908, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85588
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1967

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1964: ; preds = %bb.py, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1958
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.uw = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.uw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970, label %bb.qa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1967: ; preds = %bb.pz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.ux = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ux, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1973, label %bb.qb

bb.qa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1964
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85589
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970

bb.qb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1967
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85590
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1973

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970: ; preds = %bb.qa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1964
  %.0.val.off.i1974 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1975 = icmp ult i64 %.0.val.off.i1974, -2
  br i1 %switch.i1975, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85591
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1973: ; preds = %bb.qb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1967
  %.0.val.off.i1977 = add i64 %.sroa.0.0.copyload, -1
  %switch.i1978 = icmp ult i64 %.0.val.off.i1977, -2
  br i1 %switch.i1978, label %bb.qc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1979

bb.qc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1973
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85592
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1979

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1970
  %.0.val.off.i1980 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1981 = icmp ult i64 %.0.val.off.i1980, -2
  br i1 %switch.i1981, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1976
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85593
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1979: ; preds = %bb.qc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit1973
  %.0.val.off.i1983 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i1984 = icmp ult i64 %.0.val.off.i1983, -2
  br i1 %switch.i1984, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

bb.qd:                                            ; preds = %bb.qi, %bb.qf, %bb.pn
  %i.uy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uz = icmp eq i64 %i.ub, 0
  br i1 %i.uz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1988, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85594
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1988

bb.qf:                                            ; preds = %bb.pn
  %i.va = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2153, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ao)
          to label %bb.qg unwind label %bb.qd     ; 2 uses

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.not679 = icmp eq i8 %i.va, 2
  br i1 %.not679, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.an, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @466, i64 noundef 8)
          to label %bb.rb unwind label %bb.qz

bb.qi:                                            ; preds = %bb.qg
  %i.vb = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @768, i64 noundef 58)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsy_0B9_.exit unwind label %bb.qd

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsy_0B9_.exit: ; preds = %bb.qi
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vb, ptr %i.vc, align 8
  store i64 -1, ptr %0, align 8
  %i.vd = icmp eq i64 %i.ub, 0
  br i1 %i.vd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1992, label %bb.qj

bb.qj:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsy_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85595
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1992

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2041: ; preds = %bb.ra, %bb.qz
  %.val898 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ve = icmp sgt i64 %.val898, 0
  br i1 %i.ve, label %bb.qk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1995

bb.qk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2041
  %i.vf = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val899 = load ptr, ptr %i.vf, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val899, i64 noundef %.val898, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85596
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1995

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1992: ; preds = %bb.qj, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsy_0B9_.exit
  %.val896 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.vg = icmp sgt i64 %.val896, 0
  br i1 %i.vg, label %bb.ql, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1998

bb.ql:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1992
  %i.vh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val897 = load ptr, ptr %i.vh, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val897, i64 noundef %.val896, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85597
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1998

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1995: ; preds = %bb.qk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2041
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85598)
  %i.vi = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85598, !noundef !28 ; 3 uses
  %i.vj = icmp eq i64 %i.vi, -1
  br i1 %i.vj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000, label %bb.qm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1998: ; preds = %bb.ql, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85599)
  %i.vk = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85599, !noundef !28 ; 3 uses
  %i.vl = icmp eq i64 %i.vk, -1
  br i1 %i.vl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002, label %bb.qo

bb.qm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1995
  call void @llvm.experimental.noalias.scope.decl(metadata !85600)
  call void @llvm.experimental.noalias.scope.decl(metadata !85601)
  %i.vm = icmp eq i64 %i.vi, 0
  br i1 %i.vm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.vn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i1999 = load ptr, ptr %i.vn, align 8, !alias.scope !85602, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1999, i64 noundef %i.vi, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85602
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000

bb.qo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1998
  call void @llvm.experimental.noalias.scope.decl(metadata !85603)
  call void @llvm.experimental.noalias.scope.decl(metadata !85604)
  %i.vo = icmp eq i64 %i.vk, 0
  br i1 %i.vo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.vp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2001 = load ptr, ptr %i.vp, align 8, !alias.scope !85605, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2001, i64 noundef %i.vk, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85605
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000: ; preds = %bb.qn, %bb.qm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1995
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.vq = icmp eq i64 %i.ll, 0
  br i1 %i.vq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2005, label %bb.qq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002: ; preds = %bb.qp, %bb.qo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.vr = icmp eq i64 %i.ll, 0
  br i1 %i.vr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2008, label %bb.qr

bb.qq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85606
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2005

bb.qr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85607
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2008

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2005: ; preds = %bb.qq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2000
  %i.vs = icmp eq i64 %i.lb, 0
  br i1 %i.vs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2011, label %bb.qs

bb.qs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2005
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85608
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2011

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2008: ; preds = %bb.qr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2002
  %i.vt = icmp eq i64 %i.lb, 0
  br i1 %i.vt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2014, label %bb.qt

bb.qt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2008
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85609
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2014

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2011: ; preds = %bb.qs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2005
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val894 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.vu = icmp sgt i64 %.val894, 0
  br i1 %i.vu, label %bb.qu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2017

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2014: ; preds = %bb.qt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2008
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val892 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.vv = icmp sgt i64 %.val892, 0
  br i1 %i.vv, label %bb.qv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2020

bb.qu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2011
  %i.vw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val895 = load ptr, ptr %i.vw, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val895, i64 noundef %.val894, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85610
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2017

bb.qv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2014
  %i.vx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val893 = load ptr, ptr %i.vx, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val893, i64 noundef %.val892, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85611
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2020

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2017: ; preds = %bb.qu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2011
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.vy = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.vy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023, label %bb.qw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2020: ; preds = %bb.qv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.vz = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.vz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2026, label %bb.qx

bb.qw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2017
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85612
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023

bb.qx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85613
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2026

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023: ; preds = %bb.qw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2017
  %.0.val.off.i2027 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2028 = icmp ult i64 %.0.val.off.i2027, -2
  br i1 %switch.i2028, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85614
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2026: ; preds = %bb.qx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2020
  %.0.val.off.i2030 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2031 = icmp ult i64 %.0.val.off.i2030, -2
  br i1 %switch.i2031, label %bb.qy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2032

bb.qy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85615
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2032

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2023
  %.0.val.off.i2033 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2034 = icmp ult i64 %.0.val.off.i2033, -2
  br i1 %switch.i2034, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2029
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85616
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2032: ; preds = %bb.qy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2026
  %.0.val.off.i2036 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2037 = icmp ult i64 %.0.val.off.i2036, -2
  br i1 %switch.i2037, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

bb.qz:                                            ; preds = %bb.re, %bb.rb, %bb.qh
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wb = icmp eq i64 %i.ub, 0
  br i1 %i.wb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2041, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85617
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2041

bb.rb:                                            ; preds = %bb.qh
  %i.wc = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @466, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.an)
          to label %bb.rc unwind label %bb.qz     ; 2 uses

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.not697 = icmp eq i8 %i.wc, 2
  br i1 %.not697, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onehECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.am, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.rx unwind label %bb.rv

bb.re:                                            ; preds = %bb.rc
  %i.wd = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 58)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsz_0B9_.exit unwind label %bb.qz

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsz_0B9_.exit: ; preds = %bb.re
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.wd, ptr %i.we, align 8
  store i64 -1, ptr %0, align 8
  %i.wf = icmp eq i64 %i.ub, 0
  br i1 %i.wf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2045, label %bb.rf

bb.rf:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsz_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85618
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2045

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2094: ; preds = %bb.rw, %bb.rv
  %.val882 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.wg = icmp sgt i64 %.val882, 0
  br i1 %i.wg, label %bb.rg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2048

bb.rg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2094
  %i.wh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val883 = load ptr, ptr %i.wh, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val883, i64 noundef %.val882, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85619
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2048

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2045: ; preds = %bb.rf, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsz_0B9_.exit
  %.val880 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.wi = icmp sgt i64 %.val880, 0
  br i1 %i.wi, label %bb.rh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2051

bb.rh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2045
  %i.wj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val881 = load ptr, ptr %i.wj, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val881, i64 noundef %.val880, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85620
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2051

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2048: ; preds = %bb.rg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2094
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85621)
  %i.wk = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85621, !noundef !28 ; 3 uses
  %i.wl = icmp eq i64 %i.wk, -1
  br i1 %i.wl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053, label %bb.ri

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2051: ; preds = %bb.rh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85622)
  %i.wm = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85622, !noundef !28 ; 3 uses
  %i.wn = icmp eq i64 %i.wm, -1
  br i1 %i.wn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055, label %bb.rk

bb.ri:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2048
  call void @llvm.experimental.noalias.scope.decl(metadata !85623)
  call void @llvm.experimental.noalias.scope.decl(metadata !85624)
  %i.wo = icmp eq i64 %i.wk, 0
  br i1 %i.wo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.wp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2052 = load ptr, ptr %i.wp, align 8, !alias.scope !85625, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2052, i64 noundef %i.wk, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85625
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053

bb.rk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2051
  call void @llvm.experimental.noalias.scope.decl(metadata !85626)
  call void @llvm.experimental.noalias.scope.decl(metadata !85627)
  %i.wq = icmp eq i64 %i.wm, 0
  br i1 %i.wq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.wr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2054 = load ptr, ptr %i.wr, align 8, !alias.scope !85628, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2054, i64 noundef %i.wm, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85628
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053: ; preds = %bb.rj, %bb.ri, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2048
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.ws = icmp eq i64 %i.ll, 0
  br i1 %i.ws, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2058, label %bb.rm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055: ; preds = %bb.rl, %bb.rk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.wt = icmp eq i64 %i.ll, 0
  br i1 %i.wt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2061, label %bb.rn

bb.rm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85629
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2058

bb.rn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85630
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2061

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2058: ; preds = %bb.rm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2053
  %i.wu = icmp eq i64 %i.lb, 0
  br i1 %i.wu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2064, label %bb.ro

bb.ro:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2058
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85631
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2064

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2061: ; preds = %bb.rn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2055
  %i.wv = icmp eq i64 %i.lb, 0
  br i1 %i.wv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2067, label %bb.rp

bb.rp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2061
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85632
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2067

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2064: ; preds = %bb.ro, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2058
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val878 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ww = icmp sgt i64 %.val878, 0
  br i1 %i.ww, label %bb.rq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2070

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2067: ; preds = %bb.rp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2061
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val876 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.wx = icmp sgt i64 %.val876, 0
  br i1 %i.wx, label %bb.rr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2073

bb.rq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2064
  %i.wy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val879 = load ptr, ptr %i.wy, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val879, i64 noundef %.val878, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85633
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2070

bb.rr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2067
  %i.wz = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val877 = load ptr, ptr %i.wz, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val877, i64 noundef %.val876, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85634
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2073

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2070: ; preds = %bb.rq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2064
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.xa = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.xa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076, label %bb.rs

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2073: ; preds = %bb.rr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.xb = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.xb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2079, label %bb.rt

bb.rs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2070
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85635
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076

bb.rt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2073
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85636
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2079

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076: ; preds = %bb.rs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2070
  %.0.val.off.i2080 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2081 = icmp ult i64 %.0.val.off.i2080, -2
  br i1 %switch.i2081, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85637
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2079: ; preds = %bb.rt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2073
  %.0.val.off.i2083 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2084 = icmp ult i64 %.0.val.off.i2083, -2
  br i1 %switch.i2084, label %bb.ru, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2085

bb.ru:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2079
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85638
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2085

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2076
  %.0.val.off.i2086 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2087 = icmp ult i64 %.0.val.off.i2086, -2
  br i1 %switch.i2087, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2082
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85639
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2085: ; preds = %bb.ru, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2079
  %.0.val.off.i2089 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2090 = icmp ult i64 %.0.val.off.i2089, -2
  br i1 %switch.i2090, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

bb.rv:                                            ; preds = %bb.rd, %bb.rx, %bb.sa
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xd = icmp eq i64 %i.ub, 0
  br i1 %i.xd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2094, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85640
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2094

bb.rx:                                            ; preds = %bb.rd
  %i.xe = invoke fastcc { i1, i8 } @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionhEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.am)
          to label %bb.ry unwind label %bb.rv     ; 2 uses

bb.ry:                                            ; preds = %bb.rx
  %i.xf = extractvalue { i1, i8 } %i.xe, 0
  %i.xg = extractvalue { i1, i8 } %i.xe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %i.xf, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %bb.ry
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.al, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17)
          to label %bb.st unwind label %bb.ss

bb.sa:                                            ; preds = %bb.ry
  %i.xh = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @745, i64 noundef 57)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsA_0B9_.exit unwind label %bb.rv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsA_0B9_.exit: ; preds = %bb.sa
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xh, ptr %i.xi, align 8
  store i64 -1, ptr %0, align 8
  %i.xj = icmp eq i64 %i.ub, 0
  br i1 %i.xj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2098, label %bb.sb

bb.sb:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsA_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85641
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2098

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2147: ; preds = %bb.sr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150
  %.val866 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.xk = icmp sgt i64 %.val866, 0
  br i1 %i.xk, label %bb.sc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2101

bb.sc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2147
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val867 = load ptr, ptr %i.xl, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val867, i64 noundef %.val866, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85642
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2101

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2098: ; preds = %bb.sb, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsA_0B9_.exit
  %.val864 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.xm = icmp sgt i64 %.val864, 0
  br i1 %i.xm, label %bb.sd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2104

bb.sd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2098
  %i.xn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val865 = load ptr, ptr %i.xn, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val865, i64 noundef %.val864, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85643
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2104

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2101: ; preds = %bb.sc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2147
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !85644)
  %i.xo = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85644, !noundef !28 ; 3 uses
  %i.xp = icmp eq i64 %i.xo, -1
  br i1 %i.xp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106, label %bb.se

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2104: ; preds = %bb.sd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85645)
  %i.xq = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85645, !noundef !28 ; 3 uses
  %i.xr = icmp eq i64 %i.xq, -1
  br i1 %i.xr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108, label %bb.sg

bb.se:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2101
  call void @llvm.experimental.noalias.scope.decl(metadata !85646)
  call void @llvm.experimental.noalias.scope.decl(metadata !85647)
  %i.xs = icmp eq i64 %i.xo, 0
  br i1 %i.xs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.xt = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2105 = load ptr, ptr %i.xt, align 8, !alias.scope !85648, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2105, i64 noundef %i.xo, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85648
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106

bb.sg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2104
  call void @llvm.experimental.noalias.scope.decl(metadata !85649)
  call void @llvm.experimental.noalias.scope.decl(metadata !85650)
  %i.xu = icmp eq i64 %i.xq, 0
  br i1 %i.xu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.xv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2107 = load ptr, ptr %i.xv, align 8, !alias.scope !85651, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2107, i64 noundef %i.xq, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85651
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106: ; preds = %bb.sf, %bb.se, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2101
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.xw = icmp eq i64 %i.ll, 0
  br i1 %i.xw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2111, label %bb.si

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108: ; preds = %bb.sh, %bb.sg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.xx = icmp eq i64 %i.ll, 0
  br i1 %i.xx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2114, label %bb.sj

bb.si:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85652
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2111

bb.sj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85653
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2114

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2111: ; preds = %bb.si, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2106
  %i.xy = icmp eq i64 %i.lb, 0
  br i1 %i.xy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2117, label %bb.sk

bb.sk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85654
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2117

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2114: ; preds = %bb.sj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2108
  %i.xz = icmp eq i64 %i.lb, 0
  br i1 %i.xz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2120, label %bb.sl

bb.sl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85655
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2120

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2117: ; preds = %bb.sk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2111
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val862 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ya = icmp sgt i64 %.val862, 0
  br i1 %i.ya, label %bb.sm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2120: ; preds = %bb.sl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2114
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val860 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.yb = icmp sgt i64 %.val860, 0
  br i1 %i.yb, label %bb.sn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2126

bb.sm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2117
  %i.yc = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val863 = load ptr, ptr %i.yc, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val863, i64 noundef %.val862, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85656
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2123

bb.sn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2120
  %i.yd = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val861 = load ptr, ptr %i.yd, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val861, i64 noundef %.val860, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85657
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2126

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2123: ; preds = %bb.sm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2117
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.ye = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.ye, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129, label %bb.so

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2126: ; preds = %bb.sn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.yf = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.yf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2132, label %bb.sp

bb.so:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85658
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129

bb.sp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2126
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85659
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2132

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129: ; preds = %bb.so, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2123
  %.0.val.off.i2133 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2134 = icmp ult i64 %.0.val.off.i2133, -2
  br i1 %switch.i2134, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85660
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2132: ; preds = %bb.sp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2126
  %.0.val.off.i2136 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2137 = icmp ult i64 %.0.val.off.i2136, -2
  br i1 %switch.i2137, label %bb.sq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2138

bb.sq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2132
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85661
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2138

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2129
  %.0.val.off.i2139 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2140 = icmp ult i64 %.0.val.off.i2139, -2
  br i1 %switch.i2140, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85662
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2138: ; preds = %bb.sq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2132
  %.0.val.off.i2142 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2143 = icmp ult i64 %.0.val.off.i2142, -2
  br i1 %switch.i2143, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150: ; preds = %bb.sw, %bb.sv, %bb.ss
  %.pn735 = phi { ptr, i32 } [ %i.yh, %bb.ss ], [ %i.yi, %bb.sv ], [ %i.yi, %bb.sw ] ; 2 uses
  %i.yg = icmp eq i64 %i.ub, 0
  br i1 %i.yg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2147, label %bb.sr

bb.sr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85663
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2147

bb.ss:                                            ; preds = %bb.st, %bb.rz
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150

bb.st:                                            ; preds = %bb.rz
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.al)
          to label %bb.su unwind label %bb.ss

bb.su:                                            ; preds = %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1267, i64 noundef 3)
          to label %bb.sx unwind label %bb.sv

bb.sv:                                            ; preds = %bb.ta, %bb.sx, %bb.su
  %i.yi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val850 = load i64, ptr %i.cw, align 8, !range !37, !noundef !28 ; 2 uses
  %i.yj = icmp sgt i64 %.val850, 0
  br i1 %i.yj, label %bb.sw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150

bb.sw:                                            ; preds = %bb.sv
  %i.yk = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val851 = load ptr, ptr %i.yk, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val851, i64 noundef %.val850, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85664
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2150

bb.sx:                                            ; preds = %bb.su
  %i.yl = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1267, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ak)
          to label %bb.sy unwind label %bb.sv     ; 2 uses

bb.sy:                                            ; preds = %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.not734 = icmp eq i8 %i.yl, 2
  br i1 %.not734, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.20.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  %.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.da, i64 160, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02267.0.copyload, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.62268.0.copyload, ptr %.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.lb, ptr %.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.sroa.5.0..sroa.0.sroa.0.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.4383.0.copyload, ptr %.sroa.0.sroa.0.sroa.12.sroa.5.0..sroa.0.sroa.0.sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.sroa.6.0..sroa.0.sroa.0.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.5384.0.copyload, ptr %.sroa.0.sroa.0.sroa.12.sroa.6.0..sroa.0.sroa.0.sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.ll, ptr %.sroa.0.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.13.sroa.5.0..sroa.0.sroa.0.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.4389.0.copyload, ptr %.sroa.0.sroa.0.sroa.13.sroa.5.0..sroa.0.sroa.0.sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.13.sroa.6.0..sroa.0.sroa.0.sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.5390.0.copyload, ptr %.sroa.0.sroa.0.sroa.13.sroa.6.0..sroa.0.sroa.0.sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ub, ptr %.sroa.0.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.16.sroa.5.0..sroa.0.sroa.0.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.sroa.4398.0.copyload, ptr %.sroa.0.sroa.0.sroa.16.sroa.5.0..sroa.0.sroa.0.sroa.16.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.16.sroa.6.0..sroa.0.sroa.0.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.sroa.5399.0.copyload, ptr %.sroa.0.sroa.0.sroa.16.sroa.6.0..sroa.0.sroa.0.sroa.16.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.02259.0.copyload2260, ptr %.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.98.0.copyload2261, ptr %.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.161.0.copyload2262, ptr %.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.sroa.18.0..sroa_idx, align 8
  %.sroa.0.sroa.18.sroa.5.0..sroa.0.sroa.18.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %.sroa.95.0.copyload, ptr %.sroa.0.sroa.18.sroa.5.0..sroa.0.sroa.18.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.18.sroa.6.0..sroa.0.sroa.18.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %.sroa.156.0.copyload, ptr %.sroa.0.sroa.18.sroa.6.0..sroa.0.sroa.18.0..sroa_idx.sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i64 %i.ks, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 %i.kt, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.ku, ptr %.sroa.251.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 %i.ed, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 617
  store i8 %i.ff, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 618
  store i8 %i.gc, ptr %.sroa.28.0..sroa_idx, align 2
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 619
  store i8 %i.hp, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 %i.il, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 621
  store i8 %i.jd, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 622
  store i8 %i.jj, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 623
  store i8 %i.jp, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 %i.jv, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 625
  store i8 %i.kb, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i8 %i.kl, ptr %.sroa.36.0..sroa_idx, align 2
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 627
  store i8 %i.lx, ptr %.sroa.37.0..sroa_idx, align 1
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 %i.ml, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 629
  store i8 %i.mz, ptr %.sroa.39.0..sroa_idx, align 1
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i8 %i.nn, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 631
  store i8 %i.ob, ptr %.sroa.41.0..sroa_idx, align 1
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 %i.op, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 633
  store i8 %i.pd, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 634
  store i8 %i.pr, ptr %.sroa.44.0..sroa_idx, align 2
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 635
  store i8 %i.qs, ptr %.sroa.45.0..sroa_idx, align 1
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 %i.sb, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 637
  store i8 %i.tb, ptr %.sroa.47.0..sroa_idx, align 1
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 638
  store i8 %i.va, ptr %.sroa.48.0..sroa_idx, align 2
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 639
  store i8 %i.wc, ptr %.sroa.49.0..sroa_idx, align 1
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 %i.yl, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 641
  store i8 %i.dy, ptr %.sroa.51.0..sroa_idx, align 1
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 642
  store i8 %i.gu, ptr %.sroa.52.0..sroa_idx, align 2
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 643
  store i8 %i.hl, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i8 %i.xg, ptr %.sroa.54.0..sroa_idx, align 4
  br label %bb.tl

bb.ta:                                            ; preds = %bb.sy
  %i.ym = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @746, i64 noundef 53)
          to label %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsB_0B9_.exit unwind label %bb.sv

_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsB_0B9_.exit: ; preds = %bb.ta
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ym, ptr %i.yn, align 8
  store i64 -1, ptr %0, align 8
  %.val848 = load i64, ptr %i.cw, align 8, !range !37, !noundef !28 ; 2 uses
  %i.yo = icmp sgt i64 %.val848, 0
  br i1 %i.yo, label %bb.tb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2154

bb.tb:                                            ; preds = %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsB_0B9_.exit
  %i.yp = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val849 = load ptr, ptr %i.yp, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val849, i64 noundef %.val848, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85665
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2154

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2154: ; preds = %bb.tb, %_RNCNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB7_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mutsB_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.yq = icmp eq i64 %i.ub, 0
  br i1 %i.yq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2160, label %bb.tc

bb.tc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2154
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4398.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4398.0.copyload, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85666
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2160

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2160: ; preds = %bb.tc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2154
  %.val844 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.yr = icmp sgt i64 %.val844, 0
  br i1 %i.yr, label %bb.td, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2166

bb.td:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2160
  %i.ys = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val845 = load ptr, ptr %i.ys, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val845, i64 noundef %.val844, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85667
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2166

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2166: ; preds = %bb.td, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9arguments10SubcommandEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !85668)
  %i.yt = load i64, ptr %i.dd, align 8, !range !37, !alias.scope !85668, !noundef !28 ; 3 uses
  %i.yu = icmp eq i64 %i.yt, -1
  br i1 %i.yu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170, label %bb.te

bb.te:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2166
  call void @llvm.experimental.noalias.scope.decl(metadata !85669)
  call void @llvm.experimental.noalias.scope.decl(metadata !85670)
  %i.yv = icmp eq i64 %i.yt, 0
  br i1 %i.yv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.yw = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2169 = load ptr, ptr %i.yw, align 8, !alias.scope !85671, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2169, i64 noundef %i.yt, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85671
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170: ; preds = %bb.tf, %bb.te, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.yx = icmp eq i64 %i.ll, 0
  br i1 %i.yx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2176, label %bb.tg

bb.tg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85672
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2176

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2176: ; preds = %bb.tg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2170
  %i.yy = icmp eq i64 %i.lb, 0
  br i1 %i.yy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2182, label %bb.th

bb.th:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2176
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85673
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2182

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2182: ; preds = %bb.th, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2176
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val840 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.yz = icmp sgt i64 %.val840, 0
  br i1 %i.yz, label %bb.ti, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2188

bb.ti:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2182
  %i.za = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val841 = load ptr, ptr %i.za, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val841, i64 noundef %.val840, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85674
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2188

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2188: ; preds = %bb.ti, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.zb = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.zb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2194, label %bb.tj

bb.tj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2188
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85675
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2194

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2194: ; preds = %bb.tj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2188
  %.0.val.off.i2198 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2199 = icmp ult i64 %.0.val.off.i2198, -2
  br i1 %switch.i2199, label %bb.tk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2200

bb.tk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2194
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85676
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2200

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2200: ; preds = %bb.tk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2194
  %.0.val.off.i2204 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2205 = icmp ult i64 %.0.val.off.i2204, -2
  br i1 %switch.i2205, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2200, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2138, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2085, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2032, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1979, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1932, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1885, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2243
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2200, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2138, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2085, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2032, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1979, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1932, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1885, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2243
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.tl

bb.tl:                                            ; preds = %bb.e, %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1229, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1256, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit1288, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1306, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1322, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1347, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1366, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1385, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1404, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1423, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1443, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1472, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1502, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1539, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1576, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1613, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1650, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1687, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1724, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1761, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1798, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1844, %bb.sz
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1988: ; preds = %bb.qe, %bb.qd
  %.val830 = load i64, ptr %i.cy, align 8, !range !37, !noundef !28 ; 2 uses
  %i.zc = icmp sgt i64 %.val830, 0
  br i1 %i.zc, label %bb.tm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2209

bb.tm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1988
  %i.zd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val831 = load ptr, ptr %i.zd, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val831, i64 noundef %.val830, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85677
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2209

bb.tn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847
  call void @llvm.experimental.noalias.scope.decl(metadata !85678)
  call void @llvm.experimental.noalias.scope.decl(metadata !85679)
  %i.ze = icmp eq i64 %i.rv, 0
  br i1 %i.ze, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.zf = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2210 = load ptr, ptr %i.zf, align 8, !alias.scope !85680, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2210, i64 noundef %i.rv, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85680
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211

bb.tp:                                            ; preds = %bb.nq
  call void @llvm.experimental.noalias.scope.decl(metadata !85681)
  call void @llvm.experimental.noalias.scope.decl(metadata !85682)
  %i.zg = icmp eq i64 %i.rt, 0
  br i1 %i.zg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.zh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i2212 = load ptr, ptr %i.zh, align 8, !alias.scope !85683, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2212, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85683
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211: ; preds = %bb.to, %bb.tn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1847
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #72
  %i.zi = icmp eq i64 %i.ll, 0
  br i1 %i.zi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2216, label %bb.tr

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213: ; preds = %bb.tq, %bb.tp, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.zj = icmp eq i64 %i.ll, 0
  br i1 %i.zj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2219, label %bb.ts

bb.tr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85684
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2216

bb.ts:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4389.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4389.0.copyload, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85685
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2219

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2216: ; preds = %bb.tr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2211
  %i.zk = icmp eq i64 %i.lb, 0
  br i1 %i.zk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2222, label %bb.tt

bb.tt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85686
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2222

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2219: ; preds = %bb.ts, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit2213
  %i.zl = icmp eq i64 %i.lb, 0
  br i1 %i.zl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2225, label %bb.tu

bb.tu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2219
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85687
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2225

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2222: ; preds = %bb.tt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2216
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val828 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.zm = icmp sgt i64 %.val828, 0
  br i1 %i.zm, label %bb.tv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2228

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2225: ; preds = %bb.tu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2219
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.val826 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.zn = icmp sgt i64 %.val826, 0
  br i1 %i.zn, label %bb.tw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2231

bb.tv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2222
  %i.zo = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val829 = load ptr, ptr %i.zo, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val829, i64 noundef %.val828, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85688
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2228

bb.tw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2225
  %i.zp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val827 = load ptr, ptr %i.zp, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val827, i64 noundef %.val826, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85689
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2231

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2228: ; preds = %bb.tv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2222
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #72
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #72
  %i.zq = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.zq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234, label %bb.tx

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2231: ; preds = %bb.tw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.zr = icmp eq i64 %.sroa.02267.0.copyload, 0
  br i1 %i.zr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2237, label %bb.ty

bb.tx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85690
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234

bb.ty:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.02267.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85691
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2237

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234: ; preds = %bb.tx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2228
  %.0.val.off.i2238 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2239 = icmp ult i64 %.0.val.off.i2238, -2
  br i1 %switch.i2239, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85692
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2237: ; preds = %bb.ty, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2231
  %.0.val.off.i2241 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2242 = icmp ult i64 %.0.val.off.i2241, -2
  br i1 %switch.i2242, label %bb.tz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2243

bb.tz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2237
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85693
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2243

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2234
  %.0.val.off.i2244 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2245 = icmp ult i64 %.0.val.off.i2244, -2
  br i1 %switch.i2245, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240.thread, label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240.thread: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.98.0.copyload2261) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.98.0.copyload2261, i64 noundef %.sroa.02259.0.copyload2260, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85694
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2243: ; preds = %bb.tz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit2237
  %.0.val.off.i2247 = add i64 %.sroa.02259.0.copyload2260, -1
  %switch.i2248 = icmp ult i64 %.0.val.off.i2247, -2
  br i1 %switch.i2248, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit2249

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1505: ; preds = %bb.hm, %bb.hl
  %i.zs = icmp eq i64 %i.lb, 0
  br i1 %i.zs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2252, label %bb.ua

bb.ua:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit1505
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4383.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4383.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85695
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit2252

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.gz, %bb.gy
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dj) #72
  %.val1078 = load i64, ptr %i.dk, align 8, !range !37, !noundef !28 ; 2 uses
  %i.zt = icmp sgt i64 %.val1078, 0
  br i1 %i.zt, label %bb.gs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit1451

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ch, %bb.cg
  %.0.val.off.i2253 = add i64 %.sroa.0.0.copyload, -1
  %switch.i2254 = icmp ult i64 %.0.val.off.i2253, -2
  br i1 %switch.i2254, label %bb.ub, label %bb.ce

bb.ub:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.95.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.95.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85696
  br label %bb.ce
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef align 8 dereferenceable(648) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsH_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #76
  %i.b = invoke noundef align 8 ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(648) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #72
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef align 8 dereferenceable(648) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [104 x i8], align 8               ; 4 uses
  %i.t = alloca [104 x i8], align 8               ; 7 uses
  %i.u = alloca [104 x i8], align 8               ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [104 x i8], align 8               ; 4 uses
  %i.z = alloca [104 x i8], align 8               ; 7 uses
  %i.aa = alloca [104 x i8], align 8              ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [104 x i8], align 8              ; 4 uses
  %i.af = alloca [104 x i8], align 8              ; 7 uses
  %i.ag = alloca [104 x i8], align 8              ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 6 uses
  %i.ar = alloca [40 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [40 x i8], align 8               ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [32 x i8], align 8               ; 6 uses
  %i.bg = alloca [40 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [40 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [104 x i8], align 8              ; 4 uses
  %i.bm = alloca [104 x i8], align 8              ; 7 uses
  %i.bn = alloca [104 x i8], align 8              ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 6 uses
  %i.bp = alloca [40 x i8], align 8               ; 4 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 6 uses
  %i.bs = alloca [40 x i8], align 8               ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [40 x i8], align 8               ; 4 uses
  %i.bv = alloca [40 x i8], align 8               ; 4 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [40 x i8], align 8               ; 4 uses
  %i.by = alloca [40 x i8], align 8               ; 4 uses
  %i.bz = alloca [40 x i8], align 8               ; 4 uses
  %i.ca = alloca [40 x i8], align 8               ; 4 uses
  %i.cb = alloca [40 x i8], align 8               ; 4 uses
  %i.cc = alloca [40 x i8], align 8               ; 4 uses
  %i.cd = alloca [40 x i8], align 8               ; 4 uses
  %i.ce = alloca [112 x i8], align 8              ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [120 x i8], align 8              ; 4 uses
  %i.ch = alloca [40 x i8], align 8               ; 4 uses
  %i.ci = alloca [112 x i8], align 8              ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [120 x i8], align 8              ; 4 uses
  %i.cl = alloca [40 x i8], align 8               ; 4 uses
  %i.cm = alloca [40 x i8], align 8               ; 4 uses
  %i.cn = alloca [40 x i8], align 8               ; 4 uses
  %i.co = alloca [40 x i8], align 8               ; 4 uses
  %i.cp = alloca [40 x i8], align 8               ; 4 uses
  %i.cq = alloca [40 x i8], align 8               ; 4 uses
  %i.cr = alloca [40 x i8], align 8               ; 4 uses
  %i.cs = alloca [40 x i8], align 8               ; 4 uses
  %i.ct = alloca [40 x i8], align 8               ; 4 uses
  %i.cu = alloca [40 x i8], align 8               ; 4 uses
  %i.cv = alloca [112 x i8], align 8              ; 4 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [120 x i8], align 8              ; 4 uses
  %i.cy = alloca [40 x i8], align 8               ; 4 uses
  %i.cz = alloca [40 x i8], align 8               ; 4 uses
  %i.da = alloca [40 x i8], align 8               ; 4 uses
  %i.db = alloca [40 x i8], align 8               ; 4 uses
  %i.dc = alloca [112 x i8], align 8              ; 4 uses
  %i.dd = alloca [24 x i8], align 8               ; 6 uses
  %i.de = alloca [120 x i8], align 8              ; 4 uses
  %i.df = alloca [40 x i8], align 8               ; 6 uses
  %i.dg = alloca [40 x i8], align 8               ; 6 uses
  %i.dh = alloca [40 x i8], align 8               ; 6 uses
  %i.di = alloca [40 x i8], align 8               ; 6 uses
  %i.dj = alloca [40 x i8], align 8               ; 6 uses
  %i.dk = alloca [112 x i8], align 8              ; 5 uses
  %i.dl = alloca [24 x i8], align 8               ; 6 uses
  %i.dm = alloca [120 x i8], align 8              ; 10 uses
  %i.dn = alloca [112 x i8], align 8              ; 5 uses
  %i.do = alloca [24 x i8], align 8               ; 6 uses
  %i.dp = alloca [120 x i8], align 8              ; 10 uses
  %i.dq = alloca [112 x i8], align 8              ; 5 uses
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %i.ds = alloca [120 x i8], align 8              ; 10 uses
  %i.dt = alloca [40 x i8], align 8               ; 6 uses
  %i.du = alloca [40 x i8], align 8               ; 8 uses
  %i.dv = alloca [40 x i8], align 8               ; 6 uses
  %i.dw = alloca [40 x i8], align 8               ; 6 uses
  %i.dx = alloca [40 x i8], align 8               ; 6 uses
  %i.dy = alloca [40 x i8], align 8               ; 6 uses
  %i.dz = alloca [40 x i8], align 8               ; 6 uses
  %i.ea = alloca [40 x i8], align 8               ; 6 uses
  %i.eb = alloca [40 x i8], align 8               ; 6 uses
  %i.ec = alloca [112 x i8], align 8              ; 5 uses
  %i.ed = alloca [24 x i8], align 8               ; 6 uses
  %i.ee = alloca [120 x i8], align 8              ; 10 uses
  %i.ef = alloca [40 x i8], align 8               ; 6 uses
  %i.eg = alloca [40 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 4 uses
  %i.ei = alloca [24 x i8], align 8               ; 7 uses
  %i.ej = alloca [24 x i8], align 8               ; 4 uses
  %i.ek = alloca [112 x i8], align 8              ; 5 uses
  %i.el = alloca [24 x i8], align 8               ; 4 uses
  %i.em = alloca [112 x i8], align 8              ; 5 uses
  %i.en = alloca [24 x i8], align 8               ; 7 uses
  %i.eo = alloca [24 x i8], align 8               ; 7 uses
  %i.ep = alloca [112 x i8], align 8              ; 5 uses
  %i.eq = alloca [24 x i8], align 8               ; 4 uses
  %i.er = alloca [112 x i8], align 8              ; 5 uses
  %.sroa.6723 = alloca [104 x i8], align 8        ; 4 uses
  %.sroa.6719 = alloca [104 x i8], align 8        ; 4 uses
  %.sroa.6715 = alloca [104 x i8], align 8        ; 4 uses
  %i.es = alloca [24 x i8], align 8               ; 4 uses
  %i.et = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %i.eu = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2122, i64 noundef 11)
  br i1 %i.eu, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.eg, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr @2122, ptr %i.bt, align 8, !noalias !85871
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 11, ptr %i.ev, align 8, !noalias !85871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !85871
  %i.ew = load i64, ptr %i.eg, align 8, !range !27, !alias.scope !85871, !noundef !28
  %.not.i = icmp eq i64 %i.ew, 2
  br i1 %.not.i, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.eg, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !85871
  store ptr %i.bt, ptr %i.br, align 8, !noalias !85871
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !85871
  %i.ex = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bs, ptr %i.ex, align 8, !noalias !85871
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !85871
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85871
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit: ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !range !54, !alias.scope !85871, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !85871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  %.not = icmp eq i8 %i.ez, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.fa = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2123, i64 noundef 13)
  br i1 %i.fa, label %bb.h, label %bb.j

bb.e:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 641
  store i8 %i.ez, ptr %i.fb, align 1
  br label %bb.d

bb.f:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1S_.exit
  %i.fc = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @738, i64 noundef 61)
  br label %bb.g

bb.g:                                             ; preds = %bb.ie, %bb.ic, %bb.gu, %bb.if, %bb.hz, %bb.hv, %bb.hr, %bb.hn, %bb.hi, %bb.he, %bb.gw, %bb.gg, %bb.gc, %bb.fy, %bb.fu, %bb.fq, %bb.fm, %bb.fi, %bb.fe, %bb.fa, %bb.ev, %bb.ee, %bb.dw, %bb.dr, %bb.dm, %bb.dh, %bb.dc, %bb.bn, %bb.bi, %bb.bc, %bb.au, %bb.ap, %bb.ag, %bb.l, %bb.f
  %.sroa.0.0 = phi ptr [ %i.fc, %bb.f ], [ %i.qk, %bb.gu ], [ %i.sa, %bb.if ], [ %i.rt, %bb.hz ], [ %i.rn, %bb.hv ], [ %i.rj, %bb.hr ], [ %i.rf, %bb.hn ], [ %i.qz, %bb.hi ], [ %i.qv, %bb.he ], [ %i.qm, %bb.gw ], [ %i.pv, %bb.gg ], [ %i.pr, %bb.gc ], [ %i.pn, %bb.fy ], [ %i.pj, %bb.fu ], [ %i.pf, %bb.fq ], [ %i.pb, %bb.fm ], [ %i.ox, %bb.fi ], [ %i.ot, %bb.fe ], [ %i.op, %bb.fa ], [ %i.oj, %bb.ev ], [ %i.nm, %bb.ee ], [ %i.nf, %bb.dw ], [ %i.mx, %bb.dr ], [ %i.mp, %bb.dm ], [ %i.mh, %bb.dh ], [ %i.lz, %bb.dc ], [ %i.ja, %bb.bn ], [ %i.is, %bb.bi ], [ %i.ij, %bb.bc ], [ %i.hu, %bb.au ], [ %i.hm, %bb.ap ], [ %i.gw, %bb.ag ], [ %i.fk, %bb.l ], [ null, %bb.ic ], [ null, %bb.ie ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ef, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2123, i64 noundef 13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr @2123, ptr %i.bq, align 8, !noalias !85873
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 13, ptr %i.fd, align 8, !noalias !85873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !85873
  %i.fe = load i64, ptr %i.ef, align 8, !range !27, !alias.scope !85872, !noalias !85874, !noundef !28
  %.not.i575 = icmp eq i64 %i.fe, 2
  br i1 %.not.i575, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ef, i64 40, i1 false), !noalias !85874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !85873
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !85873
  %.sroa.42.0..sroa_idx.i576 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i576, align 8, !noalias !85873
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.ff, align 8, !noalias !85873
  %.sroa.46.0..sroa_idx.i577 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i577, align 8, !noalias !85873
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85872
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.fh = load i8, ptr %i.fg, align 8, !range !38, !alias.scope !85872, !noalias !85874, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !85873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %.not526 = icmp eq i8 %i.fh, 2
  br i1 %.not526, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.k
  %i.fi = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 9)
  br i1 %i.fi, label %bb.m, label %bb.t, !prof !31

bb.k:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 %i.fh, ptr %i.fj, align 8
  br label %bb.j

bb.l:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  %i.fk = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @747, i64 noundef 63)
  br label %bb.g

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !85876
  call fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 9) #76, !noalias !85875
  %i.fl = load i64, ptr %i.bm, align 8, !range !59, !noalias !85876, !noundef !28 ; 2 uses
  switch i64 %i.fl, label %bb.n [
    i64 -1, label %bb.s
    i64 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i, i64 96, i1 false), !noalias !85876
  store i64 %i.fl, ptr %i.bn, align 8, !noalias !85876
  %i.fm = invoke noundef i64 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bn)
          to label %bb.p unwind label %bb.q, !noalias !85877

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ee, i8 0, i64 16, i1 false), !alias.scope !85875, !noalias !85878
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !85876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull align 8 dereferenceable(104) %i.bn, i64 104, i1 false), !noalias !85876
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  call void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.bl), !noalias !85879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !85876
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr @_RNSINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs4wP2HXfJTCR_5alloc6string6StringE5reifyCskXtk6F4WjxZ_4just, ptr %i.fn, align 8, !alias.scope !85875, !noalias !85878
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  store i64 %i.fm, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !85875, !noalias !85878
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit

common.resume:                                    ; preds = %bb.cq, %bb.ce, %bb.bs, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.kb, %bb.ce ], [ %i.fo, %bb.q ], [ %i.je, %bb.bs ], [ %i.ky, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.n
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bn) #72
          to label %common.resume unwind label %bb.r, !noalias !85877

bb.r:                                             ; preds = %bb.q
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !85877
  unreachable

bb.s:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull align 8 dereferenceable(40) %i.fq, i64 40, i1 false), !noalias !85878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !85876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr @405, ptr %i.bk, align 8, !noalias !85882
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 9, ptr %i.fs, align 8, !noalias !85882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !85882
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ft, i64 40, i1 false), !noalias !85883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !85882
  store ptr %i.bk, ptr %i.bi, align 8, !noalias !85882
  %.sroa.42.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i579, align 8, !noalias !85882
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.fu, align 8, !noalias !85882
  %.sroa.46.0..sroa_idx.i580 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i580, align 8, !noalias !85882
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85884
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !85876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !85885
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload709 = load ptr, ptr %i.fv, align 8, !alias.scope !85884, !noalias !85886 ; 2 uses
  %.sroa.6.0..sroa_idx710 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx710, i64 104, i1 false), !alias.scope !85884, !noalias !85886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !85882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %.not527 = icmp eq ptr %.sroa.0.0.copyload709, null
  br i1 %.not527, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit
  %i.fw = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2124, i64 noundef 7)
  br i1 %i.fw, label %bb.y, label %bb.ab

bb.u:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit
  %.sroa.4.0..sroa_idx726 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx726, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store ptr %.sroa.0.0.copyload709, ptr %i.ec, align 8
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ed, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %.sroa.031.0.copyload = load i64, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit, %bb.u
  %.sroa.726.0 = phi i64 [ %.sroa.532.0.copyload, %bb.u ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit ]
  %.sroa.6.0 = phi ptr [ %.sroa.4.0.copyload, %bb.u ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit ]
  %.sroa.019.0 = phi i64 [ %.sroa.031.0.copyload, %bb.u ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !85887)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.fx, align 8, !alias.scope !85887, !nonnull !28, !noundef !28 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1.i = load i64, ptr %i.fy, align 8, !alias.scope !85887, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85888)
  %i.fz = icmp eq i64 %.val1.i, 0
  br i1 %i.fz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.gb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.gb = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85889)
  call void @llvm.experimental.noalias.scope.decl(metadata !85890)
  %.val.i.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !85891, !noalias !85887 ; 2 uses
  %i.gc = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.gc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !85891, !noalias !85887, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85892
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.w, %.lr.ph.i.i.i
  %i.ge = icmp eq i64 %i.gb, %.val1.i
  br i1 %i.ge, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.v
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !85887 ; 2 uses
  %i.gf = icmp eq i64 %.val2.i, 0
  br i1 %i.gf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.x

bb.x:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.gg = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85887
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.x, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  store i64 %.sroa.019.0, ptr %0, align 8
  store ptr %.sroa.6.0, ptr %i.fx, align 8
  store i64 %.sroa.726.0, ptr %i.fy, align 8
  br label %bb.t

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.eb, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2124, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !85893)
  call void @llvm.experimental.noalias.scope.decl(metadata !85894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr @2124, ptr %i.bh, align 8, !noalias !85895
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 7, ptr %i.gh, align 8, !noalias !85895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !85895
  %i.gi = load i64, ptr %i.eb, align 8, !range !27, !alias.scope !85894, !noalias !85896, !noundef !28
  %.not.i581 = icmp eq i64 %i.gi, 2
  br i1 %.not.i581, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit, label %bb.z, !prof !29

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.eb, i64 40, i1 false), !noalias !85896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !85895
  store ptr %i.bh, ptr %i.bf, align 8, !noalias !85895
  %.sroa.42.0..sroa_idx.i582 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i582, align 8, !noalias !85895
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.gj, align 8, !noalias !85895
  %.sroa.46.0..sroa_idx.i583 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i583, align 8, !noalias !85895
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85897
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !alias.scope !85897, !noalias !85898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !85895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.val573 = load i64, ptr %i.gl, align 8, !range !37, !noundef !28 ; 2 uses
  %i.gm = icmp sgt i64 %.val573, 0
  br i1 %i.gm, label %bb.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit

bb.aa:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val574 = load ptr, ptr %i.gn, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val574, i64 noundef %.val573, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85899
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit

bb.ab:                                            ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit
  %i.go = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2125, i64 noundef 5)
  br i1 %i.go, label %bb.ac, label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.aa, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %bb.ab

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ea, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2125, i64 noundef 5)
  call void @llvm.experimental.noalias.scope.decl(metadata !85900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr @2125, ptr %i.be, align 8, !noalias !85901
  %i.gp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 5, ptr %i.gp, align 8, !noalias !85901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !85901
  %i.gq = load i64, ptr %i.ea, align 8, !range !27, !alias.scope !85900, !noalias !85902, !noundef !28
  %.not.i584 = icmp eq i64 %i.gq, 2
  br i1 %.not.i584, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit587, label %bb.ad, !prof !29

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ea, i64 40, i1 false), !noalias !85902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !85901
  store ptr %i.be, ptr %i.bc, align 8, !noalias !85901
  %.sroa.42.0..sroa_idx.i585 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i585, align 8, !noalias !85901
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bd, ptr %i.gr, align 8, !noalias !85901
  %.sroa.46.0..sroa_idx.i586 = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i586, align 8, !noalias !85901
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85900
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit587: ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.gt = load i8, ptr %i.gs, align 8, !range !38, !alias.scope !85900, !noalias !85902, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !85901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %.not528 = icmp eq i8 %i.gt, 2
  br i1 %.not528, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab, %bb.af
  %i.gu = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2126, i64 noundef 7)
  br i1 %i.gu, label %bb.ah, label %bb.ak

bb.af:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit587
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 617
  store i8 %i.gt, ptr %i.gv, align 1
  br label %bb.ae

bb.ag:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit587
  %i.gw = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @739, i64 noundef 55)
  br label %bb.g

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dz, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2126, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !85903)
  call void @llvm.experimental.noalias.scope.decl(metadata !85904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr @2126, ptr %i.bb, align 8, !noalias !85905
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 7, ptr %i.gx, align 8, !noalias !85905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !85905
  %i.gy = load i64, ptr %i.dz, align 8, !range !27, !alias.scope !85904, !noalias !85906, !noundef !28
  %.not.i588 = icmp eq i64 %i.gy, 2
  br i1 %.not.i588, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit591, label %bb.ai, !prof !29

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dz, i64 40, i1 false), !noalias !85906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !85905
  store ptr %i.bb, ptr %i.az, align 8, !noalias !85905
  %.sroa.42.0..sroa_idx.i589 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i589, align 8, !noalias !85905
  %i.gz = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.gz, align 8, !noalias !85905
  %.sroa.46.0..sroa_idx.i590 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i590, align 8, !noalias !85905
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85907
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit591: ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !alias.scope !85907, !noalias !85908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !85905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.val571 = load i64, ptr %i.hb, align 8, !range !37, !noundef !28 ; 2 uses
  %i.hc = icmp sgt i64 %.val571, 0
  br i1 %i.hc, label %bb.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit594

bb.aj:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit591
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val572 = load ptr, ptr %i.hd, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val572, i64 noundef %.val571, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85909
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit594

bb.ak:                                            ; preds = %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit594
  %i.he = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2127, i64 noundef 16)
  br i1 %i.he, label %bb.al, label %bb.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit594: ; preds = %bb.aj, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dy, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2127, i64 noundef 16)
  call void @llvm.experimental.noalias.scope.decl(metadata !85910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr @2127, ptr %i.ay, align 8, !noalias !85911
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 16, ptr %i.hf, align 8, !noalias !85911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !85911
  %i.hg = load i64, ptr %i.dy, align 8, !range !27, !alias.scope !85910, !noalias !85912, !noundef !28
  %.not.i595 = icmp eq i64 %i.hg, 2
  br i1 %.not.i595, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit598, label %bb.am, !prof !29

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !85912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !85911
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !85911
  %.sroa.42.0..sroa_idx.i596 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i596, align 8, !noalias !85911
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.hh, align 8, !noalias !85911
  %.sroa.46.0..sroa_idx.i597 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i597, align 8, !noalias !85911
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85910
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit598: ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.hj = load i8, ptr %i.hi, align 8, !range !38, !alias.scope !85910, !noalias !85912, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !85911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %.not529 = icmp eq i8 %i.hj, 2
  br i1 %.not529, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak, %bb.ao
  %i.hk = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2128, i64 noundef 5)
  br i1 %i.hk, label %bb.aq, label %bb.as

bb.ao:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit598
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 618
  store i8 %i.hj, ptr %i.hl, align 2
  br label %bb.an

bb.ap:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit598
  %i.hm = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @740, i64 noundef 66)
  br label %bb.g

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dx, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !85913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr @2128, ptr %i.av, align 8, !noalias !85913
  %i.hn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 5, ptr %i.hn, align 8, !noalias !85913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !85913
  %i.ho = load i64, ptr %i.dx, align 8, !range !27, !alias.scope !85913, !noundef !28
  %.not.i599 = icmp eq i64 %i.ho, 2
  br i1 %.not.i599, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEEB1S_.exit, label %bb.ar, !prof !29

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !85913
  store ptr %i.av, ptr %i.at, align 8, !noalias !85913
  %.sroa.42.0..sroa_idx.i600 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i600, align 8, !noalias !85913
  %i.hp = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.hp, align 8, !noalias !85913
  %.sroa.46.0..sroa_idx.i601 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i601, align 8, !noalias !85913
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85913
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEEB1S_.exit: ; preds = %bb.aq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.hr = load i8, ptr %i.hq, align 8, !range !54, !alias.scope !85913, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !85913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %.not530 = icmp eq i8 %i.hr, -1
  br i1 %.not530, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.an, %bb.at
  %i.hs = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2129, i64 noundef 13)
  br i1 %i.hs, label %bb.av, label %bb.ax

bb.at:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEEB1S_.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 642
  store i8 %i.hr, ptr %i.ht, align 2
  br label %bb.as

bb.au:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just9use_color8UseColorEEB1S_.exit
  %i.hu = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @741, i64 noundef 55)
  br label %bb.g

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dw, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !85914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr @2129, ptr %i.as, align 8, !noalias !85914
  %i.hv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 13, ptr %i.hv, align 8, !noalias !85914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !85914
  %i.hw = load i64, ptr %i.dw, align 8, !range !27, !alias.scope !85914, !noundef !28
  %.not.i602 = icmp eq i64 %i.hw, 2
  br i1 %.not.i602, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorEEB1S_.exit, label %bb.aw, !prof !29

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dw, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !85914
  store ptr %i.as, ptr %i.aq, align 8, !noalias !85914
  %.sroa.42.0..sroa_idx.i603 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i603, align 8, !noalias !85914
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ar, ptr %i.hx, align 8, !noalias !85914
  %.sroa.46.0..sroa_idx.i604 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i604, align 8, !noalias !85914
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85914
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorEEB1S_.exit: ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.hz = load i8, ptr %i.hy, align 8, !range !127, !alias.scope !85914, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !85914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 643
  store i8 %i.hz, ptr %i.ia, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorEEB1S_.exit
  %i.ib = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2130, i64 noundef 16)
  br i1 %i.ib, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dv, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2130, i64 noundef 16)
  call void @llvm.experimental.noalias.scope.decl(metadata !85915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @2130, ptr %i.ap, align 8, !noalias !85916
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 16, ptr %i.ic, align 8, !noalias !85916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !85916
  %i.id = load i64, ptr %i.dv, align 8, !range !27, !alias.scope !85915, !noalias !85917, !noundef !28
  %.not.i605 = icmp eq i64 %i.id, 2
  br i1 %.not.i605, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit608, label %bb.az, !prof !29

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dv, i64 40, i1 false), !noalias !85917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !85916
  store ptr %i.ap, ptr %i.an, align 8, !noalias !85916
  %.sroa.42.0..sroa_idx.i606 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i606, align 8, !noalias !85916
  %i.ie = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.ie, align 8, !noalias !85916
  %.sroa.46.0..sroa_idx.i607 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i607, align 8, !noalias !85916
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85915
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit608: ; preds = %bb.ay
  %i.if = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ig = load i8, ptr %i.if, align 8, !range !38, !alias.scope !85915, !noalias !85917, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !85916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  %.not531 = icmp eq i8 %i.ig, 2
  br i1 %.not531, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ax, %bb.bb
  %i.ih = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @878, i64 noundef 7)
  br i1 %i.ih, label %bb.bd, label %bb.bf

bb.bb:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit608
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 619
  store i8 %i.ig, ptr %i.ii, align 1
  br label %bb.ba

bb.bc:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit608
  %i.ij = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @742, i64 noundef 66)
  br label %bb.g

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.du, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @878, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !85918)
  call void @llvm.experimental.noalias.scope.decl(metadata !85919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @878, ptr %i.am, align 8, !noalias !85920
  %i.ik = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 7, ptr %i.ik, align 8, !noalias !85920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !85920
  %i.il = load i64, ptr %i.du, align 8, !range !27, !alias.scope !85919, !noalias !85921, !noundef !28
  %.not.i609 = icmp eq i64 %i.il, 2
  br i1 %.not.i609, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit612, label %bb.be, !prof !29

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.du, i64 40, i1 false), !noalias !85921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !85920
  store ptr %i.am, ptr %i.ak, align 8, !noalias !85920
  %.sroa.42.0..sroa_idx.i610 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i610, align 8, !noalias !85920
  %i.im = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.im, align 8, !noalias !85920
  %.sroa.46.0..sroa_idx.i611 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i611, align 8, !noalias !85920
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85922
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit612: ; preds = %bb.bd
  %i.in = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0711.0.copyload = load i64, ptr %i.in, align 8, !alias.scope !85922, !noalias !85923 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85922, !noalias !85923
  %.sroa.6712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %.sroa.6712.0.copyload = load i64, ptr %.sroa.6712.0..sroa_idx, align 8, !alias.scope !85922, !noalias !85923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !85920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  %.not532 = icmp eq i64 %.sroa.0711.0.copyload, -1
  br i1 %.not532, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.ba, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit
  %i.io = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 12)
  br i1 %i.io, label %bb.bj, label %bb.bl

bb.bg:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit612
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85924)
  call void @llvm.experimental.noalias.scope.decl(metadata !85925)
  %.val.i.i = load i64, ptr %i.ip, align 8, !alias.scope !85926 ; 2 uses
  %i.iq = icmp eq i64 %.val.i.i, 0
  br i1 %i.iq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !85927, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85928
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.bi:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit612
  %i.is = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @743, i64 noundef 57)
  br label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.bh, %bb.bg
  store i64 %.sroa.0711.0.copyload, ptr %i.ip, align 8
  %.sroa.3.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx90, align 8
  %.sroa.492.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6712.0.copyload, ptr %.sroa.492.0..sroa_idx93, align 8
  br label %bb.bf

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dt, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 12)
  call void @llvm.experimental.noalias.scope.decl(metadata !85929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @447, ptr %i.aj, align 8, !noalias !85930
  %i.it = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 12, ptr %i.it, align 8, !noalias !85930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !85930
  %i.iu = load i64, ptr %i.dt, align 8, !range !27, !alias.scope !85929, !noalias !85931, !noundef !28
  %.not.i613 = icmp eq i64 %i.iu, 2
  br i1 %.not.i613, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit616, label %bb.bk, !prof !29

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dt, i64 40, i1 false), !noalias !85931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !85930
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !85930
  %.sroa.42.0..sroa_idx.i614 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i614, align 8, !noalias !85930
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.iv, align 8, !noalias !85930
  %.sroa.46.0..sroa_idx.i615 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i615, align 8, !noalias !85930
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85929
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit616: ; preds = %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ix = load i8, ptr %i.iw, align 8, !range !38, !alias.scope !85929, !noalias !85931, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !85930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  %.not533 = icmp eq i8 %i.ix, 2
  br i1 %.not533, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bf, %bb.bm
  %i.iy = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 14)
  br i1 %i.iy, label %bb.bo, label %bb.bv, !prof !31

bb.bm:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit616
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 %i.ix, ptr %i.iz, align 4
  br label %bb.bl

bb.bn:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit616
  %i.ja = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 62)
  br label %bb.g

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.experimental.noalias.scope.decl(metadata !85932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !85933
  call fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 14) #76, !noalias !85932
  %i.jb = load i64, ptr %i.af, align 8, !range !59, !noalias !85933, !noundef !28 ; 2 uses
  switch i64 %i.jb, label %bb.bp [
    i64 -1, label %bb.bu
    i64 2, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %.sroa.3.0..sroa_idx.i618 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0..sroa_idx.i619 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i619, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i618, i64 96, i1 false), !noalias !85933
  store i64 %i.jb, ptr %i.ag, align 8, !noalias !85933
  %i.jc = invoke noundef i64 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ag)
          to label %bb.br unwind label %bb.bs, !noalias !85934

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ds, i8 0, i64 16, i1 false), !alias.scope !85932, !noalias !85935
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !85933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 104, i1 false), !noalias !85933
  %.sroa.411.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i620, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.ae), !noalias !85936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !85933
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr @_RNSINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs4wP2HXfJTCR_5alloc6string6StringE5reifyCskXtk6F4WjxZ_4just, ptr %i.jd, align 8, !alias.scope !85932, !noalias !85935
  %.sroa.5.0..sroa_idx.i621 = getelementptr inbounds nuw i8, ptr %i.ds, i64 112
  store i64 %i.jc, ptr %.sroa.5.0..sroa_idx.i621, align 8, !alias.scope !85932, !noalias !85935
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625

bb.bs:                                            ; preds = %bb.bp
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ag) #72
          to label %common.resume unwind label %bb.bt, !noalias !85934

bb.bt:                                            ; preds = %bb.bs
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !85934
  unreachable

bb.bu:                                            ; preds = %bb.bo
  %i.jg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jh, ptr noundef nonnull align 8 dereferenceable(40) %i.jg, i64 40, i1 false), !noalias !85935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !85933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !85937)
  call void @llvm.experimental.noalias.scope.decl(metadata !85938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @449, ptr %i.ad, align 8, !noalias !85939
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 14, ptr %i.ji, align 8, !noalias !85939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !85939
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.jj, i64 40, i1 false), !noalias !85940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !85939
  store ptr %i.ad, ptr %i.ab, align 8, !noalias !85939
  %.sroa.42.0..sroa_idx.i623 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i623, align 8, !noalias !85939
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.jk, align 8, !noalias !85939
  %.sroa.46.0..sroa_idx.i624 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i624, align 8, !noalias !85939
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85941
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !85933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !85942
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0713.0.copyload714 = load ptr, ptr %i.jl, align 8, !alias.scope !85941, !noalias !85943 ; 2 uses
  %.sroa.6715.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6715, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6715.0..sroa_idx716, i64 104, i1 false), !alias.scope !85941, !noalias !85943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !85939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %.not534 = icmp eq ptr %.sroa.0713.0.copyload714, null
  br i1 %.not534, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.bl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit635
  %i.jm = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 15)
  br i1 %i.jm, label %bb.ca, label %bb.ch, !prof !31

bb.bw:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625
  %.sroa.4728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4728.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6715, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store ptr %.sroa.0713.0.copyload714, ptr %i.dq, align 8
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %.sroa.0118.0.copyload = load i64, ptr %i.dr, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.5120.0.copyload = load i64, ptr %.sroa.5120.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625, %bb.bw
  %.sroa.7113.0 = phi i64 [ %.sroa.5120.0.copyload, %bb.bw ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625 ]
  %.sroa.6108.0 = phi ptr [ %.sroa.4119.0.copyload, %bb.bw ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625 ]
  %.sroa.0105.0 = phi i64 [ %.sroa.0118.0.copyload, %bb.bw ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit625 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6715)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85944)
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i626 = load ptr, ptr %i.jo, align 8, !alias.scope !85944, !nonnull !28, !noundef !28 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i627 = load i64, ptr %i.jp, align 8, !alias.scope !85944, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85945)
  %i.jq = icmp eq i64 %.val1.i627, 0
  br i1 %i.jq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i633, label %.lr.ph.i.i.i628

.lr.ph.i.i.i628:                                  ; preds = %bb.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632
  %.sroa.0.010.i.i.i629 = phi i64 [ %i.js, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632 ], [ 0, %bb.bx ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %.val.i626, i64 %.sroa.0.010.i.i.i629 ; 2 uses
  %i.js = add nuw nsw i64 %.sroa.0.010.i.i.i629, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85946)
  call void @llvm.experimental.noalias.scope.decl(metadata !85947)
  %.val.i.i.i.i.i630 = load i64, ptr %i.jr, align 8, !alias.scope !85948, !noalias !85944 ; 2 uses
  %i.jt = icmp eq i64 %.val.i.i.i.i.i630, 0
  br i1 %i.jt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i628
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.val1.i.i.i.i.i631 = load ptr, ptr %i.ju, align 8, !alias.scope !85948, !noalias !85944, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i631, i64 noundef %.val.i.i.i.i.i630, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85949
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632: ; preds = %bb.by, %.lr.ph.i.i.i628
  %i.jv = icmp eq i64 %i.js, %.val1.i627
  br i1 %i.jv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i633, label %.lr.ph.i.i.i628

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i633: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i632, %bb.bx
  %.val2.i634 = load i64, ptr %i.jn, align 8, !alias.scope !85944 ; 2 uses
  %i.jw = icmp eq i64 %.val2.i634, 0
  br i1 %i.jw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit635, label %bb.bz

bb.bz:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i633
  %i.jx = mul nuw i64 %.val2.i634, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i626, i64 noundef %i.jx, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85944
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit635

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit635: ; preds = %bb.bz, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i633
  store i64 %.sroa.0105.0, ptr %i.jn, align 8
  store ptr %.sroa.6108.0, ptr %i.jo, align 8
  store i64 %.sroa.7113.0, ptr %i.jp, align 8
  br label %bb.bv

bb.ca:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.experimental.noalias.scope.decl(metadata !85950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !85951
  call fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 15) #76, !noalias !85950
  %i.jy = load i64, ptr %i.z, align 8, !range !59, !noalias !85951, !noundef !28 ; 2 uses
  switch i64 %i.jy, label %bb.cb [
    i64 -1, label %bb.cg
    i64 2, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %.sroa.3.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4.0..sroa_idx.i638 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i638, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i637, i64 96, i1 false), !noalias !85951
  store i64 %i.jy, ptr %i.aa, align 8, !noalias !85951
  %i.jz = invoke noundef i64 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aa)
          to label %bb.cd unwind label %bb.ce, !noalias !85952

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dp, i8 0, i64 16, i1 false), !alias.scope !85950, !noalias !85953
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit644

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !85951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i64 104, i1 false), !noalias !85951
  %.sroa.411.0..sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  call void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i639, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.y), !noalias !85954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !85951
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr @_RNSINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs4wP2HXfJTCR_5alloc6string6StringE5reifyCskXtk6F4WjxZ_4just, ptr %i.ka, align 8, !alias.scope !85950, !noalias !85953
  %.sroa.5.0..sroa_idx.i640 = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  store i64 %i.jz, ptr %.sroa.5.0..sroa_idx.i640, align 8, !alias.scope !85950, !noalias !85953
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit644

end_hunk_1
begin_hunk_2_@_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut:bb.a
  call fastcc void @_RINvMs1_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @453, i64 noundef 11) #76, !noalias !85968
  %i.kv = load i64, ptr %i.t, align 8, !range !59, !noalias !85969, !noundef !28 ; 2 uses
  switch i64 %i.kv, label %bb.cn [
    i64 -1, label %bb.cs
    i64 2, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  %.sroa.3.0..sroa_idx.i656 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0..sroa_idx.i657 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i657, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i656, i64 96, i1 false), !noalias !85969
  store i64 %i.kv, ptr %i.u, align 8, !noalias !85969
  %i.kw = invoke noundef i64 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.u)
          to label %bb.cp unwind label %bb.cq, !noalias !85970

bb.co:                                            ; preds = %bb.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i8 0, i64 16, i1 false), !alias.scope !85968, !noalias !85971
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !85969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull align 8 dereferenceable(104) %i.u, i64 104, i1 false), !noalias !85969
  %.sroa.411.0..sroa_idx.i658 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  call void @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.411.0..sroa_idx.i658, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.s), !noalias !85972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !85969
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr @_RNSINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches20unwrap_downcast_intoNtNtCs4wP2HXfJTCR_5alloc6string6StringE5reifyCskXtk6F4WjxZ_4just, ptr %i.kx, align 8, !alias.scope !85968, !noalias !85971
  %.sroa.5.0..sroa_idx.i659 = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  store i64 %i.kw, ptr %.sroa.5.0..sroa_idx.i659, align 8, !alias.scope !85968, !noalias !85971
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663

bb.cq:                                            ; preds = %bb.cn
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(104) %i.u) #72
          to label %common.resume unwind label %bb.cr, !noalias !85970

bb.cr:                                            ; preds = %bb.cq
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !85970
  unreachable

bb.cs:                                            ; preds = %bb.cm
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lb, ptr noundef nonnull align 8 dereferenceable(40) %i.la, i64 40, i1 false), !noalias !85971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !85969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !85973)
  call void @llvm.experimental.noalias.scope.decl(metadata !85974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @453, ptr %i.r, align 8, !noalias !85975
  %i.lc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 11, ptr %i.lc, align 8, !noalias !85975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !85975
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ld, i64 40, i1 false), !noalias !85976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !85975
  store ptr %i.r, ptr %i.p, align 8, !noalias !85975
  %.sroa.42.0..sroa_idx.i661 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i661, align 8, !noalias !85975
  %i.le = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.le, align 8, !noalias !85975
  %.sroa.46.0..sroa_idx.i662 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i662, align 8, !noalias !85975
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85977
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !85969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !85978
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.0721.0.copyload722 = load ptr, ptr %i.lf, align 8, !alias.scope !85977, !noalias !85979 ; 2 uses
  %.sroa.6723.0..sroa_idx724 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6723, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6723.0..sroa_idx724, i64 104, i1 false), !alias.scope !85977, !noalias !85979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !85975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %.not536 = icmp eq ptr %.sroa.0721.0.copyload722, null
  br i1 %.not536, label %bb.cv, label %bb.cu

bb.ct:                                            ; preds = %bb.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit673
  %i.lg = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2131, i64 noundef 7)
  br i1 %i.lg, label %bb.cy, label %bb.da

bb.cu:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663
  %.sroa.4732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4732.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6723, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store ptr %.sroa.0721.0.copyload722, ptr %i.dk, align 8
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %.sroa.0150.0.copyload = load i64, ptr %i.dl, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.4151.0.copyload = load ptr, ptr %.sroa.4151.0..sroa_idx, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.5152.0.copyload = load i64, ptr %.sroa.5152.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663, %bb.cu
  %.sroa.7145.0 = phi i64 [ %.sroa.5152.0.copyload, %bb.cu ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663 ]
  %.sroa.6140.0 = phi ptr [ %.sroa.4151.0.copyload, %bb.cu ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663 ]
  %.sroa.0137.0 = phi i64 [ %.sroa.0150.0.copyload, %bb.cu ], [ 0, %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just.exit663 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6723)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85980)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val.i664 = load ptr, ptr %i.li, align 8, !alias.scope !85980, !nonnull !28, !noundef !28 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val1.i665 = load i64, ptr %i.lj, align 8, !alias.scope !85980, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85981)
  %i.lk = icmp eq i64 %.val1.i665, 0
  br i1 %i.lk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i671, label %.lr.ph.i.i.i666

.lr.ph.i.i.i666:                                  ; preds = %bb.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670
  %.sroa.0.010.i.i.i667 = phi i64 [ %i.lm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670 ], [ 0, %bb.cv ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %.val.i664, i64 %.sroa.0.010.i.i.i667 ; 2 uses
  %i.lm = add nuw nsw i64 %.sroa.0.010.i.i.i667, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85982)
  call void @llvm.experimental.noalias.scope.decl(metadata !85983)
  %.val.i.i.i.i.i668 = load i64, ptr %i.ll, align 8, !alias.scope !85984, !noalias !85980 ; 2 uses
  %i.ln = icmp eq i64 %.val.i.i.i.i.i668, 0
  br i1 %i.ln, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i666
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %.val1.i.i.i.i.i669 = load ptr, ptr %i.lo, align 8, !alias.scope !85984, !noalias !85980, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i669, i64 noundef %.val.i.i.i.i.i668, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85985
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670: ; preds = %bb.cw, %.lr.ph.i.i.i666
  %i.lp = icmp eq i64 %i.lm, %.val1.i665
  br i1 %i.lp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i671, label %.lr.ph.i.i.i666

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i671: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i670, %bb.cv
  %.val2.i672 = load i64, ptr %i.lh, align 8, !alias.scope !85980 ; 2 uses
  %i.lq = icmp eq i64 %.val2.i672, 0
  br i1 %i.lq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit673, label %bb.cx

bb.cx:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i671
  %i.lr = mul nuw i64 %.val2.i672, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i664, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !85980
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit673

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit673: ; preds = %bb.cx, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i671
  store i64 %.sroa.0137.0, ptr %i.lh, align 8
  store ptr %.sroa.6140.0, ptr %i.li, align 8
  store i64 %.sroa.7145.0, ptr %i.lj, align 8
  br label %bb.ct

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dj, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2131, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !85986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @2131, ptr %i.o, align 8, !noalias !85987
  %i.ls = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 7, ptr %i.ls, align 8, !noalias !85987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !85987
  %i.lt = load i64, ptr %i.dj, align 8, !range !27, !alias.scope !85986, !noalias !85988, !noundef !28
  %.not.i674 = icmp eq i64 %i.lt, 2
  br i1 %.not.i674, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit677, label %bb.cz, !prof !29

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dj, i64 40, i1 false), !noalias !85988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !85987
  store ptr %i.o, ptr %i.m, align 8, !noalias !85987
  %.sroa.42.0..sroa_idx.i675 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i675, align 8, !noalias !85987
  %i.lu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.lu, align 8, !noalias !85987
  %.sroa.46.0..sroa_idx.i676 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i676, align 8, !noalias !85987
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85986
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit677: ; preds = %bb.cy
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.lw = load i8, ptr %i.lv, align 8, !range !38, !alias.scope !85986, !noalias !85988, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !85987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.not537 = icmp eq i8 %i.lw, 2
  br i1 %.not537, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.ct, %bb.db
  %i.lx = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2132, i64 noundef 11)
  br i1 %i.lx, label %bb.dd, label %bb.df

bb.db:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit677
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 621
  store i8 %i.lw, ptr %i.ly, align 1
  br label %bb.da

bb.dc:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit677
  %i.lz = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @748, i64 noundef 57)
  br label %bb.g

bb.dd:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.di, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !85989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @2132, ptr %i.l, align 8, !noalias !85989
  %i.ma = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 11, ptr %i.ma, align 8, !noalias !85989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !85989
  %i.mb = load i64, ptr %i.di, align 8, !range !27, !alias.scope !85989, !noundef !28
  %.not.i678 = icmp eq i64 %i.mb, 2
  br i1 %.not.i678, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEEB1S_.exit, label %bb.de, !prof !29

bb.de:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.di, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !85989
  store ptr %i.l, ptr %i.j, align 8, !noalias !85989
  %.sroa.42.0..sroa_idx.i679 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i679, align 8, !noalias !85989
  %i.mc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.mc, align 8, !noalias !85989
  %.sroa.46.0..sroa_idx.i680 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i680, align 8, !noalias !85989
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85989
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEEB1S_.exit: ; preds = %bb.dd
  %i.md = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.me = load i8, ptr %i.md, align 8, !range !38, !alias.scope !85989, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !85989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.not538 = icmp eq i8 %i.me, 2
  br i1 %.not538, label %bb.dh, label %bb.dg

bb.df:                                            ; preds = %bb.da, %bb.dg
  %i.mf = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2133, i64 noundef 15)
  br i1 %i.mf, label %bb.di, label %bb.dk

bb.dg:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEEB1S_.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 622
  store i8 %i.me, ptr %i.mg, align 2
  br label %bb.df

bb.dh:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatEEB1S_.exit
  %i.mh = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @749, i64 noundef 61)
  br label %bb.g

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dh, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !85990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @2133, ptr %i.i, align 8, !noalias !85990
  %i.mi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 15, ptr %i.mi, align 8, !noalias !85990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85990
  %i.mj = load i64, ptr %i.dh, align 8, !range !27, !alias.scope !85990, !noundef !28
  %.not.i681 = icmp eq i64 %i.mj, 2
  br i1 %.not.i681, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEEB1S_.exit, label %bb.dj, !prof !29

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dh, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !85990
  store ptr %i.i, ptr %i.g, align 8, !noalias !85990
  %.sroa.42.0..sroa_idx.i682 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i682, align 8, !noalias !85990
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.mk, align 8, !noalias !85990
  %.sroa.46.0..sroa_idx.i683 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i683, align 8, !noalias !85990
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85990
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEEB1S_.exit: ; preds = %bb.di
  %i.ml = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.mm = load i8, ptr %i.ml, align 8, !range !38, !alias.scope !85990, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %.not539 = icmp eq i8 %i.mm, 2
  br i1 %.not539, label %bb.dm, label %bb.dl

bb.dk:                                            ; preds = %bb.df, %bb.dl
  %i.mn = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2134, i64 noundef 7)
  br i1 %i.mn, label %bb.dn, label %bb.dp

bb.dl:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEEB1S_.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 623
  store i8 %i.mm, ptr %i.mo, align 1
  br label %bb.dk

bb.dm:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatEEB1S_.exit
  %i.mp = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @750, i64 noundef 65)
  br label %bb.g

bb.dn:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dg, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2134, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !85991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @2134, ptr %i.f, align 8, !noalias !85992
  %i.mq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 7, ptr %i.mq, align 8, !noalias !85992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85992
  %i.mr = load i64, ptr %i.dg, align 8, !range !27, !alias.scope !85991, !noalias !85993, !noundef !28
  %.not.i684 = icmp eq i64 %i.mr, 2
  br i1 %.not.i684, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit687, label %bb.do, !prof !29

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dg, i64 40, i1 false), !noalias !85993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85992
  store ptr %i.f, ptr %i.d, align 8, !noalias !85992
  %.sroa.42.0..sroa_idx.i685 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i685, align 8, !noalias !85992
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ms, align 8, !noalias !85992
  %.sroa.46.0..sroa_idx.i686 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i686, align 8, !noalias !85992
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85991
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit687: ; preds = %bb.dn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.mu = load i8, ptr %i.mt, align 8, !range !38, !alias.scope !85991, !noalias !85993, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %.not540 = icmp eq i8 %i.mu, 2
  br i1 %.not540, label %bb.dr, label %bb.dq

bb.dp:                                            ; preds = %bb.dk, %bb.dq
  %i.mv = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2135, i64 noundef 15)
  br i1 %i.mv, label %bb.ds, label %bb.du

bb.dq:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit687
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 %i.mu, ptr %i.mw, align 8
  br label %bb.dp

bb.dr:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit687
  %i.mx = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @751, i64 noundef 57)
  br label %bb.g

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.df, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2135, i64 noundef 15)
  call void @llvm.experimental.noalias.scope.decl(metadata !85994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @2135, ptr %i.c, align 8, !noalias !85995
  %i.my = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 15, ptr %i.my, align 8, !noalias !85995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85995
  %i.mz = load i64, ptr %i.df, align 8, !range !27, !alias.scope !85994, !noalias !85996, !noundef !28
  %.not.i688 = icmp eq i64 %i.mz, 2
  br i1 %.not.i688, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit691, label %bb.dt, !prof !29

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.df, i64 40, i1 false), !noalias !85996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85995
  store ptr %i.c, ptr %i.a, align 8, !noalias !85995
  %.sroa.42.0..sroa_idx.i689 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i689, align 8, !noalias !85995
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.na, align 8, !noalias !85995
  %.sroa.46.0..sroa_idx.i690 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i690, align 8, !noalias !85995
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !85994
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit691: ; preds = %bb.ds
  %i.nb = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.nc = load i8, ptr %i.nb, align 8, !range !38, !alias.scope !85994, !noalias !85996, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %.not541 = icmp eq i8 %i.nc, 2
  br i1 %.not541, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %bb.dp, %bb.dv
  %i.nd = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5)
  br i1 %i.nd, label %bb.dx, label %bb.dy

bb.dv:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit691
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 625
  store i8 %i.nc, ptr %i.ne, align 1
  br label %bb.du

bb.dw:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit691
  %i.nf = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @752, i64 noundef 65)
  br label %bb.g

bb.dx:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.de, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %i.ng = load ptr, ptr %i.er, align 8, !noundef !28
  %.not542 = icmp eq ptr %i.ng, null
  br i1 %.not542, label %bb.ea, label %bb.dz

bb.dy:                                            ; preds = %bb.du, %bb.ea
  %i.nh = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2136, i64 noundef 9)
  br i1 %i.nh, label %bb.eb, label %bb.ec

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dc, ptr noundef nonnull align 8 dereferenceable(112) %i.er, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  %.sroa.0216.0.copyload = load i64, ptr %i.dd, align 8
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.4217.0.copyload = load ptr, ptr %.sroa.4217.0..sroa_idx, align 8
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.5218.0.copyload = load i64, ptr %.sroa.5218.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %bb.dz
  %.sroa.7211.0 = phi i64 [ %.sroa.5218.0.copyload, %bb.dz ], [ 0, %bb.dx ]
  %.sroa.6206.0 = phi ptr [ %.sroa.4217.0.copyload, %bb.dz ], [ inttoptr (i64 8 to ptr), %bb.dx ]
  %.sroa.0203.0 = phi i64 [ %.sroa.0216.0.copyload, %bb.dz ], [ 0, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ni)
  store i64 %.sroa.0203.0, ptr %i.ni, align 8
  %.sroa.6206.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.6206.0, ptr %.sroa.6206.0..sroa_idx209, align 8
  %.sroa.7211.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7211.0, ptr %.sroa.7211.0..sroa_idx214, align 8
  br label %bb.dy

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.db, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2136, i64 noundef 9)
  %i.nj = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2136, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.db) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %.not543 = icmp eq i8 %i.nj, 2
  br i1 %.not543, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %bb.dy, %bb.ed
  %i.nk = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @458, i64 noundef 11)
  br i1 %i.nk, label %bb.ef, label %bb.eg

bb.ed:                                            ; preds = %bb.eb
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i8 %i.nj, ptr %i.nl, align 2
  br label %bb.ec

bb.ee:                                            ; preds = %bb.eb
  %i.nm = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @753, i64 noundef 59)
  br label %bb.g

bb.ef:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCskXtk6F4WjxZ_4just11indentation11IndentationEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.da, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.nn = call fastcc { i64, i32 } @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just11indentation11IndentationEEB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.da) ; 2 uses
  %i.no = extractvalue { i64, i32 } %i.nn, 0
  %i.np = extractvalue { i64, i32 } %i.nn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i64 %i.no, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 %i.np, ptr %i.nr, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ec, %bb.ef
  %i.ns = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2137, i64 noundef 4)
  br i1 %i.ns, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneINtNtNtCsj6eKBz9Db1c_4core3num7nonzero7NonZeroyEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cz, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.nt = call fastcc noundef i64 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB1h_3num7nonzero7NonZeroyEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.nt, ptr %i.nu, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.nv = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 8)
  br i1 %i.nv, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cy, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 8)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %.val569 = load i64, ptr %i.nw, align 8, !range !37, !noundef !28 ; 2 uses
  %i.nx = icmp sgt i64 %.val569, 0
  br i1 %i.nx, label %bb.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit694

bb.ek:                                            ; preds = %bb.ej
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val570 = load ptr, ptr %i.ny, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val570, i64 noundef %.val569, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !85997
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit694

bb.el:                                            ; preds = %bb.ei, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit694
  %i.nz = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14)
  br i1 %i.nz, label %bb.em, label %bb.en

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit694: ; preds = %bb.ek, %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %bb.el

bb.em:                                            ; preds = %bb.el
  %i.oa = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14)
  br i1 %i.oa, label %bb.eo, label %bb.ep

bb.en:                                            ; preds = %bb.el, %bb.ep
  %i.ob = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2139, i64 noundef 12)
  br i1 %i.ob, label %bb.er, label %bb.es

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.cx, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.ep, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2138, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.oc = load ptr, ptr %i.ep, align 8, !noundef !28
  %.not544 = icmp eq ptr %i.oc, null
  br i1 %.not544, label %.sink.split, label %bb.eq

.sink.split:                                      ; preds = %bb.eo, %bb.eq
  %.sroa.6232.sroa.5.0.ph = phi i64 [ %.sroa.5242.0.copyload, %bb.eq ], [ 0, %bb.eo ]
  %.sroa.6232.sroa.0.0.ph = phi ptr [ %.sroa.4241.0.copyload, %bb.eq ], [ inttoptr (i64 8 to ptr), %bb.eo ]
  %.sroa.0229.0.ph = phi i64 [ %.sroa.0240.0.copyload, %bb.eq ], [ 0, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.ep

bb.ep:                                            ; preds = %.sink.split, %bb.em
  %.sroa.6232.sroa.5.0 = phi i64 [ undef, %bb.em ], [ %.sroa.6232.sroa.5.0.ph, %.sink.split ]
  %.sroa.6232.sroa.0.0 = phi ptr [ undef, %bb.em ], [ %.sroa.6232.sroa.0.0.ph, %.sink.split ]
  %.sroa.0229.0 = phi i64 [ -1, %bb.em ], [ %.sroa.0229.0.ph, %.sink.split ]
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.od)
  store i64 %.sroa.0229.0, ptr %i.od, align 8
  %.sroa.6232.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.sroa.6232.sroa.0.0, ptr %.sroa.6232.0..sroa_idx234, align 8
  %.sroa.6232.sroa.5.0..sroa.6232.0..sroa_idx234.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %.sroa.6232.sroa.5.0, ptr %.sroa.6232.sroa.5.0..sroa.6232.0..sroa_idx234.sroa_idx, align 8
  br label %bb.en

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cv, ptr noundef nonnull align 8 dereferenceable(112) %i.ep, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %.sroa.0240.0.copyload = load i64, ptr %i.cw, align 8
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.4241.0.copyload = load ptr, ptr %.sroa.4241.0..sroa_idx, align 8
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.5242.0.copyload = load i64, ptr %.sroa.5242.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %.sink.split

bb.er:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cu, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2139, i64 noundef 12)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2139, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %i.oe = load i64, ptr %i.eo, align 8, !range !37, !noundef !28 ; 2 uses
  %.not545 = icmp eq i64 %i.oe, -1
  br i1 %.not545, label %bb.ev, label %bb.et

bb.es:                                            ; preds = %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit
  %i.of = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 11)
  br i1 %i.of, label %bb.ew, label %bb.ex

bb.et:                                            ; preds = %bb.er
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.4508.0.copyload = load ptr, ptr %.sroa.4508.0..sroa_idx, align 8
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.5509.0.copyload = load i64, ptr %.sroa.5509.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85998)
  call void @llvm.experimental.noalias.scope.decl(metadata !85999)
  %.val.i.i695 = load i64, ptr %i.og, align 8, !alias.scope !86000 ; 2 uses
  %i.oh = icmp eq i64 %.val.i.i695, 0
  br i1 %i.oh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i.i696 = load ptr, ptr %i.oi, align 8, !alias.scope !86000, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i696, i64 noundef %.val.i.i695, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86000
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.ev:                                            ; preds = %bb.er
  %i.oj = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @754, i64 noundef 62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.eu, %bb.et
  store i64 %i.oe, ptr %i.og, align 8
  %.sroa.3261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.4508.0.copyload, ptr %.sroa.3261.0..sroa_idx262, align 8
  %.sroa.4264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.5509.0.copyload, ptr %.sroa.4264.0..sroa_idx265, align 8
  br label %bb.es

bb.ew:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 11)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.en, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  %i.ok = load i64, ptr %i.en, align 8, !range !37, !noundef !28 ; 2 uses
  %.not546 = icmp eq i64 %i.ok, -1
  br i1 %.not546, label %bb.fa, label %bb.ey

bb.ex:                                            ; preds = %bb.es, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit699
  %i.ol = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2141, i64 noundef 15)
  br i1 %i.ol, label %bb.fb, label %bb.fc

bb.ey:                                            ; preds = %bb.ew
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.4514.0.copyload = load ptr, ptr %.sroa.4514.0..sroa_idx, align 8
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.sroa.5515.0.copyload = load i64, ptr %.sroa.5515.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86001)
  call void @llvm.experimental.noalias.scope.decl(metadata !86002)
  %.val.i.i697 = load i64, ptr %i.om, align 8, !alias.scope !86003 ; 2 uses
  %i.on = icmp eq i64 %.val.i.i697, 0
  br i1 %i.on, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit699, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val1.i.i698 = load ptr, ptr %i.oo, align 8, !alias.scope !86003, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i698, i64 noundef %.val.i.i697, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86003
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit699

bb.fa:                                            ; preds = %bb.ew
  %i.op = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @755, i64 noundef 61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit699: ; preds = %bb.ez, %bb.ey
  store i64 %i.ok, ptr %i.om, align 8
  %.sroa.3285.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.4514.0.copyload, ptr %.sroa.3285.0..sroa_idx286, align 8
  %.sroa.4288.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.5515.0.copyload, ptr %.sroa.4288.0..sroa_idx289, align 8
  br label %bb.ex

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2141, i64 noundef 15)
  %i.oq = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2141, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cs) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %.not547 = icmp eq i8 %i.oq, 2
  br i1 %.not547, label %bb.fe, label %bb.fd

bb.fc:                                            ; preds = %bb.ex, %bb.fd
  %i.or = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 10)
  br i1 %i.or, label %bb.ff, label %bb.fg

bb.fd:                                            ; preds = %bb.fb
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 627
  store i8 %i.oq, ptr %i.os, align 1
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fb
  %i.ot = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 65)
  br label %bb.g

bb.ff:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 10)
  %i.ou = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cr) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %.not548 = icmp eq i8 %i.ou, 2
  br i1 %.not548, label %bb.fi, label %bb.fh

bb.fg:                                            ; preds = %bb.fc, %bb.fh
  %i.ov = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2143, i64 noundef 8)
  br i1 %i.ov, label %bb.fj, label %bb.fk

bb.fh:                                            ; preds = %bb.ff
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 %i.ou, ptr %i.ow, align 4
  br label %bb.fg

bb.fi:                                            ; preds = %bb.ff
  %i.ox = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 60)
  br label %bb.g

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2143, i64 noundef 8)
  %i.oy = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2143, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.not549 = icmp eq i8 %i.oy, 2
  br i1 %.not549, label %bb.fm, label %bb.fl

bb.fk:                                            ; preds = %bb.fg, %bb.fl
  %i.oz = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2144, i64 noundef 7)
  br i1 %i.oz, label %bb.fn, label %bb.fo

bb.fl:                                            ; preds = %bb.fj
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 629
  store i8 %i.oy, ptr %i.pa, align 1
  br label %bb.fk

bb.fm:                                            ; preds = %bb.fj
  %i.pb = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @758, i64 noundef 58)
  br label %bb.g

bb.fn:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2144, i64 noundef 7)
  %i.pc = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2144, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cp) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  %.not550 = icmp eq i8 %i.pc, 2
  br i1 %.not550, label %bb.fq, label %bb.fp

bb.fo:                                            ; preds = %bb.fk, %bb.fp
  %i.pd = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 9)
  br i1 %i.pd, label %bb.fr, label %bb.fs

bb.fp:                                            ; preds = %bb.fn
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i8 %i.pc, ptr %i.pe, align 2
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  %i.pf = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @759, i64 noundef 57)
  br label %bb.g

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.co, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 9)
  %i.pg = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.co) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %.not551 = icmp eq i8 %i.pg, 2
  br i1 %.not551, label %bb.fu, label %bb.ft

bb.fs:                                            ; preds = %bb.fo, %bb.ft
  %i.ph = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2146, i64 noundef 12)
  br i1 %i.ph, label %bb.fv, label %bb.fw

bb.ft:                                            ; preds = %bb.fr
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 631
  store i8 %i.pg, ptr %i.pi, align 1
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fr
  %i.pj = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @760, i64 noundef 59)
  br label %bb.g

bb.fv:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cn, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2146, i64 noundef 12)
  %i.pk = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2146, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cn) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %.not552 = icmp eq i8 %i.pk, 2
  br i1 %.not552, label %bb.fy, label %bb.fx

bb.fw:                                            ; preds = %bb.fs, %bb.fx
  %i.pl = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 3)
  br i1 %i.pl, label %bb.fz, label %bb.ga

bb.fx:                                            ; preds = %bb.fv
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 %i.pk, ptr %i.pm, align 8
  br label %bb.fw

bb.fy:                                            ; preds = %bb.fv
  %i.pn = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @761, i64 noundef 62)
  br label %bb.g

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cm, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 3)
  %i.po = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %.not553 = icmp eq i8 %i.po, 2
  br i1 %.not553, label %bb.gc, label %bb.gb

bb.ga:                                            ; preds = %bb.fw, %bb.gb
  %i.pp = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 5)
  br i1 %i.pp, label %bb.gd, label %bb.ge

bb.gb:                                            ; preds = %bb.fz
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 633
  store i8 %i.po, ptr %i.pq, align 1
  br label %bb.ga

bb.gc:                                            ; preds = %bb.fz
  %i.pr = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @762, i64 noundef 53)
  br label %bb.g

bb.gd:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cl, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 5)
  %i.ps = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cl) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %.not554 = icmp eq i8 %i.ps, 2
  br i1 %.not554, label %bb.gg, label %bb.gf

bb.ge:                                            ; preds = %bb.ga, %bb.gf
  %i.pt = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2148, i64 noundef 3)
  br i1 %i.pt, label %bb.gh, label %bb.gi

bb.gf:                                            ; preds = %bb.gd
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 634
  store i8 %i.ps, ptr %i.pu, align 2
  br label %bb.ge

bb.gg:                                            ; preds = %bb.gd
  %i.pv = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @763, i64 noundef 55)
  br label %bb.g

bb.gh:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.ck, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2148, i64 noundef 3)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2148, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.pw = load ptr, ptr %i.em, align 8, !noundef !28
  %.not555 = icmp eq ptr %i.pw, null
  br i1 %.not555, label %bb.gk, label %bb.gj

bb.gi:                                            ; preds = %bb.ge, %bb.gk
  %i.px = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 5)
  br i1 %i.px, label %bb.gl, label %bb.go

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ci, ptr noundef nonnull align 8 dereferenceable(112) %i.em, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.sroa.0384.0.copyload = load i64, ptr %i.cj, align 8
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.4385.0.copyload = load ptr, ptr %.sroa.4385.0..sroa_idx, align 8
  %.sroa.5386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.5386.0.copyload = load i64, ptr %.sroa.5386.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gh, %bb.gj
  %.sroa.7379.0 = phi i64 [ %.sroa.5386.0.copyload, %bb.gj ], [ 0, %bb.gh ]
  %.sroa.6374.0 = phi ptr [ %.sroa.4385.0.copyload, %bb.gj ], [ inttoptr (i64 8 to ptr), %bb.gh ]
  %.sroa.0371.0 = phi i64 [ %.sroa.0384.0.copyload, %bb.gj ], [ 0, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.py)
  store i64 %.sroa.0371.0, ptr %i.py, align 8
  %.sroa.6374.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.6374.0, ptr %.sroa.6374.0..sroa_idx377, align 8
  %.sroa.7379.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.7379.0, ptr %.sroa.7379.0..sroa_idx382, align 8
  br label %bb.gi

bb.gl:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ch, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 5)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.el, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86004)
  %i.qa = load i64, ptr %i.pz, align 8, !range !37, !alias.scope !86004, !noundef !28 ; 3 uses
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !86005)
  call void @llvm.experimental.noalias.scope.decl(metadata !86006)
  %i.qc = icmp eq i64 %i.qa, 0
  br i1 %i.qc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val1.i.i.i = load ptr, ptr %i.qd, align 8, !alias.scope !86007, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.qa, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86007
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

bb.go:                                            ; preds = %bb.gi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit
  %i.qe = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2149, i64 noundef 9)
  br i1 %i.qe, label %bb.gp, label %bb.gq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.gn, %bb.gm, %bb.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pz, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br label %bb.go

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.cg, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2149, i64 noundef 9)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.ek, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2149, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.qf = load ptr, ptr %i.ek, align 8, !noundef !28
  %.not556 = icmp eq ptr %i.qf, null
  br i1 %.not556, label %bb.gs, label %bb.gr

bb.gq:                                            ; preds = %bb.go, %bb.gs
  %i.qg = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2150, i64 noundef 13)
  br i1 %i.qg, label %bb.gt, label %bb.gu

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %i.ek, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.0400.0.copyload = load i64, ptr %i.cf, align 8
  %.sroa.4401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4401.0.copyload = load ptr, ptr %.sroa.4401.0..sroa_idx, align 8
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.5402.0.copyload = load i64, ptr %.sroa.5402.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gp, %bb.gr
  %.sroa.7395.0 = phi i64 [ %.sroa.5402.0.copyload, %bb.gr ], [ 0, %bb.gp ]
  %.sroa.6390.0 = phi ptr [ %.sroa.4401.0.copyload, %bb.gr ], [ inttoptr (i64 8 to ptr), %bb.gp ]
  %.sroa.0387.0 = phi i64 [ %.sroa.0400.0.copyload, %bb.gr ], [ 0, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qh)
  store i64 %.sroa.0387.0, ptr %i.qh, align 8
  %.sroa.6390.0..sroa_idx393 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.6390.0, ptr %.sroa.6390.0..sroa_idx393, align 8
  %.sroa.7395.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.7395.0, ptr %.sroa.7395.0..sroa_idx398, align 8
  br label %bb.gq

bb.gt:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cd, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2150, i64 noundef 13)
  %i.qi = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2150, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cd) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.not557 = icmp eq i8 %i.qi, 2
  br i1 %.not557, label %bb.gw, label %bb.gv

bb.gu:                                            ; preds = %bb.gq, %bb.gv
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.qk = call noundef align 8 ptr @_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.qj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) ; 2 uses
  %.not558 = icmp eq ptr %i.qk, null
  br i1 %.not558, label %bb.gx, label %bb.g

bb.gv:                                            ; preds = %bb.gt
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 635
  store i8 %i.qi, ptr %i.ql, align 1
  br label %bb.gu

bb.gw:                                            ; preds = %bb.gt
  %i.qm = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @764, i64 noundef 63)
  br label %bb.g

bb.gx:                                            ; preds = %bb.gu
  %i.qn = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 7)
  br i1 %i.qn, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cc, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 7)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @465, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.val567 = load i64, ptr %i.qo, align 8, !range !37, !noundef !28 ; 2 uses
  %i.qp = icmp sgt i64 %.val567, 0
  br i1 %i.qp, label %bb.gz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit702

bb.gz:                                            ; preds = %bb.gy
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.val568 = load ptr, ptr %i.qq, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val568, i64 noundef %.val567, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86008
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit702

bb.ha:                                            ; preds = %bb.gx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit702
  %i.qr = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2151, i64 noundef 4)
  br i1 %i.qr, label %bb.hb, label %bb.hc

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit702: ; preds = %bb.gz, %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.ha

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cb, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2151, i64 noundef 4)
  %i.qs = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2151, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.cb) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %.not559 = icmp eq i8 %i.qs, 2
  br i1 %.not559, label %bb.he, label %bb.hd

bb.hc:                                            ; preds = %bb.ha, %bb.hd
  %i.qt = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 9)
  br i1 %i.qt, label %bb.hf, label %bb.hg

bb.hd:                                            ; preds = %bb.hb
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 %i.qs, ptr %i.qu, align 4
  br label %bb.hc

bb.he:                                            ; preds = %bb.hb
  %i.qv = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @765, i64 noundef 54)
  br label %bb.g

bb.hf:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ca, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 9)
  %i.qw = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ca) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.not560 = icmp eq i8 %i.qw, 2
  br i1 %.not560, label %bb.hi, label %bb.hh

bb.hg:                                            ; preds = %bb.hc, %bb.hh
  %i.qx = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2152, i64 noundef 16)
  br i1 %i.qx, label %bb.hj, label %bb.hk

bb.hh:                                            ; preds = %bb.hf
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 637
  store i8 %i.qw, ptr %i.qy, align 1
  br label %bb.hg

bb.hi:                                            ; preds = %bb.hf
  %i.qz = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 59)
  br label %bb.g

bb.hj:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bz, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2152, i64 noundef 16)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2152, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.ra = load i64, ptr %i.ei, align 8, !range !37, !noundef !28 ; 2 uses
  %.not561 = icmp eq i64 %i.ra, -1
  br i1 %.not561, label %bb.hn, label %bb.hl

bb.hk:                                            ; preds = %bb.hg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit705
  %i.rb = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2153, i64 noundef 8)
  br i1 %i.rb, label %bb.ho, label %bb.hp

bb.hl:                                            ; preds = %bb.hj
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.4520.0.copyload = load ptr, ptr %.sroa.4520.0..sroa_idx, align 8
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.sroa.5521.0.copyload = load i64, ptr %.sroa.5521.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86009)
  call void @llvm.experimental.noalias.scope.decl(metadata !86010)
  %.val.i.i703 = load i64, ptr %i.rc, align 8, !alias.scope !86011 ; 2 uses
  %i.rd = icmp eq i64 %.val.i.i703, 0
  br i1 %i.rd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit705, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val1.i.i704 = load ptr, ptr %i.re, align 8, !alias.scope !86011, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i704, i64 noundef %.val.i.i703, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86011
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit705

bb.hn:                                            ; preds = %bb.hj
  %i.rf = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit705: ; preds = %bb.hm, %bb.hl
  store i64 %i.ra, ptr %i.rc, align 8
  %.sroa.3454.0..sroa_idx455 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.sroa.4520.0.copyload, ptr %.sroa.3454.0..sroa_idx455, align 8
  %.sroa.4457.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.sroa.5521.0.copyload, ptr %.sroa.4457.0..sroa_idx458, align 8
  br label %bb.hk

bb.ho:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.by, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2153, i64 noundef 8)
  %i.rg = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2153, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.by) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %.not562 = icmp eq i8 %i.rg, 2
  br i1 %.not562, label %bb.hr, label %bb.hq

bb.hp:                                            ; preds = %bb.hk, %bb.hq
  %i.rh = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @466, i64 noundef 8)
  br i1 %i.rh, label %bb.hs, label %bb.ht

bb.hq:                                            ; preds = %bb.ho
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 638
  store i8 %i.rg, ptr %i.ri, align 2
  br label %bb.hp

bb.hr:                                            ; preds = %bb.ho
  %i.rj = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @768, i64 noundef 58)
  br label %bb.g

bb.hs:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @466, i64 noundef 8)
  %i.rk = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @466, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bx) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.not563 = icmp eq i8 %i.rk, 2
  br i1 %.not563, label %bb.hv, label %bb.hu

bb.ht:                                            ; preds = %bb.hp, %bb.hu
  %i.rl = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2154, i64 noundef 7)
  br i1 %i.rl, label %bb.hw, label %bb.hx

bb.hu:                                            ; preds = %bb.hs
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 639
  store i8 %i.rk, ptr %i.rm, align 1
  br label %bb.ht

bb.hv:                                            ; preds = %bb.hs
  %i.rn = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 58)
  br label %bb.g

bb.hw:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onehECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bw, ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  %i.ro = call fastcc { i1, i8 } @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionhEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bw) ; 2 uses
  %i.rp = extractvalue { i1, i8 } %i.ro, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br i1 %i.rp, label %bb.hy, label %bb.hz

bb.hx:                                            ; preds = %bb.ht, %bb.hy
  %i.rq = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17)
  br i1 %i.rq, label %bb.ia, label %bb.ic

bb.hy:                                            ; preds = %bb.hw
  %i.rr = extractvalue { i1, i8 } %i.ro, 1
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i8 %i.rr, ptr %i.rs, align 4
  br label %bb.hx

bb.hz:                                            ; preds = %bb.hw
  %i.rt = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @745, i64 noundef 57)
  br label %bb.g

bb.ia:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17)
  call fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %.val = load i64, ptr %i.ru, align 8, !range !37, !noundef !28 ; 2 uses
  %i.rv = icmp sgt i64 %.val, 0
  br i1 %i.rv, label %bb.ib, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit708

bb.ib:                                            ; preds = %bb.ia
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.val566 = load ptr, ptr %i.rw, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val566, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !86012
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit708

bb.ic:                                            ; preds = %bb.hx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit708
  %i.rx = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1267, i64 noundef 3)
  br i1 %i.rx, label %bb.id, label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit708: ; preds = %bb.ib, %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ru, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.ic

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bu, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1267, i64 noundef 3)
  %i.ry = call fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1267, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bu) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %.not565 = icmp eq i8 %i.ry, 2
  br i1 %.not565, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 %i.ry, ptr %i.rz, align 8
  br label %bb.g

bb.if:                                            ; preds = %bb.id
  %i.sa = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @746, i64 noundef 53)
  br label %bb.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #45 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !86021
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !86021
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !86021, !noundef !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !86022
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !86022
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !28
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !86023, !noundef !28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !86023, !noundef !28 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !86023, !noundef !28
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !86023
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !86023
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !86023
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !86022
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !86022
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !86024
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !86024
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !86024, !noundef !28
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mut:bb.a
  br i1 %i.ig, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit301, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val1.i.i.i300 = load ptr, ptr %i.ih, align 8, !alias.scope !98752, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i300, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !98752
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit301

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit299: ; preds = %bb.eg, %bb.ef, %bb.ej
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #72
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #72
  br label %common.resume.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit301: ; preds = %bb.ei, %bb.eh, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.fc

bb.ej:                                            ; preds = %bb.eu, %bb.ek
  %.pn210 = phi { ptr, i32 } [ %i.im, %bb.eu ], [ %i.ik, %bb.ek ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #72
  call void @llvm.experimental.noalias.scope.decl(metadata !98753)
  %i.ii = load i64, ptr %i.bl, align 8, !range !37, !alias.scope !98753, !noundef !28 ; 3 uses
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit299, label %bb.ef

bb.ek:                                            ; preds = %bb.er, %bb.ep, %bb.en, %bb.ec
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.el:                                            ; preds = %bb.ec
  br i1 %i.hz, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i64 -1, ptr %i.bi, align 8
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.ah, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1239, i64 noundef 5)
          to label %bb.ep unwind label %bb.ek

bb.eo:                                            ; preds = %bb.es, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2566, i64 noundef 9)
          to label %bb.ev unwind label %bb.eu

bb.ep:                                            ; preds = %bb.en
  invoke fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs4wP2HXfJTCR_5alloc6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1239, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %i.ah)
          to label %bb.eq unwind label %bb.ek

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.il = load ptr, ptr %i.bh, align 8, !noundef !28
  %.not208 = icmp eq ptr %i.il, null
  br i1 %.not208, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ag, ptr noundef nonnull align 8 dereferenceable(112) %i.bh, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.ag)
          to label %bb.et unwind label %bb.ek

bb.es:                                            ; preds = %bb.eq, %bb.et
  %.sroa.0151.0 = phi i64 [ %.sroa.0159.0.copyload, %bb.et ], [ 0, %bb.eq ]
  %.sroa.5153.0 = phi ptr [ %.sroa.4160.0.copyload, %bb.et ], [ inttoptr (i64 8 to ptr), %bb.eq ]
  %.sroa.6156.0 = phi i64 [ %.sroa.5161.0.copyload, %bb.et ], [ 0, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  store i64 %.sroa.0151.0, ptr %i.bi, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.5153.0, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.6156.0, ptr %.sroa.6156.0..sroa_idx, align 8
  br label %bb.eo

bb.et:                                            ; preds = %bb.er
  %.sroa.0159.0.copyload = load i64, ptr %i.af, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4160.0.copyload = load ptr, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5161.0.copyload = load i64, ptr %.sroa.5161.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.es

bb.eu:                                            ; preds = %bb.ey, %bb.ev, %bb.eo
  %i.im = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #72
  br label %bb.ej

bb.ev:                                            ; preds = %bb.eo
  %i.in = invoke fastcc noundef i8 @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2566, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.ae)
          to label %bb.ew unwind label %bb.eu     ; 2 uses

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not209 = icmp eq i8 %i.in, 2
  br i1 %.not209, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %.sroa.0.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %.sroa.0.120..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.120..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0, i64 144, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.bu, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.bz, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.dh, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 %i.el, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.fp, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.gt, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.gx, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 %i.hb, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.hf, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.hm, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.hy, ptr %.sroa.20.0..sroa_idx, align 2
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.in, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.dd, ptr %.sroa.22.0..sroa_idx, align 4
  br label %bb.fc

bb.ey:                                            ; preds = %bb.ew
  %i.io = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2567, i64 noundef 59)
          to label %bb.ez unwind label %bb.eu

bb.ez:                                            ; preds = %bb.ey
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.io, ptr %i.ip, align 8
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !98754)
  %i.iq = load i64, ptr %i.bl, align 8, !range !37, !alias.scope !98754, !noundef !28 ; 3 uses
  %i.ir = icmp eq i64 %i.iq, -1
  br i1 %i.ir, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit305, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.experimental.noalias.scope.decl(metadata !98755)
  call void @llvm.experimental.noalias.scope.decl(metadata !98756)
  %i.is = icmp eq i64 %i.iq, 0
  br i1 %i.is, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit305, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.it = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val1.i.i.i304 = load ptr, ptr %i.it, align 8, !alias.scope !98757, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i304, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !98757
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit305

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit305: ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.e, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just.exit269, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just.exit292, %bb.bz, %bb.cf, %bb.cl, %bb.cr, %bb.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit305, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit301, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsH_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #76
  %i.b = invoke noundef align 8 ptr @_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #72
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [104 x i8], align 8              ; 4 uses
  %i.ar = alloca [104 x i8], align 8              ; 7 uses
  %i.as = alloca [104 x i8], align 8              ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [40 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [112 x i8], align 8              ; 4 uses
  %i.bc = alloca [120 x i8], align 8              ; 4 uses
  %i.bd = alloca [40 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [112 x i8], align 8              ; 4 uses
  %i.bg = alloca [120 x i8], align 8              ; 4 uses
  %i.bh = alloca [40 x i8], align 8               ; 6 uses
  %i.bi = alloca [40 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [112 x i8], align 8              ; 4 uses
  %i.bl = alloca [120 x i8], align 8              ; 4 uses
  %i.bm = alloca [40 x i8], align 8               ; 6 uses
  %i.bn = alloca [40 x i8], align 8               ; 6 uses
  %i.bo = alloca [40 x i8], align 8               ; 6 uses
  %i.bp = alloca [40 x i8], align 8               ; 6 uses
  %i.bq = alloca [40 x i8], align 8               ; 6 uses
  %i.br = alloca [40 x i8], align 8               ; 6 uses
  %i.bs = alloca [40 x i8], align 8               ; 6 uses
  %i.bt = alloca [40 x i8], align 8               ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [112 x i8], align 8              ; 5 uses
  %i.bw = alloca [120 x i8], align 8              ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [112 x i8], align 8              ; 5 uses
  %i.bz = alloca [120 x i8], align 8              ; 10 uses
  %i.ca = alloca [40 x i8], align 8               ; 6 uses
  %i.cb = alloca [40 x i8], align 8               ; 6 uses
  %i.cc = alloca [112 x i8], align 8              ; 5 uses
  %i.cd = alloca [112 x i8], align 8              ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [112 x i8], align 8              ; 5 uses
  %.sroa.6299 = alloca [104 x i8], align 8        ; 4 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %i.cg = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2547, i64 noundef 9)
  br i1 %i.cg, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cb, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2547, i64 noundef 9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr @2547, ptr %i.ay, align 8, !noalias !98872
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 9, ptr %i.ch, align 8, !noalias !98872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !98872
  %i.ci = load i64, ptr %i.cb, align 8, !range !27, !alias.scope !98871, !noalias !98873, !noundef !28
  %.not.i = icmp eq i64 %i.ci, 2
  br i1 %.not.i, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cb, i64 40, i1 false), !noalias !98873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !98872
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !98872
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !98872
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.cj, align 8, !noalias !98872
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !98872
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !98871
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cl = load i8, ptr %i.ck, align 8, !range !38, !alias.scope !98871, !noalias !98873, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !98872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %.not = icmp eq i8 %i.cl, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.cm = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1341, i64 noundef 6)
  br i1 %i.cm, label %bb.h, label %bb.j

bb.e:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.cl, ptr %i.cn, align 8
  br label %bb.d

bb.f:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit
  %i.co = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2548, i64 noundef 59)
  br label %bb.g

bb.g:                                             ; preds = %bb.dl, %bb.dc, %bb.dm, %bb.da, %bb.ci, %bb.bv, %bb.bq, %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar, %bb.l, %bb.f
  %.sroa.0.0 = phi ptr [ %i.co, %bb.f ], [ %i.kd, %bb.dm ], [ %i.jg, %bb.da ], [ %i.hy, %bb.ci ], [ %i.ha, %bb.bv ], [ %i.gs, %bb.bq ], [ %i.gk, %bb.bl ], [ %i.gc, %bb.bg ], [ %i.fu, %bb.bb ], [ %i.fm, %bb.aw ], [ %i.fe, %bb.ar ], [ %i.cw, %bb.l ], [ null, %bb.dc ], [ null, %bb.dl ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call fastcc void @_RINvMs0_NtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ca, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1341, i64 noundef 6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr @1341, ptr %i.av, align 8, !noalias !98875
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 6, ptr %i.cp, align 8, !noalias !98875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !98875
  %i.cq = load i64, ptr %i.ca, align 8, !range !27, !alias.scope !98874, !noalias !98876, !noundef !28
  %.not.i209 = icmp eq i64 %i.cq, 2
  br i1 %.not.i209, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit212, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !noalias !98876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !98875
  store ptr %i.av, ptr %i.at, align 8, !noalias !98875
  %.sroa.42.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i210, align 8, !noalias !98875
  %i.cr = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.cr, align 8, !noalias !98875
  %.sroa.46.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i211, align 8, !noalias !98875
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !98874
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit212: ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ct = load i8, ptr %i.cs, align 8, !range !38, !alias.scope !98874, !noalias !98876, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !98875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.not192 = icmp eq i8 %i.ct, 2
  br i1 %.not192, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.k
  %i.cu = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1342, i64 noundef 5)
  br i1 %i.cu, label %bb.m, label %bb.n

bb.k:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit212
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.ct, ptr %i.cv, align 1
  br label %bb.j

bb.l:                                             ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit212
  %i.cw = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2549, i64 noundef 56)
  br label %bb.g

bb.m:                                             ; preds = %bb.j
  %i.cx = tail call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1342, i64 noundef 5)
  br i1 %i.cx, label %bb.o, label %bb.w, !prof !31

bb.n:                                             ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECskXtk6F4WjxZ_4just.exit
  %i.cy = call noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 7)
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
end_hunk_3
