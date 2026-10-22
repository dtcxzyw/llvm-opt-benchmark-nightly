Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pseudo?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lexbor_shs_entry_t = type { ptr, ptr, i64, i64 }
%struct.lxb_css_syntax_cb_function = type { %struct.lxb_css_syntax_cb_base, ptr }
%struct.lxb_css_syntax_cb_base = type { ptr, ptr }

@lxb_css_selectors_pseudo_class_shs = internal constant [79 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 78, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 312), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.1, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 264), i64 13, i64 1 }, %struct.lexbor_shs_entry_t { ptr @.str.2, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 432), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.3, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 672), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.4, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 768), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.5, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 408), i64 5, i64 3 }, %struct.lexbor_shs_entry_t { ptr @.str.6, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 216), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.7, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 360), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.8, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 720), i64 17, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.9, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 888), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.10, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 456), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.11, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 576), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.12, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 912), i64 12, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.13, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 696), i64 4, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.14, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 624), i64 12, i64 4 }, %struct.lexbor_shs_entry_t { ptr @.str.15, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 600), i64 10, i64 5 }, %struct.lexbor_shs_entry_t { ptr @.str.16, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 288), i64 5, i64 7 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.17, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 48), i64 8, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.18, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 936), i64 5, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.19, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 960), i64 7, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.20, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 816), i64 4, i64 8 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.21, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 336), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.22, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 96), i64 7, i64 9 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.23, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 24), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.24, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 528), i64 12, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.25, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 864), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.26, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 744), i64 9, i64 10 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.27, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 240), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.28, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 168), i64 8, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.29, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 792), i64 8, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.30, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 552), i64 4, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.31, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 192), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.32, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 480), i64 7, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.33, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 840), i64 5, i64 12 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.34, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 72), i64 5, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.35, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 984), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.36, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 144), i64 7, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.37, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 384), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.38, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 120), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.39, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 648), i64 8, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.40, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class, i64 504), i64 10, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer], align 16
@lxb_css_selectors_pseudo_class_function_shs = internal constant [43 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 42, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.43, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 768), i64 16, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.44, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 448), i64 3, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.45, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 192), i64 3, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.46, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 576), i64 7, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.47, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 384), i64 15, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.48, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 256), i64 2, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.49, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 704), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.38, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 64), i64 7, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.50, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 320), i64 4, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.51, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 512), i64 9, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.52, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 640), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.53, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 832), i64 11, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.54, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 128), i64 3, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.55, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 896), i64 5, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer], align 16
@lxb_css_selectors_pseudo_element_shs = internal constant [24 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 23, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.57, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 168), i64 18, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.58, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 216), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.59, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 24), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.60, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 96), i64 12, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.61, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 144), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.62, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 72), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.63, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 240), i64 9, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str.64, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 288), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.65, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 120), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.66, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 264), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.67, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 48), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.68, ptr getelementptr (i8, ptr @lxb_css_selectors_pseudo_data_pseudo_element, i64 192), i64 6, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer], align 16
@lxb_css_selectors_pseudo_element_function_shs = internal constant [6 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 5, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"focus-visible\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"first-of-type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"in-range\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"out-of-range\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hover\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"placeholder-shown\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"target-within\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"indeterminate\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"local-link\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"user-invalid\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"past\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"only-of-type\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"only-child\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"any-link\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"visited\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"focus-within\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"checked\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"last-of-type\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"first-child\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"future\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"last-child\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"#undef\00", align 1
@lxb_css_selectors_pseudo_data_pseudo_class = internal constant [42 x { ptr, i64, i32, [4 x i8] }] [{ ptr, i64, i32, [4 x i8] } { ptr @.str.41, i64 6, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.23, i64 6, i32 1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.17, i64 8, i32 2, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.34, i64 5, i32 3, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.22, i64 7, i32 4, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.38, i64 7, i32 5, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.36, i64 7, i32 6, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.28, i64 8, i32 7, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.31, i64 5, i32 8, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.6, i64 7, i32 9, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.27, i64 11, i32 10, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.1, i64 13, i32 11, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.16, i64 5, i32 12, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str, i64 13, i32 13, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.21, i64 12, i32 14, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.7, i64 10, i32 15, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.37, i64 6, i32 16, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.5, i64 5, i32 17, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.2, i64 8, i32 18, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.10, i64 13, i32 19, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.32, i64 7, i32 20, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.40, i64 10, i32 21, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.24, i64 12, i32 22, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.30, i64 4, i32 23, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.11, i64 10, i32 24, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.15, i64 10, i32 25, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.14, i64 12, i32 26, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.39, i64 8, i32 27, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.3, i64 12, i32 28, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.13, i64 4, i32 29, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.8, i64 17, i32 30, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.26, i64 9, i32 31, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.4, i64 10, i32 32, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.29, i64 8, i32 33, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.20, i64 4, i32 34, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.33, i64 5, i32 35, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.25, i64 6, i32 36, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.9, i64 13, i32 37, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.12, i64 12, i32 38, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.18, i64 5, i32 39, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.19, i64 7, i32 40, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.35, i64 7, i32 41, [4 x i8] zeroinitializer }], align 16
@.str.43 = private unnamed_addr constant [17 x i8] c"nth-last-of-type\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"has\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"nth-col\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"lexbor-contains\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"nth-last-col\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"nth-child\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"nth-last-child\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"nth-of-type\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@lxb_css_selectors_pseudo_data_pseudo_class_function = internal constant [15 x { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] }] [{ ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.41, i64 6, i32 0, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function__undef }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.38, i64 7, i32 1, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_current }, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.54, i64 3, i32 2, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_dir }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.45, i64 3, i32 3, i8 0, [3 x i8] zeroinitializer, i32 0, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_forgiving_relative }, ptr @lxb_css_selectors_state_pseudo_class_function_has }, i8 1, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.48, i64 2, i32 4, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_forgiving }, ptr @lxb_css_selectors_state_pseudo_class_function_is }, i8 1, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.50, i64 4, i32 5, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_lang }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.47, i64 15, i32 6, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_lexbor_contains }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.44, i64 3, i32 7, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_not }, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.51, i64 9, i32 8, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_child }, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.46, i64 7, i32 9, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_col }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.52, i64 14, i32 10, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_last_child }, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.49, i64 12, i32 11, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_last_col }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.43, i64 16, i32 12, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_last_of_type }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.53, i64 11, i32 13, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_class_function_nth_of_type }, i8 0, i8 0, [6 x i8] zeroinitializer }, { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.55, i64 5, i32 14, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_forgiving }, ptr @lxb_css_selectors_state_pseudo_class_function_where }, i8 1, i8 1, [6 x i8] zeroinitializer }], align 16
@.str.57 = private unnamed_addr constant [19 x i8] c"inactive-selection\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"placeholder\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"first-letter\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"grammar-error\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"target-text\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"first-line\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"spelling-error\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"backdrop\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"marker\00", align 1
@lxb_css_selectors_pseudo_data_pseudo_element = internal constant [13 x { ptr, i64, i32, [4 x i8] }] [{ ptr, i64, i32, [4 x i8] } { ptr @.str.41, i64 6, i32 0, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.59, i64 5, i32 1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.67, i64 8, i32 2, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.62, i64 6, i32 3, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.60, i64 12, i32 4, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.65, i64 10, i32 5, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.61, i64 13, i32 6, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.57, i64 18, i32 7, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.68, i64 6, i32 8, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.58, i64 11, i32 9, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.63, i64 9, i32 10, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.66, i64 14, i32 11, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @.str.64, i64 11, i32 12, [4 x i8] zeroinitializer }], align 16
@lxb_css_selectors_pseudo_data_pseudo_element_function = internal constant [1 x { ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] }] [{ ptr, i64, i32, i8, [3 x i8], i32, [4 x i8], %struct.lxb_css_syntax_cb_function, i8, i8, [6 x i8] } { ptr @.str.41, i64 6, i32 0, i8 0, [3 x i8] zeroinitializer, i32 1, [4 x i8] zeroinitializer, %struct.lxb_css_syntax_cb_function { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_state_failed, ptr @lxb_css_selectors_state_function_end }, ptr @lxb_css_selectors_state_pseudo_element_function__undef }, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_selector_pseudo_class_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_selectors_pseudo_class_shs, ptr noundef %0, i64 noundef %1) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @lexbor_shs_entry_get_lower_static(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_selector_pseudo_class_function_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_selectors_pseudo_class_function_shs, ptr noundef %0, i64 noundef %1) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @lxb_css_selector_pseudo_class_function_by_id(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_selector_pseudo_element_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_selectors_pseudo_element_shs, ptr noundef %0, i64 noundef %1) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_selector_pseudo_element_function_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_selectors_pseudo_element_function_shs, ptr noundef %0, i64 noundef %1) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @lxb_css_selector_pseudo_element_function_by_id(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_selectors_pseudo_data_pseudo_element_function, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @lxb_css_selector_pseudo_function_by_id(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64
  %.0.v = select i1 %1, ptr @lxb_css_selectors_pseudo_data_pseudo_class_function, ptr @lxb_css_selectors_pseudo_data_pseudo_element_function
  %.0 = getelementptr inbounds nuw [64 x i8], ptr %.0.v, i64 %i.a
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @lxb_css_selector_pseudo_function_can_empty(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  ret i1 false
}

declare zeroext i1 @lxb_css_state_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_selectors_state_function_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function__undef(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_current(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_dir(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_selectors_state_function_forgiving_relative(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_has(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_selectors_state_function_forgiving(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_is(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_lang(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_lexbor_contains(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_not(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_child(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_col(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_last_child(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_last_col(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_last_of_type(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_nth_of_type(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_class_function_where(ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_selectors_state_pseudo_element_function__undef(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !13, i64 0, !12, i64 8, !14, i64 16, !14, i64 24}
!16 = !{!15, !12, i64 8}
end_hunk_0
