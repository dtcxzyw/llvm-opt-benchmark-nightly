Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/serde_core-579292d7fd7d8382.serde_core.1df3d9a2887f52a4-cgu.0?download=true
inline.NumInlined: 127
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\F3\05\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant [84 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/validations.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"S\00\00\00\00\00\00\000\00\00\00$\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"S\00\00\00\00\00\00\007\00\00\00(\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"S\00\00\00\00\00\00\00?\00\00\00,\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00-\07\00\00I\00\00\00" }>, align 8
@7 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_core-1.0.228/src/format.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\0F\00\00\00 \00\00\00" }>, align 8
@9 = private unnamed_addr constant [4 x i8] c"Unix", align 1
@10 = private unnamed_addr constant [7 x i8] c"Windows", align 1
@11 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtCs2zr4xB4Ewz8_10serde_core2de5impls14OSSTR_VARIANTS = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @11, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@12 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@_RNvNvNvXsw_NtNtCs2zr4xB4Ewz8_10serde_core2de5implsNtNtCshzWfHUSfYae_4core4time8DurationNtBb_11Deserialize11deserialize14check_overflow13NANOS_PER_SEC = local_unnamed_addr constant [4 x i8] c"\00\CA\9A;", align 4
@_RNvNvNvXsx_NtNtCs2zr4xB4Ewz8_10serde_core2de5implsNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtBb_11Deserialize11deserialize14check_overflow13NANOS_PER_SEC = local_unnamed_addr constant [4 x i8] c"\00\CA\9A;", align 4
@13 = private unnamed_addr constant [2 x i8] c"V4", align 1
@14 = private unnamed_addr constant [2 x i8] c"V6", align 1
@15 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @13, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsm_NtNtCs2zr4xB4Ewz8_10serde_core2de5implsNtNtNtCshzWfHUSfYae_4core3net7ip_addr6IpAddrNtB9_11Deserialize11deserialize8VARIANTS = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @15, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsn_NtNtCs2zr4xB4Ewz8_10serde_core2de5implsNtNtNtCshzWfHUSfYae_4core3net11socket_addr10SocketAddrNtB9_11Deserialize11deserialize8VARIANTS = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @15, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@16 = private unnamed_addr constant [14 x i8] c"\09boolean `\C0\01`\00", align 1
@17 = private unnamed_addr constant [14 x i8] c"\09integer `\C0\01`\00", align 1
@18 = private unnamed_addr constant [21 x i8] c"\10floating point `\C0\01`\00", align 1
@19 = private unnamed_addr constant [16 x i8] c"\0Bcharacter `\C0\01`\00", align 1
@20 = private unnamed_addr constant [10 x i8] c"\07string \C0\00", align 1
@21 = private unnamed_addr constant [10 x i8] c"byte array", align 1
@22 = private unnamed_addr constant [10 x i8] c"unit value", align 1
@23 = private unnamed_addr constant [12 x i8] c"Option value", align 1
@24 = private unnamed_addr constant [14 x i8] c"newtype struct", align 1
@25 = private unnamed_addr constant [8 x i8] c"sequence", align 1
@26 = private unnamed_addr constant [3 x i8] c"map", align 1
@27 = private unnamed_addr constant [4 x i8] c"enum", align 1
@28 = private unnamed_addr constant [12 x i8] c"unit variant", align 1
@29 = private unnamed_addr constant [15 x i8] c"newtype variant", align 1
@30 = private unnamed_addr constant [13 x i8] c"tuple variant", align 1
@31 = private unnamed_addr constant [14 x i8] c"struct variant", align 1
@32 = private unnamed_addr constant [15 x i8] c"anything at all", align 1
@33 = private unnamed_addr constant [4 x i8] c"unit", align 1
@34 = private unnamed_addr constant [7 x i8] c"`start`", align 1
@35 = private unnamed_addr constant [16 x i8] c"`start` or `end`", align 1
@36 = private unnamed_addr constant [5 x i8] c"`end`", align 1
@37 = private unnamed_addr constant [37 x i8] c"`Unbounded`, `Included` or `Excluded`", align 1
@38 = private unnamed_addr constant [13 x i8] c"`Ok` or `Err`", align 1
@39 = private unnamed_addr constant [17 x i8] c"`secs` or `nanos`", align 1
@40 = private unnamed_addr constant [41 x i8] c"`secs_since_epoch` or `nanos_since_epoch`", align 1
@41 = private unnamed_addr constant [45 x i8] c"integer with support for saturating semantics", align 1
@42 = private unnamed_addr constant [3 x i8] c"u16", align 1
@43 = private unnamed_addr constant [13 x i8] c"a nonzero u32", align 1
@44 = private unnamed_addr constant [3 x i8] c"u32", align 1
@45 = private unnamed_addr constant [13 x i8] c"a nonzero u64", align 1
@46 = private unnamed_addr constant [3 x i8] c"u64", align 1
@47 = private unnamed_addr constant [15 x i8] c"a nonzero usize", align 1
@48 = private unnamed_addr constant [5 x i8] c"usize", align 1
@49 = private unnamed_addr constant [3 x i8] c"f32", align 1
@50 = private unnamed_addr constant [3 x i8] c"f64", align 1
@51 = private unnamed_addr constant [14 x i8] c"a nonzero i128", align 1
@52 = private unnamed_addr constant [4 x i8] c"i128", align 1
@53 = private unnamed_addr constant [14 x i8] c"a nonzero u128", align 1
@54 = private unnamed_addr constant [4 x i8] c"u128", align 1
@55 = private unnamed_addr constant [19 x i8] c"`Unix` or `Windows`", align 1
@56 = private unnamed_addr constant [12 x i8] c"a nonzero i8", align 1
@57 = private unnamed_addr constant [2 x i8] c"i8", align 1
@58 = private unnamed_addr constant [13 x i8] c"a nonzero i16", align 1
@59 = private unnamed_addr constant [3 x i8] c"i16", align 1
@60 = private unnamed_addr constant [13 x i8] c"a nonzero i32", align 1
@61 = private unnamed_addr constant [3 x i8] c"i32", align 1
@62 = private unnamed_addr constant [13 x i8] c"a nonzero i64", align 1
@63 = private unnamed_addr constant [3 x i8] c"i64", align 1
@64 = private unnamed_addr constant [15 x i8] c"a nonzero isize", align 1
@65 = private unnamed_addr constant [5 x i8] c"isize", align 1
@66 = private unnamed_addr constant [12 x i8] c"a nonzero u8", align 1
@67 = private unnamed_addr constant [2 x i8] c"u8", align 1
@68 = private unnamed_addr constant [13 x i8] c"a nonzero u16", align 1
@69 = private unnamed_addr constant [12 x i8] c"`V4` or `V6`", align 1
@70 = private unnamed_addr constant [8 x i8] c"a IpAddr", align 1
@71 = private unnamed_addr constant [12 x i8] c"a SocketAddr", align 1
@72 = private unnamed_addr constant [9 x i8] c"a boolean", align 1
@73 = private unnamed_addr constant [15 x i8] c"not implemented", align 1
@74 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_core-1.0.228/src/private/doc.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"j\00\00\00\00\00\00\00\19\00\00\00\09\00\00\00" }>, align 8
@76 = private unnamed_addr constant [5 x i8] c"Error", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs2zr4xB4Ewz8_10serde_core, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs2zr4xB4Ewz8_10serde_core }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"j\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@79 = private unnamed_addr constant [19 x i8] c"\C0\10 elements in map\00", align 1
@80 = private unnamed_addr constant [16 x i8] c"1 element in map", align 1
@81 = private unnamed_addr constant [11 x i8] c"a character", align 1
@82 = private unnamed_addr constant [8 x i8] c"a string", align 1
@83 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@84 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_core-1.0.228/src/de/mod.rs\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"e\00\00\00\00\00\00\00$\09\00\00\12\00\00\00" }>, align 8
@86 = private unnamed_addr constant [6 x i8] c"\01`\C0\01`\00", align 1
@87 = private unnamed_addr constant [14 x i8] c"\01`\C0\06` or `\C0\01`\00", align 1
@88 = private unnamed_addr constant [7 x i8] c"one of ", align 1
@89 = private unnamed_addr constant [2 x i8] c", ", align 1
@90 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@91 = private unnamed_addr constant [2 x i8] c".0", align 1
@92 = private unnamed_addr constant [17 x i8] c"a borrowed string", align 1
@93 = private unnamed_addr constant [21 x i8] c"a borrowed byte array", align 1
@94 = private unnamed_addr constant [24 x i8] c"\C0\15 elements in sequence\00", align 1
@95 = private unnamed_addr constant [21 x i8] c"1 element in sequence", align 1
@96 = private unnamed_addr constant [79 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/slice/iter.rs\00", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @96, [16 x i8] c"N\00\00\00\00\00\00\00O\05\00\00\1D\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\19\00\00\00\17\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\19\00\00\00<\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXs7_NtCs2zr4xB4Ewz8_10serde_core2deNtB8_16WithDecimalPointNtNtCshzWfHUSfYae_4core3fmt7Display3fmtNtB2_19LookForDecimalPointNtB12_5Write9write_str, ptr @_RNvXNvXs7_NtCs2zr4xB4Ewz8_10serde_core2deNtB8_16WithDecimalPointNtNtCshzWfHUSfYae_4core3fmt7Display3fmtNtB2_19LookForDecimalPointNtB12_5Write10write_char, ptr @_RNvYNtNvXs7_NtCs2zr4xB4Ewz8_10serde_core2deNtBa_16WithDecimalPointNtNtCshzWfHUSfYae_4core3fmt7Display3fmt19LookForDecimalPointNtB14_5Write9write_fmtBc_ }>, align 8
@101 = private unnamed_addr constant [15 x i8] c"struct Duration", align 1
@102 = private unnamed_addr constant [17 x i8] c"struct SystemTime", align 1
@103 = private unnamed_addr constant [15 x i8] c"a borrowed path", align 1
@104 = private unnamed_addr constant [11 x i8] c"path string", align 1
@105 = private unnamed_addr constant [9 x i8] c"os string", align 1
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre8containscECs2zr4xB4Ewz8_10serde_core(ptr %0, i64 %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 14 uses
  %i.b = alloca [104 x i8], align 8               ; 20 uses
  %i.c = alloca [4 x i8], align 4                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ult i32 %2, 128
  %.sink2.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.sink2.i.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink2.i.i.sroa.gep6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  %i.e = icmp ult i32 %2, 2048
  %i.f = lshr i32 %2, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %2, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %2, 18
  %i.o = trunc i32 %i.n to i8
  %i.p = or i8 %i.o, -16
  br i1 %i.e, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i32 %2, 65536
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or disjoint i8 %i.k, -32
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i

bb.e:                                             ; preds = %bb.c
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep5.i, align 2
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i: ; preds = %bb.e, %bb.d
  %.sink47 = phi i8 [ %i.r, %bb.d ], [ %i.p, %bb.e ] ; 6 uses
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.0.i.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep5.i, %bb.d ], [ %.sink2.i.i.sroa.gep6.i, %bb.e ]
  store i8 %.sink47, ptr %i.c, align 4
  store i8 %.sink, ptr %.sink2.i.i.sroa.gep.i, align 1
  %i.s = trunc i32 %2 to i8
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128
  store i8 %i.u, ptr %.sink2.i.i.sroa.phi.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = icmp ult i64 %.sroa.0.0.i.i, %1
  br i1 %i.v, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i, label %bb.f

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.thread.i: ; preds = %bb.b
  %i.w = or disjoint i8 %i.g, -64                 ; 2 uses
  store i8 %i.w, ptr %i.c, align 4
  %i.x = trunc i32 %2 to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 2 uses
  store i8 %i.z, ptr %.sink2.i.i.sroa.gep.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = icmp ugt i64 %1, 2
  br i1 %i.aa, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = icmp ult i64 %1, 17
  br i1 %i.ab, label %_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.preheader.i.i, label %.thread92.i.i.i

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.thread.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i
  %.sroa.0.0.i85.i = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i ]
  %i.ac = icmp eq i64 %.sroa.0.0.i85.i, %1
  br i1 %i.ac, label %bb.ax, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i

.preheader.i.3:                                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3, %.preheader.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.b, ptr %0, i64 %1, ptr nonnull %i.c, i64 range(i64 2, 5) %.sroa.0.0.i.i)
  %i.ad = load i64, ptr %i.b, align 8, !noalias !9
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  br i1 %i.ae, label %bb.g, label %.preheader31.i.i.i

.preheader31.i.i.i:                               ; preds = %.preheader.i.3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ah = load i8, ptr %i.ag, align 2, !noalias !10
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader31.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !10 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.an = load i64, ptr %i.am, align 8, !noalias !10 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null         ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.aj, align 8, !noalias !10
  %.promoted75.i.i.i = load i64, ptr %i.af, align 8, !noalias !10
  br label %bb.h

bb.g:                                             ; preds = %.preheader.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !9 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !9 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !9 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !9 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !9 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.ba = add i64 %i.ay, -1                       ; 3 uses
  %.promoted.i6.i.i.i = load i64, ptr %i.az, align 8, !noalias !9 ; 3 uses
  %i.bb = add i64 %i.ba, %.promoted.i6.i.i.i      ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.au               ; 2 uses
  br i1 %i.aq, label %bb.ag, label %bb.x

bb.h:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i, %.lr.ph.i.i.i
  %i.bd = phi i64 [ %.promoted75.i.i.i, %.lr.ph.i.i.i ], [ %i.dc, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i ] ; 11 uses
  %i.be = phi i8 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bh, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i ] ; 2 uses
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = and i8 %i.be, 1
  %i.bh = xor i8 %i.bg, 1                         ; 2 uses
  store i8 %i.bh, ptr %i.aj, align 8, !noalias !10
  %i.bi = icmp eq i64 %i.bd, 0
  br i1 %i.bi, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i = icmp ult i64 %i.bd, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.j, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.i
  %i.bj = icmp ne i64 %i.bd, %i.an
  %or.cond.i.i.i.i = select i1 %i.bj, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bd
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread.i.i.i.i

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i: ; preds = %bb.h
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i: ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i, %bb.j, %.split.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bd ; 4 uses
  %i.bo = icmp samesign eq i64 %i.bd, %i.an
  br i1 %i.bo, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bq = load i8, ptr %i.bn, align 1, !noalias !10 ; 5 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = and i8 %i.bq, 31
  %i.bt = zext nneg i8 %i.bs to i32               ; 3 uses
  %i.bu = add nuw nsw i64 %i.bd, 1
  %i.bv = icmp samesign eq i64 %i.bu, %i.an
  br i1 %i.bv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit15.thread.i.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bw = zext nneg i8 %i.bq to i32
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.by = load i8, ptr %i.bp, align 1, !noalias !10
  %i.bz = shl nuw nsw i32 %i.bt, 6
  %i.ca = and i8 %i.by, 63
  %i.cb = zext nneg i8 %i.ca to i32               ; 2 uses
  %i.cc = or disjoint i32 %i.bz, %i.cb
  %i.cd = icmp samesign ugt i8 %i.bq, -33
  br i1 %i.cd, label %bb.o, label %bb.s

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit15.thread.i.i.i.i.i: ; preds = %bb.l
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 @3) #23, !noalias !10
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ce = add nuw nsw i64 %i.bd, 2
  %i.cf = icmp samesign eq i64 %i.ce, %i.an
  br i1 %i.cf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit17.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.ch = load i8, ptr %i.bx, align 1, !noalias !10
  %i.ci = shl nuw nsw i32 %i.cb, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.bt, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bq, -17
  br i1 %i.co, label %bb.q, label %bb.s

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit17.thread.i.i.i.i.i: ; preds = %bb.o
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 @4) #23, !noalias !10
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw nsw i64 %i.bd, 3
  %i.cq = icmp samesign eq i64 %i.cp, %i.an
  br i1 %i.cq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit19.thread.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load i8, ptr %i.cg, align 1, !noalias !10
  %i.cs = shl nuw nsw i32 %i.bt, 18
  %i.ct = and i32 %i.cs, 1835008
  %i.cu = shl nuw nsw i32 %i.cl, 6
  %i.cv = and i8 %i.cr, 63
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = or disjoint i32 %i.cx, %i.ct
  br label %bb.s

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit19.thread.i.i.i.i.i: ; preds = %bb.q
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 @5) #23, !noalias !10
  unreachable

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i, %bb.j, %.split.i.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr %i.al, i64 %i.an, i64 %i.bd, i64 %i.an, ptr nonnull align 8 @106) #24, !noalias !10
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.m
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.cc, %bb.n ], [ %i.cn, %bb.p ], [ %i.cy, %bb.r ], [ %i.bw, %bb.m ] ; 3 uses
  br i1 %i.bf, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %bb.u

bb.t:                                             ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs2zr4xB4Ewz8_10serde_core.exit.thread60.i.i.i.i
  br i1 %i.bf, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %._crit_edge.i7.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 128
  br i1 %i.cz, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 2048
  br i1 %i.da, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 65536
  %..i.i.i.i = select i1 %i.db, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.01.0.i.i.i.i = phi i64 [ 2, %bb.v ], [ %..i.i.i.i, %bb.w ], [ 1, %bb.u ]
  %i.dc = add i64 %.sroa.01.0.i.i.i.i, %i.bd      ; 2 uses
  store i64 %i.dc, ptr %i.af, align 8, !noalias !10
  br label %bb.h

bb.x:                                             ; preds = %bb.g
  br i1 %i.bc, label %.lr.ph.i1.i.i.i, label %._crit_edge.i7.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !noalias !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dg = load i64, ptr %i.af, align 8            ; 4 uses
  %i.dh = load i64, ptr %i.df, align 8            ; 2 uses
  %i.di = sub i64 %i.ay, %i.dh
  %invariant.op = sub i64 1, %i.dg
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i.i.i.i, %.lr.ph.i1.i.i.i
  %i.dj = phi i64 [ %i.ap, %.lr.ph.i1.i.i.i ], [ %.sink.i5.i.i.i, %.sink.split.i.i.i.i ] ; 3 uses
  %i.dk = phi i64 [ %i.bb, %.lr.ph.i1.i.i.i ], [ %i.du, %.sink.split.i.i.i.i ]
  %i.dl = phi i64 [ %.promoted.i6.i.i.i, %.lr.ph.i1.i.i.i ], [ %.sink.i.i, %.sink.split.i.i.i.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !9
  %i.do = and i8 %i.dn, 63
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.de
  %.not.i2.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i2.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = add i64 %i.dl, %i.ay
  br label %.sink.split.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %.sroa.0.0.sroa.speculated.i.i3.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dg) ; 3 uses
  %i.dt = getelementptr i8, ptr %i.as, i64 %i.dl  ; 2 uses
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.sroa.speculated.i.i3.i.i.i, i64 %i.ay)
  %exitcond.not.i.i.i.i124.not = icmp ult i64 %.sroa.0.0.sroa.speculated.i.i3.i.i.i, %i.ay
  br i1 %exitcond.not.i.i.i.i124.not, label %.lr.ph, label %.preheader30.i.i.i.preheader

.sink.split.i.i.i.i:                              ; preds = %bb.af, %bb.ae, %bb.z
  %.sink.i.i = phi i64 [ %i.ek, %bb.af ], [ %i.ef, %bb.ae ], [ %i.ds, %bb.z ] ; 3 uses
  %.sink.i5.i.i.i = phi i64 [ 0, %bb.af ], [ %i.di, %bb.ae ], [ 0, %bb.z ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.az, align 8, !noalias !9
  store i64 %.sink.i5.i.i.i, ptr %i.ao, align 8, !noalias !9
  %i.du = add i64 %.sink.i.i, %i.ba               ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.au
  br i1 %i.dv, label %bb.y, label %._crit_edge.i7.i.i.i

bb.ab:                                            ; preds = %.lr.ph
  %i.dw = add i64 %.sroa.02.0.i.i.i.i125, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dw, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader30.i.i.i.preheader, label %.lr.ph

.preheader30.i.i.i.preheader:                     ; preds = %bb.ab, %bb.aa
  %i.dx = icmp ult i64 %i.dj, %i.dg
  br i1 %i.dx, label %.lr.ph127, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i

.preheader30.i.i.i:                               ; preds = %bb.ac
  %i.dy = icmp ult i64 %i.dj, %i.dz
  br i1 %i.dy, label %.lr.ph127, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i

.lr.ph127:                                        ; preds = %.preheader30.i.i.i.preheader, %.preheader30.i.i.i
  %.sroa.2.0.i.i.i.i126 = phi i64 [ %i.dz, %.preheader30.i.i.i ], [ %i.dg, %.preheader30.i.i.i.preheader ]
  %i.dz = add i64 %.sroa.2.0.i.i.i.i126, -1       ; 6 uses
  %i.ea = icmp ult i64 %i.dz, %i.ay
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph127
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !9
  %i.ed = getelementptr i8, ptr %i.dt, i64 %i.dz
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !9
  %.not17.i.i.i.i = icmp eq i8 %i.ec, %i.ee
  br i1 %.not17.i.i.i.i, label %.preheader30.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph127
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 %i.dz, i64 %i.ay, ptr nonnull align 8 @1) #24, !noalias !9
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ef = add i64 %i.dl, %i.dh
  br label %.sink.split.i.i.i.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %.sroa.02.0.i.i.i.i125 = phi i64 [ %i.dw, %bb.ab ], [ %.sroa.0.0.sroa.speculated.i.i3.i.i.i, %bb.aa ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.02.0.i.i.i.i125
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !9
  %i.ei = getelementptr i8, ptr %i.dt, i64 %.sroa.02.0.i.i.i.i125
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !9
  %.not18.i.i.i.i = icmp eq i8 %i.eh, %i.ej
  br i1 %.not18.i.i.i.i, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %.reass.reass.i.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.ek = add i64 %.reass.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i125
  br label %.sink.split.i.i.i.i

bb.ag:                                            ; preds = %bb.g
  br i1 %i.bc, label %.lr.ph.i9.i.i.i, label %._crit_edge.i7.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.em = load i64, ptr %i.el, align 8, !noalias !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eo = load i64, ptr %i.af, align 8            ; 7 uses
  %umax.i12.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 %i.ay)
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.ep, %i.ay
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %i.eq = load i64, ptr %i.en, align 8
  %exitcond.not.i14.i.i.i128.not = icmp ult i64 %i.eo, %i.ay
  %invariant.op185 = sub i64 1, %i.eo
  %.not.i.us.i.i131 = icmp eq i64 %i.eo, 0        ; 2 uses
  br label %bb.ah

._crit_edge.i7.i.i.i:                             ; preds = %.sink.split.i.i.i.i, %bb.ak, %bb.ag, %bb.x, %bb.t
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i

bb.ah:                                            ; preds = %bb.ak, %.lr.ph.i9.i.i.i
  %i.er = phi i64 [ %i.bb, %.lr.ph.i9.i.i.i ], [ %i.fb, %bb.ak ]
  %i.es = phi i64 [ %.promoted.i6.i.i.i, %.lr.ph.i9.i.i.i ], [ %.sink.i.i.i, %bb.ak ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !noalias !9
  %i.ev = and i8 %i.eu, 63
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ex, %i.em
  %.not.i10.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i10.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ez = add i64 %i.es, %i.ay
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fa = getelementptr i8, ptr %i.as, i64 %i.es  ; 2 uses
  br i1 %exitcond.not.i14.i.i.i128.not, label %.lr.ph130, label %.preheader.preheader.i.i.i

bb.ak:                                            ; preds = %bb.an, %.split39.us.i.i, %bb.ai
  %.sink.i.i.i = phi i64 [ %i.fo, %bb.an ], [ %i.fj, %.split39.us.i.i ], [ %i.ez, %bb.ai ] ; 3 uses
  store i64 %.sink.i.i.i, ptr %i.az, align 8, !noalias !9
  %i.fb = add i64 %.sink.i.i.i, %i.ba             ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.au
  br i1 %i.fc, label %bb.ah, label %._crit_edge.i7.i.i.i

bb.al:                                            ; preds = %.lr.ph130
  %i.fd = add i64 %.sroa.02.0.i13.i.i.i129, 1     ; 2 uses
  %exitcond.not.i14.i.i.i = icmp eq i64 %i.fd, %umax.i12.i.i.i
  br i1 %exitcond.not.i14.i.i.i, label %.preheader.preheader.i.i.i, label %.lr.ph130

.preheader.preheader.i.i.i:                       ; preds = %bb.al, %bb.aj
  br i1 %.first_iter.i.fr.i.i, label %.preheader.i.us.i.i.preheader, label %.preheader.i.i.i

.preheader.i.us.i.i.preheader:                    ; preds = %.preheader.preheader.i.i.i
  br i1 %.not.i.us.i.i131, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %.lr.ph133

.preheader.i.us.i.i:                              ; preds = %.lr.ph133
  %.not.i.us.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.us.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %.lr.ph133

.lr.ph133:                                        ; preds = %.preheader.i.us.i.i.preheader, %.preheader.i.us.i.i
  %.sroa.2.0.i16.i.us.i.i132 = phi i64 [ %i.fe, %.preheader.i.us.i.i ], [ %i.eo, %.preheader.i.us.i.i.preheader ]
  %i.fe = add i64 %.sroa.2.0.i16.i.us.i.i132, -1  ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !9
  %i.fh = getelementptr i8, ptr %i.fa, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !9
  %.not17.i17.i.us.i.i = icmp eq i8 %i.fg, %i.fi
  br i1 %.not17.i17.i.us.i.i, label %.preheader.i.us.i.i, label %.split39.us.i.i

.split39.us.i.i:                                  ; preds = %.lr.ph133
  %i.fj = add i64 %i.es, %i.eq
  br label %bb.ak

.preheader.i.i.i:                                 ; preds = %.preheader.preheader.i.i.i
  br i1 %.not.i.us.i.i131, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_inCs2zr4xB4Ewz8_10serde_core.exit.i, label %bb.am

bb.am:                                            ; preds = %.preheader.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 %i.ep, i64 %i.ay, ptr nonnull align 8 @1) #24, !noalias !9
  unreachable

.lr.ph130:                                        ; preds = %bb.aj, %bb.al
  %.sroa.02.0.i13.i.i.i129 = phi i64 [ %i.fd, %bb.al ], [ %i.eo, %bb.aj ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.02.0.i13.i.i.i129
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !9
  %i.fm = getelementptr i8, ptr %i.fa, i64 %.sroa.02.0.i13.i.i.i129
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !9
  %.not18.i15.i.i.i = icmp eq i8 %i.fl, %i.fn
  br i1 %.not18.i15.i.i.i, label %bb.al, label %bb.an

bb.an:                                            ; preds = %.lr.ph130
  %.reass46.reass.i.reass.i.reass.reass = add i64 %i.es, %invariant.op185
  %i.fo = add i64 %.reass46.reass.i.reass.i.reass.reass, %.sroa.02.0.i13.i.i.i129
  br label %bb.ak

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCs2zr4xB4Ewz8_10serde_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fp = add nsw i64 %.sroa.0.0.i.i, -1
  %i.fq = add nsw i64 %.sroa.0.0.i.i, -1          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1             ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.fs, %.sink47
  br i1 %.not.i.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1, label %bb.ao

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i
  %i.ft = add nsw i64 %.sroa.0.0.i.i, -2          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1             ; 2 uses
  %.not.i.not.i.i.i.i.1 = icmp eq i8 %i.fv, %.sink47
  br i1 %.not.i.not.i.i.i.i.1, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2, label %bb.ao

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1
  %i.fw = add nsw i64 %.sroa.0.0.i.i, -3          ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1             ; 2 uses
  %.not.i.not.i.i.i.i.2 = icmp eq i8 %i.fy, %.sink47
  br i1 %.not.i.not.i.i.i.i.2, label %.preheader.i.2, label %bb.ao

.preheader.i.2:                                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2
  %.not.i.i.2 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.2, label %.preheader.i.3, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3: ; preds = %.preheader.i.2
  %i.fz = add nsw i64 %.sroa.0.0.i.i, -4          ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1             ; 2 uses
  %.not.i.not.i.i.i.i.3 = icmp eq i8 %i.gb, %.sink47
  br i1 %.not.i.not.i.i.i.i.3, label %.preheader.i.3, label %bb.ao

bb.ao:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i
  %.lcssa162 = phi i64 [ %i.fq, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i ], [ %i.ft, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1 ], [ %i.fw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2 ], [ %i.fz, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3 ]
  %.lcssa160 = phi i8 [ %i.fs, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i ], [ %i.fv, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.1 ], [ %i.fy, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.2 ], [ %i.gb, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i.3 ]
  %i.gc = add nuw nsw i64 %.sroa.0.0.i.i, 15
  %i.gd = icmp ult i64 %1, %i.gc
  br i1 %i.gd, label %_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.preheader.i.i, label %.thread92.i.i.i

.thread92.i.i.i:                                  ; preds = %bb.ao, %.thread.i
  %.sink47.sink = phi i8 [ %i.w, %.thread.i ], [ %.sink47, %bb.ao ]
  %i.ge = phi i64 [ 1, %.thread.i ], [ %i.fp, %bb.ao ] ; 2 uses
  %.sroa.0.0.i8487.i = phi i64 [ 2, %.thread.i ], [ %.sroa.0.0.i.i, %bb.ao ] ; 2 uses
  %i.gf = phi i8 [ %i.z, %.thread.i ], [ %.lcssa160, %bb.ao ]
  %storemerge9194.i.i.i = phi i64 [ 1, %.thread.i ], [ %.lcssa162, %bb.ao ] ; 6 uses
  %i.gg = insertelement <16 x i8> poison, i8 %.sink47.sink, i64 0
  %i.gh = shufflevector <16 x i8> %i.gg, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gi = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sink2.i.i.sroa.gep.i, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ge, ptr %i.gm, align 8
  %i.gn = add nuw nsw i64 %.sroa.0.0.i8487.i, 63  ; 2 uses
  %.not.i3.i.i = icmp ult i64 %i.gn, %1
  br i1 %.not.i3.i.i, label %.lr.ph.i5.i.i, label %.preheader.i4.i.i

.preheader.i4.i.i:                                ; preds = %bb.as, %.thread92.i.i.i
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %.thread92.i.i.i ], [ %i.ij, %bb.as ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %.thread92.i.i.i ], [ %.sroa.014.2.3.i.i.i, %bb.as ] ; 2 uses
  %i.go = add nuw nsw i64 %.sroa.0.0.i8487.i, 15  ; 2 uses
  %i.gp = add i64 %.sroa.06.0.lcssa.i.i.i, %i.go
  %i.gq = icmp uge i64 %i.gp, %1
  %i.gr = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %or.cond3104.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

.lr.ph.i5.i.i:                                    ; preds = %.thread92.i.i.i, %bb.as
  %.sroa.06.0102.i.i.i = phi i64 [ %i.ij, %bb.as ], [ 0, %.thread92.i.i.i ] ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.0102.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.gs, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.gt, align 1
  %i.gu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.gh
  %i.gv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.gj
  %i.gw = and <16 x i1> %i.gu, %i.gv
  %i.gx = bitcast <16 x i1> %i.gw to i16          ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.gy, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.gz, align 1
  %i.ha = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.gh
  %i.hb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.gj
  %i.hc = and <16 x i1> %i.ha, %i.hb
  %i.hd = bitcast <16 x i1> %i.hc to i16          ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.hf, align 1
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.gh
  %i.hh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.gj
  %i.hi = and <16 x i1> %i.hg, %i.hh
  %i.hj = bitcast <16 x i1> %i.hi to i16          ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.hl, align 1
  %i.hm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.gh
  %i.hn = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.gj
  %i.ho = and <16 x i1> %i.hm, %i.hn
  %i.hp = bitcast <16 x i1> %i.ho to i16          ; 2 uses
  %i.hq = icmp eq i16 %i.gx, 0
  br i1 %i.hq, label %.preheader95.1.i.i.i, label %bb.at

.preheader95.1.i.i.i:                             ; preds = %bb.at, %.lr.ph.i5.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i5.i.i ], [ %i.io, %bb.at ] ; 3 uses
  %i.hr = icmp eq i16 %i.hd, 0
  br i1 %i.hr, label %.preheader95.2.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.preheader95.1.i.i.i
  %i.hs = or disjoint i64 %.sroa.06.0102.i.i.i, 16
  %i.ht = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.hu = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %i.hs, i16 %i.hd, i1 zeroext %i.ht) #25
  %i.hv = zext i1 %i.hu to i8
  %i.hw = or i8 %.sroa.014.2.i.i.i, %i.hv
  br label %.preheader95.2.i.i.i

.preheader95.2.i.i.i:                             ; preds = %bb.ap, %.preheader95.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader95.1.i.i.i ], [ %i.hw, %bb.ap ] ; 3 uses
  %i.hx = icmp eq i16 %i.hj, 0
  br i1 %i.hx, label %.preheader95.3.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader95.2.i.i.i
  %i.hy = or disjoint i64 %.sroa.06.0102.i.i.i, 32
  %i.hz = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.ia = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %i.hy, i16 %i.hj, i1 zeroext %i.hz) #25
  %i.ib = zext i1 %i.ia to i8
  %i.ic = or i8 %.sroa.014.2.1.i.i.i, %i.ib
  br label %.preheader95.3.i.i.i

.preheader95.3.i.i.i:                             ; preds = %bb.aq, %.preheader95.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader95.2.i.i.i ], [ %i.ic, %bb.aq ] ; 3 uses
  %i.id = icmp eq i16 %i.hp, 0
  br i1 %i.id, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.preheader95.3.i.i.i
  %i.ie = or disjoint i64 %.sroa.06.0102.i.i.i, 48
  %i.if = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.ig = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %i.ie, i16 %i.hp, i1 zeroext %i.if) #25
  %i.ih = zext i1 %i.ig to i8
  %i.ii = or i8 %.sroa.014.2.2.i.i.i, %i.ih
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.preheader95.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader95.3.i.i.i ], [ %i.ii, %bb.ar ] ; 2 uses
  %i.ij = add i64 %.sroa.06.0102.i.i.i, 64        ; 3 uses
  %i.ik = add i64 %i.ij, %i.gn
  %i.il = icmp uge i64 %i.ik, %1
  %i.im = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.il, i1 true, i1 %i.im
  br i1 %or.cond.i.i.i, label %.preheader.i4.i.i, label %.lr.ph.i5.i.i

bb.at:                                            ; preds = %.lr.ph.i5.i.i
  %i.in = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %.sroa.06.0102.i.i.i, i16 %i.gx, i1 zeroext false) #25
  %i.io = zext i1 %i.in to i8
  br label %.preheader95.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.au, %.preheader.i4.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i4.i.i ], [ %.sroa.014.4.i.i.i, %bb.au ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.gr, %.preheader.i4.i.i ], [ %i.ji, %bb.au ]
  %i.ip = sub nuw i64 %1, %i.ge
  %i.iq = add i64 %i.ip, -16                      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq ; 2 uses
  %.sroa.0.0.copyload.i52.i.i.i = load <16 x i8>, ptr %i.ir, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i53.i.i.i = load <16 x i8>, ptr %i.is, align 1
  %i.it = icmp eq <16 x i8> %.sroa.0.0.copyload.i52.i.i.i, %i.gh
  %i.iu = icmp eq <16 x i8> %.sroa.01.0.copyload.i53.i.i.i, %i.gj
  %i.iv = and <16 x i1> %i.it, %i.iu
  %i.iw = bitcast <16 x i1> %i.iv to i16          ; 2 uses
  %i.ix = icmp eq i16 %i.iw, 0
  br i1 %i.ix, label %.loopexit.i.i, label %bb.aw

.lr.ph106.i.i.i:                                  ; preds = %.preheader.i4.i.i, %bb.au
  %.sroa.06.1105.i.i.i = phi i64 [ %i.jf, %bb.au ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i4.i.i ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.1105.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i54.i.i.i = load <16 x i8>, ptr %i.iy, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i55.i.i.i = load <16 x i8>, ptr %i.iz, align 1
  %i.ja = icmp eq <16 x i8> %.sroa.0.0.copyload.i54.i.i.i, %i.gh
  %i.jb = icmp eq <16 x i8> %.sroa.01.0.copyload.i55.i.i.i, %i.gj
  %i.jc = and <16 x i1> %i.ja, %i.jb
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %i.je = icmp eq i16 %i.jd, 0
  br i1 %i.je, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.av, %.lr.ph106.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph106.i.i.i ], [ %i.jk, %bb.av ] ; 2 uses
  %i.jf = add i64 %.sroa.06.1105.i.i.i, 16        ; 2 uses
  %i.jg = add i64 %i.jf, %i.go
  %i.jh = icmp uge i64 %i.jg, %1
  %i.ji = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.jh, %i.ji
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

bb.av:                                            ; preds = %.lr.ph106.i.i.i
  %i.jj = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %.sroa.06.1105.i.i.i, i16 %i.jd, i1 zeroext false) #25
  %i.jk = zext i1 %i.jj to i8
  br label %bb.au

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  %i.jl = call zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a, i64 %i.iq, i16 %i.iw, i1 zeroext %.lcssa.i.i.i) #25
  %i.jm = zext i1 %i.jl to i8
  %i.jn = or i8 %.sroa.014.3.lcssa.i.i.i, %i.jm
  br label %.loopexit.i.i

_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.preheader.i.i: ; preds = %.thread.i, %bb.ao
  %.sroa.0.0.i8489.i = phi i64 [ 2, %.thread.i ], [ %.sroa.0.0.i.i, %bb.ao ] ; 2 uses
  br label %_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i

_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2zr4xB4Ewz8_10serde_core.exit.backedge.i.i.i.i, %_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.preheader.i.i
  %.sroa.061.0.i.i.i = phi ptr [ %i.jq, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2zr4xB4Ewz8_10serde_core.exit.backedge.i.i.i.i ], [ %0, %_RNvXsY_NtNtCshzWfHUSfYae_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2zr4xB4Ewz8_10serde_core.exit.i.i.preheader.i.i ] ; 3 uses
end_hunk_0
