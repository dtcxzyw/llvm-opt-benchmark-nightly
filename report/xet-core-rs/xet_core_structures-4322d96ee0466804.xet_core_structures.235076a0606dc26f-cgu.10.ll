Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.10?download=true
inline.NumInlined: 445
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [21 x i8] c"dest is out of bounds", align 1
@1 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/base64-0.22.1/src/encode.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"`\00\00\00\00\00\00\00\8A\00\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"`\00\00\00\00\00\00\00P\00\00\003\00\00\00" }>, align 8
@4 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lz4_flex-0.13.0/src/fastcpy.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"c\00\00\00\00\00\00\00_\00\00\00\12\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"c\00\00\00\00\00\00\00`\00\00\00\1D\00\00\00" }>, align 8
@7 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lz4_flex-0.13.0/src/block/decompress_safe.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"q\00\00\00\00\00\00\00\C8\00\00\00,\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"q\00\00\00\00\00\00\00\8A\00\00\00)\00\00\00" }>, align 8
@10 = private unnamed_addr constant [42 x i8] c"assertion failed: input_pos <= input.len()", align 1
@11 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lz4_flex-0.13.0/src/block/compress.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00F\01\00\00\05\00\00\00" }>, align 8
@13 = private unnamed_addr constant [37 x i8] c"assertion failed: ext_dict.is_empty()", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00P\01\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant [54 x i8] c"assertion failed: ext_dict.len() <= super::WINDOW_SIZE", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00H\01\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant [55 x i8] c"assertion failed: ext_dict.len() <= input_stream_offset", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00I\01\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant [168 x i8] c"assertion failed: input_stream_offset.checked_add(input.len()).and_then(|i|\0A            i.checked_add(ext_dict.len())).is_some_and(|i|\0A        i <= isize::MAX as usize)", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00K\01\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00\0C\02\00\00)\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00\F6\00\00\00$\00\00\00" }>, align 8
@23 = private unnamed_addr constant [74 x i8] c"internal error: entered unreachable code: only called from specializations", align 1
@24 = private unnamed_addr constant [85 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/io/copy/generic.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"T\00\00\00\00\00\00\00F\00\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsv_NtCskKLDkoKarTP_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt }>, align 8
@28 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@29 = private unnamed_addr constant [26 x i8] c"half-life must be positive", align 1
@30 = private unnamed_addr constant [57 x i8] c"xet_core_structures/src/utils/exp_weighted_moving_avg.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"8\00\00\00\00\00\00\00#\00\00\00\09\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"8\00\00\00\00\00\00\001\00\00\00\09\00\00\00" }>, align 8
@33 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lz4_flex-0.13.0/src/frame/decompress.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\1C\01\00\001\00\00\00" }>, align 8
@35 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lz4_flex-0.13.0/src/sink.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00m\00\00\00\1C\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00!\01\00\00\22\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\1D\01\00\00)\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00)\01\00\00\22\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\15\01\00\009\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00R\01\00\00!\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\02\01\00\00\22\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\87\00\00\00(\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\81\00\00\00,\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00s\00\00\002\00\00\00" }>, align 8
@46 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/twox-hash-2.1.2/src/xxhash32.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"d\00\00\00\00\00\00\00v\00\00\00\1C\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"d\00\00\00\00\00\00\00[\00\00\00\0D\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"d\00\00\00\00\00\00\00T\00\00\00\1F\00\00\00" }>, align 8
@50 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0/src/lib.rs\00", align 1
@51 = private unnamed_addr constant [16 x i8] c"expand 32-byte k", align 4
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"_\00\00\00\00\00\00\00\E9\00\00\00\13\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"_\00\00\00\00\00\00\00\F2\00\00\00\0D\00\00\00" }>, align 8
@_RNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"_\00\00\00\00\00\00\00\F4\00\00\00:\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"_\00\00\00\00\00\00\00\EF\00\00\00:\00\00\00" }>, align 8
@56 = private unnamed_addr constant [48 x i8] c"assertion failed: matches!(iv.len(), 4 | 8 | 12)", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @50, [16 x i8] c"_\00\00\00\00\00\00\00\E0\00\00\00\09\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"d\00\00\00\00\00\00\00}\00\00\00\1B\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"c\00\00\00\00\00\00\00L\00\00\00\09\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00<\00\00\00'\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00\07\01\00\005\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00\07\01\00\00H\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00u\00\00\00B\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00v\00\00\00B\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00n\00\00\00\1D\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00m\00\00\00\1B\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"j\00\00\00\00\00\00\00*\00\00\00\1D\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\BF\01\00\00\0B\00\00\00" }>, align 8
@69 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\9F\01\00\00\15\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\A1\00\00\00\14\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\B8\00\00\00\15\00\00\00" }>, align 8
@73 = private unnamed_addr constant [40 x i8] c"assertion failed: copy_len <= data.len()", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\AD\00\00\00\09\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\AE\00\00\00*\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\C2\00\00\00\1E\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\C2\00\00\00\0D\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"`\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@80 = private unnamed_addr constant [54 x i8] c"assertion failed: amt <= self.dst_end - self.dst_start", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"l\00\00\00\00\00\00\00\A3\01\00\00\09\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures }>, align 8
@83 = private unnamed_addr constant [17 x i8] c"TryFromSliceError", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3g1xDapxWLs_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(323) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NtNtCs3g1xDapxWLs_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3) ; 6 uses
  %.val = load i8, ptr %4, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %.val to i1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.a, %3
  br i1 %i.c, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i64 %3, %i.a                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 3 uses
  %i.f = sub nsw i64 0, %i.a
  %i.g = and i64 %i.f, 3                          ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %exitcond.not = icmp eq i64 %3, %i.a
  br i1 %exitcond.not, label %bb.h, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.c, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  store i8 61, ptr %i.e, align 1
  %exitcond14.not = icmp eq i64 %i.g, 1
  br i1 %exitcond14.not, label %.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %exitcond.not.1 = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 61, ptr %i.h, align 1
  %exitcond14.not.1 = icmp eq i64 %i.g, 2
  br i1 %exitcond14.not.1, label %.thread, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %exitcond.not.2 = icmp eq i64 %i.d, 2
  br i1 %exitcond.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 61, ptr %i.i, align 1
  br label %.thread

bb.h:                                             ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit
    i64 1, label %bb.c
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !28
  store i8 3, ptr %i.a, align 8, !alias.scope !28
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %0, align 4, !noalias !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18 = load <2 x i64>, ptr %i.a, align 4, !noalias !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.b, align 4, !noalias !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !44
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %2 = shufflevector <2 x i64> %.sroa.0.0.copyload.i19, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.cast = bitcast <4 x i64> %2 to <8 x i32>      ; 4 uses
  %3 = shufflevector <2 x i64> %.sroa.0.0.copyload.i18, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = bitcast <4 x i64> %3 to <8 x i32>          ; 4 uses
  %5 = shufflevector <2 x i64> %.sroa.0.0.copyload.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = bitcast <4 x i64> %5 to <8 x i32>          ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %18, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %17, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %7 = bitcast <32 x i8> %i.ai to <4 x i64>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %8 = bitcast <32 x i8> %i.am to <4 x i64>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %10 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %11 = bitcast <8 x i32> %i.az to <4 x i64>
  %12 = xor <4 x i64> %9, %11
  %i.ba = bitcast <4 x i64> %12 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %13 = bitcast <8 x i32> %i.bc to <4 x i64>
  %14 = xor <4 x i64> %10, %13
  %i.bd = bitcast <4 x i64> %14 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %15 = bitcast <32 x i8> %i.bq to <4 x i64>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %16 = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %17 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %18 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.a

_RNvMNtNtCs1OzvMeFnvWA_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %19, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %4                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %6                 ; 2 uses
  %20 = bitcast <4 x i64> %17 to <8 x i32>
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %20, %i.cm                ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %4                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %6                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !45
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !46
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !45
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !46
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !45
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !46
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !45
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !46
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !45
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !46
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !45
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !46
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !45
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !46
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !45
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !46
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %21 = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <1 x i32> zeroinitializer
  store <1 x i64> %21, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.val168 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val157 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val157, i64 34)
  %.not174 = icmp eq i64 %2, 0
  br i1 %.not174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.ak

.lr.ph:                                           ; preds = %.split, %.backedge
  %.val156 = phi i64 [ %i.ej, %.backedge ], [ %.val157, %.split ] ; 13 uses
  %.val166 = phi i64 [ %.sink, %.backedge ], [ %.val168, %.split ] ; 10 uses
  %.sroa.0.0173 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %.split ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0173
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.0173, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp samesign ult i64 %.sroa.0.0173, %i.b
  %or.cond = and i1 %i.k, %i.j
  %i.l = icmp ult i64 %.val166, %i.d
  %or.cond391 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond391, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.m = lshr i8 %i.f, 4                          ; 3 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 6 uses
  %i.q = add nuw nsw i64 %.sroa.0.0173, 17        ; 2 uses
  %.not = icmp samesign ugt i64 %i.q, %2
  br i1 %.not, label %bb.al, label %bb.am, !prof !9

bb.d:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.m to i64
  %i.s = icmp eq i8 %i.m, 15
  br i1 %i.s, label %.preheader175.preheader, label %bb.g

.preheader175.preheader:                          ; preds = %bb.d
  %exitcond.not.i112 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i112, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph115

bb.e:                                             ; preds = %bb.b, %bb.m
  %.sroa.0.1 = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.m ] ; 3 uses
  %.not145 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not145, label %bb.n, label %bb.o

.preheader175:                                    ; preds = %.lr.ph115
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader175.preheader, %.preheader175
  %.sroa.0.0.i114 = phi i64 [ %i.x, %.preheader175 ], [ 0, %.preheader175.preheader ]
  %.sroa.0.2113 = phi i64 [ %i.v, %.preheader175 ], [ %i.g, %.preheader175.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2113
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !91, !noundef !6 ; 2 uses
  %i.v = add nuw i64 %.sroa.0.2113, 1             ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i114, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader175, label %bb.f

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader175.preheader, %.preheader175
  store i64 2, ptr %0, align 8
  br label %bb.ak

bb.f:                                             ; preds = %.lr.ph115
  %i.z = add i64 %i.x, 15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.4 = phi i64 [ %i.v, %bb.f ], [ %i.g, %bb.d ] ; 5 uses
  %.sroa.032.0 = phi i64 [ %i.z, %bb.f ], [ %i.r, %bb.d ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.4
  %i.ab = icmp ugt i64 %.sroa.032.0, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = sub i64 %.val156, %.val166
  %i.ad = icmp ugt i64 %.sroa.032.0, %i.ac
  br i1 %i.ad, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 1, ptr %0, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.sroa.032.0, %.sroa.0.4        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.4
  %.not144 = icmp ugt i64 %i.ae, %2
  %or.cond150 = or i1 %i.af, %.not144
  br i1 %or.cond150, label %bb.l, label %bb.m, !prof !9

bb.k:                                             ; preds = %bb.h
  %i.ag = add i64 %.val166, %.sroa.032.0
  store i64 0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val156, ptr %.sroa.555.0..sroa_idx, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.4, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.4
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0) #20
  br label %bb.e

bb.n:                                             ; preds = %bb.e
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i169 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i169, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !92 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.p, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.o:                                             ; preds = %bb.e
  %.val164 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val164, %.val168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.p:                                             ; preds = %bb.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.n ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.ak

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 12 uses
  %narrow147 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow147 to i64
  %i.ap = icmp eq i8 %narrow147, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.r

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i173116 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i173116, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph119

.preheader:                                       ; preds = %.lr.ph119
  %exitcond.not.i173 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i173, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i172118 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.6117 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.6117
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !93, !noundef !6 ; 2 uses
  %i.as = add nuw i64 %.sroa.0.6117, 1            ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i172118, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.q

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.ak

bb.q:                                             ; preds = %.lr.ph119
  %i.aw = add i64 %i.au, 19
  br label %bb.r

bb.r:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.q
  %.sroa.0.8 = phi i64 [ %i.as, %bb.q ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 9 uses
  %.sroa.066.0 = phi i64 [ %i.aw, %bb.q ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 15 uses
  %.val163 = load i64, ptr %i.a, align 8, !noundef !6 ; 24 uses
  %i.ax = add i64 %.val163, %.sroa.066.0          ; 15 uses
  %.val154 = load i64, ptr %i.c, align 8, !noundef !6 ; 22 uses
  %i.ay = icmp ugt i64 %i.ax, %.val154
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress16count_same_bytes:bb.a
  %i.at = load i64, ptr %i.t, align 8, !alias.scope !462, !noundef !6
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEBW_EINtB5_7ZipImplBW_BW_E4nextCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEBW_EINtB5_7ZipImplBW_BW_E4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hashers_1__INtB7_15U64DirectHasherpENtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1M_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCsfaKIfeYzQZw_7reqwest5errorNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtB6_7Display3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6HasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !480, !noundef !6 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.c, 16
  br i1 %i.e, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef 16, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !481
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 16, %i.c
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %..i.i ; 2 uses
  %i.i = sub nuw nsw i64 %2, %..i.i               ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.g, i64 noundef %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48), !noalias !482
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !480, !noundef !6
  %i.k = add i64 %i.j, %..i.i                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 16                     ; 2 uses
  %spec.store.select.i = select i1 %i.l, i64 0, i64 %i.k
  store i64 %spec.store.select.i, ptr %i.b, align 8, !alias.scope !480
  br i1 %i.l, label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit, label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread

_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit: ; preds = %bb.d
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8
  %.sroa.43.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.43.0.copyload = load i32, ptr %.sroa.43.0..sroa.0.0..sroa_idx, align 4
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 8
  %.sroa.64.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.64.0.copyload = load i32, ptr %.sroa.64.0..sroa.0.0..sroa_idx, align 4
  %i.m = load i32, ptr %0, align 8, !alias.scope !483, !noundef !6
  %i.n = mul i32 %.sroa.02.0.copyload, -2048144777
  %i.o = add i32 %i.m, %i.n                       ; 2 uses
  %i.p = tail call noundef i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 13)
  %i.q = mul i32 %i.p, -1640531535
  store i32 %i.q, ptr %0, align 8, !alias.scope !483
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !483, !noundef !6
  %i.t = mul i32 %.sroa.43.0.copyload, -2048144777
  %i.u = add i32 %i.s, %i.t                       ; 2 uses
  %i.v = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.u, i32 13)
  %i.w = mul i32 %i.v, -1640531535
  store i32 %i.w, ptr %i.r, align 4, !alias.scope !483
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !483, !noundef !6
  %i.z = mul i32 %.sroa.5.0.copyload, -2048144777
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = tail call noundef i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 13)
  %i.ac = mul i32 %i.ab, -1640531535
  store i32 %i.ac, ptr %i.x, align 8, !alias.scope !483
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !483, !noundef !6
  %i.af = mul i32 %.sroa.64.0.copyload, -2048144777
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = tail call noundef i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 13)
  %i.ai = mul i32 %i.ah, -1640531535
  store i32 %i.ai, ptr %i.ad, align 4, !alias.scope !483
  br label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread

_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread: ; preds = %bb.d, %bb.a, %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit
  %.sink.i10 = phi i64 [ %i.i, %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit ], [ %i.i, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %.sink4.i9 = phi ptr [ %i.h, %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit ], [ %i.h, %bb.d ], [ %1, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.aj = icmp samesign ugt i64 %.sink.i10, 15
  br i1 %i.aj, label %.lr.ph.i, label %_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many.exit

.lr.ph.i:                                         ; preds = %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread
  %.promoted.i = load i32, ptr %0, align 8, !alias.scope !484
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.promoted14.i = load i32, ptr %i.ak, align 4, !alias.scope !486
  %.promoted16.i = load i32, ptr %i.al, align 8, !alias.scope !486
  %.promoted18.i = load i32, ptr %i.am, align 4, !alias.scope !486
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  store i32 %i.aw, ptr %0, align 8, !alias.scope !486
  store i32 %i.ba, ptr %i.ak, align 4, !alias.scope !486
  store i32 %i.be, ptr %i.al, align 8, !alias.scope !486
  store i32 %i.bi, ptr %i.am, align 4, !alias.scope !486
  br label %_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.an = phi i32 [ %.promoted18.i, %.lr.ph.i ], [ %i.bi, %bb.e ]
  %i.ao = phi i32 [ %.promoted16.i, %.lr.ph.i ], [ %i.be, %bb.e ]
  %i.ap = phi i32 [ %.promoted14.i, %.lr.ph.i ], [ %i.ba, %bb.e ]
  %.sroa.0.012.i = phi ptr [ %.sink4.i9, %.lr.ph.i ], [ %i.ar, %bb.e ] ; 5 uses
  %.sroa.4.011.i = phi i64 [ %.sink.i10, %.lr.ph.i ], [ %i.as, %bb.e ]
  %i.aq = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.aw, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 16 ; 2 uses
  %i.as = add nsw i64 %.sroa.4.011.i, -16         ; 3 uses
  %.sroa.07.0.copyload.i = load i32, ptr %.sroa.0.012.i, align 1, !alias.scope !485
  %.sroa.48.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 4
  %.sroa.48.0.copyload.i = load i32, ptr %.sroa.48.0..sroa.0.0.sroa_idx.i, align 1, !alias.scope !485
  %.sroa.59.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 8
  %.sroa.59.0.copyload.i = load i32, ptr %.sroa.59.0..sroa.0.0.sroa_idx.i, align 1, !alias.scope !485
  %.sroa.610.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 12
  %.sroa.610.0.copyload.i = load i32, ptr %.sroa.610.0..sroa.0.0.sroa_idx.i, align 1, !alias.scope !485
  %i.at = mul i32 %.sroa.07.0.copyload.i, -2048144777
  %i.au = add i32 %i.at, %i.aq                    ; 2 uses
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 13)
  %i.aw = mul i32 %i.av, -1640531535              ; 2 uses
  %i.ax = mul i32 %.sroa.48.0.copyload.i, -2048144777
  %i.ay = add i32 %i.ax, %i.ap                    ; 2 uses
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 13)
  %i.ba = mul i32 %i.az, -1640531535              ; 2 uses
  %i.bb = mul i32 %.sroa.59.0.copyload.i, -2048144777
  %i.bc = add i32 %i.bb, %i.ao                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 13)
  %i.be = mul i32 %i.bd, -1640531535              ; 2 uses
  %i.bf = mul i32 %.sroa.610.0.copyload.i, -2048144777
  %i.bg = add i32 %i.bf, %i.an                    ; 2 uses
  %i.bh = tail call noundef i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 13)
  %i.bi = mul i32 %i.bh, -1640531535              ; 2 uses
  %i.bj = icmp ugt i64 %i.as, 15
  br i1 %i.bj, label %bb.e, label %._crit_edge.i

_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many.exit: ; preds = %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread, %._crit_edge.i
  %.sroa.4.0.lcssa.i = phi i64 [ %i.as, %._crit_edge.i ], [ %.sink.i10, %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread ] ; 4 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %i.ar, %._crit_edge.i ], [ %.sink4.i9, %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer6extend.exit.thread ]
  %i.bk = icmp eq i64 %.sroa.4.0.lcssa.i, 0
  br i1 %i.bk, label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer3set.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many.exit
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef range(i64 0, 16) %.sroa.4.0.lcssa.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 16) %.sroa.4.0.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47)
  store i64 %.sroa.4.0.lcssa.i, ptr %i.b, align 8, !alias.scope !487
  br label %_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer3set.exit

_RNvMs0_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Buffer3set.exit: ; preds = %_RNvMs1_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_12Accumulators10write_many.exit, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6
  %i.bn = add i64 %i.bm, %2
  store i64 %i.bn, ptr %i.bl, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #7 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1OzvMeFnvWA_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !491 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !491 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !491 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !491 ; 6 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0> ; 2 uses
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.89.0.i.i = phi <2 x i64> [ %i.h, %bb.b ], [ %19, %bb.c ]
  %.sroa.64.0.i.i = phi <2 x i64> [ %i.g, %bb.b ], [ %18, %bb.c ]
  %.sroa.39.0.i.i = phi <2 x i64> [ %i.f, %bb.b ], [ %17, %bb.c ]
  %.sroa.16.0.i.i = phi <2 x i64> [ %.sroa.015.0.copyload.i, %bb.b ], [ %16, %bb.c ]
  %.sroa.042.0102.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.o = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.q = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0102.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %i.j, %i.i                 ; 2 uses
  %2 = bitcast <2 x i64> %.sroa.16.0.i.i to <4 x i32>
  %i.w = xor <4 x i32> %i.v, %2                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %i.k                 ; 2 uses
  %i.z = xor <4 x i32> %i.y, %i.j                 ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.m, %i.l                ; 2 uses
  %3 = bitcast <2 x i64> %.sroa.39.0.i.i to <4 x i32>
  %i.ai = xor <4 x i32> %i.ah, %3                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.n               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.m               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.p, %i.o                ; 2 uses
  %4 = bitcast <2 x i64> %.sroa.64.0.i.i to <4 x i32>
  %i.au = xor <4 x i32> %i.at, %4                 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.q               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.p               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.s, %i.r                ; 2 uses
  %5 = bitcast <2 x i64> %.sroa.89.0.i.i to <4 x i32>
  %i.bg = xor <4 x i32> %i.bf, %5                 ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.s               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %6 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %7 = add <4 x i32> %i.ag, %i.bs                 ; 2 uses
  %8 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.by = xor <4 x i32> %7, %8                    ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %7                 ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %9 = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %10 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = xor <4 x i32> %i.cj, %10                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %11 = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %13 = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %6                 ; 2 uses
  %14 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.di = xor <4 x i32> %i.dh, %14                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %15 = bitcast <4 x i32> %i.dp to <2 x i64>
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.c

_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %20 = bitcast <2 x i64> %16 to <4 x i32>
  %21 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32>
  %i.ee = add <4 x i32> %20, %21
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %22 = bitcast <2 x i64> %17 to <4 x i32>
  %23 = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ei = add <4 x i32> %22, %23
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %24 = bitcast <2 x i64> %18 to <4 x i32>
  %25 = bitcast <2 x i64> %i.g to <4 x i32>
  %i.em = add <4 x i32> %24, %25
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %26 = bitcast <2 x i64> %19 to <4 x i32>
  %27 = bitcast <2 x i64> %i.h to <4 x i32>
  %i.eq = add <4 x i32> %26, %27
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !492, !noalias !6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !492, !noalias !6
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !491
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs31YAwBA1AlL_19xet_core_structures(<2 x i64> %i.er) #20
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !491
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1OzvMeFnvWA_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs31YAwBA1AlL_19xet_core_structures.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 5 uses
  %i.e = add i64 %i.d, %2                         ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.d
  %.not4 = icmp ugt i64 %i.e, %i.b
  %or.cond = or i1 %i.f, %.not4
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i64 %2, 4
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i64 %2, 8
  br i1 %i.k, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECs31YAwBA1AlL_19xet_core_structures.exit.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.l = load i8, ptr %1, align 1, !alias.scope !503, !noundef !6
  store i8 %i.l, ptr %i.h, align 1, !alias.scope !504
  %.not3.i = icmp eq i64 %2, 1
  br i1 %.not3.i, label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECs31YAwBA1AlL_19xet_core_structures.exit.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %bb.g
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.h, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.m = add nsw i64 %2, -2                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.n, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit

bb.h:                                             ; preds = %bb.f
  %i.p = icmp samesign ult i64 %2, 17
  br i1 %i.p, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECs31YAwBA1AlL_19xet_core_structures.exit.i, label %bb.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.f
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.h, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.q = add nsw i64 %2, -4                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.r, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit

bb.i:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i64 %2, 33
  br i1 %i.t, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECs31YAwBA1AlL_19xet_core_structures.exit.i, label %bb.j

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.h
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.h, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.u = add nsw i64 %2, -8                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.v, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.h, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59)
  br label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.i
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.h, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.x = add nsw i64 %2, -16                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.y, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit

_RNvNtCs6f1wo00zwKs_8lz4_flex7fastcpy10slice_copy.exit: ; preds = %bb.d, %bb.g, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECs31YAwBA1AlL_19xet_core_structures.exit.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECs31YAwBA1AlL_19xet_core_structures.exit.i, %bb.j, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.aa = add i64 %i.d, %3
  store i64 %i.aa, ptr %i.c, align 8
  ret void

bb.k:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.e, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB4_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1d_6cursor6CursorRShEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(184) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.632.sroa.10.i.i.i = alloca [7 x i8], align 1 ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [19 x i8], align 4                ; 13 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [4 x i8], align 4                 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.582.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.495.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.596.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.697.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.798.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.644.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %.sroa.871.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
end_hunk_1
