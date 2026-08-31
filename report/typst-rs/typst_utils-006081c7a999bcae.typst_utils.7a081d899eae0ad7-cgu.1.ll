Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-006081c7a999bcae.typst_utils.7a081d899eae0ad7-cgu.1?download=true
inline.NumInlined: 190
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
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
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i = xor i1 %i.j, true
  %.sroa.0.0.i2 = zext i1 %not..i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2, i64 %i.k)
  ret i64 %i.l
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
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i.i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i.i = zext i1 %not..i.i.i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i.i, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.n = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.l, i64 %i.m, ptr nonnull align 8 @2) #32 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.q = call noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 %i.p, i64 %i.o) #33 ; 4 uses
  %i.r = call zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCslnPB5LbcFkI_8thin_vec6Header7is_nullBE_(ptr %i.q) #32
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %0, ptr %i.s, align 8
  %i.t = call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull %i.q, ptr nonnull align 8 @1) #32
  ret ptr %i.t

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.o, i64 %i.p) #34
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
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i = zext i1 %not..i.i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.n = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.l, i64 %i.m, ptr nonnull align 8 @2) #32
  ret { i64, i64 } %i.n
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
  %2 = ptrtoint ptr %0 to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle to i64), ptr %.sroa.22.0..sroa_idx, align 8
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
  store i64 8, ptr %.sroa.45.0..sroa_idx, align 8
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
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.f ], [ %i.l, %bb.c ]
  %i.m = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0.i) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.g, 1
  %i.o = add i64 %i.n, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call align 8 ptr @_RNvXs1_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison6rwlock6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1u_(ptr nonnull align 8 @_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER) #32 ; 5 uses
  %i.q = call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 8 %i.p, i8 0) #32 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.q, 1073741822
  br i1 %or.cond3.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 8 %i.p, i32 %i.q, i32 %i.r, i8 2, i8 0) #32
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %.not2.i.i = icmp eq i32 %i.t, 0
  br i1 %.not2.i.i, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 8 %i.p)
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit: ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.u, i8 0) #32
  %.not.i.i2 = icmp ne i8 %i.v, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr nonnull sret([24 x i8]) align 8 %i.c, i1 zeroext %.not.i.i2, ptr align 8 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.c, align 8
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  store ptr %i.z, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @14, i64 43, ptr nonnull %i.b, ptr nonnull align 8 @15, ptr nonnull align 8 @19) #34
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB1Z_(ptr nonnull align 8 %i.b) #36
          to label %common.resume unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.af, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.r ], [ %i.m, %bb.n ]
  ret i64 %.sroa.0.0

bb.p:                                             ; preds = %bb.q, %_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.d) #36
          to label %common.resume unwind label %bb.s

bb.q:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr3get:bb.a
; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr6intern(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr %0, i64 %1)
  %i.g = load i8, ptr %i.c, align 8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %0, i64 %1) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = or i64 %i.m, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.f ], [ %i.n, %bb.c ]
  %i.o = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0.i) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.p = extractvalue { i64, i64 } %i.i, 1
  %i.q = add i64 %i.p, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = call align 8 ptr @_RNvXs1_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison6rwlock6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1u_(ptr nonnull align 8 @_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER) #32 ; 4 uses
  %i.s = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 8 %i.r, i32 0, i32 1073741823, i8 2, i8 0) #32
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %.not.i4 = icmp eq i32 %i.t, 0
  br i1 %.not.i4, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 8 %i.r)
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsatzsiS36G5T_11typst_utils(ptr nonnull %i.u) #32 ; 2 uses
  %i.w = extractvalue { i1, i8 } %i.v, 0
  %i.x = extractvalue { i1, i8 } %i.v, 1
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMse_B10_BX_3new0EB1y_(ptr nonnull sret([24 x i8]) align 8 %i.e, i1 zeroext %i.w, i8 %i.x, ptr align 8 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = load i64, ptr %i.e, align 8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = load i8, ptr %i.ac, align 8             ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_.exit
  store ptr %i.ab, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ad, ptr %i.ae, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @14, i64 43, ptr nonnull %i.d, ptr nonnull align 8 @16, ptr nonnull align 8 @20) #34
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB20_(ptr nonnull align 8 %i.d) #36
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.ae, %bb.q, %bb.m
  %.sroa.0.0 = phi i64 [ %i.al, %bb.q ], [ %i.ap, %bb.ae ], [ %i.o, %bb.m ]
  ret i64 %.sroa.0.0

bb.o:                                             ; preds = %bb.ad, %bb.ab, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit, %bb.p, %bb.t, %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.av, %bb.w ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1H_(ptr nonnull align 8 %i.f) #36
          to label %common.resume unwind label %bb.af

bb.p:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ab, ptr %i.f, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.ad, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ak = invoke align 8 ptr @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEBU_(ptr nonnull align 8 %i.aj, ptr %0, i64 %1) #32
          to label %_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit unwind label %bb.o ; 2 uses

_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit: ; preds = %bb.p
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit
  %i.al = load i64, ptr %i.ak, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1H_(ptr nonnull align 8 %i.f)
  br label %bb.n

bb.r:                                             ; preds = %_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, 66
  %i.ap = invoke i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %i.ao)
          to label %bb.s unwind label %bb.o       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @87) #35
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.t
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1iWEYfdUYYU_10rayon_core(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %0, i64 %1) #32
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = load i64, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.au = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %i.a, i64 %i.as, i64 1, i64 1)
          to label %bb.x unwind label %bb.w       ; 2 uses

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %i.a) #36
          to label %.body unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.aw = extractvalue { i64, i64 } %i.au, 0      ; 2 uses
  %.not.i.i7 = icmp eq i64 %i.aw, -1
  br i1 %.not.i.i7, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.sroa.311.0.copyload.pre.i.i = load i64, ptr %i.ar, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ax = extractvalue { i64, i64 } %i.au, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.aw, i64 %i.ax) #34
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i.i, %bb.u
  %.sroa.311.0.copyload.i.i = phi i64 [ %.sroa.311.0.copyload.pre.i.i, %._crit_edge.i.i ], [ %i.as, %bb.u ] ; 2 uses
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.210.0.copyload.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i, align 8
  %2 = inttoptr i64 %.sroa.210.0.copyload.i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = invoke i64 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE6insertBT_(ptr nonnull align 8 %i.ba, ptr %2, i64 %.sroa.311.0.copyload.i.i, i64 %i.ap)
          to label %bb.ac unwind label %bb.o      ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bc = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = load i64, ptr %i.bd, align 8
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.bd) #38
          to label %bb.ae unwind label %bb.o

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf ; 2 uses
  store ptr %2, ptr %i.bk, align 8, !captures !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %.sroa.311.0.copyload.i.i, ptr %i.bl, align 8
  %i.bm = add i64 %i.bf, 1
  store i64 %i.bm, ptr %i.be, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1H_(ptr nonnull align 8 %i.f)
  br label %bb.n

bb.af:                                            ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr7resolve(ptr sret([24 x i8]) align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = tail call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3getCsatzsiS36G5T_11typst_utils(i64 %1) #32 ; 4 uses
  %.not = icmp sgt i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.d, -1                     ; 2 uses
  %i.f = icmp ugt i64 %i.e, 64
  %i.g = add nsw i64 %i.d, -66
  br i1 %i.f, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %i.d, 9223372036854775807
  tail call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6decode(ptr sret([24 x i8]) align 8 %0, i64 %i.h)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = tail call align 8 ptr @_RNvXs1_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison6rwlock6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1u_(ptr nonnull align 8 @_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER) #32 ; 5 uses
  %i.j = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 8 %i.i, i8 0) #32 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.j, 1073741822
  br i1 %or.cond3.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 8 %i.i, i32 %i.j, i32 %i.k, i8 2, i8 0) #32
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 8 %i.i)
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit: ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.n, i8 0) #32
  %.not.i.i = icmp ne i8 %i.o, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr nonnull sret([24 x i8]) align 8 %i.b, i1 zeroext %.not.i.i, ptr align 8 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %i.b, align 8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  store ptr %i.s, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.v, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @14, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @88) #34
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB1Z_(ptr nonnull align 8 %i.a) #36
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.c) #36
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = invoke align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsatzsiS36G5T_11typst_utils(i64 %i.g, ptr align 8 %i.ab, i64 %i.ad, ptr nonnull align 8 @89) #32
          to label %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit unwind label %bb.k ; 2 uses

_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit
  %.sroa.3.0 = phi i64 [ %i.ah, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit ], [ %i.am, %bb.o ]
  %.sroa.0.0.a = phi ptr [ %i.af, %_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsatzsiS36G5T_11typst_utils.exit ], [ %i.ak, %bb.o ]
  %.sroa.0.0 = ptrtoint ptr %.sroa.0.0.a to i64
  store i8 1, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.p

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
end_hunk_1
begin_hunk_2_@_RNvMs4_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE6resizeCsatzsiS36G5T_11typst_utils:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.f, 0
  %i.i = shl i64 %i.f, 1
  %.inv.i.i = icmp sgt i64 %i.f, -1
  %.sroa.0.0.i.i = select i1 %.inv.i.i, i64 %i.i, i64 -1
  %.sroa.0.0.i = select i1 %i.h, i64 4, i64 %.sroa.0.0.i.i
  %i.j = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 %i.g, i64 %.sroa.0.0.i) #32
  tail call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %i.j)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.c, %bb.d
  %i.k = tail call { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs6fqsdctdrJG_6semver(i64 1, i64 %i.e) #32 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.l, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i
  %.val.i3.i = phi i64 [ %.val.i.i3, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %.val.i, %bb.b ]
  %i.r = phi ptr [ %i.x, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %i.b, %bb.b ]
  %i.s = add i64 %.val.i3.i, -1
  store i64 %i.s, ptr %i.r, align 8
  %i.t = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.u = icmp ult i64 %i.t, 17
  br i1 %i.u, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %0, align 8
  %i.w = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.v) ; 0 uses
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i.i3 = load i64, ptr %i.x, align 8        ; 2 uses
  %i.y = icmp ult i64 %1, %.val.i.i3
  br i1 %i.y, label %.lr.ph.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

.lr.ph:                                           ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit, %.lr.ph
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  %i.z = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit: ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMs7_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeE4leakCsatzsiS36G5T_11typst_utils(ptr %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs8_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3newB13_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 9), (16, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 4 %1, i8 0) #32 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.a, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 4 %1, i32 %i.a, i32 %i.b, i8 2, i8 0) #32
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4 %1)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.e, i8 0) #32
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #32
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsatzsiS36G5T_11typst_utils(ptr nonnull %i.c) #32 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMse_B10_BX_3new0EB1y_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE4pushCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE3lenCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsatzsiS36G5T_11typst_utils(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %0, i64 %i.c, i64 1, i64 1)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.311.0.copyload = phi i64 [ %.sroa.311.0.copyload.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 8
  %1 = inttoptr i64 %.sroa.210.0.copyload to ptr
  %i.f = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.311.0.copyload, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %0) #36
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.sroa.311.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.i, i64 %i.j) #34
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3newB1d_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.a, i8 0) #32
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtCsatzsiS36G5T_11typst_utils4hashNtB5_8HashLock3new(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMs16_Csl9Fzn6kz1og_15portable_atomicNtB6_10AtomicU1283newCsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i128 0) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: noreturn nonlazybind uwtable
define void @_RNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern(i1 zeroext %0, ptr nofree readonly captures(none) %1, i64 %2, ptr align 8 %3) unnamed_addr #12 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [520 x i8], align 8               ; 96 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = zext i1 %0 to i8
  store i8 %i.f, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 187 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i8 0, i64 520, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]    ; 3 uses
  %.sroa.0.04.i = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %i.i = icmp ult i64 %i.h, 512
  br i1 %i.i, label %.lr.ph.i.1, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.0.04.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  store i8 %i.k, ptr %i.l, align 1
  %i.m = load i64, ptr %i.g, align 8
  %i.n = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.n, ptr %i.g, align 8
  %i.o = icmp ult i64 %i.n, 512
  br i1 %i.o, label %bb.b, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit

bb.b:                                             ; preds = %.lr.ph.i.1
  %i.p = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.0.04.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  store i8 %i.r, ptr %i.s, align 1
  %i.t = add nuw nsw i64 %.sroa.0.04.i, 2         ; 2 uses
  %i.u = load i64, ptr %i.g, align 8
  %i.v = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8
  %exitcond.not.i.1 = icmp eq i64 %i.t, 38
  br i1 %exitcond.not.i.1, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit, label %.lr.ph.i

_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit: ; preds = %bb.b, %.lr.ph.i.1, %.lr.ph.i
  %.pre.i1 = phi i64 [ %i.h, %.lr.ph.i ], [ %i.v, %bb.b ], [ %i.n, %.lr.ph.i.1 ] ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit5, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit, %bb.c
  %i.w = phi i64 [ %i.ad, %bb.c ], [ %.pre.i1, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit ] ; 2 uses
  %.sroa.0.04.i3 = phi i64 [ %i.ab, %bb.c ], [ 0, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit ] ; 2 uses
  %i.x = icmp ult i64 %i.w, 512
  br i1 %i.x, label %bb.c, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11

bb.c:                                             ; preds = %.lr.ph.i2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.04.i3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = add nuw i64 %.sroa.0.04.i3, 1           ; 2 uses
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.g, align 8
  %exitcond.not.i4 = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not.i4, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit5, label %.lr.ph.i2

_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit5: ; preds = %bb.c, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit
  %.pre.i7 = phi i64 [ %.pre.i1, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ae = icmp ult i64 %.pre.i7, 512
  br i1 %i.ae, label %.lr.ph.i8.1, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11

.lr.ph.i8.1:                                      ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit5
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre.i7
  store i8 34, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8
  %i.ai = icmp ult i64 %i.ah, 512
  br i1 %i.ai, label %.lr.ph.i8.2, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11

.lr.ph.i8.2:                                      ; preds = %.lr.ph.i8.1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  store i8 46, ptr %i.aj, align 1
  %i.ak = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.al, ptr %i.g, align 8
  %i.am = icmp ult i64 %i.al, 512
  br i1 %i.am, label %bb.d, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11

bb.d:                                             ; preds = %.lr.ph.i8.2
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  store i8 32, ptr %i.an, align 1
  %i.ao = load i64, ptr %i.g, align 8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.g, align 8
  br label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11

_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11: ; preds = %.lr.ph.i2, %bb.d, %.lr.ph.i8.2, %.lr.ph.i8.1, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit5
  %i.aq = call { ptr, i64 } @_RNvMNtNtCsatzsiS36G5T_11typst_utils4pico7bitcodeNtB2_13EncodingError7message(ptr nonnull %i.e) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %.not.i12 = icmp eq i64 %i.as, 0
  %.pre.i20.pre = load i64, ptr %i.g, align 8     ; 2 uses
  br i1 %.not.i12, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11, %bb.e
  %i.at = phi i64 [ %i.ba, %bb.e ], [ %.pre.i20.pre, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11 ] ; 3 uses
  %.sroa.0.04.i16 = phi i64 [ %i.ay, %bb.e ], [ 0, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11 ] ; 2 uses
  %i.au = icmp ult i64 %i.at, 512
  br i1 %i.au, label %bb.e, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

bb.e:                                             ; preds = %.lr.ph.i15
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.04.i16
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw i64 %.sroa.0.04.i16, 1          ; 2 uses
  %i.az = load i64, ptr %i.g, align 8
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.ba, ptr %i.g, align 8
  %exitcond.not.i17 = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i17, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18, label %.lr.ph.i15

_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18: ; preds = %bb.e, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11
  %.pre.i20 = phi i64 [ %.pre.i20.pre, %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit11 ], [ %i.ba, %bb.e ] ; 3 uses
  %i.bb = icmp ult i64 %.pre.i20, 512
  br i1 %i.bb, label %.lr.ph.i21.1, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i21.1:                                     ; preds = %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre.i20
  store i8 46, ptr %i.bc, align 1
  %i.bd = load i64, ptr %i.g, align 8
  %i.be = add i64 %i.bd, 1                        ; 4 uses
  store i64 %i.be, ptr %i.g, align 8
  %i.bf = icmp ult i64 %i.be, 512
  br i1 %i.bf, label %.lr.ph.i21.2, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit36

.lr.ph.i21.2:                                     ; preds = %.lr.ph.i21.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  store i8 32, ptr %i.bg, align 1
  %i.bh = load i64, ptr %i.g, align 8
  %i.bi = add i64 %i.bh, 1                        ; 4 uses
  store i64 %i.bi, ptr %i.g, align 8
  %i.bj = icmp ult i64 %i.bi, 512
end_hunk_2
