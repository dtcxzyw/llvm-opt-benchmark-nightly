Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00b\04\00\00\1D\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00m\04\00\00\1D\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00w\04\00\00B\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00z\04\00\00C\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\7F\04\00\00$\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\86\04\00\00$\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00q\04\00\00\1D\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00P\04\00\00<\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00C\04\00\00'\00\00\00" }>, align 8
@49 = private unnamed_addr constant [69 x i8] c"assertion failed: buffer.len().is_multiple_of(from_layout.channels())", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\9C\04\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant [54 x i8] c"input layout already allocated with appropriate layout", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\A2\04\00\00\0E\00\00\00" }>, align 8
@53 = private unnamed_addr constant [96 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/collections/btree/navigate.rs\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformsfE00EBQ_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBf_13CicpTransform16build_transformsfE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRSfQB2j_EE9call_once6vtableBj_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformsfE00Be_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformsfE00Be_ }>, align 8
@56 = private unnamed_addr constant [16 x i8] c"transform failed", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\F0\01\00\00:\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\EE\01\00\003\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\ED\01\00\003\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\FD\01\00\00:\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\FB\01\00\003\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\FA\01\00\003\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\0A\02\00\00:\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\07\02\00\003\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00!\02\00\00:\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\1E\02\00\003\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\000\02\00\00:\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00.\02\00\003\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00-\02\00\003\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00?\02\00\00:\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00=\02\00\003\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00<\02\00\003\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00N\02\00\00:\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00K\02\00\003\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00d\02\00\00:\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00a\02\00\003\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00r\02\00\00:\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00p\02\00\003\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00o\02\00\003\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\80\02\00\00:\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00~\02\00\003\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00}\02\00\003\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\E3\01\00\00:\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\E0\01\00\003\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\8E\02\00\00:\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\8B\02\00\003\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformshE00EBQ_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBf_13CicpTransform16build_transformshE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRShQB2j_EE9call_once6vtableBj_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformshE00Be_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformshE00Be_ }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformstE00EBQ_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBf_13CicpTransform16build_transformstE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRStQB2j_EE9call_once6vtableBj_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformstE00Be_, ptr @_RNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBa_13CicpTransform16build_transformstE00Be_ }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@90 = private unnamed_addr constant [23 x i8] c"src/imageops/sample.rs\00", align 1
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c"\16\00\00\00\00\00\00\00\F7\05\00\00>\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\CF\01\00\00-\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCs4wP2HXfJTCR_5alloc11collectionsNtB5_15TryReserveErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@94 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms3err8CmsErrorECsa5QsYiPB8Gl_5image, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCshGoo8nsRtFZ_6moxcms3errNtB5_8CmsErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\D8\02\00\00%\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\D7\02\00\00,\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\DE\02\00\00%\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\DD\02\00\00,\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\E4\02\00\00%\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\E3\02\00\00,\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\EA\02\00\00%\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\E9\02\00\00,\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\F0\02\00\00%\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\EF\02\00\00,\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\F6\02\00\00%\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\F5\02\00\00,\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\FC\02\00\00%\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\FB\02\00\00,\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\03\03\00\00%\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\02\03\00\00,\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\09\03\00\00%\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\08\03\00\00,\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\1D\03\00\004\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\1C\03\00\00!\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00$\03\00\004\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00#\03\00\00!\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00+\03\00\004\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00*\03\00\00!\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\001\03\00\004\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\000\03\00\00!\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\007\03\00\004\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\006\03\00\00!\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00>\03\00\004\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00=\03\00\00!\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00E\03\00\004\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00D\03\00\00!\00\00\00" }>, align 8
@127 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00L\03\00\004\00\00\00" }>, align 8
@128 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00K\03\00\00!\00\00\00" }>, align 8
@129 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00R\03\00\004\00\00\00" }>, align 8
@130 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00Q\03\00\00!\00\00\00" }>, align 8
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00X\03\00\004\00\00\00" }>, align 8
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00W\03\00\00!\00\00\00" }>, align 8
@133 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\15\03\00\00&\00\00\00" }>, align 8
@134 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\14\03\00\00\22\00\00\00" }>, align 8
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\0F\03\00\00%\00\00\00" }>, align 8
@136 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00\0E\03\00\00,\00\00\00" }>, align 8
@137 = private unnamed_addr constant [24 x i8] c"\0A\D7#?\C3\F5\A8>\9A\99\99>\9A\99\19?\9A\99\19>\8F\C2u=", align 4
@138 = private unnamed_addr constant [24 x i8] c"\1F\85+?\C3\F5\A8>=\0AW>\8F\C25?)\\\0F>\0A\D7\A3=", align 4
@139 = private unnamed_addr constant [24 x i8] c"\0A\D7#?\C3\F5\A8>\E1z\94>\9A\99\19?\9A\99\19>\8F\C2u=", align 4
@140 = private unnamed_addr constant [24 x i8] c"\AEG!?{\14\AE>R\B8\9E>\ECQ\18?R\B8\1E>)\\\8F=", align 4
@141 = private unnamed_addr constant [24 x i8] c"\04V.?\F8S\A3>\FE\D4x>\E9&1?\E1z\14>9\B4H=", align 4
@142 = private unnamed_addr constant [24 x i8] c"}?5?\06\81\95>{\14.>1\08L?\DD$\06>\7Fj<=", align 4
@143 = private unnamed_addr constant [24 x i8] c"\00\00\80?\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\00\00", align 4
@144 = private unnamed_addr constant [24 x i8] c"{\14.?\0A\D7\A3>\14\AE\87>\D7\A30?\9A\99\19>\8F\C2u=", align 4
@145 = private unnamed_addr constant [24 x i8] c"\AEG!?{\14\AE>=\0A\97>H\E1\1A?R\B8\1E>-\B2\9D=", align 4
@146 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\14\00\00\00\00\00\00\00^\06\00\00C\00\00\00" }>, align 8
@148 = private unnamed_addr constant [16 x i8] c"LaneSizeMismatch", align 1
@149 = private unnamed_addr constant [22 x i8] c"LaneMultipleOfChannels", align 1
@150 = private unnamed_addr constant [14 x i8] c"InvalidProfile", align 1
@151 = private unnamed_addr constant [15 x i8] c"InvalidTrcCurve", align 1
@152 = private unnamed_addr constant [11 x i8] c"InvalidCicp", align 1
@153 = private unnamed_addr constant [18 x i8] c"CurveLutIsTooLarge", align 1
@154 = private unnamed_addr constant [27 x i8] c"ParametricCurveZeroDivision", align 1
@155 = private unnamed_addr constant [22 x i8] c"InvalidRenderingIntent", align 1
@156 = private unnamed_addr constant [14 x i8] c"DivisionByZero", align 1
@157 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@158 = private unnamed_addr constant [25 x i8] c"UnsupportedColorPrimaries", align 1
@159 = private unnamed_addr constant [14 x i8] c"UnsupportedTrc", align 1
@160 = private unnamed_addr constant [13 x i8] c"InvalidLayout", align 1
@161 = private unnamed_addr constant [28 x i8] c"UnsupportedProfileConnection", align 1
@162 = private unnamed_addr constant [21 x i8] c"BuildTransferFunction", align 1
@163 = private unnamed_addr constant [31 x i8] c"UnsupportedChannelConfiguration", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@165 = private unnamed_addr constant [10 x i8] c"UnknownTag", align 1
@166 = private unnamed_addr constant [24 x i8] c"UnknownTagTypeDefinition", align 1
@167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshGoo8nsRtFZ_6moxcms7profile15RenderingIntentNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@168 = private unnamed_addr constant [29 x i8] c"UnsupportedLutRenderingIntent", align 1
@169 = private unnamed_addr constant [14 x i8] c"InvalidAtoBLut", align 1
@170 = private unnamed_addr constant [16 x i8] c"OverflowingError", align 1
@171 = private unnamed_addr constant [20 x i8] c"LUTTablesInvalidKind", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshGoo8nsRtFZ_6moxcms3err13MalformedSizeNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@173 = private unnamed_addr constant [13 x i8] c"MalformedClut", align 1
@174 = private unnamed_addr constant [22 x i8] c"MalformedCurveLutTable", align 1
@175 = private unnamed_addr constant [26 x i8] c"InvalidInksCountForProfile", align 1
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@177 = private unnamed_addr constant [17 x i8] c"MalformedTrcCurve", align 1
@178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@179 = private unnamed_addr constant [11 x i8] c"OutOfMemory", align 1
@180 = private unnamed_addr constant [20 x i8] c"IncorrectlyFormedLut", align 1
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc11collections19TryReserveErrorKindNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@182 = private unnamed_addr constant [15 x i8] c"TryReserveError", align 1
@183 = private unnamed_addr constant [4 x i8] c"kind", align 1
@184 = private unnamed_addr constant [5 x i8] c"Bt709", align 1
@185 = private unnamed_addr constant [11 x i8] c"Unspecified", align 1
@186 = private unnamed_addr constant [6 x i8] c"Bt470M", align 1
@187 = private unnamed_addr constant [7 x i8] c"Bt470BG", align 1
@188 = private unnamed_addr constant [5 x i8] c"Bt601", align 1
@189 = private unnamed_addr constant [9 x i8] c"Smpte240m", align 1
@190 = private unnamed_addr constant [6 x i8] c"Linear", align 1
@191 = private unnamed_addr constant [6 x i8] c"Log100", align 1
@192 = private unnamed_addr constant [7 x i8] c"LogSqrt", align 1
@193 = private unnamed_addr constant [12 x i8] c"Iec61966_2_4", align 1
@194 = private unnamed_addr constant [6 x i8] c"Bt1361", align 1
@195 = private unnamed_addr constant [4 x i8] c"SRgb", align 1
@196 = private unnamed_addr constant [12 x i8] c"Bt2020_10bit", align 1
@197 = private unnamed_addr constant [12 x i8] c"Bt2020_12bit", align 1
@198 = private unnamed_addr constant [9 x i8] c"Smpte2084", align 1
@199 = private unnamed_addr constant [8 x i8] c"Smpte428", align 1
@200 = private unnamed_addr constant [9 x i8] c"Bt2100Hlg", align 1
@201 = private unnamed_addr constant [8 x i8] c"Identity", align 1
@202 = private unnamed_addr constant [5 x i8] c"UsFCC", align 1
@203 = private unnamed_addr constant [9 x i8] c"Smpte170m", align 1
@204 = private unnamed_addr constant [5 x i8] c"YCgCo", align 1
@205 = private unnamed_addr constant [17 x i8] c"Bt2020NonConstant", align 1
@206 = private unnamed_addr constant [14 x i8] c"Bt2020Constant", align 1
@207 = private unnamed_addr constant [9 x i8] c"Smpte2085", align 1
@208 = private unnamed_addr constant [30 x i8] c"ChromaticityDerivedNonConstant", align 1
@209 = private unnamed_addr constant [27 x i8] c"ChromaticityDerivedConstant", align 1
@210 = private unnamed_addr constant [6 x i8] c"Bt2100", align 1
@211 = private unnamed_addr constant [7 x i8] c"IptPqC2", align 1
@212 = private unnamed_addr constant [7 x i8] c"YCgCoRe", align 1
@213 = private unnamed_addr constant [7 x i8] c"YCgCoRo", align 1
@214 = private unnamed_addr constant [11 x i8] c"NarrowRange", align 1
@215 = private unnamed_addr constant [9 x i8] c"FullRange", align 1
@216 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@217 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@218 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@219 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@220 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp22CicpVideoFullRangeFlagNtB6_5Debug3fmtBC_ }>, align 8
@221 = private unnamed_addr constant [4 x i8] c"Cicp", align 1
@222 = private unnamed_addr constant [9 x i8] c"primaries", align 1
@223 = private unnamed_addr constant [8 x i8] c"transfer", align 1
@224 = private unnamed_addr constant [6 x i8] c"matrix", align 1
@225 = private unnamed_addr constant [10 x i8] c"full_range", align 1
@226 = private unnamed_addr constant [4 x i8] c"RgbM", align 1
@227 = private unnamed_addr constant [4 x i8] c"RgbB", align 1
@228 = private unnamed_addr constant [7 x i8] c"Rgb240m", align 1
@229 = private unnamed_addr constant [11 x i8] c"GenericFilm", align 1
@230 = private unnamed_addr constant [7 x i8] c"Rgb2020", align 1
@231 = private unnamed_addr constant [3 x i8] c"Xyz", align 1
@232 = private unnamed_addr constant [10 x i8] c"SmpteRp431", align 1
@233 = private unnamed_addr constant [10 x i8] c"SmpteRp432", align 1
@234 = private unnamed_addr constant [10 x i8] c"Industry22", align 1
@235 = private unnamed_addr constant [81 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/core/src/ops/function.rs\00", align 1
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @235, [16 x i8] c"P\00\00\00\00\00\00\00\A6\00\00\00\05\00\00\00" }>, align 8
@switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210 = private unnamed_addr constant [4 x i8] c"\03\04\01\02", align 8
@switch.table._RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformstE16select_transformINtNtBa_5color4RgbatEEBa_ = private unnamed_addr constant [4 x i8] c" 0\A0\B0", align 8
@switch.table._RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform17transform_dynamic = private unnamed_addr constant [10 x i8] c"\02\03\00\01\02\03\00\01\00\01", align 1
@switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [18 x i8] [i8 5, i8 11, i8 poison, i8 6, i8 7, i8 5, i8 9, i8 6, i8 6, i8 7, i8 12, i8 6, i8 4, i8 12, i8 12, i8 9, i8 8, i8 9], align 8
@switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.211 = private unnamed_addr constant [18 x ptr] [ptr @184, ptr @185, ptr poison, ptr @186, ptr @187, ptr @188, ptr @189, ptr @190, ptr @191, ptr @192, ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200], align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [18 x i8] [i8 8, i8 5, i8 11, i8 poison, i8 5, i8 7, i8 9, i8 9, i8 5, i8 17, i8 14, i8 9, i8 30, i8 27, i8 6, i8 7, i8 7, i8 7], align 8
@switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.212 = private unnamed_addr constant [18 x ptr] [ptr @201, ptr @184, ptr @185, ptr poison, ptr @202, ptr @187, ptr @203, ptr @189, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213], align 8
@switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt = private unnamed_addr constant [22 x i8] [i8 4, i8 11, i8 poison, i8 4, i8 4, i8 5, i8 7, i8 11, i8 7, i8 3, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10], align 8
@switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.213 = private unnamed_addr constant [22 x ptr] [ptr @195, ptr @185, ptr poison, ptr @226, ptr @227, ptr @188, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @234], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16build_transformsfEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.057 = alloca [192 x i8], align 8         ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 16               ; 9 uses
  %i.q = alloca [16 x i8], align 16               ; 11 uses
  %i.r = alloca [16 x i8], align 16               ; 11 uses
  %i.s = alloca [16 x i8], align 16               ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 16               ; 9 uses
  %i.w = alloca [16 x i8], align 16               ; 11 uses
  %i.x = alloca [16 x i8], align 16               ; 11 uses
  %i.y = alloca [16 x i8], align 16               ; 9 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [64 x i8], align 16              ; 10 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 16              ; 9 uses
  %i.ad = alloca [16 x i8], align 16              ; 11 uses
  %i.ae = alloca [16 x i8], align 16              ; 11 uses
  %i.af = alloca [16 x i8], align 16              ; 9 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [64 x i8], align 16              ; 10 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [64 x i8], align 8               ; 5 uses
  %i.ak = alloca [64 x i8], align 8               ; 13 uses
  %.val.i = load ptr, ptr %1, align 8, !noalias !325, !noundef !4
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.1 = load ptr, ptr %.ptr.1, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.2 = load ptr, ptr %.ptr.2, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.3 = load ptr, ptr %.ptr.3, align 8
  %i.al = insertelement <4 x ptr> poison, ptr %.val.i, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %.val.i.1, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %.val.i.2, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %.val.i.3, i64 3
  %.fr = freeze <4 x ptr> %i.ao
  %i.ap = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.aq = bitcast <4 x i1> %i.ap to i4
  %.not = icmp eq i4 %i.aq, 0
  br i1 %.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtBb_6marker4SendNtB2I_4SyncEL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMBT_BQ_7is_noneECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.b:                                             ; preds = %bb.j, %bb.c
  %.pn93 = phi { ptr, i32 } [ %i.ar, %bb.c ], [ %.pn.pn.pn.pn, %bb.j ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB28_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %2) #20
          to label %.thread unwind label %bb.cy

bb.c:                                             ; preds = %bb.cv, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtBb_6marker4SendNtB2I_4SyncEL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMBT_BQ_7is_noneECsa5QsYiPB8Gl_5image.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtBb_6marker4SendNtB2I_4SyncEL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMBT_BQ_7is_noneECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
          to label %bb.e unwind label %bb.c

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB28_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %2)
          to label %bb.dx unwind label %bb.dy

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtBb_6marker4SendNtB2I_4SyncEL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMBT_BQ_7is_noneECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %.val.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !327, !noalias !328, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !327, !noalias !328 ; 2 uses
  %i.at = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !329
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %.val.i.i.1.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !327, !noalias !328, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.val1.i.i.1.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !327, !noalias !328 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.1.i.i.i, i64 1 monotonic, align 8, !noalias !329
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.1.i.i.i) ]
  %.val.i.i.2.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !327, !noalias !328, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.val1.i.i.2.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !327, !noalias !328 ; 2 uses
  %i.bb = atomicrmw add ptr %.val.i.i.2.i.i.i, i64 1 monotonic, align 8, !noalias !329
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.2.i.i.i) ]
  %.val.i.i.3.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !327, !noalias !328, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.val1.i.i.3.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !327, !noalias !328 ; 2 uses
  %i.bf = atomicrmw add ptr %.val.i.i.3.i.i.i, i64 1 monotonic, align 8, !noalias !329
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %bb.l

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit242, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit242 ], [ %i.bh, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB28_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ak) #20
          to label %bb.b unwind label %bb.cy

bb.k:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.3.i.i.i) ]
  store ptr %.val.i.i.i.i.i, ptr %i.ai, align 8, !alias.scope !326, !noalias !327
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.val1.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.val.i.i.1.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.val1.i.i.1.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %.val.i.i.2.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %.val1.i.i.2.i.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %.val.i.i.3.i.i.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %.val1.i.i.3.i.i.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !326, !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB24_4SyncEL_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitIBz_DG0_INtNtB2Q_8function2FnTRL1_SfQL0_B40_EEp6OutputuB22_B2l_EL_EENCINvMB2O_B2L_10wrap_mut_1By_NCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5a_13CicpTransform16build_transformsfE0E0EB5e_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ai)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val.i.i.i.i = load ptr, ptr %2, align 8, !noalias !330, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val1.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !330 ; 2 uses
  %i.bj = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !330
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %.val.i.i.1.i.i = load ptr, ptr %i.bl, align 8, !noalias !330, !nonnull !4, !noundef !4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.val1.i.i.1.i.i = load ptr, ptr %i.bm, align 8, !noalias !330 ; 3 uses
  %i.bn = atomicrmw add ptr %.val.i.i.1.i.i, i64 1 monotonic, align 8, !noalias !330
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.1.i.i) ]
  %.val.i.i.2.i.i = load ptr, ptr %i.bp, align 8, !noalias !330, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.val1.i.i.2.i.i = load ptr, ptr %i.bq, align 8, !noalias !330 ; 2 uses
  %i.br = atomicrmw add ptr %.val.i.i.2.i.i, i64 1 monotonic, align 8, !noalias !330
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.2.i.i) ]
  %.val.i.i.3.i.i = load ptr, ptr %i.bt, align 8, !noalias !330, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNSNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBf_13CicpTransform16build_transformshE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRShQB2j_EE9call_once6vtableBj_:bb.a
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #23
  br label %_RNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBd_13CicpTransform16build_transformshE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRShQB2h_EE9call_onceBh_.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformshE00EBQ_.exit.i: ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBd_13CicpTransform16build_transformshE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRShQB2h_EE9call_onceBh_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBf_13CicpTransform16build_transformstE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRStQB2j_EE9call_once6vtableBj_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias nofree noundef nonnull align 2 %3, i64 noundef range(i64 0, 4611686018427387904) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !5631
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !5631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5632
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !19, !invariant.load !4, !alias.scope !5630, !noalias !5633
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !4, !alias.scope !5630, !noalias !5633, !nonnull !4
  invoke void %i.o(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias nofree noundef nonnull align 2 %3, i64 noundef range(i64 0, 4611686018427387904) %4) #25
          to label %.noexc.i unwind label %bb.f, !inline_history !5634

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5635)
  %i.p = load i8, ptr %i.b, align 8, !range !20, !alias.scope !5635, !noalias !5636, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.b, !prof !6

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !5636
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #22
          to label %bb.d unwind label %bb.c, !noalias !5638

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms3err8CmsErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #20
          to label %..body_crit_edge.i unwind label %bb.e, !noalias !5638

..body_crit_edge.i:                               ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !5639, !noalias !5631
  br label %.body.i

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !5638
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %..body_crit_edge.i
  %i.t = phi ptr [ %i.d, %bb.f ], [ %.pre.i, %..body_crit_edge.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.q, %..body_crit_edge.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5640)
  call void @llvm.experimental.noalias.scope.decl(metadata !5641)
  call void @llvm.experimental.noalias.scope.decl(metadata !5642)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !5639
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformstE00EBQ_.exit.i

bb.g:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformstE00EBQ_.exit.i unwind label %bb.j

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5632
  %i.w = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !5643
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %_RNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBd_13CicpTransform16build_transformstE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRStQB2h_EE9call_onceBh_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #23
  br label %_RNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBd_13CicpTransform16build_transformstE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRStQB2h_EE9call_onceBh_.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBM_13CicpTransform16build_transformstE00EBQ_.exit.i: ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvYNCNCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtBd_13CicpTransform16build_transformstE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRStQB2h_EE9call_onceBh_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesE3lenCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform17transform_dynamic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(792) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [4096 x i8], align 4              ; 24 uses
  %i.v = alloca [4096 x i8], align 4              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.v, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.u, i8 0, i64 4096, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.w, align 8, !noundef !4
  %i.x = zext i32 %.val to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val141 = load i32, ptr %i.y, align 4, !noundef !4
  %i.z = zext i32 %.val141 to i64
  %i.aa = mul nuw i64 %i.z, %i.x                  ; 6 uses
  %.val143 = load i64, ptr %1, align 8, !range !5804, !noundef !4
  %switch.idx.cast.i = trunc nuw nsw i64 %.val143 to i8
  switch i8 %switch.idx.cast.i, label %default.unreachable889 [
    i8 0, label %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit
    i8 5, label %bb.b
    i8 6, label %bb.c
    i8 7, label %bb.d
    i8 8, label %bb.c
    i8 9, label %bb.d
  ]

default.unreachable889:                           ; preds = %bb.bm, %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit

_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %i.ab = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ]
  %cond = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.a ]
  %.sroa.0.0.i = phi i8 [ 1, %bb.d ], [ 3, %bb.b ], [ 0, %bb.c ], [ 2, %bb.a ], [ 2, %bb.a ]
  %.val142 = load i64, ptr %2, align 8, !range !5804, !noundef !4 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform17transform_dynamic, i64 %.val142
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  switch i8 %.sroa.0.0.i, label %default.unreachable889 [
    i8 0, label %bb.f
    i8 2, label %bb.f
    i8 1, label %bb.i
    i8 3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.f
  br i1 %i.ab, label %bb.i, label %3

bb.f:                                             ; preds = %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit, %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit
  switch i8 %switch.load, label %bb.e [
    i8 0, label %bb.g
    i8 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %3, %3, %bb.i, %bb.i, %4
  %.sink1135 = phi i64 [ 560, %4 ], [ 528, %bb.i ], [ 544, %3 ], [ 528, %bb.i ], [ 544, %3 ], [ 512, %bb.f ], [ 512, %bb.f ]
  %.sink1134 = phi i64 [ 568, %4 ], [ 536, %bb.i ], [ 552, %3 ], [ 536, %bb.i ], [ 552, %3 ], [ 520, %bb.f ], [ 520, %bb.f ]
  %.sroa.023.0 = phi i64 [ 4, %4 ], [ 4, %bb.i ], [ 3, %3 ], [ 4, %bb.i ], [ 3, %3 ], [ 3, %bb.f ], [ 3, %bb.f ]
  %.sroa.0.0 = phi i64 [ 4, %4 ], [ 3, %bb.i ], [ 4, %3 ], [ 3, %bb.i ], [ 4, %3 ], [ 3, %bb.f ], [ 3, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1135
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1134
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !19, !invariant.load !4
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = add nuw i64 %i.aa, 255
  %.sroa.05.0.i.i = lshr i64 %i.am, 8             ; 2 uses
  %.not571 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not571, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %.sroa.44.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.55.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7.0..sroa_idx.i215 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.44.0..sroa_idx.i202 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.55.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.7.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.44.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.55.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.7.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.44.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.55.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.7.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.410.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.511.0..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.712.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.46.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.57.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.78.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.44.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.55.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.7.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.712.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %.sroa.43.0..sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.0..sroa_idx.i310 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.43.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.54.0..sroa_idx.i299 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i285 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i287 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 768
  %.sroa.0326.0.copyload = load float, ptr %i.aq, align 8 ; 8 uses
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.ar = load <2 x float>, ptr %.sroa.4327.0..sroa_idx, align 4 ; 12 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %.sroa.420.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.521.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.722.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.415.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.516.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.717.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.43.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.54.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %broadcast.splatinsert1480 = insertelement <4 x float> poison, float %.sroa.0326.0.copyload, i64 0
  %broadcast.splat1481 = shufflevector <4 x float> %broadcast.splatinsert1480, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1483 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1485 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1456 = insertelement <4 x float> poison, float %.sroa.0326.0.copyload, i64 0
  %broadcast.splat1457 = shufflevector <4 x float> %broadcast.splatinsert1456, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1459 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1461 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1395 = insertelement <4 x float> poison, float %.sroa.0326.0.copyload, i64 0
  %broadcast.splat1396 = shufflevector <4 x float> %broadcast.splatinsert1395, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1398 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1400 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0326.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1380 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1382 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.split

bb.h:                                             ; preds = %bb.i
  br i1 %cond, label %3, label %4

bb.i:                                             ; preds = %bb.e, %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit, %_RNvXNtNtCsa5QsYiPB8Gl_5image6traits7privateNtB2_15LayoutWithColorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5color9ColorTypeE4from.exit
  switch i8 %switch.load, label %bb.h [
    i8 0, label %bb.g
    i8 2, label %bb.g
  ]

3:                                                ; preds = %bb.e, %bb.h
  switch i8 %switch.load, label %4 [
    i8 1, label %bb.g
    i8 3, label %bb.g
  ]

4:                                                ; preds = %bb.h, %3
  br label %bb.g

._crit_edge:                                      ; preds = %bb.cb, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cb
  %.sroa.031.0573 = phi i64 [ %i.av, %bb.cb ], [ %.sroa.05.0.i.i, %.lr.ph ]
  %.sroa.028.0572 = phi i64 [ %i.au, %bb.cb ], [ 0, %.lr.ph ] ; 30 uses
  %i.au = add nuw i64 %.sroa.028.0572, 256        ; 2 uses
  %i.av = add nsw i64 %.sroa.031.0573, -1         ; 2 uses
  %..i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %i.aa, i64 %i.au) ; 29 uses
  %i.aw = sub i64 %..i, %.sroa.028.0572           ; 26 uses
  switch i64 %.val142, label %bb.s [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
  ]

bb.j:                                             ; preds = %.lr.ph.split
  %i.ax = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.ba = icmp ult i64 %i.aa, %.sroa.028.0572
  %.not119 = icmp ugt i64 %..i, %i.az
  %or.cond = select i1 %i.ba, i1 true, i1 %.not119, !prof !9
  br i1 %or.cond, label %bb.u, label %bb.t, !prof !9

bb.k:                                             ; preds = %.lr.ph.split
  %i.bb = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 2 uses
  %i.be = shl i64 %.sroa.028.0572, 1              ; 3 uses
  %i.bf = shl i64 %..i, 1                         ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not118 = icmp ugt i64 %i.bf, %i.bd
  %or.cond329 = select i1 %i.bg, i1 true, i1 %.not118, !prof !9
  br i1 %or.cond329, label %bb.z, label %bb.y, !prof !9

bb.l:                                             ; preds = %.lr.ph.split
  %i.bh = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1      ; 2 uses
  %i.bk = mul i64 %.sroa.028.0572, 3              ; 3 uses
  %i.bl = mul i64 %..i, 3                         ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %.not117 = icmp ugt i64 %i.bl, %i.bj
  %or.cond330 = select i1 %i.bm, i1 true, i1 %.not117, !prof !9
  br i1 %or.cond330, label %bb.ad, label %bb.ac, !prof !9

bb.m:                                             ; preds = %.lr.ph.split
  %i.bn = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %i.bq = shl i64 %.sroa.028.0572, 2              ; 3 uses
  %i.br = shl i64 %..i, 2                         ; 4 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %.not116 = icmp ugt i64 %i.br, %i.bp
  %or.cond331 = select i1 %i.bs, i1 true, i1 %.not116, !prof !9
  br i1 %or.cond331, label %bb.ah, label %bb.ag, !prof !9

bb.n:                                             ; preds = %.lr.ph.split
  %i.bt = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 2 uses
  %i.bw = icmp ult i64 %i.aa, %.sroa.028.0572
  %.not115 = icmp ugt i64 %..i, %i.bv
  %or.cond130 = select i1 %i.bw, i1 true, i1 %.not115, !prof !9
  br i1 %or.cond130, label %bb.al, label %bb.ak, !prof !9

bb.o:                                             ; preds = %.lr.ph.split
  %i.bx = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1      ; 2 uses
  %i.ca = shl i64 %.sroa.028.0572, 1              ; 4 uses
  %i.cb = shl i64 %..i, 1                         ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %bb.aq, label %bb.ao, !prof !5

bb.p:                                             ; preds = %.lr.ph.split
  %i.cd = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0      ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1      ; 2 uses
  %i.cg = mul i64 %.sroa.028.0572, 3              ; 3 uses
  %i.ch = mul i64 %..i, 3                         ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %.not113 = icmp ugt i64 %i.ch, %i.cf
  %or.cond332 = select i1 %i.ci, i1 true, i1 %.not113, !prof !9
  br i1 %or.cond332, label %bb.au, label %bb.at, !prof !9

bb.q:                                             ; preds = %.lr.ph.split
  %i.cj = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0      ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1      ; 2 uses
  %i.cm = shl i64 %.sroa.028.0572, 2              ; 3 uses
  %i.cn = shl i64 %..i, 2                         ; 4 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %.not112 = icmp ugt i64 %i.cn, %i.cl
  %or.cond333 = select i1 %i.co, i1 true, i1 %.not112, !prof !9
  br i1 %or.cond333, label %bb.ay, label %bb.ax, !prof !9

bb.r:                                             ; preds = %.lr.ph.split
  %i.cp = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.cp, 0      ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cp, 1      ; 2 uses
  %i.cs = mul i64 %.sroa.028.0572, 3              ; 3 uses
  %i.ct = mul i64 %..i, 3                         ; 4 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %.not111 = icmp ugt i64 %i.ct, %i.cr
  %or.cond334 = select i1 %i.cu, i1 true, i1 %.not111, !prof !9
  br i1 %or.cond334, label %bb.bc, label %bb.bb, !prof !9

bb.s:                                             ; preds = %.lr.ph.split
  %i.cv = call { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 2 uses
  %i.cy = shl i64 %.sroa.028.0572, 2              ; 3 uses
  %i.cz = shl i64 %..i, 2                         ; 4 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %.not110 = icmp ugt i64 %i.cz, %i.cx
  %or.cond335 = select i1 %i.da, i1 true, i1 %.not110, !prof !9
  br i1 %or.cond335, label %bb.bg, label %bb.bf, !prof !9

bb.t:                                             ; preds = %bb.j
  %i.db = mul i64 %i.aw, 3                        ; 3 uses
  %i.dc = icmp ult i64 %i.db, 1025
  br i1 %i.dc, label %bb.w, label %bb.v, !prof !8

bb.u:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.028.0572, i64 noundef %..i, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #26
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.db, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #26
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.028.0572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 %..i
  %.lhs.trunc13.i = trunc nuw nsw i64 %i.db to i16
  %i.df = udiv i16 %.lhs.trunc13.i, 3
  %.zext14.i = zext nneg i16 %i.df to i64
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %.zext14.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noundef nonnull readonly %i.dd, ptr noundef nonnull readonly %i.de, ptr noundef nonnull align 4 %i.v, ptr noundef nonnull %i.dg)
  %.sroa.04.0.copyload.i = load ptr, ptr %i.t, align 8, !noalias !5805 ; 7 uses
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !5805 ; 7 uses
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !5805 ; 8 uses
  %.sroa.78.0.copyload.i = load i64, ptr %.sroa.78.0..sroa_idx.i, align 8, !noalias !5805 ; 7 uses
  %i.dh = icmp ult i64 %.sroa.57.0.copyload.i, %.sroa.78.0.copyload.i
  br i1 %i.dh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  %i.di = sub nuw i64 %.sroa.78.0.copyload.i, %.sroa.57.0.copyload.i ; 3 uses
  %min.iters.check1587 = icmp ult i64 %i.di, 4
  br i1 %min.iters.check1587, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.preheader, label %vector.memcheck1578

vector.memcheck1578:                              ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.dj = mul i64 %.sroa.57.0.copyload.i, 12
  %scevgep1579 = getelementptr i8, ptr %.sroa.46.0.copyload.i, i64 %i.dj
  %i.dk = mul i64 %.sroa.78.0.copyload.i, 12
  %scevgep1580 = getelementptr i8, ptr %.sroa.46.0.copyload.i, i64 %i.dk
  %scevgep1581 = getelementptr i8, ptr %.sroa.04.0.copyload.i, i64 %.sroa.57.0.copyload.i
  %scevgep1582 = getelementptr i8, ptr %.sroa.04.0.copyload.i, i64 %.sroa.78.0.copyload.i
  %bound01583 = icmp ult ptr %scevgep1579, %scevgep1582
  %bound11584 = icmp ult ptr %scevgep1581, %scevgep1580
  %found.conflict1585 = and i1 %bound01583, %bound11584
  br i1 %found.conflict1585, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.preheader, label %vector.ph1588

vector.ph1588:                                    ; preds = %vector.memcheck1578
  %n.vec1589 = and i64 %i.di, -4                  ; 3 uses
  %i.dl = add i64 %.sroa.57.0.copyload.i, %n.vec1589
  br label %vector.body1590

vector.body1590:                                  ; preds = %vector.body1590, %vector.ph1588
  %index1591 = phi i64 [ 0, %vector.ph1588 ], [ %index.next1594, %vector.body1590 ] ; 2 uses
  %i.dm = add nuw i64 %.sroa.57.0.copyload.i, %index1591 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i, i64 %i.dm
  %wide.load1592 = load <4 x i8>, ptr %i.dn, align 1, !alias.scope !5806
  %i.dp = uitofp <4 x i8> %wide.load1592 to <4 x float>
  %i.dq = fmul nnan <4 x float> %i.dp, splat (float f0x3B808081)
  %interleaved.vec1593 = shufflevector <4 x float> %i.dq, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec1593, ptr %i.do, align 4, !alias.scope !5807, !noalias !5806
  %index.next1594 = add nuw i64 %index1591, 4     ; 2 uses
  %i.dr = icmp eq i64 %index.next1594, %n.vec1589
  br i1 %i.dr, label %middle.block1595, label %vector.body1590, !llvm.loop !5650

middle.block1595:                                 ; preds = %vector.body1590
  %cmp.n1596 = icmp eq i64 %i.di, %n.vec1589
  br i1 %cmp.n1596, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.preheader: ; preds = %vector.memcheck1578, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, %middle.block1595
end_hunk_1
begin_hunk_2_@_RNvXs7_NtCshGoo8nsRtFZ_6moxcms3errNtB5_8CmsErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 16)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 22)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 14)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 15)
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 11)
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 18)
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 27)
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 22)
  br label %bb.ac

bb.j:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 14)
  br label %bb.ac

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.u, ptr %i.j, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 25, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.w, ptr %i.i, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ac

bb.m:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 13)
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 28)
  br label %bb.ac

bb.o:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 21)
  br label %bb.ac

bb.p:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 31)
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ac, ptr %i.h, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 10, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ae, ptr %i.g, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 24, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ag, ptr %i.f, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 29, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 14)
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 16)
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 20)
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.e, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 13, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.d, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 22, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 26)
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.c, align 8
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.b, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.a, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.b ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.t, %bb.j ], [ %i.v, %bb.k ], [ %i.x, %bb.l ], [ %i.y, %bb.m ], [ %i.z, %bb.n ], [ %i.aa, %bb.o ], [ %i.ab, %bb.p ], [ %i.ad, %bb.q ], [ %i.af, %bb.r ], [ %i.ah, %bb.s ], [ %i.ai, %bb.t ], [ %i.aj, %bb.u ], [ %i.ak, %bb.v ], [ %i.am, %bb.w ], [ %i.ao, %bb.x ], [ %i.ap, %bb.y ], [ %i.ar, %bb.z ], [ %i.at, %bb.aa ], [ %i.av, %bb.ab ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCs4wP2HXfJTCR_5alloc11collectionsNtB5_15TryReserveErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !6186, !noundef !4
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsD_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_27CicpTransferCharacteristicsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.211, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !6187, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsL_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_22CicpMatrixCoefficientsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.212, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1Z_NtNtNtB8_3ffi6os_str8OsStringEEEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtB8_11collections4hash3map7HashMapNtNtNtB8_3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB1w_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB1w_6result6ResultIB3d_DNtNtNtB4l_2io7decoder12ImageDecoderEL0_ENtNtB4l_5error10ImageErrorENtNtB1w_6marker4SendNtB6O_4SyncEL_EEEEENtNtB1w_3fmt5Debug3fmtB4l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB20_NtNtNtB8_3ffi6os_str8OsStringEEEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtB8_11collections4hash3map7HashMapNtNtNtB8_3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB1x_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB1x_6result6ResultIB3e_DNtNtNtB4m_2io7decoder12ImageDecoderEL0_ENtNtB4m_5error10ImageErrorENtNtB1x_6marker4SendNtB6P_4SyncEL_EEEEENtNtB1x_3fmt5Debug3fmtB4m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !6188, !noundef !4
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsv_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_18CicpColorPrimariesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.213, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB24_4SyncEL_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitIBz_DG0_INtNtB2Q_8function2FnTRL1_SfQL0_B40_EEp6OutputuB22_B2l_EL_EENCINvMB2O_B2L_10wrap_mut_1By_NCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5a_13CicpTransform16build_transformsfE0E0EB5e_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB8_6marker4SendNtB24_4SyncEL_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitIBz_DG0_INtNtB2Q_8function2FnTRL1_ShQL0_B40_EEp6OutputuB22_B2l_EL_EENCINvMB2O_B2L_10wrap_mut_1By_NCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5a_13CicpTransform16build_transformshE0E0EB5e_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB8_6marker4SendNtB24_4SyncEL_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitIBz_DG0_INtNtB2Q_8function2FnTRL1_StQL0_B40_EEp6OutputuB22_B2l_EL_EENCINvMB2O_B2L_10wrap_mut_1By_NCINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5a_13CicpTransform16build_transformstE0E0EB5e_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvXs7_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivehE14from_primitive(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvXs8_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivehE14from_primitive(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef float @_RNvXs6_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivetE14from_primitive(i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXs5_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivetE14from_primitive(i16 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterfEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivetE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivetE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivetE14from_primitiveEE11spec_extendB32_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2I_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0EE11spec_extendB2M_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEEAfj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphahfE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEEAhj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphahhE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4IterhEEAtj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphahtE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEAfj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphatfE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEAhj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphathE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VectEINtB4_10SpecExtendtINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEAtj2_NCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB3f_7CicpRgb32subpixel_cast_luma_to_luma_alphattE0EE11spec_extendB3j_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10take_frontCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10init_frontCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCshGoo8nsRtFZ_6moxcms3trc13ToneReprCurveENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCshGoo8nsRtFZ_6moxcms7profile17LocalizableStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCshGoo8nsRtFZ_6moxcms3trc13ToneReprCurveENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCshGoo8nsRtFZ_6moxcms7profile17LocalizableStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_2
