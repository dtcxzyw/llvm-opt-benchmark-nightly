Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00U\02\00\00,\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00V\02\00\00\1A\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00V\02\00\00)\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00Z\02\00\00\16\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00Z\02\00\000\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\007\02\00\00\17\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\008\02\00\00\1A\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\008\02\00\00)\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00<\02\00\00\16\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00<\02\00\001\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\19\02\00\00\17\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\19\02\00\00'\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\19\02\00\006\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\19\02\00\00E\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F5\01\00\00!\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F5\01\00\00=\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F8\01\00\00\13\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F8\01\00\00(\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F6\01\00\00\13\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\F5\01\00\00\0F\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00n\01\00\00\0F\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00n\01\00\00\1F\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00n\01\00\00.\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00n\01\00\00=\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\88\01\00\00\15\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\88\01\00\000\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\B7\01\00\00\17\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\B8\01\00\00\1A\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\B8\01\00\00)\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\BC\01\00\00\16\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\BC\01\00\000\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\99\01\00\00,\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\9A\01\00\00\1A\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\9A\01\00\00)\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\9E\01\00\00\16\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\9E\01\00\001\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00{\01\00\00\17\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00{\01\00\00'\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00{\01\00\006\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00{\01\00\00E\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00W\01\00\00!\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00W\01\00\00=\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00Z\01\00\00\13\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00Z\01\00\00(\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00X\01\00\00\13\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00W\01\00\00\0F\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\B0\02\00\00\13\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\B0\02\00\006\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\E8\00\00\00\0F\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"j\00\00\00\00\00\00\00\E8\00\00\00+\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00{\00\00\00'\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\80\00\00\00\16\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\80\00\00\00'\00\00\00" }>, align 8
@107 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/compact.rs\00", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\EB\00\00\00\1A\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00*\01\00\00\18\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\FE\00\00\00\18\00\00\00" }>, align 8
@111 = private unnamed_addr constant [56 x i8] c"internal error: entered unreachable code: unexpected tag", align 1
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00K\01\00\00\12\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\A1\01\00\00\18\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\A2\01\00\00\18\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00u\01\00\00\18\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00v\01\00\00\18\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\BE\01\00\00\12\00\00\00" }>, align 8
@118 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/histogram.rs\00", align 1
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\001\01\00\00\18\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00\17\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00-\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00\17\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00+\00\00\00" }>, align 8
@124 = private unnamed_addr constant [22 x i8] c"no entry found for key", align 1
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00V\01\00\00%\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00J\01\00\00%\00\00\00" }>, align 8
@127 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @118, [16 x i8] c"n\00\00\00\00\00\00\00#\01\00\00\18\00\00\00" }>, align 8
@128 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/preflight.rs\00", align 1
@129 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\00i\00\00\00@\00\00\00" }>, align 8
@130 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\00j\00\00\00 \00\00\00" }>, align 8
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\00^\00\00\00$\00\00\00" }>, align 8
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\003\00\00\00\0B\00\00\00" }>, align 8
@133 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\003\00\00\00#\00\00\00" }>, align 8
@134 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\004\00\00\00\0F\00\00\00" }>, align 8
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\004\00\00\00)\00\00\00" }>, align 8
@136 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@138 = private unnamed_addr constant [96 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@139 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"_\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"_\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@141 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00:\00\00\00\15\00\00\00" }>, align 8
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\1A\01\00\00M\00\00\00" }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\1A\01\00\00Y\00\00\00" }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00*\01\00\004\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00*\01\00\00@\00\00\00" }>, align 8
@146 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00+\01\00\004\00\00\00" }>, align 8
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00+\01\00\00@\00\00\00" }>, align 8
@148 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\AB\00\00\00\14\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\AB\00\00\00 \00\00\00" }>, align 8
@151 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\C4\00\00\00\14\00\00\00" }>, align 8
@152 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00\C4\00\00\00 \00\00\00" }>, align 8
@153 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"n\00\00\00\00\00\00\00k\00\00\00A\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { { { [2 x i64] } }, i8, [7 x i8] }
@154 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/text/abstraction.rs\00", align 1
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\EC\00\00\00%\00\00\00" }>, align 8
@156 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@157 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsj_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@158 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@159 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@160 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/udiff.rs\00", align 1
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @160, [16 x i8] c"_\00\00\00\00\00\00\00X\00\00\00\15\00\00\00" }>, align 8
@162 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unicode-segmentation-1.13.3/src/grapheme.rs\00", align 1
@163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00k\02\00\00\1B\00\00\00" }>, align 8
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00k\02\00\00>\00\00\00" }>, align 8
@165 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00~\02\00\00\1B\00\00\00" }>, align 8
@166 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00~\02\00\00C\00\00\00" }>, align 8
@167 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\81\02\00\00C\00\00\00" }>, align 8
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\89\02\00\002\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\90\02\00\00,\00\00\00" }>, align 8
@170 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\94\02\00\00)\00\00\00" }>, align 8
@171 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\C3\02\00\00\1D\00\00\00" }>, align 8
@172 = private unnamed_addr constant [3016 x i8] c"\00\03\00\00o\03\00\00\83\04\00\00\89\04\00\00\91\05\00\00\BD\05\00\00\BF\05\00\00\BF\05\00\00\C1\05\00\00\C2\05\00\00\C4\05\00\00\C5\05\00\00\C7\05\00\00\C7\05\00\00\10\06\00\00\1A\06\00\00K\06\00\00_\06\00\00p\06\00\00p\06\00\00\D6\06\00\00\DC\06\00\00\DF\06\00\00\E4\06\00\00\E7\06\00\00\E8\06\00\00\EA\06\00\00\ED\06\00\00\11\07\00\00\11\07\00\000\07\00\00J\07\00\00\A6\07\00\00\B0\07\00\00\EB\07\00\00\F3\07\00\00\FD\07\00\00\FD\07\00\00\16\08\00\00\19\08\00\00\1B\08\00\00#\08\00\00%\08\00\00'\08\00\00)\08\00\00-\08\00\00Y\08\00\00[\08\00\00\97\08\00\00\9F\08\00\00\CA\08\00\00\E1\08\00\00\E3\08\00\00\02\09\00\00:\09\00\00:\09\00\00<\09\00\00<\09\00\00A\09\00\00H\09\00\00Q\09\00\00W\09\00\00b\09\00\00c\09\00\00\81\09\00\00\81\09\00\00\BC\09\00\00\BC\09\00\00\BE\09\00\00\BE\09\00\00\C1\09\00\00\C4\09\00\00\D7\09\00\00\D7\09\00\00\E2\09\00\00\E3\09\00\00\FE\09\00\00\FE\09\00\00\01\0A\00\00\02\0A\00\00<\0A\00\00<\0A\00\00A\0A\00\00B\0A\00\00G\0A\00\00H\0A\00\00K\0A\00\00M\0A\00\00Q\0A\00\00Q\0A\00\00p\0A\00\00q\0A\00\00u\0A\00\00u\0A\00\00\81\0A\00\00\82\0A\00\00\BC\0A\00\00\BC\0A\00\00\C1\0A\00\00\C5\0A\00\00\C7\0A\00\00\C8\0A\00\00\E2\0A\00\00\E3\0A\00\00\FA\0A\00\00\FF\0A\00\00\01\0B\00\00\01\0B\00\00<\0B\00\00<\0B\00\00>\0B\00\00?\0B\00\00A\0B\00\00D\0B\00\00U\0B\00\00W\0B\00\00b\0B\00\00c\0B\00\00\82\0B\00\00\82\0B\00\00\BE\0B\00\00\BE\0B\00\00\C0\0B\00\00\C0\0B\00\00\CD\0B\00\00\CD\0B\00\00\D7\0B\00\00\D7\0B\00\00\00\0C\00\00\00\0C\00\00\04\0C\00\00\04\0C\00\00<\0C\00\00<\0C\00\00>\0C\00\00@\0C\00\00F\0C\00\00H\0C\00\00J\0C\00\00L\0C\00\00U\0C\00\00V\0C\00\00b\0C\00\00c\0C\00\00\81\0C\00\00\81\0C\00\00\BC\0C\00\00\BC\0C\00\00\BF\0C\00\00\C0\0C\00\00\C2\0C\00\00\C2\0C\00\00\C6\0C\00\00\C8\0C\00\00\CA\0C\00\00\CD\0C\00\00\D5\0C\00\00\D6\0C\00\00\E2\0C\00\00\E3\0C\00\00\00\0D\00\00\01\0D\00\00;\0D\00\00<\0D\00\00>\0D\00\00>\0D\00\00A\0D\00\00D\0D\00\00W\0D\00\00W\0D\00\00b\0D\00\00c\0D\00\00\81\0D\00\00\81\0D\00\00\CA\0D\00\00\CA\0D\00\00\CF\0D\00\00\CF\0D\00\00\D2\0D\00\00\D4\0D\00\00\D6\0D\00\00\D6\0D\00\00\DF\0D\00\00\DF\0D\00\001\0E\00\001\0E\00\004\0E\00\00:\0E\00\00G\0E\00\00N\0E\00\00\B1\0E\00\00\B1\0E\00\00\B4\0E\00\00\BC\0E\00\00\C8\0E\00\00\CE\0E\00\00\18\0F\00\00\19\0F\00\005\0F\00\005\0F\00\007\0F\00\007\0F\00\009\0F\00\009\0F\00\00q\0F\00\00~\0F\00\00\80\0F\00\00\84\0F\00\00\86\0F\00\00\87\0F\00\00\8D\0F\00\00\97\0F\00\00\99\0F\00\00\BC\0F\00\00\C6\0F\00\00\C6\0F\00\00-\10\00\000\10\00\002\10\00\007\10\00\00:\10\00\00:\10\00\00=\10\00\00>\10\00\00X\10\00\00Y\10\00\00^\10\00\00`\10\00\00q\10\00\00t\10\00\00\82\10\00\00\82\10\00\00\85\10\00\00\86\10\00\00\8D\10\00\00\8D\10\00\00\9D\10\00\00\9D\10\00\00]\13\00\00_\13\00\00\12\17\00\00\15\17\00\002\17\00\004\17\00\00R\17\00\00S\17\00\00r\17\00\00s\17\00\00\B4\17\00\00\B5\17\00\00\B7\17\00\00\BD\17\00\00\C6\17\00\00\C6\17\00\00\C9\17\00\00\D1\17\00\00\D3\17\00\00\D3\17\00\00\DD\17\00\00\DD\17\00\00\0B\18\00\00\0D\18\00\00\0F\18\00\00\0F\18\00\00\85\18\00\00\86\18\00\00\A9\18\00\00\A9\18\00\00 \19\00\00\22\19\00\00'\19\00\00(\19\00\002\19\00\002\19\00\009\19\00\00;\19\00\00\17\1A\00\00\18\1A\00\00\1B\1A\00\00\1B\1A\00\00V\1A\00\00V\1A\00\00X\1A\00\00^\1A\00\00b\1A\00\00b\1A\00\00e\1A\00\00l\1A\00\00s\1A\00\00|\1A\00\00\7F\1A\00\00\7F\1A\00\00\B0\1A\00\00\DD\1A\00\00\E0\1A\00\00\EB\1A\00\00\00\1B\00\00\03\1B\00\004\1B\00\00=\1B\00\00B\1B\00\00C\1B\00\00k\1B\00\00s\1B\00\00\80\1B\00\00\81\1B\00\00\A2\1B\00\00\A5\1B\00\00\A8\1B\00\00\AA\1B\00\00\AC\1B\00\00\AD\1B\00\00\E6\1B\00\00\E6\1B\00\00\E8\1B\00\00\E9\1B\00\00\ED\1B\00\00\ED\1B\00\00\EF\1B\00\00\F3\1B\00\00,\1C\00\003\1C\00\006\1C\00\007\1C\00\00\D0\1C\00\00\D2\1C\00\00\D4\1C\00\00\E0\1C\00\00\E2\1C\00\00\E8\1C\00\00\ED\1C\00\00\ED\1C\00\00\F4\1C\00\00\F4\1C\00\00\F8\1C\00\00\F9\1C\00\00\C0\1D\00\00\FF\1D\00\00\0D \00\00\0D \00\00\D0 \00\00\F0 \00\00\EF,\00\00\F1,\00\00\7F-\00\00\7F-\00\00\E0-\00\00\FF-\00\00*0\00\00/0\00\00\990\00\00\9A0\00\00o\A6\00\00r\A6\00\00t\A6\00\00}\A6\00\00\9E\A6\00\00\9F\A6\00\00\F0\A6\00\00\F1\A6\00\00\02\A8\00\00\02\A8\00\00\06\A8\00\00\06\A8\00\00\0B\A8\00\00\0B\A8\00\00%\A8\00\00&\A8\00\00,\A8\00\00,\A8\00\00\C4\A8\00\00\C5\A8\00\00\E0\A8\00\00\F1\A8\00\00\FF\A8\00\00\FF\A8\00\00&\A9\00\00-\A9\00\00G\A9\00\00Q\A9\00\00S\A9\00\00S\A9\00\00\80\A9\00\00\82\A9\00\00\B3\A9\00\00\B3\A9\00\00\B6\A9\00\00\B9\A9\00\00\BC\A9\00\00\BD\A9\00\00\E5\A9\00\00\E5\A9\00\00)\AA\00\00.\AA\00\001\AA\00\002\AA\00\005\AA\00\006\AA\00\00C\AA\00\00C\AA\00\00L\AA\00\00L\AA\00\00|\AA\00\00|\AA\00\00\B0\AA\00\00\B0\AA\00\00\B2\AA\00\00\B4\AA\00\00\B7\AA\00\00\B8\AA\00\00\BE\AA\00\00\BF\AA\00\00\C1\AA\00\00\C1\AA\00\00\EC\AA\00\00\ED\AA\00\00\E5\AB\00\00\E5\AB\00\00\E8\AB\00\00\E8\AB\00\00\ED\AB\00\00\ED\AB\00\00\1E\FB\00\00\1E\FB\00\00\00\FE\00\00\0F\FE\00\00 \FE\00\00/\FE\00\00\9E\FF\00\00\9F\FF\00\00\FD\01\01\00\FD\01\01\00\E0\02\01\00\E0\02\01\00v\03\01\00z\03\01\00\01\0A\01\00\03\0A\01\00\05\0A\01\00\06\0A\01\00\0C\0A\01\00\0F\0A\01\008\0A\01\00:\0A\01\00\E5\0A\01\00\E6\0A\01\00$\0D\01\00'\0D\01\00i\0D\01\00m\0D\01\00\AB\0E\01\00\AC\0E\01\00\FA\0E\01\00\FF\0E\01\00F\0F\01\00P\0F\01\00\82\0F\01\00\85\0F\01\00\01\10\01\00\01\10\01\008\10\01\00F\10\01\00p\10\01\00p\10\01\00s\10\01\00t\10\01\00\7F\10\01\00\81\10\01\00\B3\10\01\00\B6\10\01\00\B9\10\01\00\BA\10\01\00\C2\10\01\00\C2\10\01\00\00\11\01\00\02\11\01\00'\11\01\00+\11\01\00-\11\01\002\11\01\004\11\01\004\11\01\00s\11\01\00s\11\01\00\80\11\01\00\81\11\01\00\B6\11\01\00\BE\11\01\00\C0\11\01\00\C0\11\01\00\C9\11\01\00\CC\11\01\00\CF\11\01\00\CF\11\01\00/\12\01\001\12\01\004\12\01\007\12\01\00>\12\01\00>\12\01\00A\12\01\00A\12\01\00\DF\12\01\00\DF\12\01\00\E3\12\01\00\EA\12\01\00\00\13\01\00\01\13\01\00;\13\01\00<\13\01\00>\13\01\00>\13\01\00@\13\01\00@\13\01\00M\13\01\00M\13\01\00W\13\01\00W\13\01\00f\13\01\00l\13\01\00p\13\01\00t\13\01\00\B8\13\01\00\B8\13\01\00\BB\13\01\00\C0\13\01\00\C2\13\01\00\C2\13\01\00\C5\13\01\00\C5\13\01\00\C7\13\01\00\C9\13\01\00\CE\13\01\00\CF\13\01\00\D2\13\01\00\D2\13\01\00\E1\13\01\00\E2\13\01\008\14\01\00?\14\01\00B\14\01\00D\14\01\00F\14\01\00F\14\01\00^\14\01\00^\14\01\00\B0\14\01\00\B0\14\01\00\B3\14\01\00\B8\14\01\00\BA\14\01\00\BA\14\01\00\BD\14\01\00\BD\14\01\00\BF\14\01\00\C0\14\01\00\C2\14\01\00\C3\14\01\00\AF\15\01\00\AF\15\01\00\B2\15\01\00\B5\15\01\00\BC\15\01\00\BD\15\01\00\BF\15\01\00\C0\15\01\00\DC\15\01\00\DD\15\01\003\16\01\00:\16\01\00=\16\01\00=\16\01\00?\16\01\00@\16\01\00\AB\16\01\00\AB\16\01\00\AD\16\01\00\AD\16\01\00\B0\16\01\00\B7\16\01\00\1D\17\01\00\1D\17\01\00\1F\17\01\00\1F\17\01\00\22\17\01\00%\17\01\00'\17\01\00+\17\01\00/\18\01\007\18\01\009\18\01\00:\18\01\000\19\01\000\19\01\00;\19\01\00=\19\01\00C\19\01\00C\19\01\00\D4\19\01\00\D7\19\01\00\DA\19\01\00\DB\19\01\00\E0\19\01\00\E0\19\01\00\01\1A\01\00\0A\1A\01\003\1A\01\008\1A\01\00;\1A\01\00>\1A\01\00Q\1A\01\00V\1A\01\00Y\1A\01\00[\1A\01\00\8A\1A\01\00\96\1A\01\00\98\1A\01\00\98\1A\01\00`\1B\01\00`\1B\01\00b\1B\01\00d\1B\01\00f\1B\01\00f\1B\01\000\1C\01\006\1C\01\008\1C\01\00=\1C\01\00?\1C\01\00?\1C\01\00\92\1C\01\00\A7\1C\01\00\AA\1C\01\00\B0\1C\01\00\B2\1C\01\00\B3\1C\01\00\B5\1C\01\00\B6\1C\01\001\1D\01\006\1D\01\00:\1D\01\00:\1D\01\00<\1D\01\00=\1D\01\00?\1D\01\00E\1D\01\00G\1D\01\00G\1D\01\00\90\1D\01\00\91\1D\01\00\95\1D\01\00\95\1D\01\00\97\1D\01\00\97\1D\01\00\F3\1E\01\00\F4\1E\01\00\00\1F\01\00\01\1F\01\006\1F\01\00:\1F\01\00@\1F\01\00A\1F\01\00Z\1F\01\00Z\1F\01\00@4\01\00@4\01\00G4\01\00U4\01\00\1Ea\01\00)a\01\00-a\01\00/a\01\00\F0j\01\00\F4j\01\000k\01\006k\01\00Oo\01\00Oo\01\00\8Fo\01\00\92o\01\00\E4o\01\00\E4o\01\00\F0o\01\00\F1o\01\00\9D\BC\01\00\9E\BC\01\00\00\CF\01\00-\CF\01\000\CF\01\00F\CF\01\00e\D1\01\00i\D1\01\00m\D1\01\00r\D1\01\00{\D1\01\00\82\D1\01\00\85\D1\01\00\8B\D1\01\00\AA\D1\01\00\AD\D1\01\00B\D2\01\00D\D2\01\00\00\DA\01\006\DA\01\00;\DA\01\00l\DA\01\00u\DA\01\00u\DA\01\00\84\DA\01\00\84\DA\01\00\9B\DA\01\00\9F\DA\01\00\A1\DA\01\00\AF\DA\01\00\00\E0\01\00\06\E0\01\00\08\E0\01\00\18\E0\01\00\1B\E0\01\00!\E0\01\00#\E0\01\00$\E0\01\00&\E0\01\00*\E0\01\00\8F\E0\01\00\8F\E0\01\000\E1\01\006\E1\01\00\AE\E2\01\00\AE\E2\01\00\EC\E2\01\00\EF\E2\01\00\EC\E4\01\00\EF\E4\01\00\EE\E5\01\00\EF\E5\01\00\E3\E6\01\00\E3\E6\01\00\E6\E6\01\00\E6\E6\01\00\EE\E6\01\00\EF\E6\01\00\F5\E6\01\00\F5\E6\01\00\D0\E8\01\00\D6\E8\01\00D\E9\01\00J\E9\01\00\FB\F3\01\00\FF\F3\01\00 \00\0E\00\7F\00\0E\00\00\01\0E\00\EF\01\0E\00", align 4
@173 = private unnamed_addr constant [18 x i8] c"inconsistent state", align 1
@174 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @173, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@175 = private unnamed_addr constant [45 x i8] c"*internal error: entered unreachable code: \C0\00", align 1
@176 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00\D0\01\00\00\0D\00\00\00" }>, align 8
@177 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unicode-segmentation-1.13.3/src/word.rs\00", align 1
@178 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\DA\02\00\00%\00\00\00" }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\DA\02\00\00<\00\00\00" }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\DC\02\00\00\22\00\00\00" }>, align 8
@181 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@182 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@183 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@184 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\CC\00\00\00\15\00\00\00" }>, align 8
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\CD\00\00\00\13\00\00\00" }>, align 8
@186 = private unnamed_addr constant [69 x i8] c"internal error: entered unreachable code: expected insert/delete pair", align 1
@187 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\DB\00\00\00\0E\00\00\00" }>, align 8
@188 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"l\00\00\00\00\00\00\00\D6\00\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@189 = private unnamed_addr constant [28 x i8] c"\0A\\ No newline at end of file", align 1
@190 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/patience.rs\00", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\B7\00\00\00&\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\B8\00\00\00'\00\00\00" }>, align 8
@193 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\B9\00\00\00\1C\00\00\00" }>, align 8
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\B9\00\00\00:\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\CF\00\00\00'\00\00\00" }>, align 8
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\D1\00\00\00'\00\00\00" }>, align 8
@197 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\C8\00\00\00'\00\00\00" }>, align 8
@199 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\D5\00\00\00 \00\00\00" }>, align 8
@200 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"m\00\00\00\00\00\00\00\D6\00\00\00 \00\00\00" }>, align 8
@201 = private unnamed_addr constant [19 x i8] c"slice out of bounds", align 1
@202 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@203 = private unnamed_addr constant [5 x i8] c"\C0\01,\C0\00", align 1
@204 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00x\00\00\00>\00\00\00" }>, align 8
@205 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00x\00\00\00G\00\00\00" }>, align 8
@206 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @162, [16 x i8] c"p\00\00\00\00\00\00\00y\00\00\00\1A\00\00\00" }>, align 8
@207 = private unnamed_addr constant [38 x i8] c"diff operation old range out of bounds", align 1
@208 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/text/mod.rs\00", align 1
@209 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c"b\00\00\00\00\00\00\00\8A\00\00\00\1A\00\00\00" }>, align 8
@210 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c"b\00\00\00\00\00\00\00\9E\00\00\00\1A\00\00\00" }>, align 8
@211 = private unnamed_addr constant [38 x i8] c"diff operation new range out of bounds", align 1
@212 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c"b\00\00\00\00\00\00\00\B1\00\00\00\1A\00\00\00" }>, align 8
@213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c"b\00\00\00\00\00\00\00\D2\00\00\00\1A\00\00\00" }>, align 8
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c"b\00\00\00\00\00\00\00\C4\00\00\00\1A\00\00\00" }>, align 8
@215 = private unnamed_addr constant [15 x i8] c"\04@@ -\C0\02 +\C0\03 @@\00", align 1
@216 = private unnamed_addr constant [60 x i8] c"RegionalState::Unknown should not occur on forward iteration", align 1
@217 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @216, [8 x i8] c"<\00\00\00\00\00\00\00" }>, align 8
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\95\01\00\00\15\00\00\00" }>, align 8
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\B6\01\00\00$\00\00\00" }>, align 8
@220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\B6\01\00\00;\00\00\00" }>, align 8
@221 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\BE\01\00\00\22\00\00\00" }>, align 8
@222 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @177, [16 x i8] c"l\00\00\00\00\00\00\00\BF\01\00\00#\00\00\00" }>, align 8
@223 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@224 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@225 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@226 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\B0\00\00\00%\00\00\00" }>, align 8
@227 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\AC\00\00\00%\00\00\00" }>, align 8
@228 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\B4\00\00\00!\00\00\00" }>, align 8
@229 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\BA\00\00\00\1D\00\00\00" }>, align 8
@230 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\E4\00\00\00\1A\00\00\00" }>, align 8
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\CF\00\00\00\1A\00\00\00" }>, align 8
@232 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @154, [16 x i8] c"j\00\00\00\00\00\00\00\0B\01\00\00\0E\00\00\00" }>, align 8
@233 = private unnamed_addr constant [9 x i8] c"\04--- \C0\01\0A\00", align 1
@234 = private unnamed_addr constant [9 x i8] c"\04+++ \C0\01\0A\00", align 1
@235 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCsdftwklc2oBO_7similar }>, align 8
@236 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@237 = private unnamed_addr constant [76 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/string.rs\00", align 1
@238 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @237, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@239 = private unnamed_addr constant [5 x i8] c"Error", align 1
@240 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCsdftwklc2oBO_7similar }>, align 8
@241 = private unnamed_addr constant [10 x i8] c"PreContext", align 1
@242 = private unnamed_addr constant [9 x i8] c"PrevChunk", align 1
@243 = private unnamed_addr constant [9 x i8] c"NextChunk", align 1
@244 = private unnamed_addr constant [13 x i8] c"InvalidOffset", align 1
@switch.table._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_ = private unnamed_addr constant [4 x i8] c"\10\18\10\18", align 8
@switch.table._RNvXs_NtCsdftwklc2oBO_7similar5typesNtB4_9ChangeTagNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c" -+", align 4

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsdftwklc2oBO_7similar5typesNtB6_6DiffOp13apply_to_hookINtNtNtB8_10algorithms7replace7ReplaceNtNtB16_7capture7CaptureEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  switch i64 %i.a, label %default.unreachable41 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.h
    i64 3, label %bb.k
  ]

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE13flush_del_insB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !60
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !60
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !60
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !60
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %i.c
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 %i.e
  %i.j = select i1 %i.i, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.g
  store i64 1, ptr %i.h, align 8, !alias.scope !60
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !60
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !60
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !60
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 8, !alias.scope !63
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !63
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !63
  store i64 0, ptr %i.k, align 8, !alias.scope !63
  %i.m = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.m, label %bb.d, label %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !65, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !range !6, !alias.scope !65, !noundef !5
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #34, !noalias !66
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !65, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.p ; 3 uses
  store i64 0, ptr %i.u, align 8, !noalias !65
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x i64> %i.l, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !65
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !noalias !65
  %i.v = add i64 %i.p, 1
  store i64 %i.v, ptr %i.o, align 8, !alias.scope !65
  br label %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i

_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i, %bb.c
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !61
  %.sroa.6.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i
  %.sroa.6.0.copyload.i3 = load i64, ptr %.sroa.6.0..sroa_idx.i1, align 8, !alias.scope !61
  %i.x = add i64 %.sroa.6.0.copyload.i3, %i.e
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6deleteB9_.exit

bb.g:                                             ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i
  %.sroa.7.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !61
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx.i2, align 8, !alias.scope !61
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6deleteB9_.exit

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6deleteB9_.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %i.x, %bb.f ], [ %i.e, %bb.g ]
  store i64 1, ptr %1, align 8, !alias.scope !61
  store i64 %.sink.i, ptr %.sroa.6.0..sroa_idx.i1, align 8, !alias.scope !61
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i4 = load i64, ptr %i.y, align 8, !alias.scope !69
  %.sroa.5.0..sroa_idx.i.i5 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i5, align 8, !alias.scope !69
  %.sroa.7.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload.i.i10 = load i64, ptr %.sroa.7.0..sroa_idx.i.i9, align 8, !alias.scope !69
  store i64 0, ptr %i.y, align 8, !alias.scope !69
  %i.aa = trunc nuw i64 %.sroa.0.0.copyload.i.i4 to i1
  br i1 %i.aa, label %bb.i, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6insertB9_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !71, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %i.ab, align 8, !range !6, !alias.scope !71, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i22

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #34, !noalias !72
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i22

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i22: ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !71, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ad ; 3 uses
  store i64 0, ptr %i.ai, align 8, !noalias !71
  %.sroa.4.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store <2 x i64> %i.z, ptr %.sroa.4.0..sroa_idx.i.i23, align 8, !noalias !71
  %.sroa.6.0..sroa_idx5.i.i25 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 %.sroa.7.0.copyload.i.i10, ptr %.sroa.6.0..sroa_idx5.i.i25, align 8, !noalias !71
  %i.aj = add i64 %i.ad, 1
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !71
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6insertB9_.exit

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6insertB9_.exit: ; preds = %bb.h, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i22
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i12 = load i64, ptr %i.ak, align 8, !alias.scope !67
  %.sroa.52.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.52.0.copyload.i14 = load i64, ptr %.sroa.52.0..sroa_idx.i13, align 8, !alias.scope !67
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.6.0.copyload.i16 = load i64, ptr %.sroa.6.0..sroa_idx.i15, align 8, !alias.scope !67
  %.sroa.7.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.7.0.copyload.i18 = load i64, ptr %.sroa.7.0..sroa_idx.i17, align 8, !alias.scope !67
  %i.al = trunc nuw i64 %.sroa.01.0.copyload.i12 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i19 = select i1 %i.al, i64 %.sroa.52.0.copyload.i14, i64 %i.c
  %.sroa.5.sroa.5.0.i20 = select i1 %i.al, i64 %.sroa.6.0.copyload.i16, i64 %i.e
  %i.am = select i1 %i.al, i64 %.sroa.7.0.copyload.i18, i64 0
  %.sroa.5.sroa.6.0.i21 = add i64 %i.am, %i.g
  store i64 1, ptr %i.ak, align 8, !alias.scope !67
  store i64 %.sroa.5.sroa.0.0.i19, ptr %.sroa.52.0..sroa_idx.i13, align 8, !alias.scope !67
  store i64 %.sroa.5.sroa.5.0.i20, ptr %.sroa.6.0..sroa_idx.i15, align 8, !alias.scope !67
  store i64 %.sroa.5.sroa.6.0.i21, ptr %.sroa.7.0..sroa_idx.i17, align 8, !alias.scope !67
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load i64, ptr %2, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.an, align 8, !alias.scope !75
  %.sroa.5.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i27, align 8, !alias.scope !75
  %.sroa.7.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload.i.i32 = load i64, ptr %.sroa.7.0..sroa_idx.i.i31, align 8, !alias.scope !75
  store i64 0, ptr %i.an, align 8, !alias.scope !75
  %i.ap = trunc nuw i64 %.sroa.0.0.copyload.i.i26 to i1
  br i1 %i.ap, label %bb.l, label %._RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit_crit_edge.i

._RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit_crit_edge.i: ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !76
  br label %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i33

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !78, !noundef !5 ; 3 uses
  %i.at = load i64, ptr %i.aq, align 8, !range !6, !alias.scope !78, !noundef !5
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i37

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #34, !noalias !79
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i37

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i37: ; preds = %bb.m, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !78, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.as ; 3 uses
  store i64 0, ptr %i.ax, align 8, !noalias !78
  %.sroa.4.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <2 x i64> %i.ao, ptr %.sroa.4.0..sroa_idx.i.i38, align 8, !noalias !78
  %.sroa.6.0..sroa_idx5.i.i40 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %.sroa.7.0.copyload.i.i32, ptr %.sroa.6.0..sroa_idx5.i.i40, align 8, !noalias !78
  %i.ay = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.ar, align 8, !alias.scope !78
  br label %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i33

_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i33: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i37, %._RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit_crit_edge.i
  %i.az = phi i64 [ %.pre.i, %._RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit_crit_edge.i ], [ %i.ay, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i37 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.bb = load i64, ptr %i.ba, align 8, !range !6, !alias.scope !76, !noundef !5
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceB9_.exit

bb.n:                                             ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i33
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #34, !noalias !81
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceB9_.exit

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceB9_.exit: ; preds = %_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE8flush_eqB6_.exit.i33, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !76, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.az ; 5 uses
  store i64 3, ptr %i.bg, align 8, !noalias !76
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i34, align 8, !noalias !76
  %.sroa.6.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx.i35, align 8, !noalias !76
  %.sroa.7.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 %3, ptr %.sroa.7.0..sroa_idx.i36, align 8, !noalias !76
  %i.bh = add i64 %i.az, 1
  store i64 %i.bh, ptr %i.bd, align 8, !alias.scope !76
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook7replaceB9_.exit, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6insertB9_.exit, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceNtNtB7_7capture7CaptureENtNtB7_4hook8DiffHook6deleteB9_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 19 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [72 x i8], align 8                ; 14 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 18 uses
  %i.s = alloca [208 x i8], align 8               ; 30 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [160 x i8], align 8               ; 27 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [48 x i8], align 8               ; 20 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [64 x i8], align 8               ; 13 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 19 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [72 x i8], align 8               ; 13 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [72 x i8], align 8               ; 14 uses
  %i.am = alloca [24 x i8], align 8               ; 11 uses
  %i.an = alloca [32 x i8], align 8               ; 10 uses
  %i.ao = alloca [32 x i8], align 8               ; 9 uses
  %i.ap = alloca [32 x i8], align 8               ; 9 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 18 uses
  %i.at = alloca [208 x i8], align 8              ; 34 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [160 x i8], align 8              ; 28 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [64 x i8], align 8               ; 31 uses
  %i.az = alloca [24 x i8], align 8               ; 3 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.4.0.copyload = load i32, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  switch i64 %.sroa.04.0.copyload, label %bb.b [
    i64 2, label %bb.e
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !916
  %i.ba = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.bb = extractvalue { i64, i32 } %i.ba, 0
  %i.bc = extractvalue { i64, i32 } %i.ba, 1
  store i64 %i.bb, ptr %i.ax, align 8, !noalias !916
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.bc, ptr %i.bd, align 8, !noalias !916
  %i.be = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ax, i64 noundef %.sroa.5.sroa.0.0.copyload, i32 noundef range(i32 0, 1000000000) %.sroa.5.sroa.4.0.copyload)
          to label %.noexc29 unwind label %bb.d

.noexc29:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !916
  br label %_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit

bb.c:                                             ; preds = %bb.a
  %i.bf = insertvalue { i64, i32 } poison, i64 %.sroa.5.sroa.0.0.copyload, 0
  %i.bg = insertvalue { i64, i32 } %i.bf, i32 %.sroa.5.sroa.4.0.copyload, 1
  br label %_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit

.body:                                            ; preds = %.body391, %.body.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdftwklc2oBO_7similar.exit115.i, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i62, %.body391 ], [ %eh.lpad-body.i, %.body.i ], [ %i.bh, %bb.d ], [ %lpad.loopexit.split-lp375, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsdftwklc2oBO_7similar.exit115.i ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar4text12TextDiffSideeEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #35
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar4text12TextDiffSideeEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #35
  resume { ptr, i32 } %.pn

bb.d:                                             ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i.i, %.noexc, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit: ; preds = %bb.c, %.noexc29
  %.merged.i.i = phi { i64, i32 } [ %i.be, %.noexc29 ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bi = extractvalue { i64, i32 } %.merged.i.i, 0
  %i.bj = extractvalue { i64, i32 } %.merged.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit
  %.sroa.4.0 = phi i32 [ %i.bj, %_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit ], [ -1, %bb.a ] ; 40 uses
  %.sroa.01.0 = phi i64 [ %i.bi, %_RNCINvMs3_NtCsdftwklc2oBO_7similar4textNtB8_14TextDiffConfig4diffeE0Ba_.exit ], [ undef, %bb.a ] ; 46 uses
  %.val23 = load i64, ptr %2, align 8, !range !7, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %.val24 = load i64, ptr %i.bk, align 8          ; 23 uses
  %i.bl = trunc nuw i64 %.val23 to i1
  %..i = select i1 %i.bl, i64 384307168202282326, i64 576460752303423488
  %i.bm = icmp ult i64 %.val24, %..i
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i64 %.val24, 100
  %.val.pre = load i64, ptr %3, align 8, !range !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.val14.pre = load i64, ptr %.phi.trans.insert, align 8 ; 22 uses
  %.pre = trunc nuw i64 %.val.pre to i1
  %.pre797 = select i1 %.pre, i64 384307168202282326, i64 576460752303423488
  %i.bo = icmp ult i64 %.val14.pre, %.pre797
  br i1 %i.bn, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ugt i64 %.val14.pre, 100
  br i1 %i.bp, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.br = load i8, ptr %i.bq, align 1, !range !917, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !920
  store i64 0, ptr %i.aw, align 8, !noalias !920
  %.sroa.05.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 0, ptr %.sroa.05.sroa.5.0..sroa_idx.i, align 8, !noalias !920
  %.sroa.05.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 0, ptr %.sroa.05.sroa.7.0..sroa_idx.i, align 8, !noalias !920
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !920
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !920
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 39 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 18 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !920
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !920
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 33 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !920
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  store ptr %2, ptr %i.bt, align 8, !noalias !920
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  store ptr %3, ptr %i.bu, align 8, !noalias !920
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  switch i8 %i.br, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.j
    i8 2, label %bb.co
    i8 3, label %bb.fp
    i8 4, label %bb.hh
  ]

default.unreachable:                              ; preds = %bb.ka, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bv = invoke fastcc noundef zeroext i1 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre, i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

.noexc.i:                                         ; preds = %bb.h
  br i1 %i.bv, label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre, i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

bb.j:                                             ; preds = %bb.g
  %i.bw = invoke fastcc noundef zeroext i1 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, i64 noundef 0, i64 noundef range(i64 0, 576460752303423488) %.val14.pre, i64 %.sroa.01.0, i32 noundef range(i32 -1, 1000000000) %.sroa.4.0)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !924

.noexc18.i:                                       ; preds = %bb.j
  br i1 %i.bw, label %_RINvNtCsdftwklc2oBO_7similar10algorithms13diff_deadlineINtNtB4_4text12TextDiffSideeEBR_INtNtB2_7compact7CompactBR_BR_INtNtB2_7replace7ReplaceNtNtB2_7capture7CaptureEEEB4_.exit.i, label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEEEEB1f_.exit45.i.i.i: ; preds = %bb.cl, %.body.i.i.i, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.cl ] ; 2 uses
  %.val20.i.i.i = load i64, ptr %i.av, align 8, !noalias !925 ; 2 uses
  %i.bx = icmp eq i64 %.val20.i.i.i, 0
  br i1 %i.bx, label %.body.i, label %bb.k
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.et ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit35.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.et ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %i.ez = getelementptr i8, ptr %i.ex, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit35.i.i.i

bb.al:                                            ; preds = %bb.ai, %bb.ah
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #37, !noalias !9238
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit35.i.i.i: ; preds = %bb.ak, %bb.aj
  %.sroa.5.1.i.in.i31.i.i.i = phi ptr [ %i.ez, %bb.ak ], [ %i.ew, %bb.aj ]
  %.sroa.0.1.i.in.i32.i.i.i = phi ptr [ %i.ey, %bb.ak ], [ %i.ev, %bb.aj ]
  %.sroa.0.1.i.i33.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i32.i.i.i, align 8, !noalias !9239, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i34.i.i.i = load i64, ptr %.sroa.5.1.i.in.i31.i.i.i, align 8, !noalias !9239, !noundef !5 ; 2 uses
  %i.fa = add i64 %i.ct, -1                       ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.ef               ; 2 uses
  br i1 %i.ed, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit35.i.i.i
  br i1 %i.fb, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit35.i.i.i
  br i1 %i.fb, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fa ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit40.i.i.i

bb.ap:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.fa ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %i.fg = getelementptr i8, ptr %i.fe, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit40.i.i.i

bb.aq:                                            ; preds = %bb.an, %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #37, !noalias !9240
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit40.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.5.1.i.in.i36.i.i.i = phi ptr [ %i.fg, %bb.ap ], [ %i.fd, %bb.ao ]
  %.sroa.0.1.i.in.i37.i.i.i = phi ptr [ %i.ff, %bb.ap ], [ %i.fc, %bb.ao ]
  %.sroa.5.1.i.i39.i.i.i = load i64, ptr %.sroa.5.1.i.in.i36.i.i.i, align 8, !noalias !9241, !noundef !5
  %i.fh = icmp eq i64 %.sroa.5.1.i.i34.i.i.i, %.sroa.5.1.i.i39.i.i.i
  br i1 %i.fh, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.thread.i.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit40.i.i.i
  %.sroa.0.1.i.i38.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i37.i.i.i, align 8, !noalias !9241, !nonnull !5, !noundef !5
  %bcmp.i42.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i33.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i38.i.i.i, i64 %.sroa.5.1.i.i34.i.i.i), !alias.scope !9242, !noalias !9226
  %i.fi = icmp eq i32 %bcmp.i42.i.i.i, 0
  br i1 %i.fi, label %bb.au, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.thread.i.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.thread.i.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit40.i.i.i
  %i.fj = call fastcc noundef i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci, i64 noundef %i.ch, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp, i64 noundef %i.co, i64 noundef %i.cx, i64 %i.cy, i32 noundef range(i32 -1, 1000000000) %i.cz), !noalias !9243
  %cond.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %cond.i.i.i, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9244)
  %i.fk = load ptr, ptr %i.o, align 8, !alias.scope !9245, !noalias !9246, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9247)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 136 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !9247, !noalias !9248, !noundef !5 ; 3 uses
  %i.fo = load i64, ptr %i.fl, align 8, !range !6, !alias.scope !9247, !noalias !9248, !noundef !5
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.as, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fl) #34, !noalias !9249
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !9247, !noalias !9248, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.fn ; 4 uses
  store i64 1, ptr %i.fs, align 8, !noalias !9250
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.ch, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9250
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %.sroa.04.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !9250
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !9250
  %i.ft = add i64 %i.fn, 1
  store i64 %i.ft, ptr %i.fm, align 8, !alias.scope !9247, !noalias !9248
  call void @llvm.experimental.noalias.scope.decl(metadata !9251)
  %i.fu = load ptr, ptr %i.o, align 8, !alias.scope !9252, !noalias !9253, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9254)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 136 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !9254, !noalias !9255, !noundef !5 ; 3 uses
  %i.fy = load i64, ptr %i.fv, align 8, !range !6, !alias.scope !9254, !noalias !9255, !noundef !5
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.at, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i.i

bb.at:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv) #34, !noalias !9256
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i.i: ; preds = %bb.at, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !9254, !noalias !9255, !nonnull !5, !noundef !5
  %i.gc = getelementptr inbounds nuw [40 x i8], ptr %i.gb, i64 %i.fx ; 4 uses
  store i64 2, ptr %i.gc, align 8, !noalias !9257
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %i.ch, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !9257
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %i.co, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !9257
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i64 %.sroa.011.0.i.i.i, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !9257
  %i.gd = add i64 %i.fx, 1
  store i64 %i.gd, ptr %i.fw, align 8, !alias.scope !9254, !noalias !9255
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i

bb.au:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.thread.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit43.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i, %bb.w, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i.i.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i.i.i, %.split.i.i.i
  call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci, i64 noundef %i.ch, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp, i64 noundef %i.co, i64 noundef %i.cx, i64 %i.cy, i32 noundef range(i32 -1, 1000000000) %i.cz)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i

bb.av:                                            ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #37
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i: ; preds = %bb.ay, %bb.au, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i.i
  %i.ge = load i64, ptr %i.j, align 8, !alias.scope !9210, !noundef !5 ; 3 uses
  %i.gf = icmp ult i64 %i.v, %i.ge
  br i1 %i.gf, label %bb.ba, label %bb.bb

bb.aw:                                            ; preds = %bb.r
  %i.gg = load i64, ptr %i.k, align 8, !alias.scope !9210, !noundef !5 ; 2 uses
  %i.gh = icmp ult i64 %i.w, %i.gg
  br i1 %i.gh, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.r
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #37
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gi = load i64, ptr %i.h, align 8, !alias.scope !9210, !noundef !5
  %i.gj = load ptr, ptr %i.m, align 8, !alias.scope !9210, !nonnull !5, !align !9, !noundef !5
  %i.gk = load ptr, ptr %i.i, align 8, !alias.scope !9210, !nonnull !5, !align !9, !noundef !5
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.v
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !5
  %i.go = load ptr, ptr %i.l, align 8, !alias.scope !9210, !nonnull !5, !align !9, !noundef !5
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.w
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !5
  %i.gs = load i64, ptr %i.d, align 8, !alias.scope !9210
  %i.gt = load i32, ptr %i.q, align 8, !range !16, !alias.scope !9210, !noundef !5
  call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci, i64 noundef %i.ch, i64 noundef %i.gn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gj, i64 noundef %i.gi, i64 noundef %i.gr, i64 %i.gs, i32 noundef %i.gt)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #37
  unreachable

bb.ba:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i
  %i.gu = load ptr, ptr %i.i, align 8, !alias.scope !9210, !nonnull !5, !align !9, !noundef !5
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !5 ; 2 uses
  store i64 %i.gx, ptr %i.g, align 8, !alias.scope !9210
  %i.gy = load i64, ptr %i.k, align 8, !alias.scope !9210, !noundef !5 ; 2 uses
  %i.gz = icmp ult i64 %i.w, %i.gy
  br i1 %i.gz, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.ge, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #37
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ha = load ptr, ptr %i.l, align 8, !alias.scope !9210, !nonnull !5, !align !9, !noundef !5
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !5 ; 2 uses
  store i64 %i.hd, ptr %i.h, align 8, !alias.scope !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9210
  %exitcond.not.i = icmp eq i64 %i.u, %..i.i.i.i
  br i1 %exitcond.not.i, label %_RNvXNtNtCsdftwklc2oBO_7similar10algorithms8patienceINtB2_8PatienceINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEENtNtB4_4hook8DiffHook5equalB6_.exit, label %bb.c

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.gy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #37
  unreachable

_RNvXNtNtCsdftwklc2oBO_7similar10algorithms8patienceINtB2_8PatienceINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEENtNtB4_4hook8DiffHook5equalB6_.exit: ; preds = %bb.bc, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceNtNtB4_7capture7CaptureE13flush_del_insB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %1 = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <2 x i64>, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %i.d = trunc nuw i64 %.sroa.01.0.copyload to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  br i1 %i.d, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x i64>, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.78.0.copyload = load i64, ptr %.sroa.78.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %i.h = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.h, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9267)
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !9267, !noundef !5 ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !range !6, !alias.scope !9267, !noundef !5
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #34, !noalias !9268
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit: ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9267, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.i ; 4 uses
  store i64 3, ptr %i.n, align 8, !noalias !9267
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.429.0..sroa_idx, align 8, !noalias !9267
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.530.0..sroa_idx, align 8, !noalias !9267
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store <2 x i64> %i.c, ptr %.sroa.631.0..sroa_idx, align 8, !noalias !9267
  %i.o = add i64 %i.i, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !9267
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9269)
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !9269, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.e, align 8, !range !6, !alias.scope !9269, !noundef !5
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit14

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #34, !noalias !9270
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit14

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit14: ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9269, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.p ; 3 uses
  store i64 1, ptr %i.u, align 8, !noalias !9269
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9269
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %1, ptr %.sroa.5.0..sroa_idx17, align 8, !noalias !9269
  %i.v = add i64 %i.p, 1
  store i64 %i.v, ptr %i.f, align 8, !alias.scope !9269
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit14, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit15
  ret void

bb.i:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9271)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !9271, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !6, !alias.scope !9271, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit15

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #34, !noalias !9272
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit15

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit15: ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !9271, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.y ; 3 uses
  store i64 2, ptr %i.ad, align 8, !noalias !9271
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <2 x i64> %i.g, ptr %.sroa.424.0..sroa_idx, align 8, !noalias !9271
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.sroa.78.0.copyload, ptr %.sroa.626.0..sroa_idx, align 8, !noalias !9271
  %i.ae = add i64 %i.y, 1
  store i64 %i.ae, ptr %i.x, align 8, !alias.scope !9271
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp10grow_right(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !9275, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9275, !noundef !5
  %i.e = add i64 %i.d, %1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !9275
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !alias.scope !9275, !noundef !5
  %.sink15.i = add i64 %i.f, %1
  store i64 %.sink15.i, ptr %i.b, align 8, !alias.scope !9275
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !9275, !noundef !5
  %i.i = add i64 %i.h, %1
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !9275
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !9275, !noundef !5
  %i.k = add i64 %i.j, %1
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !9275
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !9275, !noundef !5
  %i.n = add i64 %i.m, %1
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !9275
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp10shift_left(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !9278, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9278, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 %i.c, %1
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !9278
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !9278, !noundef !5
  %i.g = sub i64 %i.f, %1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !9278
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = sub i64 %i.c, %1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !9278
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !9278, !noundef !5
  %i.k = sub i64 %i.j, %1
  store i64 %i.k, ptr %i.h, align 8, !alias.scope !9278
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.d:                                             ; preds = %bb.a
  %i.l = sub i64 %i.c, %1
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !9278
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !9278, !noundef !5
  %i.n = sub i64 %i.m, %1
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !9278
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = sub i64 %i.c, %1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !9278
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !9278, !noundef !5
  %i.r = sub i64 %i.q, %1
  store i64 %i.r, ptr %i.o, align 8, !alias.scope !9278
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp11shift_right(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !9281, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9281, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, %1
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !9281
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !9281, !noundef !5
  %i.g = add i64 %i.f, %1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !9281
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = add i64 %i.c, %1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !9281
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !9281, !noundef !5
  %i.k = add i64 %i.j, %1
  store i64 %i.k, ptr %i.h, align 8, !alias.scope !9281
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.d:                                             ; preds = %bb.a
  %i.l = add i64 %i.c, %1
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !9281
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !9281, !noundef !5
  %i.n = add i64 %i.m, %1
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !9281
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = add i64 %i.c, %1
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !9281
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !9281, !noundef !5
  %i.r = add i64 %i.q, %1
  store i64 %i.r, ptr %i.o, align 8, !alias.scope !9281
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp6adjust.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp11shrink_left(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !9284, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
end_hunk_1
