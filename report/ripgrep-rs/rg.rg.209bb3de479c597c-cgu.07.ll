Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.07?download=true
inline.NumInlined: 669
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [58 x i8] c")DecodeReaderBytesBuilder: buffer of size \C0\0D is too small\00", align 1
@1 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/encoding_rs_io-0.1.7/src/lib.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\DE\01\00\00'\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\EE\01\00\00;\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\DF\01\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant [41 x i8] c"internal buffer should never be exhausted", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\18\02\00\00\0D\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00%\02\00\00<\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\1E\02\00\00\11\00\00\00" }>, align 8
@_RNvCsbRtu51WrwYN_11encoding_rs5UTF_8 = external local_unnamed_addr global ptr
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\BE\01\00\00'\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\D1\01\00\00\16\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00\BF\01\00\00'\00\00\00" }>, align 8
@12 = private unnamed_addr constant [31 x i8] c"crates/printer/src/standard.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00C\02\00\00'\00\00\00" }>, align 8
@_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16BE = external local_unnamed_addr global ptr
@_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16LE = external local_unnamed_addr global ptr
@14 = private unnamed_addr constant [30 x i8] c"assertion failed: start <= end", align 1
@15 = private unnamed_addr constant [26 x i8] c"crates/matcher/src/lib.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\19\00\00\00\00\00\00\00R\00\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\AF\04\00\00\12\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\A2\05\00\00\22\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\9A\05\00\00\22\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\C0\05\00\00@\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\D2\05\00\00\12\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\D5\05\00\00\18\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\B9\05\00\00@\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\C7\05\00\00\14\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\EA\05\00\00\18\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\CA\04\00\00\18\00\00\00" }>, align 8
@28 = private unnamed_addr constant [37 x i8] c"\18[Omitted long line with \C0\09 matches]\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00@\05\00\00 \00\00\00" }>, align 8
@30 = private unnamed_addr constant [28 x i8] c"[Omitted long matching line]", align 1
@31 = private unnamed_addr constant [27 x i8] c"[Omitted long context line]", align 1
@32 = private unnamed_addr constant [15 x i8] c"\C0\0B is not <= \C0\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\19\00\00\00\00\00\00\00|\00\00\00\09\00\00\00" }>, align 8
@34 = private unnamed_addr constant [31 x i8] c" [... omitted end of long line]", align 1
@35 = private unnamed_addr constant [5 x i8] c"match", align 1
@36 = private unnamed_addr constant [7 x i8] c"matches", align 1
@37 = private unnamed_addr constant [19 x i8] c"\06 [... \C0\06 more \C0\01]\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00(\05\00\00 \00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\13\05\00\00\1C\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\1A\04\00\00\16\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\1E\04\00\00/\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\E2\05\00\00\12\00\00\00" }>, align 8
@43 = private unnamed_addr constant [2 x i8] c": ", align 1
@44 = private unnamed_addr constant [86 x i8] c":WARNING: stopped searching binary file after match (found \C0\14 byte around offset \C0\02)\0A\00", align 1
@45 = private unnamed_addr constant [55 x i8] c"\1Bbinary file matches (found \C0\14 byte around offset \C0\02)\0A\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00[\05\00\00.\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\E8\04\00\00\1E\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\ED\04\00\00\10\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\19\00\00\00\00\00\00\00p\00\00\00\09\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\01\05\00\00\22\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\FC\04\00\00\22\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\F3\04\00\00&\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\81\04\00\005\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00}\04\00\00*\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00y\04\00\00*\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00r\04\00\003\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\005\04\00\00\14\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00L\04\00\007\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\F0\05\00\00\14\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\FE\03\00\00\16\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00\EE\03\00\00-\00\00\00" }>, align 8
@_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@62 = private unnamed_addr constant [44 x i8] c"\09ignoring \C0\1E: found binary data at offset \C0\00", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00>\03\00\00\11\00\00\00" }>, align 8
@64 = private unnamed_addr constant [22 x i8] c"grep_printer::standard", align 1
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00J\03\00\00\1B\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\1E\00\00\00\00\00\00\00`\03\00\007\00\00\00" }>, align 8
@67 = private unnamed_addr constant [4 x i8] c"\1B[0m", align 1
@68 = private unnamed_addr constant [4 x i8] c"\1B[1m", align 1
@69 = private unnamed_addr constant [4 x i8] c"\1B[2m", align 1
@70 = private unnamed_addr constant [4 x i8] c"\1B[3m", align 1
@71 = private unnamed_addr constant [4 x i8] c"\1B[4m", align 1
@72 = private unnamed_addr constant [4 x i8] c"\1B[9m", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE14sink_with_pathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsG258MDvU3F_3std4path4PathECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !701 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 145, !dbg !820
  %i.k = load i8, ptr %i.j, align 1, !dbg !820, !range !403, !noundef !401
  %i.l = trunc nuw i8 %i.k to i1, !dbg !820
  br i1 %i.l, label %bb.m, label %bb.b, !dbg !820

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !dbg !821
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802), !dbg !821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !822, !noalias !803
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !823
  %i.n = load ptr, ptr %i.m, align 8, !dbg !823, !alias.scope !802, !nonnull !401, !noundef !401 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !824, !noalias !803
  %i.p = icmp slt i64 %i.o, 0, !dbg !825
  br i1 %i.p, label %bb.i, label %bb.c, !dbg !825

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %i.c, align 8, !dbg !826, !noalias !803
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !826
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !826, !noalias !803
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !dbg !826, !noalias !803
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !826
  store i64 0, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !dbg !826, !noalias !803
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 143, !dbg !827
  %i.s = load i8, ptr %i.r, align 1, !dbg !827, !range !403, !alias.scope !802, !noundef !401 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !828
  %i.u = load i64, ptr %i.t, align 8, !dbg !829, !alias.scope !802, !noalias !804, !noundef !401
  %i.v = icmp ult i64 %i.u, 9223372036854775807, !dbg !830
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !831, !prof !427

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
          to label %.noexc.i unwind label %bb.l, !dbg !832, !noalias !803

.noexc.i:                                         ; preds = %bb.d
  unreachable, !dbg !832

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !833
  %.val.i.i = load i64, ptr %i.w, align 8, !dbg !834, !range !429, !alias.scope !802, !noundef !401
  %.not6.i.i = icmp ne i64 %.val.i.i, 0, !dbg !835 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !836
  %i.y = load i8, ptr %i.x, align 8, !dbg !836, !range !443, !alias.scope !805, !noundef !401
  %.not.i.i.i = icmp eq i8 %i.y, -1, !dbg !836
  br i1 %.not.i.i.i, label %bb.f, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, !dbg !837

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !838
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124, !dbg !839
  %i.ab = load i8, ptr %i.aa, align 4, !dbg !839, !range !443, !alias.scope !805, !noundef !401
  %i.ac = icmp ne i8 %i.ab, -1, !dbg !839
  %i.ad = load i8, ptr %i.z, align 1, !range !403, !alias.scope !805
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ag = load <4 x i8>, ptr %i.af, align 2, !alias.scope !805
  %.fr = freeze <4 x i8> %i.ag
  %i.ah = trunc <4 x i8> %.fr to <4 x i1>
  %i.ai = bitcast <4 x i1> %i.ah to i4, !dbg !840
  %i.aj = icmp ne i4 %i.ai, 0, !dbg !840
  %i.ak = or i1 %i.ac, %i.aj, !dbg !840
  %op.rdx49 = select i1 %i.ak, i1 true, i1 %i.ae, !dbg !840
  br i1 %op.rdx49, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, label %.split.i.i, !dbg !840

.split.i.i:                                       ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !841
  %i.am = load i8, ptr %i.al, align 1, !dbg !841, !range !403, !alias.scope !805, !noundef !401
  %i.an = trunc nuw i8 %i.am to i1, !dbg !842
  %.not.i.i = and i1 %.not6.i.i, %i.an, !dbg !843
  br i1 %.not.i.i, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.g, !dbg !843

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i: ; preds = %bb.f, %bb.e
  br i1 %.not6.i.i, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.g, !dbg !843

bb.g:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, %.split.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 150, !dbg !844
  %i.ap = load i8, ptr %i.ao, align 2, !dbg !844, !range !403, !alias.scope !802, !noundef !401
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !844
  br i1 %i.aq, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.h, !dbg !844

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !845
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !845, !alias.scope !802, !nonnull !401, !noundef !401
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !846
  %i.au = load i64, ptr %i.at, align 8, !dbg !846, !range !450, !noalias !803, !noundef !401
  %.not3.i.i = icmp ne i64 %i.au, -1, !dbg !846
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.aw = load i8, ptr %i.av, align 1, !range !403, !alias.scope !802
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i = select i1 %.not3.i.i, i1 true, i1 %i.ax, !dbg !847
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.az = load i8, ptr %i.ay, align 2, !range !403, !alias.scope !802
  %i.ba = or i8 %i.az, %i.s, !dbg !847
  %i.bb = icmp ne i8 %i.ba, 0, !dbg !847
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bb, !dbg !847
  %i.bc = zext i1 %spec.select.i to i8, !dbg !848
  br label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, !dbg !847

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !849
  unreachable, !dbg !849

_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.h, %bb.g, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, %.split.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.bc, %bb.h ], [ 1, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i ], [ 1, %bb.g ], [ 1, %.split.i.i ], !dbg !850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !851, !noalias !803
  store i64 -1, ptr %i.b, align 8, !dbg !852, !noalias !803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !853, !noalias !803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !853, !noalias !803
  %i.bd = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i, !dbg !854, !noalias !803 ; 2 uses

bb.j:                                             ; preds = %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !855, !noalias !803
  unreachable, !dbg !855

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #16
          to label %bb.k unwind label %bb.j, !dbg !856, !noalias !803

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #16
          to label %common.resume unwind label %bb.j, !dbg !856, !noalias !803

bb.l:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #16
          to label %common.resume unwind label %bb.j, !dbg !857, !noalias !803

common.resume:                                    ; preds = %bb.ad, %bb.ab, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.bg, %bb.l ], [ %.pn.pn.ph, %bb.ad ], [ %i.dw, %bb.ab ]
  resume { ptr, i32 } %common.resume.op, !dbg !858

_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i
  %i.bh = xor i8 %i.s, 1, !dbg !859
  %i.bi = zext nneg i8 %i.bh to i32, !dbg !859
  %..i = sub nsw i32 0, %i.bi, !dbg !859
  %i.bj = extractvalue { i64, i32 } %i.bd, 0, !dbg !854
  %i.bk = extractvalue { i64, i32 } %i.bd, 1, !dbg !854
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !848
  store ptr %2, ptr %i.bl, align 8, !dbg !848, !alias.scope !801
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !848
  store ptr %1, ptr %i.bm, align 8, !dbg !848, !alias.scope !801
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !848, !noalias !807
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !848, !noalias !807
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !848
  store i64 -2, ptr %i.bp, align 8, !dbg !848, !noalias !807
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !848
  store i64 %i.bj, ptr %i.bq, align 8, !dbg !848, !alias.scope !801
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !848
  store i32 %i.bk, ptr %i.br, align 8, !dbg !848, !alias.scope !801
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !848
  store i64 0, ptr %i.bs, align 8, !dbg !848, !alias.scope !801
  store i64 0, ptr %0, align 8, !dbg !848, !alias.scope !801
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !848
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !848
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i8 0, i64 56, i1 false), !dbg !848, !alias.scope !801
  store i32 %..i, ptr %.sroa.2.0..sroa_idx1.i, align 8, !dbg !848, !alias.scope !801
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !848
  store i8 %.sroa.0.0.i.i, ptr %i.bu, align 8, !dbg !848, !alias.scope !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !856, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !856, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !857, !noalias !803
  br label %bb.n, !dbg !860

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !861
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !862 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !862, !nonnull !401, !noundef !401
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !dbg !863
  %i.by = icmp slt i64 %i.bx, 0, !dbg !864
  br i1 %i.by, label %bb.o, label %bb.q, !dbg !864

bb.n:                                             ; preds = %bb.z, %_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !865

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.trap(), !dbg !866
  unreachable, !dbg !866

bb.p:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bv, align 8, !dbg !867, !nonnull !401, !noundef !401
  store ptr %i.ca, ptr %i.i, align 8, !dbg !868
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !868
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false), !dbg !868
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8, !dbg !868
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !868
  store i64 0, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8, !dbg !868
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 143, !dbg !869 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !869, !range !403, !noundef !401
  %i.ce = xor i8 %i.cd, 1, !dbg !870
  %i.cf = zext nneg i8 %i.ce to i32, !dbg !870
  %. = sub nsw i32 0, %i.cf, !dbg !870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !815
  store i64 -1, ptr %i.g, align 8, !dbg !872
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !872
  store ptr %3, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !872
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !872
  store i64 %4, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !872
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !872
  store i64 -2, ptr %i.cg, align 8, !dbg !872
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !873
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !873, !range !403, !noundef !401
  %i.cj = trunc nuw i8 %i.ci to i1, !dbg !873
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !873
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !873
  invoke void @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath14with_separator(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, i1 noundef zeroext %i.cj, i8 %i.cl)
          to label %bb.r unwind label %bb.p, !dbg !874

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !875
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !876
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !877, !noalias !816, !noundef !401
  %i.co = icmp ult i64 %i.cn, 9223372036854775807, !dbg !878
  br i1 %i.co, label %bb.t, label %bb.s, !dbg !879, !prof !427

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
          to label %.noexc unwind label %bb.ac, !dbg !880

.noexc:                                           ; preds = %bb.s
  unreachable, !dbg !880

bb.t:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !881
  %.val.i = load i64, ptr %i.cp, align 8, !dbg !882, !range !429, !noundef !401
  %.not6.i = icmp ne i64 %.val.i, 0, !dbg !883    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !884
  %i.cr = load i8, ptr %i.cq, align 8, !dbg !884, !range !443, !alias.scope !817, !noundef !401
  %.not.i.i32 = icmp eq i8 %i.cr, -1, !dbg !884
  br i1 %.not.i.i32, label %bb.u, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, !dbg !885

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !886
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 124, !dbg !887
  %i.cu = load i8, ptr %i.ct, align 4, !dbg !887, !range !443, !alias.scope !817, !noundef !401
  %i.cv = icmp ne i8 %i.cu, -1, !dbg !887
  %i.cw = load i8, ptr %i.cs, align 1, !range !403, !alias.scope !817
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.cz = load <4 x i8>, ptr %i.cy, align 2, !alias.scope !817
  %.fr50 = freeze <4 x i8> %i.cz
  %i.da = trunc <4 x i8> %.fr50 to <4 x i1>
  %i.db = bitcast <4 x i1> %i.da to i4, !dbg !888
  %i.dc = icmp ne i4 %i.db, 0, !dbg !888
  %i.dd = or i1 %i.cv, %i.dc, !dbg !888
  %op.rdx47 = select i1 %i.dd, i1 true, i1 %i.cx, !dbg !888
  br i1 %op.rdx47, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, label %.split.i, !dbg !888

.split.i:                                         ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !889
  %i.df = load i8, ptr %i.de, align 1, !dbg !889, !range !403, !alias.scope !817, !noundef !401
  %i.dg = trunc nuw i8 %i.df to i1, !dbg !890
  %.not.i = and i1 %.not6.i, %i.dg, !dbg !891
  br i1 %.not.i, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.v, !dbg !891

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i: ; preds = %bb.u, %bb.t
  br i1 %.not6.i, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.v, !dbg !891

bb.v:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %.split.i
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 150, !dbg !892
  %i.di = load i8, ptr %i.dh, align 2, !dbg !892, !range !403, !noundef !401
  %i.dj = trunc nuw i8 %i.di to i1, !dbg !892
  br i1 %i.dj, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.w, !dbg !892

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !893
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !893, !nonnull !401, !noundef !401
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16, !dbg !894
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !894, !range !450, !noundef !401
  %.not3.i = icmp ne i64 %i.dn, -1, !dbg !894
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.dp = load i8, ptr %i.do, align 1, !range !403
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond = select i1 %.not3.i, i1 true, i1 %i.dq, !dbg !895
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.ds = load i8, ptr %i.dr, align 2, !range !403
  %i.dt = trunc nuw i8 %i.ds to i1
  %or.cond46 = select i1 %or.cond, i1 true, i1 %i.dt, !dbg !895
  %i.du = load i8, ptr %i.cc, align 1, !range !403
  %spec.select = select i1 %or.cond46, i8 1, i8 %i.du, !dbg !895
  br label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, !dbg !895

_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.w, %bb.v, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %.split.i
  %.sroa.0.0.i = phi i8 [ %spec.select, %bb.w ], [ 1, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i ], [ 1, %bb.v ], [ 1, %.split.i ], !dbg !896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !818
  store i64 -1, ptr %i.f, align 8, !dbg !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !900
  %i.dv = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.z unwind label %bb.x, !dbg !901 ; 2 uses

bb.x:                                             ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load i64, ptr %i.d, align 8, !dbg !902, !range !455, !alias.scope !819, !noundef !401
  %i.dy = icmp eq i64 %i.dx, -2, !dbg !902
  br i1 %i.dy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit, label %bb.y, !dbg !902

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit unwind label %bb.aa, !dbg !902

bb.z:                                             ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtCs6Ur84ob3I15_9termcolor6BufferE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit
  %i.dz = extractvalue { i64, i32 } %i.dv, 0, !dbg !901
  %i.ea = extractvalue { i64, i32 } %i.dv, 1, !dbg !901
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !903
  store ptr %2, ptr %i.eb, align 8, !dbg !903
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !903
  store ptr %1, ptr %i.ec, align 8, !dbg !903
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ed, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !dbg !903
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !903
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !903
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !903
  store i64 %i.dz, ptr %i.eg, align 8, !dbg !903
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !903
  store i32 %i.ea, ptr %i.eh, align 8, !dbg !903
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !903
  store i64 0, ptr %i.ei, align 8, !dbg !903
  store i64 0, ptr %0, align 8, !dbg !903
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !903
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i8 0, i64 56, i1 false), !dbg !903
  store i32 %., ptr %.sroa.2.0..sroa_idx1, align 8, !dbg !903
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !903
  store i8 %.sroa.0.0.i, ptr %i.ek, align 8, !dbg !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !860
  br label %bb.n, !dbg !860

bb.aa:                                            ; preds = %bb.y, %bb.ad, %bb.ac, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !906
  unreachable, !dbg !906

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.x, %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #16
          to label %bb.ab unwind label %bb.aa, !dbg !904

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #16
          to label %common.resume unwind label %bb.aa, !dbg !904

bb.ac:                                            ; preds = %bb.s
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #16
          to label %bb.ad unwind label %bb.aa, !dbg !905

bb.ad:                                            ; preds = %bb.ac, %bb.p
  %.pn.pn.ph = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.em, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #16
          to label %common.resume unwind label %bb.aa, !dbg !860
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE14sink_with_pathRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsG258MDvU3F_3std4path4PathECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef align 8 dereferenceable(272) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !907 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 145, !dbg !1024
  %i.k = load i8, ptr %i.j, align 1, !dbg !1024, !range !403, !noundef !401
  %i.l = trunc nuw i8 %i.k to i1, !dbg !1024
  br i1 %i.l, label %bb.m, label %bb.b, !dbg !1024

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !dbg !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !dbg !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1026, !noalias !1007
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1027
  %i.n = load ptr, ptr %i.m, align 8, !dbg !1027, !alias.scope !1006, !nonnull !401, !noundef !401 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !1028, !noalias !1007
  %i.p = icmp slt i64 %i.o, 0, !dbg !1029
  br i1 %i.p, label %bb.i, label %bb.c, !dbg !1029

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %i.c, align 8, !dbg !1030, !noalias !1007
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1030
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !dbg !1030, !noalias !1007
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !dbg !1030, !noalias !1007
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1030
  store i64 0, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !dbg !1030, !noalias !1007
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 143, !dbg !1031
  %i.s = load i8, ptr %i.r, align 1, !dbg !1031, !range !403, !alias.scope !1006, !noundef !401 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !1032
  %i.u = load i64, ptr %i.t, align 8, !dbg !1033, !alias.scope !1006, !noalias !1008, !noundef !401
  %i.v = icmp ult i64 %i.u, 9223372036854775807, !dbg !1034
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !1035, !prof !427

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
          to label %.noexc.i unwind label %bb.l, !dbg !1036, !noalias !1007

.noexc.i:                                         ; preds = %bb.d
  unreachable, !dbg !1036

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !1037
  %.val.i.i = load i64, ptr %i.w, align 8, !dbg !1037, !range !429, !alias.scope !1006, !noundef !401
  %i.x = trunc nuw i64 %.val.i.i to i1, !dbg !1038 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !1039
  %i.z = load i8, ptr %i.y, align 8, !dbg !1039, !range !443, !alias.scope !1009, !noundef !401
  %.not.i.i.i = icmp eq i8 %i.z, -1, !dbg !1039
  br i1 %.not.i.i.i, label %bb.f, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, !dbg !1040

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !1041
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 124, !dbg !1042
  %i.ac = load i8, ptr %i.ab, align 4, !dbg !1042, !range !443, !alias.scope !1009, !noundef !401
  %i.ad = icmp ne i8 %i.ac, -1, !dbg !1042
  %i.ae = load i8, ptr %i.aa, align 1, !range !403, !alias.scope !1009
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ah = load <4 x i8>, ptr %i.ag, align 2, !alias.scope !1009
  %.fr = freeze <4 x i8> %i.ah
  %i.ai = trunc <4 x i8> %.fr to <4 x i1>
  %i.aj = bitcast <4 x i1> %i.ai to i4, !dbg !1043
  %i.ak = icmp ne i4 %i.aj, 0, !dbg !1043
  %i.al = or i1 %i.ad, %i.ak, !dbg !1043
  %op.rdx48 = select i1 %i.al, i1 true, i1 %i.af, !dbg !1043
  br i1 %op.rdx48, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, label %.split.i.i, !dbg !1043

.split.i.i:                                       ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !1044
  %i.an = load i8, ptr %i.am, align 1, !dbg !1044, !range !403, !alias.scope !1009, !noundef !401
  %i.ao = trunc nuw i8 %i.an to i1, !dbg !1045
  %i.ap = and i1 %i.x, %i.ao, !dbg !1046
  br i1 %i.ap, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.g, !dbg !1046

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i: ; preds = %bb.f, %bb.e
  br i1 %i.x, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.g, !dbg !1046

bb.g:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 150, !dbg !1047
  %i.ar = load i8, ptr %i.aq, align 2, !dbg !1047, !range !403, !alias.scope !1006, !noundef !401
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !1047
  br i1 %i.as, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, label %bb.h, !dbg !1047

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1048
  %i.au = load ptr, ptr %i.at, align 8, !dbg !1048, !alias.scope !1006, !nonnull !401, !noundef !401
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !1049
  %i.aw = load i64, ptr %i.av, align 8, !dbg !1049, !range !450, !noalias !1007, !noundef !401
  %.not3.i.i = icmp ne i64 %i.aw, -1, !dbg !1049
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.ay = load i8, ptr %i.ax, align 1, !range !403, !alias.scope !1006
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond.i = select i1 %.not3.i.i, i1 true, i1 %i.az, !dbg !1050
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.bb = load i8, ptr %i.ba, align 2, !range !403, !alias.scope !1006
  %i.bc = or i8 %i.bb, %i.s, !dbg !1050
  %i.bd = icmp ne i8 %i.bc, 0, !dbg !1050
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bd, !dbg !1050
  %i.be = zext i1 %spec.select.i to i8, !dbg !1051
  br label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i, !dbg !1050

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !1052
  unreachable, !dbg !1052

_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.h, %bb.g, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i, %.split.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.be, %bb.h ], [ 1, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i.i ], [ 1, %bb.g ], [ 1, %.split.i.i ], !dbg !1053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1054, !noalias !1007
  store i64 -1, ptr %i.b, align 8, !dbg !1055, !noalias !1007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1056, !noalias !1007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !1056, !noalias !1007
  %i.bf = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i, !dbg !1057, !noalias !1007 ; 2 uses

bb.j:                                             ; preds = %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1058, !noalias !1007
  unreachable, !dbg !1058

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #16
          to label %bb.k unwind label %bb.j, !dbg !1059, !noalias !1007

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #16
          to label %common.resume unwind label %bb.j, !dbg !1059, !noalias !1007

bb.l:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #16
          to label %common.resume unwind label %bb.j, !dbg !1060, !noalias !1007

common.resume:                                    ; preds = %bb.ad, %bb.ab, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.bi, %bb.l ], [ %.pn.pn.ph, %bb.ad ], [ %i.ea, %bb.ab ]
  resume { ptr, i32 } %common.resume.op, !dbg !1061

_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit.i
  %i.bj = xor i8 %i.s, 1, !dbg !1062
  %i.bk = zext nneg i8 %i.bj to i32, !dbg !1062
  %..i = sub nsw i32 0, %i.bk, !dbg !1062
  %i.bl = extractvalue { i64, i32 } %i.bf, 0, !dbg !1057
  %i.bm = extractvalue { i64, i32 } %i.bf, 1, !dbg !1057
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !1051
  store ptr %2, ptr %i.bn, align 8, !dbg !1051, !alias.scope !1005
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !1051
  store ptr %1, ptr %i.bo, align 8, !dbg !1051, !alias.scope !1005
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bp, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !1051, !noalias !1011
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !1051, !noalias !1011
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !1051
  store i64 -2, ptr %i.br, align 8, !dbg !1051, !noalias !1011
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !1051
  store i64 %i.bl, ptr %i.bs, align 8, !dbg !1051, !alias.scope !1005
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !1051
  store i32 %i.bm, ptr %i.bt, align 8, !dbg !1051, !alias.scope !1005
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !1051
  store i64 0, ptr %i.bu, align 8, !dbg !1051, !alias.scope !1005
  store i64 0, ptr %0, align 8, !dbg !1051, !alias.scope !1005
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !1051
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !1051
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i8 0, i64 56, i1 false), !dbg !1051, !alias.scope !1005
  store i32 %..i, ptr %.sroa.2.0..sroa_idx1.i, align 8, !dbg !1051, !alias.scope !1005
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !1051
  store i8 %.sroa.0.0.i.i, ptr %i.bw, align 8, !dbg !1051, !alias.scope !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1059, !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1059, !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1060, !noalias !1007
  br label %bb.n, !dbg !1063

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1064
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1065 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !1065, !nonnull !401, !noundef !401
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !1066
  %i.ca = icmp slt i64 %i.bz, 0, !dbg !1067
  br i1 %i.ca, label %bb.o, label %bb.q, !dbg !1067

bb.n:                                             ; preds = %bb.z, %_RINvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB6_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !1068

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.trap(), !dbg !1069
  unreachable, !dbg !1069

bb.p:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.bx, align 8, !dbg !1070, !nonnull !401, !noundef !401
  store ptr %i.cc, ptr %i.i, align 8, !dbg !1071
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1071
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !1071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false), !dbg !1071
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8, !dbg !1071
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !1071
  store i64 0, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8, !dbg !1071
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 143, !dbg !1072 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !dbg !1072, !range !403, !noundef !401
  %i.cg = xor i8 %i.cf, 1, !dbg !1073
  %i.ch = zext nneg i8 %i.cg to i32, !dbg !1073
  %. = sub nsw i32 0, %i.ch, !dbg !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1019
  store i64 -1, ptr %i.g, align 8, !dbg !1075
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1075
  store ptr %3, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !1075
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !1075
  store i64 %4, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !1075
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !1075
  store i64 -2, ptr %i.ci, align 8, !dbg !1075
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !1076
  %i.ck = load i8, ptr %i.cj, align 8, !dbg !1076, !range !403, !noundef !401
  %i.cl = trunc nuw i8 %i.ck to i1, !dbg !1076
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !1076
  %i.cn = load i8, ptr %i.cm, align 1, !dbg !1076
  invoke void @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath14with_separator(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, i1 noundef zeroext %i.cl, i8 %i.cn)
          to label %bb.r unwind label %bb.p, !dbg !1077

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1078
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !1079
  %i.cp = load i64, ptr %i.co, align 8, !dbg !1080, !noalias !1020, !noundef !401
  %i.cq = icmp ult i64 %i.cp, 9223372036854775807, !dbg !1081
  br i1 %i.cq, label %bb.t, label %bb.s, !dbg !1082, !prof !427

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
          to label %.noexc unwind label %bb.ac, !dbg !1083

.noexc:                                           ; preds = %bb.s
  unreachable, !dbg !1083

bb.t:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !1084
  %.val.i = load i64, ptr %i.cr, align 8, !dbg !1084, !range !429, !noundef !401
  %i.cs = trunc nuw i64 %.val.i to i1, !dbg !1085 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !1086
  %i.cu = load i8, ptr %i.ct, align 8, !dbg !1086, !range !443, !alias.scope !1021, !noundef !401
  %.not.i.i = icmp eq i8 %i.cu, -1, !dbg !1086
  br i1 %.not.i.i, label %bb.u, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, !dbg !1087

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !1088
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 124, !dbg !1089
  %i.cx = load i8, ptr %i.cw, align 4, !dbg !1089, !range !443, !alias.scope !1021, !noundef !401
  %i.cy = icmp ne i8 %i.cx, -1, !dbg !1089
  %i.cz = load i8, ptr %i.cv, align 1, !range !403, !alias.scope !1021
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.dc = load <4 x i8>, ptr %i.db, align 2, !alias.scope !1021
  %.fr49 = freeze <4 x i8> %i.dc
  %i.dd = trunc <4 x i8> %.fr49 to <4 x i1>
  %i.de = bitcast <4 x i1> %i.dd to i4, !dbg !1090
  %i.df = icmp ne i4 %i.de, 0, !dbg !1090
  %i.dg = or i1 %i.cy, %i.df, !dbg !1090
  %op.rdx46 = select i1 %i.dg, i1 true, i1 %i.da, !dbg !1090
  br i1 %op.rdx46, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, label %.split.i, !dbg !1090

.split.i:                                         ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !1091
  %i.di = load i8, ptr %i.dh, align 1, !dbg !1091, !range !403, !alias.scope !1021, !noundef !401
  %i.dj = trunc nuw i8 %i.di to i1, !dbg !1092
  %i.dk = and i1 %i.cs, %i.dj, !dbg !1093
  br i1 %i.dk, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.v, !dbg !1093

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i: ; preds = %bb.u, %bb.t
  br i1 %i.cs, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.v, !dbg !1093

bb.v:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %.split.i
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 150, !dbg !1094
  %i.dm = load i8, ptr %i.dl, align 2, !dbg !1094, !range !403, !noundef !401
  %i.dn = trunc nuw i8 %i.dm to i1, !dbg !1094
  br i1 %i.dn, label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, label %bb.w, !dbg !1094

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1095
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !1095, !nonnull !401, !noundef !401
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16, !dbg !1096
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !1096, !range !450, !noundef !401
  %.not3.i = icmp ne i64 %i.dr, -1, !dbg !1096
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.dt = load i8, ptr %i.ds, align 1, !range !403
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond = select i1 %.not3.i, i1 true, i1 %i.du, !dbg !1097
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.dw = load i8, ptr %i.dv, align 2, !range !403
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond45 = select i1 %or.cond, i1 true, i1 %i.dx, !dbg !1097
  %i.dy = load i8, ptr %i.ce, align 1, !range !403
  %spec.select = select i1 %or.cond45, i8 1, i8 %i.dy, !dbg !1097
  br label %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit, !dbg !1097

_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.w, %bb.v, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %.split.i
  %.sroa.0.0.i = phi i8 [ %spec.select, %bb.w ], [ 1, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i ], [ 1, %bb.v ], [ 1, %.split.i ], !dbg !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1022
  store i64 -1, ptr %i.f, align 8, !dbg !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !1102
  %i.dz = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.z unwind label %bb.x, !dbg !1103 ; 2 uses

bb.x:                                             ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load i64, ptr %i.d, align 8, !dbg !1104, !range !455, !alias.scope !1023, !noundef !401
  %i.ec = icmp eq i64 %i.eb, -2, !dbg !1104
  br i1 %i.ec, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit, label %bb.y, !dbg !1104

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit unwind label %bb.aa, !dbg !1104

bb.z:                                             ; preds = %_RNvMs2_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE23needs_match_granularityCs2NzvFoTxuAy_2rg.exit
  %i.ed = extractvalue { i64, i32 } %i.dz, 0, !dbg !1103
  %i.ee = extractvalue { i64, i32 } %i.dz, 1, !dbg !1103
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !1105
  store ptr %2, ptr %i.ef, align 8, !dbg !1105
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !1105
  store ptr %1, ptr %i.eg, align 8, !dbg !1105
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.eh, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !dbg !1105
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !1105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !1105
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !1105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !1105
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !1105
  store i64 %i.ed, ptr %i.ek, align 8, !dbg !1105
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !1105
  store i32 %i.ee, ptr %i.el, align 8, !dbg !1105
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !1105
  store i64 0, ptr %i.em, align 8, !dbg !1105
  store i64 0, ptr %0, align 8, !dbg !1105
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !1105
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !1105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.en, i8 0, i64 56, i1 false), !dbg !1105
  store i32 %., ptr %.sroa.2.0..sroa_idx1, align 8, !dbg !1105
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !1105
  store i8 %.sroa.0.0.i, ptr %i.eo, align 8, !dbg !1105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1063
  br label %bb.n, !dbg !1063

bb.aa:                                            ; preds = %bb.y, %bb.ad, %bb.ac, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1108
  unreachable, !dbg !1108

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.x, %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #16
          to label %bb.ab unwind label %bb.aa, !dbg !1106

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #16
          to label %common.resume unwind label %bb.aa, !dbg !1106

bb.ac:                                            ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #16
          to label %bb.ad unwind label %bb.aa, !dbg !1107

bb.ad:                                            ; preds = %bb.ac, %bb.p
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.eq, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #16
          to label %common.resume unwind label %bb.aa, !dbg !1063
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cs4h1mOclLn8u_14encoding_rs_ioNtB5_24DecodeReaderBytesBuilder17build_with_bufferQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1109 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !1147
  %.val1.i = load i64, ptr %i.f, align 8, !dbg !1147, !noundef !401 ; 2 uses
  %i.g = icmp ult i64 %.val1.i, 4, !dbg !1148
  br i1 %i.g, label %.split, label %bb.b, !dbg !1148

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !dbg !1149, !align !467, !noundef !401 ; 6 uses
  %.not = icmp eq ptr %i.h, null, !dbg !1150
  br i1 %.not, label %bb.f, label %bb.c, !dbg !1151

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1152
  store i64 %.val1.i, ptr %i.d, align 8, !dbg !1152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1153
  store ptr %i.d, ptr %i.c, align 8, !dbg !1153
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1153
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !1153
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @0, ptr noundef nonnull %i.c), !dbg !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1155
  %i.i = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsc0anycpf6TS_6ignore(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e) #17, !dbg !1156
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1157
  store ptr %i.i, ptr %i.j, align 8, !dbg !1157
  store i64 2, ptr %0, align 8, !dbg !1157
  br label %bb.j, !dbg !1158

bb.c:                                             ; preds = %bb.b
  call void @_RNvMCsbRtu51WrwYN_11encoding_rsNtB2_8Encoding19new_variant_decoder(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !dbg !1159
  %i.k = load ptr, ptr @_RNvCsbRtu51WrwYN_11encoding_rs5UTF_8, align 8, !dbg !1160, !noalias !1143, !nonnull !401, !align !467, !noundef !401
  %i.l = icmp eq ptr %i.h, %i.k, !dbg !1161
  br i1 %i.l, label %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit, label %bb.d, !dbg !1162

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16BE, align 8, !dbg !1163, !noalias !1143, !nonnull !401, !align !467, !noundef !401
  %i.n = icmp eq ptr %i.h, %i.m, !dbg !1164
  br i1 %i.n, label %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit, label %bb.e, !dbg !1165

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @_RNvCsbRtu51WrwYN_11encoding_rs8UTF_16LE, align 8, !dbg !1166, !noalias !1143, !nonnull !401, !align !467, !noundef !401
  %i.p = icmp eq ptr %i.h, %i.o, !dbg !1167
  %..i = select i1 %i.p, i8 3, i8 9, !dbg !1168
  br label %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit, !dbg !1168

_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i8 [ 2, %bb.d ], [ 1, %bb.c ], [ %..i, %bb.e ], !dbg !1169
  %.sroa.035.0.copyload = load i8, ptr %i.a, align 8, !dbg !1170
  br label %bb.f, !dbg !1171

bb.f:                                             ; preds = %bb.b, %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit
  %.sroa.4.sroa.3.0 = phi i8 [ undef, %bb.b ], [ %.sroa.0.0.i, %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit ]
  %.sroa.0.0 = phi i8 [ -1, %bb.b ], [ %.sroa.035.0.copyload, %_RNvMs3_CsbRtu51WrwYN_11encoding_rsNtB5_7Decoder3new.exit ], !dbg !1172 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 11, !dbg !1173
  %i.r = load i8, ptr %i.q, align 1, !dbg !1173, !range !403, !noundef !401
  %i.s = trunc nuw i8 %i.r to i1, !dbg !1173
  br i1 %i.s, label %bb.g, label %bb.h, !dbg !1173

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !1174
  %i.u = load i8, ptr %i.t, align 1, !dbg !1174, !range !403, !noundef !401
  %i.v = trunc nuw i8 %i.u to i1, !dbg !1174
  br i1 %i.v, label %bb.h, label %bb.i, !dbg !1174

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.i
  %.sroa.05.0 = phi i8 [ 1, %bb.f ], [ %i.ab, %bb.i ], [ 0, %bb.g ], !dbg !1175
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10, !dbg !1176
  %i.x = load i8, ptr %i.w, align 2, !dbg !1176, !range !403, !noundef !401
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, i8 0, i64 7, i1 false), !dbg !1178
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1179
  %i.z = load i8, ptr %i.y, align 8, !dbg !1179, !range !403, !noundef !401
  store i64 0, ptr %0, align 8, !dbg !1177
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1177
  store ptr %2, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !1177
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1177
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !dbg !2174
  unreachable, !dbg !2174

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.m, null, !dbg !2175
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2176

bb.e:                                             ; preds = %bb.d
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2177
  %.sroa.07.0 = load ptr, ptr %.sroa.07.0.in, align 8, !dbg !2177, !nonnull !401, !noundef !401
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2177
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !dbg !2177, !noundef !401
  %i.n = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0, i64 noundef %.sroa.3.0)
          to label %bb.f unwind label %bb.i, !dbg !2178 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not10 = icmp eq ptr %i.n, null, !dbg !2179
  br i1 %.not10, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2180

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !2181, !range !429, !alias.scope !2156, !noundef !401
  %i.p = trunc nuw i64 %i.o to i1, !dbg !2182
  br i1 %i.p, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2182

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 200, !dbg !2183
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !2184

.noexc:                                           ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 216, !dbg !2185 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !2185, !alias.scope !2158, !noundef !401 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1, !dbg !2186
  tail call void @llvm.assume(i1 %i.t), !dbg !2187
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !2188
  %i.v = load ptr, ptr %i.u, align 8, !dbg !2188, !alias.scope !2158, !nonnull !401, !noundef !401
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s, !dbg !2189
  store i32 1831885595, ptr %i.w, align 1, !dbg !2190
  %i.x = load i64, ptr %i.r, align 8, !dbg !2191, !alias.scope !2158, !noundef !401
  %i.y = add i64 %i.x, 4, !dbg !2191
  store i64 %i.y, ptr %i.r, align 8, !dbg !2191, !alias.scope !2158
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2192

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %bb.d, %bb.f, %bb.g, %.noexc
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %.noexc ], [ %i.m, %bb.d ], [ %i.n, %bb.f ], !dbg !2193
  %storemerge.in = load i64, ptr %i.e, align 8, !dbg !2194, !noundef !401
  %storemerge = add i64 %storemerge.in, 1, !dbg !2195
  store i64 %storemerge, ptr %i.e, align 8, !dbg !2196
  ret ptr %.sroa.0.0, !dbg !2197

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.e, align 8, !dbg !2198, !noundef !401
  %i.ab = add i64 %i.aa, 1, !dbg !2199
  store i64 %i.ab, ptr %i.e, align 8, !dbg !2200
  resume { ptr, i32 } %i.z, !dbg !2201
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !106 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !2248
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2248, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !2249 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !2250, !noundef !401
  %i.e = icmp eq i64 %i.d, 0, !dbg !2251
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !2251, !prof !427

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !2252
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !2253 ; 3 uses
  %i.g = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %0)
          to label %bb.d unwind label %bb.i, !dbg !2254 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !2255
  unreachable, !dbg !2255

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.g, null, !dbg !2256
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2257

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.f unwind label %bb.i, !dbg !2258 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not11 = icmp eq ptr %i.h, null, !dbg !2259
  br i1 %.not11, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2260

bb.g:                                             ; preds = %bb.f
  %i.i = load i64, ptr %i.f, align 8, !dbg !2261, !range !429, !alias.scope !2239, !noundef !401
  %i.j = trunc nuw i64 %i.i to i1, !dbg !2262
  br i1 %i.j, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2262

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !2263
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !2264

.noexc:                                           ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216, !dbg !2265 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2265, !alias.scope !2241, !noundef !401 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !2266
  tail call void @llvm.assume(i1 %i.n), !dbg !2267
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !2268
  %i.p = load ptr, ptr %i.o, align 8, !dbg !2268, !alias.scope !2241, !nonnull !401, !noundef !401
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !2269
  store i32 1831885595, ptr %i.q, align 1, !dbg !2270
  %i.r = load i64, ptr %i.l, align 8, !dbg !2271, !alias.scope !2241, !noundef !401
  %i.s = add i64 %i.r, 4, !dbg !2271
  store i64 %i.s, ptr %i.l, align 8, !dbg !2271, !alias.scope !2241
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2272

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %bb.d, %bb.f, %bb.g, %.noexc
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %.noexc ], [ %i.g, %bb.d ], [ %i.h, %bb.f ], !dbg !2273
  %storemerge.in = load i64, ptr %i.c, align 8, !dbg !2274, !noundef !401
  %storemerge = add i64 %storemerge.in, 1, !dbg !2275
  store i64 %storemerge, ptr %i.c, align 8, !dbg !2276
  ret ptr %.sroa.0.0, !dbg !2277

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %i.c, align 8, !dbg !2278, !noundef !401
  %i.v = add i64 %i.u, 1, !dbg !2279
  store i64 %i.v, ptr %i.c, align 8, !dbg !2280
  resume { ptr, i32 } %i.t, !dbg !2281
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg(ptr %.88.val, i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !122 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !2302
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2302, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !2303 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !2304, !noundef !401
  %i.e = icmp eq i64 %i.d, 0, !dbg !2305
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !2305, !prof !427

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.88.val, i64 248, !dbg !2306
  store i64 -1, ptr %i.c, align 8, !dbg !2307
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !2308
  %i.h = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.e, !dbg !2309

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !2310
  unreachable, !dbg !2310

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !dbg !2311, !noundef !401
  %i.j = add i64 %i.i, 1, !dbg !2312
  store i64 %i.j, ptr %i.c, align 8, !dbg !2313
  ret ptr %i.h, !dbg !2314

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.c, align 8, !dbg !2315, !noundef !401
  %i.m = add i64 %i.l, 1, !dbg !2316
  store i64 %i.m, ptr %i.c, align 8, !dbg !2317
  resume { ptr, i32 } %i.k, !dbg !2318
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15end_color_matchCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2319 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !2441 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !2442, !range !403, !noundef !401
  %i.c = trunc nuw i8 %i.b to i1, !dbg !2442
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !2443

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2444 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2444, !nonnull !401, !align !467, !noundef !401
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !2444
  %i.g = load ptr, ptr %i.f, align 8, !dbg !2444, !nonnull !401, !align !467, !noundef !401 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !2445
  %i.i = load i8, ptr %i.h, align 1, !dbg !2445, !range !443, !alias.scope !2398, !noundef !401
  %.not.i = icmp eq i8 %i.i, -1, !dbg !2445
  br i1 %.not.i, label %bb.c, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !2446

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !2447
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 139, !dbg !2448
  %i.l = load i8, ptr %i.k, align 1, !dbg !2448, !range !443, !alias.scope !2398, !noundef !401
  %i.m = icmp ne i8 %i.l, -1, !dbg !2448
  %i.n = load i8, ptr %i.j, align 8, !range !403, !alias.scope !2398
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.q = load <4 x i8>, ptr %i.p, align 1, !alias.scope !2398
  %.fr = freeze <4 x i8> %i.q
  %i.r = trunc <4 x i8> %.fr to <4 x i1>
  %i.s = bitcast <4 x i1> %i.r to i4, !dbg !2449
  %i.t = icmp ne i4 %i.s, 0, !dbg !2449
  %i.u = or i1 %i.m, %i.t, !dbg !2449
  %op.rdx16 = select i1 %i.u, i1 true, i1 %i.o, !dbg !2449
  br i1 %op.rdx16, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !2449

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 134, !dbg !2450
  %i.w = load i8, ptr %i.v, align 2, !dbg !2450, !range !403, !alias.scope !2398, !noundef !401
  %i.x = trunc nuw i8 %i.w to i1, !dbg !2451
  br i1 %i.x, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.e, !dbg !2452

bb.d:                                             ; preds = %bb.j, %bb.a, %bb.k
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ %i.al, %bb.j ], !dbg !2453
  ret ptr %.sroa.0.0, !dbg !2454

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2455
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2455, !noundef !401
  %.not = icmp eq ptr %i.z, null, !dbg !2456
  br i1 %.not, label %bb.f, label %bb.e, !dbg !2457

bb.e:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !2458 ; 6 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !2459, !noundef !401
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !2460
  br i1 %i.ac, label %bb.m, label %bb.o, !dbg !2460, !prof !427

bb.f:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !2461 ; 6 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2462, !noundef !401
  %i.af = icmp eq i64 %i.ae, 0, !dbg !2463
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !2463, !prof !427

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %i.ad, align 8, !dbg !2464
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !2465
  %i.ah = load ptr, ptr %i.d, align 8, !dbg !2466, !nonnull !401, !align !467, !noundef !401
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240, !dbg !2466
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !2466, !nonnull !401, !align !467, !noundef !401
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128, !dbg !2467
  %i.al = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %i.ak)
          to label %bb.j unwind label %bb.i, !dbg !2468 ; 2 uses

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !dbg !2469
  unreachable, !dbg !2469

bb.i:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i64, ptr %i.ad, align 8, !dbg !2470, !noundef !401
  %i.ao = add i64 %i.an, 1, !dbg !2471
  store i64 %i.ao, ptr %i.ad, align 8, !dbg !2472
  br label %bb.l, !dbg !2473

bb.j:                                             ; preds = %bb.g
  %.not8 = icmp eq ptr %i.al, null, !dbg !2474
  %i.ap = load i64, ptr %i.ad, align 8, !dbg !2475, !noundef !401
  %i.aq = add i64 %i.ap, 1, !dbg !2476
  store i64 %i.aq, ptr %i.ad, align 8, !dbg !2477
  br i1 %.not8, label %bb.k, label %bb.d, !dbg !2478

bb.k:                                             ; preds = %bb.j, %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit
  store i8 0, ptr %i.a, align 8, !dbg !2479
  br label %bb.d, !dbg !2454

bb.l:                                             ; preds = %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.am, %bb.i ]
  resume { ptr, i32 } %.pn, !dbg !2480

bb.m:                                             ; preds = %bb.e
  store i64 -1, ptr %i.aa, align 8, !dbg !2481
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !2482
  %i.as = load i64, ptr %i.ar, align 8, !dbg !2483, !range !429, !alias.scope !2438, !noundef !401
  %i.at = trunc nuw i64 %i.as to i1, !dbg !2484
  br i1 %i.at, label %bb.n, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2484

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 200, !dbg !2485
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef 4)
          to label %.noexc unwind label %bb.p, !dbg !2486

.noexc:                                           ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 216, !dbg !2487 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !dbg !2487, !alias.scope !2440, !noundef !401 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !2488
  tail call void @llvm.assume(i1 %i.ax), !dbg !2489
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 208, !dbg !2490
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !2490, !alias.scope !2440, !nonnull !401, !noundef !401
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw, !dbg !2491
  store i32 1831885595, ptr %i.ba, align 1, !dbg !2492
  %i.bb = load i64, ptr %i.av, align 8, !dbg !2493, !alias.scope !2440, !noundef !401
  %i.bc = add i64 %i.bb, 4, !dbg !2493
  store i64 %i.bc, ptr %i.av, align 8, !dbg !2493, !alias.scope !2440
  %.pre = load i64, ptr %i.aa, align 8, !dbg !2494
  %i.bd = add i64 %.pre, 1, !dbg !2495
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2496

bb.o:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14, !dbg !2497
  unreachable, !dbg !2497

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i64, ptr %i.aa, align 8, !dbg !2498, !noundef !401
  %i.bg = add i64 %i.bf, 1, !dbg !2499
  store i64 %i.bg, ptr %i.aa, align 8, !dbg !2500
  br label %bb.l, !dbg !2501

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %.noexc, %bb.m
  %i.bh = phi i64 [ %i.bd, %.noexc ], [ 0, %bb.m ], !dbg !2494
  store i64 %i.bh, ptr %i.aa, align 8, !dbg !2502
  br label %bb.k, !dbg !2503
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE18write_colored_lineCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2504 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2704 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !dbg !2704, !nonnull !401, !align !467, !noundef !401
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240, !dbg !2704
  %i.i = load ptr, ptr %i.h, align 8, !dbg !2704, !nonnull !401, !align !467, !noundef !401 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 113, !dbg !2705
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 184, !dbg !2706 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !2707, !noalias !2668, !noundef !401 ; 3 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775807, !dbg !2708
  br i1 %i.m, label %bb.c, label %bb.b, !dbg !2709, !prof !427

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #14, !dbg !2710
  unreachable, !dbg !2710

bb.c:                                             ; preds = %bb.a
  %i.n = add nuw nsw i64 %i.l, 1, !dbg !2711
  store i64 %i.n, ptr %i.k, align 8, !dbg !2712, !noalias !2668
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 192, !dbg !2713
  %.val = load i64, ptr %i.o, align 8, !dbg !2714, !range !429, !noundef !401
  %.not41 = icmp eq i64 %.val, 0, !dbg !2715
  store i64 %i.l, ptr %i.k, align 8, !dbg !2716
  br i1 %.not41, label %bb.f, label %bb.d, !dbg !2717

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 120, !dbg !2718
  %i.q = load i8, ptr %i.p, align 8, !dbg !2718, !range !443, !alias.scope !2675, !noundef !401
  %.not.i28 = icmp eq i8 %i.q, -1, !dbg !2718
  br i1 %.not.i28, label %bb.e, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !2719

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 124, !dbg !2720
  %i.s = load i8, ptr %i.r, align 4, !dbg !2720, !range !443, !alias.scope !2675, !noundef !401
  %i.t = icmp ne i8 %i.s, -1, !dbg !2720
  %i.u = load i8, ptr %i.j, align 1, !range !403, !alias.scope !2675
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 114
  %i.x = load <4 x i8>, ptr %i.w, align 2, !alias.scope !2675
  %.fr = freeze <4 x i8> %i.x
  %i.y = trunc <4 x i8> %.fr to <4 x i1>
  %i.z = bitcast <4 x i1> %i.y to i4, !dbg !2721
  %i.aa = icmp ne i4 %i.z, 0, !dbg !2721
  %i.ab = or i1 %i.t, %i.aa, !dbg !2721
  %op.rdx56 = select i1 %i.ab, i1 true, i1 %i.v, !dbg !2721
  br i1 %op.rdx56, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !2721

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 119, !dbg !2722
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !2722, !range !403, !alias.scope !2675, !noundef !401
  %i.ae = trunc nuw i8 %i.ad to i1, !dbg !2723
  br i1 %i.ae, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.f, !dbg !2724

bb.f:                                             ; preds = %bb.c, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit
  %i.af = load ptr, ptr %i.f, align 8, !dbg !2725, !noalias !2676, !nonnull !401, !align !467, !noundef !401
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240, !dbg !2725
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !2725, !noalias !2676, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152, !dbg !2726
  %i.aj = load i8, ptr %i.ai, align 8, !dbg !2726, !range !403, !noalias !2676, !noundef !401
  %i.ak = trunc nuw i8 %i.aj to i1, !dbg !2726
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !2726

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.al = phi ptr [ %.pre46, %bb.j ], [ %i.ah, %bb.f ], !dbg !2727 ; 4 uses
  %.sroa.11.0.i = phi i64 [ %i.bc, %bb.j ], [ %4, %bb.f ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.bd, %bb.j ], [ %3, %bb.f ] ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !dbg !2728, !range !429, !noundef !401
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !2728
  %i.ao = load i64, ptr %i.an, align 8, !dbg !2728
  %i.ap = trunc nuw i64 %i.am to i1, !dbg !2729
  %i.aq = icmp ugt i64 %.sroa.11.0.i, %i.ao
  %spec.select.i = select i1 %i.ap, i1 %i.aq, i1 false, !dbg !2729
  br i1 %spec.select.i, label %bb.x, label %bb.k, !dbg !2730

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2731
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !2731, !noalias !2676, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 57, !dbg !2732
  %i.au = load i8, ptr %i.at, align 1, !dbg !2732, !noalias !2676
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56, !dbg !2732
  %i.aw = load i8, ptr %i.av, align 8, !dbg !2732, !range !403, !noalias !2676, !noundef !401
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !2732
  %i.ay = tail call { i64, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util17trim_ascii_prefix(i1 noundef zeroext %i.ax, i8 %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %4), !dbg !2733 ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0, !dbg !2733 ; 4 uses
  %i.ba = extractvalue { i64, i64 } %i.ay, 1, !dbg !2733 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, %i.az, !dbg !2734
  %.not.i = icmp ugt i64 %i.ba, %4
  %or.cond.i = or i1 %i.bb, %.not.i, !dbg !2734
  br i1 %or.cond.i, label %bb.i, label %bb.j, !dbg !2734, !prof !576

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.ba, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !dbg !2735
  unreachable, !dbg !2735

bb.j:                                             ; preds = %bb.h
  %i.bc = sub nuw i64 %i.ba, %i.az, !dbg !2736
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.az, !dbg !2737
  %.pre44 = load ptr, ptr %i.f, align 8, !dbg !2727, !noalias !2676
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %.pre44, i64 240
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !dbg !2727
  br label %bb.g, !dbg !2738

bb.k:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 184, !dbg !2739 ; 6 uses
  %i.bf = load i64, ptr %i.be, align 8, !dbg !2740, !noalias !2677, !noundef !401
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !2741
  br i1 %i.bg, label %bb.l, label %bb.m, !dbg !2741, !prof !427

bb.l:                                             ; preds = %bb.k
  store i64 -1, ptr %i.be, align 8, !dbg !2742, !noalias !2677
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 192, !dbg !2743
  %i.bi = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit unwind label %bb.n, !dbg !2744 ; 2 uses

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !2745, !noalias !2677
  unreachable, !dbg !2745

common.resume:                                    ; preds = %bb.ai, %bb.af, %bb.u, %bb.r, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.ch, %bb.r ], [ %i.cu, %bb.u ], [ %i.er, %bb.af ], [ %i.ew, %bb.ai ]
  resume { ptr, i32 } %common.resume.op, !dbg !2746

bb.n:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load i64, ptr %i.be, align 8, !dbg !2747, !noundef !401
  %i.bl = add i64 %i.bk, 1, !dbg !2748
  store i64 %i.bl, ptr %i.be, align 8, !dbg !2749
  br label %common.resume, !dbg !2750

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l
  %i.bm = load i64, ptr %i.be, align 8, !dbg !2751, !noundef !401
  %i.bn = add i64 %i.bm, 1, !dbg !2752
  store i64 %i.bn, ptr %i.be, align 8, !dbg !2753
  %.not32.i = icmp eq ptr %i.bi, null, !dbg !2754
  br i1 %.not32.i, label %bb.o, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit, !dbg !2755

bb.o:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2756
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !2756, !noalias !2676, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56, !dbg !2757
  %i.br = load i8, ptr %i.bq, align 8, !dbg !2757, !range !403, !noundef !401 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 57, !dbg !2757
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !2757 ; 3 uses
  %.not33.i = icmp eq i64 %.sroa.11.0.i, 0, !dbg !2758
  %i.bu = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.11.0.i, !dbg !2758
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1, !dbg !2758 ; 2 uses
  %.not.i3142 = icmp eq ptr %i.bv, null, !dbg !2759
  %.not.i31 = select i1 %.not33.i, i1 true, i1 %.not.i3142, !dbg !2758
  br i1 %.not.i31, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit, !dbg !2760

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.o
  %.pre47 = trunc nuw i8 %i.br to i1, !dbg !2761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2762, !noalias !2676
  store i8 %i.br, ptr %i.a, align 1, !dbg !2763, !noalias !2676
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !2763 ; 2 uses
  store i8 %i.bt, ptr %i.bw, align 1, !dbg !2763, !noalias !2676
  br i1 %.pre47, label %.split30.i, label %.split.i, !dbg !2764

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.o
  %.val5.i = load i8, ptr %i.bv, align 1, !dbg !2765, !alias.scope !2678, !noundef !401
  %i.bx = trunc nuw i8 %i.br to i1, !dbg !2766    ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.bx, i8 10, i8 %i.bt, !dbg !2767
  %i.by = icmp eq i8 %.val5.i, %.sroa.0.0.i.i, !dbg !2768
  br i1 %i.by, label %bb.w, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !2769

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2762, !noalias !2676
  store i8 %i.br, ptr %i.a, align 1, !dbg !2763, !noalias !2676
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !2763 ; 2 uses
  store i8 %i.bt, ptr %i.bz, align 1, !dbg !2763, !noalias !2676
  br i1 %i.bx, label %.split30.i, label %.split.i, !dbg !2764

.split30.i:                                       ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread
  %.val21 = load ptr, ptr %i.f, align 8, !dbg !2770, !nonnull !401, !align !467, !noundef !401
  %i.ca = getelementptr inbounds nuw i8, ptr %.val21, i64 240, !dbg !2771
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !2771, !noalias !2679, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 184, !dbg !2772 ; 6 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !2773, !noalias !2679, !noundef !401
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !2774
  br i1 %i.ce, label %bb.p, label %bb.q, !dbg !2774, !prof !427

bb.p:                                             ; preds = %.split30.i
  store i64 -1, ptr %i.cc, align 8, !dbg !2775, !noalias !2679
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 192, !dbg !2776
  %i.cg = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 2)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit32 unwind label %bb.r, !dbg !2777

bb.q:                                             ; preds = %.split30.i
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !2778, !noalias !2679
  unreachable, !dbg !2778

bb.r:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load i64, ptr %i.cc, align 8, !dbg !2779, !noundef !401
  %i.cj = add i64 %i.ci, 1, !dbg !2780
  store i64 %i.cj, ptr %i.cc, align 8, !dbg !2781
  br label %common.resume, !dbg !2782

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit32: ; preds = %bb.p
  %i.ck = load i64, ptr %i.cc, align 8, !dbg !2783, !noundef !401
  %i.cl = add i64 %i.ck, 1, !dbg !2784
  store i64 %i.cl, ptr %i.cc, align 8, !dbg !2785
  br label %bb.v, !dbg !2786

.split.i:                                         ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread
  %i.cm = phi ptr [ %i.bw, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.bz, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread ]
  %.val22 = load ptr, ptr %i.f, align 8, !dbg !2770, !nonnull !401, !align !467, !noundef !401
  %i.cn = getelementptr inbounds nuw i8, ptr %.val22, i64 240, !dbg !2787
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !2787, !noalias !2680, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 184, !dbg !2788 ; 6 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !2789, !noalias !2680, !noundef !401
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !2790
  br i1 %i.cr, label %bb.s, label %bb.t, !dbg !2790, !prof !427

bb.s:                                             ; preds = %.split.i
  store i64 -1, ptr %i.cp, align 8, !dbg !2791, !noalias !2680
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 192, !dbg !2792
  %i.ct = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit33 unwind label %bb.u, !dbg !2793

bb.t:                                             ; preds = %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !2794, !noalias !2680
  unreachable, !dbg !2794

bb.u:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load i64, ptr %i.cp, align 8, !dbg !2795, !noundef !401
  %i.cw = add i64 %i.cv, 1, !dbg !2796
  store i64 %i.cw, ptr %i.cp, align 8, !dbg !2797
  br label %common.resume, !dbg !2798

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit33: ; preds = %bb.s
  %i.cx = load i64, ptr %i.cp, align 8, !dbg !2799, !noundef !401
  %i.cy = add i64 %i.cx, 1, !dbg !2800
  store i64 %i.cy, ptr %i.cp, align 8, !dbg !2801
  br label %bb.v, !dbg !2802

bb.v:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit33, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit32
  %phi.call.i = phi ptr [ %i.ct, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit33 ], [ %i.cg, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit32 ], !dbg !2770 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2803, !noalias !2676
  %.not34.i = icmp eq ptr %phi.call.i, null, !dbg !2804
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE19write_exceeded_lineCs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.fj, label %bb.be, label %bb.bf, !dbg !3478, !prof !427

bb.be:                                            ; preds = %.split73
  store i64 -1, ptr %i.fh, align 8, !dbg !3479, !noalias !3249
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 192, !dbg !3480
  %i.fy = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit116 unwind label %bb.bg, !dbg !3481

bb.bf:                                            ; preds = %.split73
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !3482, !noalias !3249
  unreachable, !dbg !3482

bb.bg:                                            ; preds = %bb.be
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load i64, ptr %i.fh, align 8, !dbg !3483, !noundef !401
  %i.gb = add i64 %i.ga, 1, !dbg !3484
  store i64 %i.gb, ptr %i.fh, align 8, !dbg !3485
  br label %common.resume, !dbg !3486

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit116: ; preds = %bb.be, %bb.bb
  %phi.call76 = phi ptr [ %i.ft, %bb.bb ], [ %i.fy, %bb.be ], !dbg !3230
  %i.gc = load i64, ptr %i.fh, align 8, !dbg !3487, !noundef !401
  %i.gd = add i64 %i.gc, 1, !dbg !3488
  store i64 %i.gd, ptr %i.fh, align 8, !dbg !3489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3490
  br label %bb.ai, !dbg !3491
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20write_path_hyperlinkCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3492 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3541), !dbg !3545
  %i.c = tail call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %1), !dbg !3546, !noalias !3541 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !3547
  br i1 %.not.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread, label %bb.b, !dbg !3548

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3549, !noalias !3541
  store i64 0, ptr %i.a, align 8, !dbg !3550, !noalias !3541
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3550
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3550, !noalias !3541
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3550
  store ptr %i.c, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !3550, !noalias !3541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !3551
  %i.e = load ptr, ptr %i.d, align 8, !dbg !3551, !noalias !3541, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !3552
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3552, !noalias !3541, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !3553 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !3554, !noalias !3541, !noundef !401
  %i.j = icmp eq i64 %i.i, 0, !dbg !3555
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !3555, !prof !427

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !3556
  store i8 0, ptr %i.k, align 1, !dbg !3556, !alias.scope !3541
  br label %bb.g, !dbg !3557

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 248, !dbg !3551
  store i64 -1, ptr %i.h, align 8, !dbg !3558, !noalias !3541
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !3559
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !3560

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !3561, !noalias !3541
  unreachable, !dbg !3561

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ai, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !3562

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.h, align 8, !dbg !3563, !noalias !3541, !noundef !401
  %i.p = add i64 %i.o, 1, !dbg !3564
  store i64 %i.p, ptr %i.h, align 8, !dbg !3565, !noalias !3541
  br label %common.resume, !dbg !3566

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !dbg !3567, !noalias !3541, !noundef !401
  %i.r = add i64 %i.q, 1, !dbg !3568
  store i64 %i.r, ptr %i.h, align 8, !dbg !3569, !noalias !3541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3570, !noalias !3541
  %.pre = load i8, ptr %i.b, align 8, !dbg !3571, !range !403
  %i.s = trunc nuw i8 %.pre to i1, !dbg !3571
  br i1 %i.s, label %bb.f, label %bb.g, !dbg !3557

bb.f:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3572
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3572, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3573
  br label %bb.l, !dbg !3574

bb.g:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !3575
  %i.w = load i8, ptr %i.v, align 1, !dbg !3575, !range !403, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3573
  %i.x = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1), !dbg !3576 ; 2 uses
  %.not = icmp eq ptr %i.x, null, !dbg !3577
  br i1 %.not, label %bb.h, label %bb.l, !dbg !3578

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 88, !dbg !3579
  %.val = load ptr, ptr %i.y, align 8, !dbg !3579, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 240, !dbg !3580
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !3580, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184, !dbg !3581 ; 6 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !3582, !noundef !401
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !3583
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !3583, !prof !427

bb.i:                                             ; preds = %bb.h
  %i.ae = trunc nuw i8 %i.w to i1, !dbg !3575
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 248, !dbg !3584
  store i64 -1, ptr %i.ab, align 8, !dbg !3585
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 192, !dbg !3586
  %i.ah = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit unwind label %bb.k, !dbg !3587

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !3588
  unreachable, !dbg !3588

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i64, ptr %i.ab, align 8, !dbg !3589, !noundef !401
  %i.ak = add i64 %i.aj, 1, !dbg !3590
  store i64 %i.ak, ptr %i.ab, align 8, !dbg !3591
  br label %common.resume, !dbg !3592

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.i
  %i.al = load i64, ptr %i.ab, align 8, !dbg !3593, !noundef !401
  %i.am = add i64 %i.al, 1, !dbg !3594
  store i64 %i.am, ptr %i.ab, align 8, !dbg !3595
  br label %bb.l, !dbg !3596

bb.l:                                             ; preds = %bb.g, %bb.f, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ %i.ah, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit ], [ %i.x, %bb.g ], !dbg !3562
  ret ptr %.sroa.0.0, !dbg !3596
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE21write_colored_matchesCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3597 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  store i64 %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !3933
  %i.l = load ptr, ptr %i.k, align 8, !dbg !3933, !nonnull !401, !align !467, !noundef !401
  %i.m = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !3934 ; 0 uses
  %i.n = icmp eq i64 %6, 0, !dbg !3935
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !3935

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.i, align 8, !dbg !3936, !noundef !401 ; 4 uses
  %i.p = load i64, ptr %i.j, align 8, !dbg !3936, !noundef !401 ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.o, !dbg !3937
  %.not93 = icmp ugt i64 %i.p, %2
  %or.cond = or i1 %i.q, %.not93, !dbg !3937
  br i1 %or.cond, label %bb.m, label %bb.i, !dbg !3937, !prof !576

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !3938 ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !dbg !3938, !nonnull !401, !align !467, !noundef !401
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240, !dbg !3938
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3938, !nonnull !401, !align !467, !noundef !401 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 135, !dbg !3939
  %i.w = load i8, ptr %i.v, align 1, !dbg !3939, !range !443, !alias.scope !3876, !noundef !401
  %.not.i.i = icmp eq i8 %i.w, -1, !dbg !3939
  br i1 %.not.i.i, label %bb.d, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, !dbg !3940

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128, !dbg !3941
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 139, !dbg !3942
  %i.z = load i8, ptr %i.y, align 1, !dbg !3942, !range !443, !alias.scope !3876, !noundef !401
  %i.aa = icmp ne i8 %i.z, -1, !dbg !3942
  %i.ab = load i8, ptr %i.x, align 8, !range !403, !alias.scope !3876
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 129
  %i.ae = load <4 x i8>, ptr %i.ad, align 1, !alias.scope !3876
  %.fr = freeze <4 x i8> %i.ae
  %i.af = trunc <4 x i8> %.fr to <4 x i1>
  %i.ag = bitcast <4 x i1> %i.af to i4, !dbg !3943
  %i.ah = icmp ne i4 %i.ag, 0, !dbg !3943
  %i.ai = or i1 %i.aa, %i.ah, !dbg !3943
  %op.rdx316 = select i1 %i.ai, i1 true, i1 %i.ac, !dbg !3943
  br i1 %op.rdx316, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, !dbg !3943

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 134, !dbg !3944
  %i.ak = load i8, ptr %i.aj, align 2, !dbg !3944, !range !403, !alias.scope !3876, !noundef !401
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !3945
  br i1 %i.al, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, label %.preheader, !dbg !3946

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i: ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3947
  %i.an = load ptr, ptr %i.am, align 8, !dbg !3947, !noundef !401
  %.not.i = icmp eq ptr %i.an, null, !dbg !3948
  br i1 %.not.i, label %bb.e, label %.preheader, !dbg !3949

bb.e:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 184, !dbg !3950 ; 6 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !3951, !noundef !401
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !3952
  br i1 %i.aq, label %bb.f, label %bb.g, !dbg !3952, !prof !427

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %i.ao, align 8, !dbg !3953
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 192, !dbg !3954
  %i.as = load ptr, ptr %i.r, align 8, !dbg !3955, !nonnull !401, !align !467, !noundef !401
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240, !dbg !3955
  %i.au = load ptr, ptr %i.at, align 8, !dbg !3955, !nonnull !401, !align !467, !noundef !401
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128, !dbg !3956
  %i.aw = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ar, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %i.av)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20start_line_highlightCs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !3957 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14, !dbg !3958
  unreachable, !dbg !3958

common.resume:                                    ; preds = %bb.bi, %bb.as, %bb.ag, %bb.y, %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.bq, %bb.l ], [ %i.cx, %bb.y ], [ %i.dm, %bb.ag ], [ %i.ei, %bb.as ], [ %i.gj, %bb.bi ]
  resume { ptr, i32 } %common.resume.op, !dbg !3959

bb.h:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load i64, ptr %i.ao, align 8, !dbg !3960, !noundef !401
  %i.az = add i64 %i.ay, 1, !dbg !3961
  store i64 %i.az, ptr %i.ao, align 8, !dbg !3962
  br label %common.resume, !dbg !3963

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20start_line_highlightCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ao, align 8, !dbg !3964, !noundef !401
  %i.bb = add i64 %i.ba, 1, !dbg !3965
  store i64 %i.bb, ptr %i.ao, align 8, !dbg !3966
  %.not = icmp eq ptr %i.aw, null, !dbg !3967
  br i1 %.not, label %.preheader, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !3968

.preheader:                                       ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20start_line_highlightCs2NzvFoTxuAy_2rg.exit
  %i.bc = load i64, ptr %i.j, align 8, !dbg !3969, !noundef !401 ; 2 uses
  %i.bd = load i64, ptr %i.i, align 8, !dbg !3970, !noundef !401 ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !3971
  br i1 %i.be, label %.loopexit, label %.lr.ph, !dbg !3972

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %7, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.n, !dbg !3972

bb.i:                                             ; preds = %bb.b
  %i.bg = getelementptr i8, ptr %0, i64 88, !dbg !3973
  %.val98 = load ptr, ptr %i.bg, align 8, !dbg !3973, !nonnull !401, !align !467, !noundef !401
  %i.bh = getelementptr inbounds nuw i8, ptr %.val98, i64 240, !dbg !3974
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !3974, !noalias !3881, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184, !dbg !3975 ; 6 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !3976, !noalias !3881, !noundef !401
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !3977
  br i1 %i.bl, label %bb.j, label %bb.k, !dbg !3977, !prof !427

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !3978
  %i.bn = sub nuw i64 %i.p, %i.o, !dbg !3979
  store i64 -1, ptr %i.bj, align 8, !dbg !3980, !noalias !3881
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 192, !dbg !3981
  %i.bp = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef range(i64 0, -9223372036854775808) %i.bn)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !3982

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !3983, !noalias !3881
  unreachable, !dbg !3983

bb.l:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load i64, ptr %i.bj, align 8, !dbg !3984, !noundef !401
  %i.bs = add i64 %i.br, 1, !dbg !3985
  store i64 %i.bs, ptr %i.bj, align 8, !dbg !3986
  br label %common.resume, !dbg !3987

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.j
  %i.bt = load i64, ptr %i.bj, align 8, !dbg !3988, !noundef !401
  %i.bu = add i64 %i.bt, 1, !dbg !3989
  store i64 %i.bu, ptr %i.bj, align 8, !dbg !3990
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !3991

bb.m:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %i.p, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14, !dbg !3992
  unreachable, !dbg !3992

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.w, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit103, %bb.z, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit102, %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit.i, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i112, %.loopexit, %bb.ba, %bb.ax, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20start_line_highlightCs2NzvFoTxuAy_2rg.exit, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.bp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit ], [ %i.aw, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20start_line_highlightCs2NzvFoTxuAy_2rg.exit ], [ null, %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit.i ], [ %i.ev, %bb.ba ], [ %i.bz, %.loopexit ], [ null, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i112 ], [ null, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105 ], [ %i.ep, %bb.ax ], [ %i.dl, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit102 ], [ %i.eh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit103 ], [ %i.cu, %bb.w ], [ %i.da, %bb.z ], !dbg !3959
  ret ptr %.sroa.0.0, !dbg !3993

bb.n:                                             ; preds = %.lr.ph, %.backedge
  %i.bv = phi i64 [ %i.bd, %.lr.ph ], [ %i.dt, %.backedge ] ; 4 uses
  %i.bw = phi i64 [ %i.bc, %.lr.ph ], [ %i.du, %.backedge ] ; 3 uses
  %i.bx = phi i64 [ %.promoted, %.lr.ph ], [ %i.dv, %.backedge ] ; 5 uses
  %i.by = icmp ult i64 %i.bx, %6, !dbg !3994
  br i1 %i.by, label %bb.o, label %bb.p, !dbg !3994

.loopexit:                                        ; preds = %.backedge, %.preheader, %bb.ba
  %i.bz = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15end_color_matchCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0), !dbg !3995 ; 2 uses
  %.not92 = icmp eq ptr %i.bz, null, !dbg !3996
  br i1 %.not92, label %bb.bc, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !3997

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bx, !dbg !3998 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8, !dbg !3998
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !3998, !noundef !401 ; 2 uses
  %.not77 = icmp ugt i64 %i.cc, %i.bv, !dbg !3994
  br i1 %.not77, label %bb.r, label %bb.q, !dbg !3994

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14, !dbg !3994
  unreachable, !dbg !3994

bb.q:                                             ; preds = %bb.o
  %i.cd = add nuw nsw i64 %i.bx, 1, !dbg !3999    ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %6, !dbg !3999
  br i1 %i.ce, label %bb.ay, label %bb.ax, !dbg !3999

bb.r:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.ca, align 8, !dbg !4000, !noundef !401 ; 2 uses
  %i.cg = icmp ult i64 %i.bv, %i.cf, !dbg !4001
  br i1 %i.cg, label %bb.z, label %bb.s, !dbg !4001

bb.s:                                             ; preds = %bb.r
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bw), !dbg !4002 ; 8 uses
  %i.ch = load i8, ptr %i.bf, align 8, !dbg !4003, !range !403, !noundef !401
  %i.ci = trunc nuw i8 %i.ch to i1, !dbg !4003
  br i1 %i.ci, label %bb.aa, label %bb.t, !dbg !4004

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.r, align 8, !dbg !4005, !nonnull !401, !align !467, !noundef !401
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 240, !dbg !4005
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !4005, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 184, !dbg !4006 ; 6 uses
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !4007, !noundef !401
  %i.co = icmp eq i64 %i.cn, 0, !dbg !4008
  br i1 %i.co, label %bb.u, label %bb.v, !dbg !4008, !prof !427

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %i.cm, align 8, !dbg !4009
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 192, !dbg !4010
  %i.cq = load ptr, ptr %i.r, align 8, !dbg !4011, !nonnull !401, !align !467, !noundef !401
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 240, !dbg !4011
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !4011, !nonnull !401, !align !467, !noundef !401
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 113, !dbg !4012
  %i.cu = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cp, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %i.ct)
          to label %bb.w unwind label %bb.y, !dbg !4013 ; 2 uses

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #14, !dbg !4014
  unreachable, !dbg !4014

bb.w:                                             ; preds = %bb.u
  %.not.i99 = icmp eq ptr %i.cu, null, !dbg !4015
  %i.cv = load i64, ptr %i.cm, align 8, !dbg !4016, !noundef !401
  %i.cw = add i64 %i.cv, 1, !dbg !4017
  store i64 %i.cw, ptr %i.cm, align 8, !dbg !4018
  br i1 %.not.i99, label %bb.x, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4019

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.bf, align 8, !dbg !4020
  %.pre = load i64, ptr %i.i, align 8, !dbg !4021
  br label %bb.aa, !dbg !4022

bb.y:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load i64, ptr %i.cm, align 8, !dbg !4023, !noundef !401
  %i.cz = add i64 %i.cy, 1, !dbg !4024
  store i64 %i.cz, ptr %i.cm, align 8, !dbg !4025
  br label %common.resume, !dbg !4026

bb.z:                                             ; preds = %bb.r
  %..i101 = call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.bw), !dbg !4027 ; 8 uses
  %i.da = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15end_color_matchCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0), !dbg !4028 ; 2 uses
  %.not84 = icmp eq ptr %i.da, null, !dbg !4029
  br i1 %.not84, label %bb.am, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4030

bb.aa:                                            ; preds = %bb.x, %bb.s
  %i.db = phi i64 [ %.pre, %bb.x ], [ %i.bv, %bb.s ], !dbg !4021 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4031
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE21write_colored_matchesCs2NzvFoTxuAy_2rg:bb.a
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit102 unwind label %bb.ag, !dbg !4045 ; 2 uses

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !4046, !noalias !3897
  unreachable, !dbg !4046

bb.ag:                                            ; preds = %bb.ae
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load i64, ptr %i.df, align 8, !dbg !4047, !noundef !401
  %i.do = add i64 %i.dn, 1, !dbg !4048
  store i64 %i.do, ptr %i.df, align 8, !dbg !4049
  br label %common.resume, !dbg !4050

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit102: ; preds = %bb.ae
  %i.dp = load i64, ptr %i.df, align 8, !dbg !4051, !noundef !401
  %i.dq = add i64 %i.dp, 1, !dbg !4052
  store i64 %i.dq, ptr %i.df, align 8, !dbg !4053
  %.not81 = icmp eq ptr %i.dl, null, !dbg !4054
  br i1 %.not81, label %bb.ai, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4055

bb.ah:                                            ; preds = %bb.ac
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.db, i64 noundef %..i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14, !dbg !4056
  unreachable, !dbg !4056

bb.ai:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4057
  store i64 %..i, ptr %i.e, align 8, !dbg !4057
  %i.dr = load i64, ptr %i.j, align 8, !dbg !4058, !noundef !401 ; 2 uses
  %.not82 = icmp ugt i64 %..i, %i.dr, !dbg !4059
  br i1 %.not82, label %bb.aj, label %bb.ak, !dbg !4059, !prof !582

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4060
  store ptr %i.e, ptr %i.a, align 8, !dbg !4060
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4060
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8, !dbg !4060
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4060
  store ptr %i.j, ptr %i.ds, align 8, !dbg !4060
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4060
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8, !dbg !4060
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !4061
  unreachable, !dbg !4061

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4062
  br label %bb.al, !dbg !4063

bb.al:                                            ; preds = %bb.aw, %bb.ak
  %storemerge83 = phi i64 [ %..i, %bb.ak ], [ %..i101, %bb.aw ], !dbg !4064 ; 2 uses
  %storemerge = phi i64 [ %i.dr, %bb.ak ], [ %i.en, %bb.aw ], !dbg !4064 ; 2 uses
  store i64 %storemerge83, ptr %i.i, align 8, !dbg !4064
  store i64 %storemerge, ptr %i.j, align 8, !dbg !4064
  br label %.backedge, !dbg !4065

.backedge:                                        ; preds = %bb.al, %bb.ay
  %i.dt = phi i64 [ %storemerge83, %bb.al ], [ %i.bv, %bb.ay ], !dbg !3970 ; 2 uses
  %i.du = phi i64 [ %storemerge, %bb.al ], [ %i.bw, %bb.ay ], !dbg !3969 ; 2 uses
  %i.dv = phi i64 [ %i.bx, %bb.al ], [ %i.cd, %bb.ay ]
  %i.dw = icmp eq i64 %i.du, %i.dt, !dbg !3971
  br i1 %i.dw, label %.loopexit, label %bb.n, !dbg !3972

bb.am:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4066
  store i64 %..i101, ptr %i.h, align 8, !dbg !4066
  %i.dx = load i64, ptr %i.i, align 8, !dbg !4067, !noundef !401 ; 4 uses
  %.not85 = icmp ugt i64 %i.dx, %..i101, !dbg !4067
  br i1 %.not85, label %bb.an, label %bb.ao, !dbg !4067, !prof !582

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4068
  store ptr %i.i, ptr %i.d, align 8, !dbg !4068
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4068
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !4068
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !4068
  store ptr %i.h, ptr %i.dy, align 8, !dbg !4068
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !4068
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !4068
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !dbg !4069
  unreachable, !dbg !4069

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4070
  %.not86 = icmp ugt i64 %..i101, %2, !dbg !4071
  br i1 %.not86, label %bb.at, label %bb.ap, !dbg !4071, !prof !582

bb.ap:                                            ; preds = %bb.ao
  %.val96 = load ptr, ptr %i.r, align 8, !dbg !4072, !nonnull !401, !align !467, !noundef !401
  %i.dz = getelementptr inbounds nuw i8, ptr %.val96, i64 240, !dbg !4073
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !4073, !noalias !3911, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 184, !dbg !4074 ; 6 uses
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !4075, !noalias !3911, !noundef !401
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !4076
  br i1 %i.ed, label %bb.aq, label %bb.ar, !dbg !4076, !prof !427

bb.aq:                                            ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx, !dbg !4077
  %i.ef = sub nuw i64 %..i101, %i.dx, !dbg !4078
  store i64 -1, ptr %i.eb, align 8, !dbg !4079, !noalias !3911
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 192, !dbg !4080
  %i.eh = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ef)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit103 unwind label %bb.as, !dbg !4081 ; 2 uses

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !4082, !noalias !3911
  unreachable, !dbg !4082

bb.as:                                            ; preds = %bb.aq
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load i64, ptr %i.eb, align 8, !dbg !4083, !noundef !401
  %i.ek = add i64 %i.ej, 1, !dbg !4084
  store i64 %i.ek, ptr %i.eb, align 8, !dbg !4085
  br label %common.resume, !dbg !4086

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit103: ; preds = %bb.aq
  %i.el = load i64, ptr %i.eb, align 8, !dbg !4087, !noundef !401
  %i.em = add i64 %i.el, 1, !dbg !4088
  store i64 %i.em, ptr %i.eb, align 8, !dbg !4089
  %.not87 = icmp eq ptr %i.eh, null, !dbg !4090
  br i1 %.not87, label %bb.au, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4091

bb.at:                                            ; preds = %bb.ao
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.dx, i64 noundef %..i101, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #14, !dbg !4092
  unreachable, !dbg !4092

bb.au:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4093
  store i64 %..i101, ptr %i.g, align 8, !dbg !4093
  %i.en = load i64, ptr %i.j, align 8, !dbg !4094, !noundef !401 ; 2 uses
  %.not88 = icmp ugt i64 %..i101, %i.en, !dbg !4095
  br i1 %.not88, label %bb.av, label %bb.aw, !dbg !4095, !prof !582

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4096
  store ptr %i.g, ptr %i.c, align 8, !dbg !4096
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4096
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8, !dbg !4096
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4096
  store ptr %i.j, ptr %i.eo, align 8, !dbg !4096
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4096
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8, !dbg !4096
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !4097
  unreachable, !dbg !4097

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4098
  br label %bb.al, !dbg !4063

bb.ax:                                            ; preds = %bb.q
  %i.ep = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15end_color_matchCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0), !dbg !4099 ; 2 uses
  %.not89 = icmp eq ptr %i.ep, null, !dbg !4100
  br i1 %.not89, label %bb.az, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4101

bb.ay:                                            ; preds = %bb.q
  store i64 %i.cd, ptr %7, align 8, !dbg !4102
  br label %.backedge, !dbg !4103

bb.az:                                            ; preds = %bb.ax
  %i.eq = load i64, ptr %i.i, align 8, !dbg !4104, !noundef !401 ; 4 uses
  %i.er = load i64, ptr %i.j, align 8, !dbg !4104, !noundef !401 ; 4 uses
  %i.es = icmp ult i64 %i.er, %i.eq, !dbg !4105
  %.not90 = icmp ugt i64 %i.er, %2
  %or.cond95 = or i1 %i.es, %.not90, !dbg !4105
  br i1 %or.cond95, label %bb.bb, label %bb.ba, !dbg !4105, !prof !576

bb.ba:                                            ; preds = %bb.az
  %i.et = sub nuw i64 %i.er, %i.eq, !dbg !4106
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.eq, !dbg !4107
  %.val = load ptr, ptr %i.r, align 8, !dbg !4108, !nonnull !401, !align !467, !noundef !401
  %i.ev = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg(ptr nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef %i.et), !dbg !4108 ; 2 uses
  %.not91 = icmp eq ptr %i.ev, null, !dbg !4109
  br i1 %.not91, label %.loopexit, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4110

bb.bb:                                            ; preds = %bb.az
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.eq, i64 noundef %i.er, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !dbg !4111
  unreachable, !dbg !4111

bb.bc:                                            ; preds = %.loopexit
  %i.ew = load ptr, ptr %i.r, align 8, !dbg !4112, !nonnull !401, !align !467, !noundef !401
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 240, !dbg !4112
  %i.ey = load ptr, ptr %i.ex, align 8, !dbg !4112, !nonnull !401, !align !467, !noundef !401 ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 135, !dbg !4113
  %i.fa = load i8, ptr %i.ez, align 1, !dbg !4113, !range !443, !alias.scope !3929, !noundef !401
  %.not.i.i104 = icmp eq i8 %i.fa, -1, !dbg !4113
  br i1 %.not.i.i104, label %bb.bd, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105, !dbg !4114

bb.bd:                                            ; preds = %bb.bc
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 128, !dbg !4115
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 139, !dbg !4116
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !4116, !range !443, !alias.scope !3929, !noundef !401
  %i.fe = icmp ne i8 %i.fd, -1, !dbg !4116
  %i.ff = load i8, ptr %i.fb, align 8, !range !403, !alias.scope !3929
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 129
  %i.fi = load <4 x i8>, ptr %i.fh, align 1, !alias.scope !3929
  %.fr317 = freeze <4 x i8> %i.fi
  %i.fj = trunc <4 x i8> %.fr317 to <4 x i1>
  %i.fk = bitcast <4 x i1> %i.fj to i4, !dbg !4117
  %i.fl = icmp ne i4 %i.fk, 0, !dbg !4117
  %i.fm = or i1 %i.fe, %i.fl, !dbg !4117
  %op.rdx314 = select i1 %i.fm, i1 true, i1 %i.fg, !dbg !4117
  br i1 %op.rdx314, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i112, !dbg !4117

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i112: ; preds = %bb.bd
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 134, !dbg !4118
  %i.fo = load i8, ptr %i.fn, align 2, !dbg !4118, !range !403, !alias.scope !3929, !noundef !401
  %i.fp = trunc nuw i8 %i.fo to i1, !dbg !4119
  br i1 %i.fp, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4120

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105: ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i112, %bb.bd, %bb.bc
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4121
  %i.fr = load ptr, ptr %i.fq, align 8, !dbg !4121, !noundef !401
  %.not.i106 = icmp eq ptr %i.fr, null, !dbg !4122
  br i1 %.not.i106, label %bb.be, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4123

bb.be:                                            ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i105
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 184, !dbg !4124 ; 6 uses
  %i.ft = load i64, ptr %i.fs, align 8, !dbg !4125, !noundef !401
  %i.fu = icmp eq i64 %i.ft, 0, !dbg !4126
  br i1 %i.fu, label %bb.bf, label %bb.bh, !dbg !4126, !prof !427

bb.bf:                                            ; preds = %bb.be
  store i64 -1, ptr %i.fs, align 8, !dbg !4127
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 192, !dbg !4128
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !4129, !range !429, !alias.scope !3931, !noundef !401
  %i.fx = trunc nuw i64 %i.fw to i1, !dbg !4130
  br i1 %i.fx, label %bb.bg, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit.i, !dbg !4130

bb.bg:                                            ; preds = %bb.bf
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 200, !dbg !4131
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy, i64 noundef 4)
          to label %.noexc.i unwind label %bb.bi, !dbg !4132

.noexc.i:                                         ; preds = %bb.bg
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 216, !dbg !4133 ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !4133, !alias.scope !3932, !noundef !401 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !4134
  call void @llvm.assume(i1 %i.gb), !dbg !4135
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ey, i64 208, !dbg !4136
  %i.gd = load ptr, ptr %i.gc, align 8, !dbg !4136, !alias.scope !3932, !nonnull !401, !noundef !401
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga, !dbg !4137
  store i32 1831885595, ptr %i.ge, align 1, !dbg !4138
  %i.gf = load i64, ptr %i.fz, align 8, !dbg !4139, !alias.scope !3932, !noundef !401
  %i.gg = add i64 %i.gf, 4, !dbg !4139
  store i64 %i.gg, ptr %i.fz, align 8, !dbg !4139, !alias.scope !3932
  %.pre.i = load i64, ptr %i.fs, align 8, !dbg !4140
  %i.gh = add i64 %.pre.i, 1, !dbg !4141
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit.i, !dbg !4142

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14, !dbg !4143
  unreachable, !dbg !4143

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit.i: ; preds = %.noexc.i, %bb.bf
  %i.gi = phi i64 [ %i.gh, %.noexc.i ], [ 0, %bb.bf ], !dbg !4140
  store i64 %i.gi, ptr %i.fs, align 8, !dbg !4144
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !4145

bb.bi:                                            ; preds = %bb.bg
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load i64, ptr %i.fs, align 8, !dbg !4146, !noundef !401
  %i.gl = add i64 %i.gk, 1, !dbg !4147
  store i64 %i.gl, ptr %i.fs, align 8, !dbg !4148
  br label %common.resume, !dbg !4149
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4150 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [2 x i8], align 1                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [2 x i8], align 1                 ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [2 x i8], align 1                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 13 uses
  %i.as = alloca [24 x i8], align 8               ; 11 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [1 x i8], align 1                ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [1 x i8], align 1                ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 5 uses
  %i.bb = alloca [1 x i8], align 1                ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [2 x i8], align 1                ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 13 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [1 x i8], align 1                ; 4 uses
  %i.bo = alloca [1 x i8], align 1                ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 5 uses
  %i.bq = alloca [1 x i8], align 1                ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 5 uses
  %i.bs = alloca [1 x i8], align 1                ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [2 x i8], align 1                ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 11 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [8 x i8], align 8                ; 6 uses
  %i.by = alloca [40 x i8], align 8               ; 8 uses
  %i.bz = alloca [40 x i8], align 8               ; 8 uses
  %i.ca = alloca [40 x i8], align 8               ; 8 uses
  %i.cb = alloca [16 x i8], align 8               ; 7 uses
  %i.cc = alloca [16 x i8], align 8               ; 7 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %i.ce = alloca [1 x i8], align 1                ; 4 uses
  %i.cf = alloca [1 x i8], align 1                ; 4 uses
  %i.cg = alloca [1 x i8], align 1                ; 4 uses
  %i.ch = alloca [1 x i8], align 1                ; 4 uses
  %i.ci = alloca [32 x i8], align 8               ; 5 uses
  %i.cj = alloca [1 x i8], align 1                ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 5 uses
  %i.cl = alloca [1 x i8], align 1                ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 4 uses
  %i.cn = alloca [1 x i8], align 1                ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 5 uses
  %i.cp = alloca [1 x i8], align 1                ; 4 uses
  %i.cq = alloca [32 x i8], align 8               ; 5 uses
  %i.cr = alloca [1 x i8], align 1                ; 4 uses
  %i.cs = alloca [32 x i8], align 8               ; 4 uses
  %i.ct = alloca [1 x i8], align 1                ; 4 uses
  %i.cu = alloca [32 x i8], align 8               ; 5 uses
  %i.cv = alloca [1 x i8], align 1                ; 4 uses
  %i.cw = alloca [32 x i8], align 8               ; 5 uses
  %i.cx = alloca [1 x i8], align 1                ; 4 uses
  %i.cy = alloca [32 x i8], align 8               ; 4 uses
  %i.cz = alloca [16 x i8], align 16              ; 4 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [2 x i8], align 1                ; 4 uses
  %i.dc = alloca [1 x i8], align 1                ; 4 uses
  %i.dd = alloca [2 x i8], align 1                ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7913 ; 149 uses
  %i.df = load ptr, ptr %i.de, align 8, !dbg !7913, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 240, !dbg !7913
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !7913, !nonnull !401, !align !467, !noundef !401 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 184, !dbg !7913 ; 6 uses
  %i.dj = load i64, ptr %i.di, align 8, !dbg !7914, !noalias !7644, !noundef !401 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 9223372036854775807, !dbg !7915
  br i1 %i.dk, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEE6borrowCs2NzvFoTxuAy_2rg.exit.i, label %bb.b, !dbg !7916, !prof !427

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14, !dbg !7917
  unreachable, !dbg !7917

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEE6borrowCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 224, !dbg !7918
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !7918, !noundef !401
  %.not.i = icmp eq i64 %i.dm, 0, !dbg !7919
  br i1 %.not.i, label %bb.c, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20write_search_preludeCs2NzvFoTxuAy_2rg.exit.thread, !dbg !7920

bb.c:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEE6borrowCs2NzvFoTxuAy_2rg.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !7921
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !7921, !nonnull !401, !noundef !401 ; 3 uses
end_hunk_3
begin_hunk_4_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg:bb.a
  %i.g = icmp eq i64 %i.f, 0, !dbg !10959
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !10959, !prof !427

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8, !dbg !10960
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192, !dbg !10961
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200, !dbg !10962 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !10962, !range !429, !alias.scope !10940, !noundef !401
  %i.k = trunc nuw i64 %i.j to i1, !dbg !10962
  br i1 %i.k, label %.sink.split.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, !dbg !10962

.sink.split.i:                                    ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !dbg !10963, !nonnull !401, !align !467, !noundef !401
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240, !dbg !10963
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10963, !nonnull !401, !align !467, !noundef !401
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 68, !dbg !10964
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !10962
  %i.q = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.o) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit unwind label %bb.f, !dbg !10962 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !dbg !10965
  unreachable, !dbg !10965

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit: ; preds = %.sink.split.i
  %.not = icmp eq ptr %i.q, null, !dbg !10966
  br i1 %.not, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10967

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread: ; preds = %bb.b, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10968
  %.sroa.07.0 = load ptr, ptr %.sroa.07.0.in, align 8, !dbg !10968, !nonnull !401, !noundef !401
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10968
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !dbg !10968, !noundef !401
  %i.r = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0, i64 noundef %.sroa.3.0)
          to label %bb.d unwind label %bb.f, !dbg !10969 ; 2 uses

bb.d:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread
  %.not10 = icmp eq ptr %i.r, null, !dbg !10970
  br i1 %.not10, label %bb.e, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10971

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.i, align 8, !dbg !10972, !range !429, !alias.scope !10948, !noundef !401
  %i.t = trunc nuw i64 %i.s to i1, !dbg !10972
  br i1 %i.t, label %.sink.split.i14, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10972

.sink.split.i14:                                  ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !10972
  %i.v = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit unwind label %bb.f, !dbg !10972

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit, %bb.d, %.sink.split.i14, %bb.e
  %.sroa.0.0 = phi ptr [ %i.v, %.sink.split.i14 ], [ null, %bb.e ], [ %i.q, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit ], [ %i.r, %bb.d ], !dbg !10973
  %storemerge.in = load i64, ptr %i.e, align 8, !dbg !10974, !noundef !401
  %storemerge = add i64 %storemerge.in, 1, !dbg !10975
  store i64 %storemerge, ptr %i.e, align 8, !dbg !10976
  ret ptr %.sroa.0.0, !dbg !10977

bb.f:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, %.sink.split.i, %.sink.split.i14
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %i.e, align 8, !dbg !10978, !noundef !401
  %i.y = add i64 %i.x, 1, !dbg !10979
  store i64 %i.y, ptr %i.e, align 8, !dbg !10980
  resume { ptr, i32 } %i.w, !dbg !10981
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !211 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !11014
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11014, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !11015 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !11016, !noundef !401
  %i.e = icmp eq i64 %i.d, 0, !dbg !11017
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !11017, !prof !427

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !11018
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !11019
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !11020 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !11020, !range !429, !alias.scope !11003, !noundef !401
  %i.i = trunc nuw i64 %i.h to i1, !dbg !11020
  br i1 %i.i, label %.sink.split.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, !dbg !11020

.sink.split.i:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !11020
  %i.k = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit unwind label %bb.f, !dbg !11020 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !11021
  unreachable, !dbg !11021

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit: ; preds = %.sink.split.i
  %.not = icmp eq ptr %i.k, null, !dbg !11022
  br i1 %.not, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !11023

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread: ; preds = %bb.b, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %i.l = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.d unwind label %bb.f, !dbg !11024 ; 2 uses

bb.d:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread
  %.not11 = icmp eq ptr %i.l, null, !dbg !11025
  br i1 %.not11, label %bb.e, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !11026

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.g, align 8, !dbg !11027, !range !429, !alias.scope !11006, !noundef !401
  %i.n = trunc nuw i64 %i.m to i1, !dbg !11027
  br i1 %i.n, label %.sink.split.i16, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !11027

.sink.split.i16:                                  ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !11027
  %i.p = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread unwind label %bb.f, !dbg !11027

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread: ; preds = %.sink.split.i16, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.k, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit ], [ null, %bb.e ], [ %i.l, %bb.d ], [ %i.p, %.sink.split.i16 ], !dbg !11028
  %storemerge.in = load i64, ptr %i.c, align 8, !dbg !11029, !noundef !401
  %storemerge = add i64 %storemerge.in, 1, !dbg !11030
  store i64 %storemerge, ptr %i.c, align 8, !dbg !11031
  ret ptr %.sroa.0.0, !dbg !11032

bb.f:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, %.sink.split.i, %.sink.split.i16
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %i.c, align 8, !dbg !11033, !noundef !401
  %i.s = add i64 %i.r, 1, !dbg !11034
  store i64 %i.s, ptr %i.c, align 8, !dbg !11035
  resume { ptr, i32 } %i.q, !dbg !11036
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg(ptr %.88.val, i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !227 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !11057
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11057, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !11058 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !11059, !noundef !401
  %i.e = icmp eq i64 %i.d, 0, !dbg !11060
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !11060, !prof !427

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.88.val, i64 248, !dbg !11061
  store i64 -1, ptr %i.c, align 8, !dbg !11062
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !11063
  %i.h = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %bb.d unwind label %bb.e, !dbg !11064

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !11065
  unreachable, !dbg !11065

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !dbg !11066, !noundef !401
  %i.j = add i64 %i.i, 1, !dbg !11067
  store i64 %i.j, ptr %i.c, align 8, !dbg !11068
  ret ptr %i.h, !dbg !11069

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.c, align 8, !dbg !11070, !noundef !401
  %i.m = add i64 %i.l, 1, !dbg !11071
  store i64 %i.m, ptr %i.c, align 8, !dbg !11072
  resume { ptr, i32 } %i.k, !dbg !11073
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15end_color_matchCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11074 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !11188 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !11189, !range !403, !noundef !401
  %i.c = trunc nuw i8 %i.b to i1, !dbg !11189
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !11190

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11191 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11191, !nonnull !401, !align !467, !noundef !401
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !11191
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11191, !nonnull !401, !align !467, !noundef !401 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !11192
  %i.i = load i8, ptr %i.h, align 1, !dbg !11192, !range !443, !alias.scope !11152, !noundef !401
  %.not.i = icmp eq i8 %i.i, -1, !dbg !11192
  br i1 %.not.i, label %bb.c, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !11193

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !11194
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 139, !dbg !11195
  %i.l = load i8, ptr %i.k, align 1, !dbg !11195, !range !443, !alias.scope !11152, !noundef !401
  %i.m = icmp ne i8 %i.l, -1, !dbg !11195
  %i.n = load i8, ptr %i.j, align 8, !range !403, !alias.scope !11152
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.q = load <4 x i8>, ptr %i.p, align 1, !alias.scope !11152
  %.fr = freeze <4 x i8> %i.q
  %i.r = trunc <4 x i8> %.fr to <4 x i1>
  %i.s = bitcast <4 x i1> %i.r to i4, !dbg !11196
  %i.t = icmp ne i4 %i.s, 0, !dbg !11196
  %i.u = or i1 %i.m, %i.t, !dbg !11196
  %op.rdx29 = select i1 %i.u, i1 true, i1 %i.o, !dbg !11196
  br i1 %op.rdx29, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !11196

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 134, !dbg !11197
  %i.w = load i8, ptr %i.v, align 2, !dbg !11197, !range !403, !alias.scope !11152, !noundef !401
  %i.x = trunc nuw i8 %i.w to i1, !dbg !11198
  br i1 %i.x, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.e, !dbg !11199

bb.d:                                             ; preds = %bb.a, %bb.j, %bb.p, %bb.k
  %.sroa.0.0 = phi ptr [ %i.az, %bb.p ], [ null, %bb.k ], [ %i.ao, %bb.j ], [ null, %bb.a ], !dbg !11200
  ret ptr %.sroa.0.0, !dbg !11201

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11202
  %i.z = load ptr, ptr %i.y, align 8, !dbg !11202, !noundef !401
  %.not = icmp eq ptr %i.z, null, !dbg !11203
  br i1 %.not, label %bb.f, label %bb.e, !dbg !11204

bb.e:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !11205 ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !11206, !noundef !401
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !11207
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !11207, !prof !427

bb.f:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !11208 ; 7 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !11209, !noundef !401
  %i.af = icmp eq i64 %i.ae, 0, !dbg !11210
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !11210, !prof !427

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %i.ad, align 8, !dbg !11211
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 200, !dbg !11212
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !11212, !range !429, !alias.scope !11172, !noundef !401
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !11212
  br i1 %i.ai, label %.sink.split.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, !dbg !11212

.sink.split.i:                                    ; preds = %bb.g
  %i.aj = load ptr, ptr %i.d, align 8, !dbg !11213, !nonnull !401, !align !467, !noundef !401
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240, !dbg !11213
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !11213, !nonnull !401, !align !467, !noundef !401
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128, !dbg !11214
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 208, !dbg !11212
  %i.ao = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.am) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit unwind label %bb.i, !dbg !11212 ; 2 uses

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !dbg !11215
  unreachable, !dbg !11215

bb.i:                                             ; preds = %.sink.split.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load i64, ptr %i.ad, align 8, !dbg !11216, !noundef !401
  %i.ar = add i64 %i.aq, 1, !dbg !11217
  store i64 %i.ar, ptr %i.ad, align 8, !dbg !11218
  br label %bb.l, !dbg !11219

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit: ; preds = %.sink.split.i
  %.not8 = icmp eq ptr %i.ao, null, !dbg !11220
  %.pre27 = load i64, ptr %i.ad, align 8, !dbg !11221 ; 2 uses
  br i1 %.not8, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, label %bb.j, !dbg !11222

bb.j:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %i.as = add i64 %.pre27, 1, !dbg !11223
  store i64 %i.as, ptr %i.ad, align 8, !dbg !11224
  br label %bb.d, !dbg !11225

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread: ; preds = %bb.g, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %i.at = phi i64 [ -1, %bb.g ], [ %.pre27, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit ], !dbg !11221
  %i.au = add i64 %i.at, 1, !dbg !11226
  store i64 %i.au, ptr %i.ad, align 8, !dbg !11227
  br label %bb.k, !dbg !11228

bb.k:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread
  store i8 0, ptr %i.a, align 8, !dbg !11229
  br label %bb.d, !dbg !11201

bb.l:                                             ; preds = %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %.pn, !dbg !11230

bb.m:                                             ; preds = %bb.e
  store i64 -1, ptr %i.aa, align 8, !dbg !11231
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 200, !dbg !11232
  %i.aw = load i64, ptr %i.av, align 8, !dbg !11232, !range !429, !alias.scope !11186, !noundef !401
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !11232
  br i1 %i.ax, label %.sink.split.i18, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !11232

.sink.split.i18:                                  ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 208, !dbg !11232
  %i.az = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit unwind label %bb.o, !dbg !11232 ; 2 uses

bb.n:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14, !dbg !11233
  unreachable, !dbg !11233

bb.o:                                             ; preds = %.sink.split.i18
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load i64, ptr %i.aa, align 8, !dbg !11234, !noundef !401
  %i.bc = add i64 %i.bb, 1, !dbg !11235
  store i64 %i.bc, ptr %i.aa, align 8, !dbg !11236
  br label %bb.l, !dbg !11237

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit: ; preds = %.sink.split.i18
  %.not10 = icmp eq ptr %i.az, null, !dbg !11238
  %.pre = load i64, ptr %i.aa, align 8, !dbg !11239 ; 2 uses
  br i1 %.not10, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, label %bb.p, !dbg !11240

bb.p:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit
  %i.bd = add i64 %.pre, 1, !dbg !11241
  store i64 %i.bd, ptr %i.aa, align 8, !dbg !11242
  br label %bb.d, !dbg !11225

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread: ; preds = %bb.m, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit
  %i.be = phi i64 [ -1, %bb.m ], [ %.pre, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit ], !dbg !11239
  %i.bf = add i64 %i.be, 1, !dbg !11243
  store i64 %i.bf, ptr %i.aa, align 8, !dbg !11244
  br label %bb.k, !dbg !11228
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18write_colored_lineCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11245 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !11444 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11444, !nonnull !401, !align !467, !noundef !401
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240, !dbg !11444
  %i.i = load ptr, ptr %i.h, align 8, !dbg !11444, !nonnull !401, !align !467, !noundef !401 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 113, !dbg !11445
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 184, !dbg !11446 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !11447, !noalias !11408, !noundef !401 ; 3 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775807, !dbg !11448
  br i1 %i.m, label %bb.c, label %bb.b, !dbg !11449, !prof !427

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #14, !dbg !11450
  unreachable, !dbg !11450

bb.c:                                             ; preds = %bb.a
  %i.n = add nuw nsw i64 %i.l, 1, !dbg !11451
  store i64 %i.n, ptr %i.k, align 8, !dbg !11452, !noalias !11408
  %i.o = getelementptr i8, ptr %i.i, i64 200, !dbg !11453
  %.val = load i64, ptr %i.o, align 8, !dbg !11453, !range !429, !noundef !401
  %i.p = trunc nuw i64 %.val to i1, !dbg !11454
  store i64 %i.l, ptr %i.k, align 8, !dbg !11455
  br i1 %i.p, label %bb.d, label %bb.f, !dbg !11456

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 120, !dbg !11457
  %i.r = load i8, ptr %i.q, align 8, !dbg !11457, !range !443, !alias.scope !11415, !noundef !401
  %.not.i28 = icmp eq i8 %i.r, -1, !dbg !11457
  br i1 %.not.i28, label %bb.e, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !11458

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 124, !dbg !11459
  %i.t = load i8, ptr %i.s, align 4, !dbg !11459, !range !443, !alias.scope !11415, !noundef !401
  %i.u = icmp ne i8 %i.t, -1, !dbg !11459
  %i.v = load i8, ptr %i.j, align 1, !range !403, !alias.scope !11415
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 114
  %i.y = load <4 x i8>, ptr %i.x, align 2, !alias.scope !11415
  %.fr = freeze <4 x i8> %i.y
  %i.z = trunc <4 x i8> %.fr to <4 x i1>
  %i.aa = bitcast <4 x i1> %i.z to i4, !dbg !11460
  %i.ab = icmp ne i4 %i.aa, 0, !dbg !11460
  %i.ac = or i1 %i.u, %i.ab, !dbg !11460
  %op.rdx55 = select i1 %i.ac, i1 true, i1 %i.w, !dbg !11460
  br i1 %op.rdx55, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !11460

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 119, !dbg !11461
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !11461, !range !403, !alias.scope !11415, !noundef !401
  %i.af = trunc nuw i8 %i.ae to i1, !dbg !11462
  br i1 %i.af, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.f, !dbg !11463

bb.f:                                             ; preds = %bb.c, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit
  %i.ag = load ptr, ptr %i.f, align 8, !dbg !11464, !noalias !11416, !nonnull !401, !align !467, !noundef !401
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240, !dbg !11464
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !11464, !noalias !11416, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152, !dbg !11465
  %i.ak = load i8, ptr %i.aj, align 8, !dbg !11465, !range !403, !noalias !11416, !noundef !401
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !11465
  br i1 %i.al, label %bb.h, label %bb.g, !dbg !11465

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.am = phi ptr [ %.pre42, %bb.j ], [ %i.ai, %bb.f ], !dbg !11466 ; 4 uses
  %.sroa.11.0.i = phi i64 [ %i.bd, %bb.j ], [ %4, %bb.f ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.be, %bb.j ], [ %3, %bb.f ] ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !dbg !11467, !range !429, !noundef !401
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !11467
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !11467
  %i.aq = trunc nuw i64 %i.an to i1, !dbg !11468
  %i.ar = icmp ugt i64 %.sroa.11.0.i, %i.ap
  %spec.select.i = select i1 %i.aq, i1 %i.ar, i1 false, !dbg !11468
  br i1 %spec.select.i, label %bb.x, label %bb.k, !dbg !11469

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11470
  %i.at = load ptr, ptr %i.as, align 8, !dbg !11470, !noalias !11416, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 57, !dbg !11471
  %i.av = load i8, ptr %i.au, align 1, !dbg !11471, !noalias !11416
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 56, !dbg !11471
  %i.ax = load i8, ptr %i.aw, align 8, !dbg !11471, !range !403, !noalias !11416, !noundef !401
  %i.ay = trunc nuw i8 %i.ax to i1, !dbg !11471
  %i.az = tail call { i64, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util17trim_ascii_prefix(i1 noundef zeroext %i.ay, i8 %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %4), !dbg !11472 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0, !dbg !11472 ; 4 uses
  %i.bb = extractvalue { i64, i64 } %i.az, 1, !dbg !11472 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba, !dbg !11473
  %.not.i = icmp ugt i64 %i.bb, %4
  %or.cond.i = or i1 %i.bc, %.not.i, !dbg !11473
  br i1 %or.cond.i, label %bb.i, label %bb.j, !dbg !11473, !prof !576

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ba, i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !dbg !11474
  unreachable, !dbg !11474

bb.j:                                             ; preds = %bb.h
  %i.bd = sub nuw i64 %i.bb, %i.ba, !dbg !11475
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba, !dbg !11476
  %.pre = load ptr, ptr %i.f, align 8, !dbg !11466, !noalias !11416
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 240
  %.pre42 = load ptr, ptr %.phi.trans.insert, align 8, !dbg !11466
  br label %bb.g, !dbg !11477

bb.k:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 184, !dbg !11478 ; 6 uses
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !11479, !noalias !11417, !noundef !401
  %i.bh = icmp eq i64 %i.bg, 0, !dbg !11480
  br i1 %i.bh, label %bb.l, label %bb.m, !dbg !11480, !prof !427

bb.l:                                             ; preds = %bb.k
  store i64 -1, ptr %i.bf, align 8, !dbg !11481, !noalias !11417
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 192, !dbg !11482
  %i.bj = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit unwind label %bb.n, !dbg !11483 ; 2 uses

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !11484, !noalias !11417
  unreachable, !dbg !11484

common.resume:                                    ; preds = %bb.ai, %bb.af, %bb.u, %bb.r, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %i.ci, %bb.r ], [ %i.cv, %bb.u ], [ %i.es, %bb.af ], [ %i.ex, %bb.ai ]
  resume { ptr, i32 } %common.resume.op, !dbg !11485

bb.n:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load i64, ptr %i.bf, align 8, !dbg !11486, !noundef !401
  %i.bm = add i64 %i.bl, 1, !dbg !11487
  store i64 %i.bm, ptr %i.bf, align 8, !dbg !11488
  br label %common.resume, !dbg !11489

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bf, align 8, !dbg !11490, !noundef !401
  %i.bo = add i64 %i.bn, 1, !dbg !11491
  store i64 %i.bo, ptr %i.bf, align 8, !dbg !11492
  %.not32.i = icmp eq ptr %i.bj, null, !dbg !11493
  br i1 %.not32.i, label %bb.o, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_lineCs2NzvFoTxuAy_2rg.exit, !dbg !11494

bb.o:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !11495
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !11495, !noalias !11416, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56, !dbg !11496
  %i.bs = load i8, ptr %i.br, align 8, !dbg !11496, !range !403, !noundef !401 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 57, !dbg !11496
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !11496 ; 3 uses
  %.not33.i = icmp eq i64 %.sroa.11.0.i, 0, !dbg !11497
  %i.bv = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.11.0.i, !dbg !11497
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1, !dbg !11497 ; 2 uses
  %.not.i3141 = icmp eq ptr %i.bw, null, !dbg !11498
  %.not.i31 = select i1 %.not33.i, i1 true, i1 %.not.i3141, !dbg !11497
  br i1 %.not.i31, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit, !dbg !11499

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.o
  %.pre46 = trunc nuw i8 %i.bs to i1, !dbg !11500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11501, !noalias !11416
  store i8 %i.bs, ptr %i.a, align 1, !dbg !11502, !noalias !11416
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !11502 ; 2 uses
  store i8 %i.bu, ptr %i.bx, align 1, !dbg !11502, !noalias !11416
  br i1 %.pre46, label %.split30.i, label %.split.i, !dbg !11503

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.o
  %.val5.i = load i8, ptr %i.bw, align 1, !dbg !11504, !alias.scope !11418, !noundef !401
  %i.by = trunc nuw i8 %i.bs to i1, !dbg !11505   ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.by, i8 10, i8 %i.bu, !dbg !11506
  %i.bz = icmp eq i8 %.val5.i, %.sroa.0.0.i.i, !dbg !11507
  br i1 %i.bz, label %bb.w, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !11508

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11501, !noalias !11416
  store i8 %i.bs, ptr %i.a, align 1, !dbg !11502, !noalias !11416
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !11502 ; 2 uses
  store i8 %i.bu, ptr %i.ca, align 1, !dbg !11502, !noalias !11416
  br i1 %i.by, label %.split30.i, label %.split.i, !dbg !11503

.split30.i:                                       ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread
  %.val23 = load ptr, ptr %i.f, align 8, !dbg !11509, !nonnull !401, !align !467, !noundef !401
  %i.cb = getelementptr inbounds nuw i8, ptr %.val23, i64 240, !dbg !11510
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !11510, !noalias !11419, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 184, !dbg !11511 ; 6 uses
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !11512, !noalias !11419, !noundef !401
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !11513
  br i1 %i.cf, label %bb.p, label %bb.q, !dbg !11513, !prof !427

bb.p:                                             ; preds = %.split30.i
  store i64 -1, ptr %i.cd, align 8, !dbg !11514, !noalias !11419
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 192, !dbg !11515
  %i.ch = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 2)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit32 unwind label %bb.r, !dbg !11516

bb.q:                                             ; preds = %.split30.i
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !11517, !noalias !11419
  unreachable, !dbg !11517

bb.r:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load i64, ptr %i.cd, align 8, !dbg !11518, !noundef !401
  %i.ck = add i64 %i.cj, 1, !dbg !11519
  store i64 %i.ck, ptr %i.cd, align 8, !dbg !11520
  br label %common.resume, !dbg !11521

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit32: ; preds = %bb.p
  %i.cl = load i64, ptr %i.cd, align 8, !dbg !11522, !noundef !401
  %i.cm = add i64 %i.cl, 1, !dbg !11523
  store i64 %i.cm, ptr %i.cd, align 8, !dbg !11524
  br label %bb.v, !dbg !11525

.split.i:                                         ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread
  %i.cn = phi ptr [ %i.bx, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.ca, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread ]
  %.val24 = load ptr, ptr %i.f, align 8, !dbg !11509, !nonnull !401, !align !467, !noundef !401
  %i.co = getelementptr inbounds nuw i8, ptr %.val24, i64 240, !dbg !11526
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !11526, !noalias !11420, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 184, !dbg !11527 ; 6 uses
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !11528, !noalias !11420, !noundef !401
  %i.cs = icmp eq i64 %i.cr, 0, !dbg !11529
  br i1 %i.cs, label %bb.s, label %bb.t, !dbg !11529, !prof !427

bb.s:                                             ; preds = %.split.i
  store i64 -1, ptr %i.cq, align 8, !dbg !11530, !noalias !11420
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 192, !dbg !11531
  %i.cu = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ct, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit33 unwind label %bb.u, !dbg !11532

bb.t:                                             ; preds = %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !11533, !noalias !11420
  unreachable, !dbg !11533

bb.u:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load i64, ptr %i.cq, align 8, !dbg !11534, !noundef !401
  %i.cx = add i64 %i.cw, 1, !dbg !11535
  store i64 %i.cx, ptr %i.cq, align 8, !dbg !11536
  br label %common.resume, !dbg !11537

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit33: ; preds = %bb.s
  %i.cy = load i64, ptr %i.cq, align 8, !dbg !11538, !noundef !401
  %i.cz = add i64 %i.cy, 1, !dbg !11539
  store i64 %i.cz, ptr %i.cq, align 8, !dbg !11540
  br label %bb.v, !dbg !11541

bb.v:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit33, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit32
  %phi.call.i = phi ptr [ %i.cu, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit33 ], [ %i.ch, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit32 ], !dbg !11509 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11542, !noalias !11416
  %.not34.i = icmp eq ptr %phi.call.i, null, !dbg !11543
end_hunk_4
begin_hunk_5_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE19write_exceeded_lineCs2NzvFoTxuAy_2rg:bb.a
  br i1 %i.fj, label %bb.be, label %bb.bf, !dbg !12217, !prof !427

bb.be:                                            ; preds = %.split73
  store i64 -1, ptr %i.fh, align 8, !dbg !12218, !noalias !11988
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 192, !dbg !12219
  %i.fy = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit116 unwind label %bb.bg, !dbg !12220

bb.bf:                                            ; preds = %.split73
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !12221, !noalias !11988
  unreachable, !dbg !12221

bb.bg:                                            ; preds = %bb.be
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load i64, ptr %i.fh, align 8, !dbg !12222, !noundef !401
  %i.gb = add i64 %i.ga, 1, !dbg !12223
  store i64 %i.gb, ptr %i.fh, align 8, !dbg !12224
  br label %common.resume, !dbg !12225

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit116: ; preds = %bb.be, %bb.bb
  %phi.call76 = phi ptr [ %i.ft, %bb.bb ], [ %i.fy, %bb.be ], !dbg !11969
  %i.gc = load i64, ptr %i.fh, align 8, !dbg !12226, !noundef !401
  %i.gd = add i64 %i.gc, 1, !dbg !12227
  store i64 %i.gd, ptr %i.fh, align 8, !dbg !12228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12229
  br label %bb.ai, !dbg !12230
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20write_path_hyperlinkCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12231 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12280), !dbg !12284
  %i.c = tail call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %1), !dbg !12285, !noalias !12280 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !12286
  br i1 %.not.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread, label %bb.b, !dbg !12287

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12288, !noalias !12280
  store i64 0, ptr %i.a, align 8, !dbg !12289, !noalias !12280
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12289
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !12289, !noalias !12280
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !12289
  store ptr %i.c, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !12289, !noalias !12280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12290
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12290, !noalias !12280, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !12291
  %i.g = load ptr, ptr %i.f, align 8, !dbg !12291, !noalias !12280, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !12292 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !12293, !noalias !12280, !noundef !401
  %i.j = icmp eq i64 %i.i, 0, !dbg !12294
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !12294, !prof !427

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !12295
  store i8 0, ptr %i.k, align 1, !dbg !12295, !alias.scope !12280
  br label %bb.g, !dbg !12296

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 248, !dbg !12290
  store i64 -1, ptr %i.h, align 8, !dbg !12297, !noalias !12280
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 192, !dbg !12298
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !12299

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !12300, !noalias !12280
  unreachable, !dbg !12300

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ai, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !12301

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.h, align 8, !dbg !12302, !noalias !12280, !noundef !401
  %i.p = add i64 %i.o, 1, !dbg !12303
  store i64 %i.p, ptr %i.h, align 8, !dbg !12304, !noalias !12280
  br label %common.resume, !dbg !12305

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !dbg !12306, !noalias !12280, !noundef !401
  %i.r = add i64 %i.q, 1, !dbg !12307
  store i64 %i.r, ptr %i.h, align 8, !dbg !12308, !noalias !12280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12309, !noalias !12280
  %.pre = load i8, ptr %i.b, align 8, !dbg !12310, !range !403
  %i.s = trunc nuw i8 %.pre to i1, !dbg !12310
  br i1 %i.s, label %bb.f, label %bb.g, !dbg !12296

bb.f:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12311
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12311, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12312
  br label %bb.l, !dbg !12313

bb.g:                                             ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !12314
  %i.w = load i8, ptr %i.v, align 1, !dbg !12314, !range !403, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12312
  %i.x = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1), !dbg !12315 ; 2 uses
  %.not = icmp eq ptr %i.x, null, !dbg !12316
  br i1 %.not, label %bb.h, label %bb.l, !dbg !12317

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 88, !dbg !12318
  %.val = load ptr, ptr %i.y, align 8, !dbg !12318, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 240, !dbg !12319
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !12319, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184, !dbg !12320 ; 6 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12321, !noundef !401
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12322
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !12322, !prof !427

bb.i:                                             ; preds = %bb.h
  %i.ae = trunc nuw i8 %i.w to i1, !dbg !12314
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 248, !dbg !12323
  store i64 -1, ptr %i.ab, align 8, !dbg !12324
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 192, !dbg !12325
  %i.ah = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ag)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit unwind label %bb.k, !dbg !12326

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !12327
  unreachable, !dbg !12327

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i64, ptr %i.ab, align 8, !dbg !12328, !noundef !401
  %i.ak = add i64 %i.aj, 1, !dbg !12329
  store i64 %i.ak, ptr %i.ab, align 8, !dbg !12330
  br label %common.resume, !dbg !12331

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.i
  %i.al = load i64, ptr %i.ab, align 8, !dbg !12332, !noundef !401
  %i.am = add i64 %i.al, 1, !dbg !12333
  store i64 %i.am, ptr %i.ab, align 8, !dbg !12334
  br label %bb.l, !dbg !12335

bb.l:                                             ; preds = %bb.g, %bb.f, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ %i.ah, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit ], [ %i.x, %bb.g ], !dbg !12301
  ret ptr %.sroa.0.0, !dbg !12335
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE21write_colored_matchesCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12336 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  store i64 %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12659
  %i.l = load ptr, ptr %i.k, align 8, !dbg !12659, !nonnull !401, !align !467, !noundef !401
  %i.m = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !12660 ; 0 uses
  %i.n = icmp eq i64 %6, 0, !dbg !12661
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !12661

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.i, align 8, !dbg !12662, !noundef !401 ; 4 uses
  %i.p = load i64, ptr %i.j, align 8, !dbg !12662, !noundef !401 ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.o, !dbg !12663
  %.not94 = icmp ugt i64 %i.p, %2
  %or.cond = or i1 %i.q, %.not94, !dbg !12663
  br i1 %or.cond, label %bb.m, label %bb.i, !dbg !12663, !prof !576

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !12664 ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12664, !nonnull !401, !align !467, !noundef !401
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240, !dbg !12664
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12664, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 135, !dbg !12665
  %i.w = load i8, ptr %i.v, align 1, !dbg !12665, !range !443, !alias.scope !12600, !noundef !401
  %.not.i.i = icmp eq i8 %i.w, -1, !dbg !12665
  br i1 %.not.i.i, label %bb.d, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, !dbg !12666

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128, !dbg !12667
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 139, !dbg !12668
  %i.z = load i8, ptr %i.y, align 1, !dbg !12668, !range !443, !alias.scope !12600, !noundef !401
  %i.aa = icmp ne i8 %i.z, -1, !dbg !12668
  %i.ab = load i8, ptr %i.x, align 8, !range !403, !alias.scope !12600
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 129
  %i.ae = load <4 x i8>, ptr %i.ad, align 1, !alias.scope !12600
  %.fr = freeze <4 x i8> %i.ae
  %i.af = trunc <4 x i8> %.fr to <4 x i1>
  %i.ag = bitcast <4 x i1> %i.af to i4, !dbg !12669
  %i.ah = icmp ne i4 %i.ag, 0, !dbg !12669
  %i.ai = or i1 %i.aa, %i.ah, !dbg !12669
  %op.rdx345 = select i1 %i.ai, i1 true, i1 %i.ac, !dbg !12669
  br i1 %op.rdx345, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, !dbg !12669

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 134, !dbg !12670
  %i.ak = load i8, ptr %i.aj, align 2, !dbg !12670, !range !403, !alias.scope !12600, !noundef !401
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !12671
  br i1 %i.al, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, label %.preheader, !dbg !12672

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i: ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12673
  %i.an = load ptr, ptr %i.am, align 8, !dbg !12673, !noundef !401
  %.not.i = icmp eq ptr %i.an, null, !dbg !12674
  br i1 %.not.i, label %bb.e, label %.preheader, !dbg !12675

bb.e:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 184, !dbg !12676 ; 7 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !12677, !noundef !401
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !12678
  br i1 %i.aq, label %bb.f, label %bb.g, !dbg !12678, !prof !427

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %i.ao, align 8, !dbg !12679
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 200, !dbg !12680
  %i.as = load i64, ptr %i.ar, align 8, !dbg !12680, !range !429, !alias.scope !12602, !noundef !401
  %i.at = trunc nuw i64 %i.as to i1, !dbg !12680
  br i1 %i.at, label %.sink.split.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit.thread246, !dbg !12680

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit.thread246: ; preds = %bb.f
  store i64 0, ptr %i.ao, align 8, !dbg !12681
  br label %.preheader, !dbg !12682

.sink.split.i.i:                                  ; preds = %bb.f
  %i.au = load ptr, ptr %i.r, align 8, !dbg !12683, !nonnull !401, !align !467, !noundef !401
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240, !dbg !12683
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !12683, !nonnull !401, !align !467, !noundef !401
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128, !dbg !12684
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 208, !dbg !12680
  %i.az = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.ax) #18
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !12680 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14, !dbg !12685
  unreachable, !dbg !12685

common.resume:                                    ; preds = %bb.bf, %bb.aq, %bb.ae, %bb.w, %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.bs, %bb.l ], [ %i.dc, %bb.w ], [ %i.ds, %bb.ae ], [ %i.eo, %bb.aq ], [ %i.gi, %bb.bf ]
  resume { ptr, i32 } %common.resume.op, !dbg !12686

bb.h:                                             ; preds = %.sink.split.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load i64, ptr %i.ao, align 8, !dbg !12687, !noundef !401
  %i.bc = add i64 %i.bb, 1, !dbg !12688
  store i64 %i.bc, ptr %i.ao, align 8, !dbg !12689
  br label %common.resume, !dbg !12690

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit: ; preds = %.sink.split.i.i
  %.pre.i = load i64, ptr %i.ao, align 8, !dbg !12691
  %i.bd = add i64 %.pre.i, 1, !dbg !12692
  store i64 %i.bd, ptr %i.ao, align 8, !dbg !12681
  %.not = icmp eq ptr %i.az, null, !dbg !12693
  br i1 %.not, label %.preheader, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12682

.preheader:                                       ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit.thread246, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit
  %i.be = load i64, ptr %i.j, align 8, !dbg !12694, !noundef !401 ; 2 uses
  %i.bf = load i64, ptr %i.i, align 8, !dbg !12695, !noundef !401 ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.bf, !dbg !12696
  br i1 %i.bg, label %.loopexit, label %.lr.ph, !dbg !12697

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %7, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.n, !dbg !12697

bb.i:                                             ; preds = %bb.b
  %i.bi = getelementptr i8, ptr %0, i64 88, !dbg !12698
  %.val100 = load ptr, ptr %i.bi, align 8, !dbg !12698, !nonnull !401, !align !467, !noundef !401
  %i.bj = getelementptr inbounds nuw i8, ptr %.val100, i64 240, !dbg !12699
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !12699, !noalias !12606, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 184, !dbg !12700 ; 6 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !12701, !noalias !12606, !noundef !401
  %i.bn = icmp eq i64 %i.bm, 0, !dbg !12702
  br i1 %i.bn, label %bb.j, label %bb.k, !dbg !12702, !prof !427

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !12703
  %i.bp = sub nuw i64 %i.p, %i.o, !dbg !12704
  store i64 -1, ptr %i.bl, align 8, !dbg !12705, !noalias !12606
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 192, !dbg !12706
  %i.br = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef range(i64 0, -9223372036854775808) %i.bp)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !12707

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !12708, !noalias !12606
  unreachable, !dbg !12708

bb.l:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load i64, ptr %i.bl, align 8, !dbg !12709, !noundef !401
  %i.bu = add i64 %i.bt, 1, !dbg !12710
  store i64 %i.bu, ptr %i.bl, align 8, !dbg !12711
  br label %common.resume, !dbg !12712

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.j
  %i.bv = load i64, ptr %i.bl, align 8, !dbg !12713, !noundef !401
  %i.bw = add i64 %i.bv, 1, !dbg !12714
  store i64 %i.bw, ptr %i.bl, align 8, !dbg !12715
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12716

bb.m:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %i.p, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14, !dbg !12717
  unreachable, !dbg !12717

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit108, %bb.x, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit107, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.i, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i121, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE17start_color_matchCs2NzvFoTxuAy_2rg.exit, %.loopexit, %bb.ay, %bb.av, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.br, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit ], [ %i.cz, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE17start_color_matchCs2NzvFoTxuAy_2rg.exit ], [ %i.az, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20start_line_highlightCs2NzvFoTxuAy_2rg.exit ], [ %i.fb, %bb.ay ], [ %.sroa.0.0.i7.i113, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.i ], [ %i.cb, %.loopexit ], [ null, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i121 ], [ %i.ev, %bb.av ], [ null, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110 ], [ %i.dr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit107 ], [ %i.en, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit108 ], [ %i.dg, %bb.x ], !dbg !12686
  ret ptr %.sroa.0.0, !dbg !12718

bb.n:                                             ; preds = %.lr.ph, %.backedge
  %i.bx = phi i64 [ %i.bf, %.lr.ph ], [ %i.dz, %.backedge ] ; 5 uses
  %i.by = phi i64 [ %i.be, %.lr.ph ], [ %i.ea, %.backedge ] ; 3 uses
  %i.bz = phi i64 [ %.promoted, %.lr.ph ], [ %i.eb, %.backedge ] ; 5 uses
  %i.ca = icmp ult i64 %i.bz, %6, !dbg !12719
  br i1 %i.ca, label %bb.o, label %bb.p, !dbg !12719

.loopexit:                                        ; preds = %.backedge, %.preheader, %bb.ay
  %i.cb = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15end_color_matchCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0), !dbg !12720 ; 2 uses
  %.not92 = icmp eq ptr %i.cb, null, !dbg !12721
  br i1 %.not92, label %bb.ba, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12722

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bz, !dbg !12723 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !12723
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !12723, !noundef !401 ; 2 uses
  %.not77 = icmp ugt i64 %i.ce, %i.bx, !dbg !12719
  br i1 %.not77, label %bb.r, label %bb.q, !dbg !12719

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14, !dbg !12719
  unreachable, !dbg !12719

bb.q:                                             ; preds = %bb.o
  %i.cf = add nuw nsw i64 %i.bz, 1, !dbg !12724   ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %6, !dbg !12724
  br i1 %i.cg, label %bb.aw, label %bb.av, !dbg !12724

bb.r:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %i.cc, align 8, !dbg !12725, !noundef !401 ; 2 uses
  %i.ci = icmp ult i64 %i.bx, %i.ch, !dbg !12726
  br i1 %i.ci, label %bb.x, label %bb.s, !dbg !12726

bb.s:                                             ; preds = %bb.r
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %i.by), !dbg !12727 ; 8 uses
  %i.cj = load i8, ptr %i.bh, align 8, !dbg !12728, !range !403, !noundef !401
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !12728
  br i1 %i.ck, label %bb.y, label %bb.t, !dbg !12729

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %i.r, align 8, !dbg !12730, !nonnull !401, !align !467, !noundef !401
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 240, !dbg !12730
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !12730, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 184, !dbg !12731 ; 7 uses
  %i.cp = load i64, ptr %i.co, align 8, !dbg !12732, !noundef !401
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !12733
  br i1 %i.cq, label %bb.u, label %bb.v, !dbg !12733, !prof !427

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %i.co, align 8, !dbg !12734
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 200, !dbg !12735
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !12735, !range !429, !alias.scope !12611, !noundef !401
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !12735
  br i1 %i.ct, label %.sink.split.i.i102, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i, !dbg !12735

.sink.split.i.i102:                               ; preds = %bb.u
  %i.cu = load ptr, ptr %i.r, align 8, !dbg !12736, !nonnull !401, !align !467, !noundef !401
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 240, !dbg !12736
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !12736, !nonnull !401, !align !467, !noundef !401
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 113, !dbg !12737
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 208, !dbg !12735
  %i.cz = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.cx) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103 unwind label %bb.w, !dbg !12735 ; 2 uses

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #14, !dbg !12738
  unreachable, !dbg !12738

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103: ; preds = %.sink.split.i.i102
  %.not.i104 = icmp eq ptr %i.cz, null, !dbg !12739
  %.pre.i105 = load i64, ptr %i.co, align 8, !dbg !12740 ; 2 uses
  br i1 %.not.i104, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i_crit_edge, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE17start_color_matchCs2NzvFoTxuAy_2rg.exit, !dbg !12741

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i_crit_edge: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103
  %.pre.pre = load i64, ptr %i.i, align 8, !dbg !12742
  %i.da = add i64 %.pre.i105, 1, !dbg !12743
  br label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i, !dbg !12741

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i_crit_edge, %bb.u
  %.pre = phi i64 [ %i.bx, %bb.u ], [ %.pre.pre, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i_crit_edge ], !dbg !12742
  %i.db = phi i64 [ 0, %bb.u ], [ %i.da, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i103._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i_crit_edge ], !dbg !12740
end_hunk_5
begin_hunk_6_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE21write_colored_matchesCs2NzvFoTxuAy_2rg:bb.a
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit107 unwind label %bb.ae, !dbg !12772 ; 2 uses

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !12773, !noalias !12624
  unreachable, !dbg !12773

bb.ae:                                            ; preds = %bb.ac
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load i64, ptr %i.dl, align 8, !dbg !12774, !noundef !401
  %i.du = add i64 %i.dt, 1, !dbg !12775
  store i64 %i.du, ptr %i.dl, align 8, !dbg !12776
  br label %common.resume, !dbg !12777

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit107: ; preds = %bb.ac
  %i.dv = load i64, ptr %i.dl, align 8, !dbg !12778, !noundef !401
  %i.dw = add i64 %i.dv, 1, !dbg !12779
  store i64 %i.dw, ptr %i.dl, align 8, !dbg !12780
  %.not81 = icmp eq ptr %i.dr, null, !dbg !12781
  br i1 %.not81, label %bb.ag, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12782

bb.af:                                            ; preds = %bb.aa
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.dh, i64 noundef %..i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14, !dbg !12783
  unreachable, !dbg !12783

bb.ag:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12784
  store i64 %..i, ptr %i.e, align 8, !dbg !12784
  %i.dx = load i64, ptr %i.j, align 8, !dbg !12785, !noundef !401 ; 2 uses
  %.not82 = icmp ugt i64 %..i, %i.dx, !dbg !12786
  br i1 %.not82, label %bb.ah, label %bb.ai, !dbg !12786, !prof !582

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12787
  store ptr %i.e, ptr %i.a, align 8, !dbg !12787
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12787
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8, !dbg !12787
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12787
  store ptr %i.j, ptr %i.dy, align 8, !dbg !12787
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !12787
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8, !dbg !12787
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !12788
  unreachable, !dbg !12788

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12789
  br label %bb.aj, !dbg !12790

bb.aj:                                            ; preds = %bb.au, %bb.ai
  %storemerge83 = phi i64 [ %..i, %bb.ai ], [ %..i106, %bb.au ], !dbg !12791 ; 2 uses
  %storemerge = phi i64 [ %i.dx, %bb.ai ], [ %i.et, %bb.au ], !dbg !12791 ; 2 uses
  store i64 %storemerge83, ptr %i.i, align 8, !dbg !12791
  store i64 %storemerge, ptr %i.j, align 8, !dbg !12791
  br label %.backedge, !dbg !12792

.backedge:                                        ; preds = %bb.aj, %bb.aw
  %i.dz = phi i64 [ %storemerge83, %bb.aj ], [ %i.bx, %bb.aw ], !dbg !12695 ; 2 uses
  %i.ea = phi i64 [ %storemerge, %bb.aj ], [ %i.by, %bb.aw ], !dbg !12694 ; 2 uses
  %i.eb = phi i64 [ %i.bz, %bb.aj ], [ %i.cf, %bb.aw ]
  %i.ec = icmp eq i64 %i.ea, %i.dz, !dbg !12696
  br i1 %i.ec, label %.loopexit, label %bb.n, !dbg !12697

bb.ak:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12793
  store i64 %..i106, ptr %i.h, align 8, !dbg !12793
  %i.ed = load i64, ptr %i.i, align 8, !dbg !12794, !noundef !401 ; 4 uses
  %.not85 = icmp ugt i64 %i.ed, %..i106, !dbg !12794
  br i1 %.not85, label %bb.al, label %bb.am, !dbg !12794, !prof !582

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12795
  store ptr %i.i, ptr %i.d, align 8, !dbg !12795
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !12795
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !12795
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !12795
  store ptr %i.h, ptr %i.ee, align 8, !dbg !12795
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !12795
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !12795
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !dbg !12796
  unreachable, !dbg !12796

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12797
  %.not86 = icmp ugt i64 %..i106, %2, !dbg !12798
  br i1 %.not86, label %bb.ar, label %bb.an, !dbg !12798, !prof !582

bb.an:                                            ; preds = %bb.am
  %.val98 = load ptr, ptr %i.r, align 8, !dbg !12799, !nonnull !401, !align !467, !noundef !401
  %i.ef = getelementptr inbounds nuw i8, ptr %.val98, i64 240, !dbg !12800
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !12800, !noalias !12638, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 184, !dbg !12801 ; 6 uses
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !12802, !noalias !12638, !noundef !401
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !12803
  br i1 %i.ej, label %bb.ao, label %bb.ap, !dbg !12803, !prof !427

bb.ao:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %i.ed, !dbg !12804
  %i.el = sub nuw i64 %..i106, %i.ed, !dbg !12805
  store i64 -1, ptr %i.eh, align 8, !dbg !12806, !noalias !12638
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 192, !dbg !12807
  %i.en = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.el)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit108 unwind label %bb.aq, !dbg !12808 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !12809, !noalias !12638
  unreachable, !dbg !12809

bb.aq:                                            ; preds = %bb.ao
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load i64, ptr %i.eh, align 8, !dbg !12810, !noundef !401
  %i.eq = add i64 %i.ep, 1, !dbg !12811
  store i64 %i.eq, ptr %i.eh, align 8, !dbg !12812
  br label %common.resume, !dbg !12813

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit108: ; preds = %bb.ao
  %i.er = load i64, ptr %i.eh, align 8, !dbg !12814, !noundef !401
  %i.es = add i64 %i.er, 1, !dbg !12815
  store i64 %i.es, ptr %i.eh, align 8, !dbg !12816
  %.not87 = icmp eq ptr %i.en, null, !dbg !12817
  br i1 %.not87, label %bb.as, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12818

bb.ar:                                            ; preds = %bb.am
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %..i106, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #14, !dbg !12819
  unreachable, !dbg !12819

bb.as:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12820
  store i64 %..i106, ptr %i.g, align 8, !dbg !12820
  %i.et = load i64, ptr %i.j, align 8, !dbg !12821, !noundef !401 ; 2 uses
  %.not88 = icmp ugt i64 %..i106, %i.et, !dbg !12822
  br i1 %.not88, label %bb.at, label %bb.au, !dbg !12822, !prof !582

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12823
  store ptr %i.g, ptr %i.c, align 8, !dbg !12823
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12823
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8, !dbg !12823
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12823
  store ptr %i.j, ptr %i.eu, align 8, !dbg !12823
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !12823
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8, !dbg !12823
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !12824
  unreachable, !dbg !12824

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12825
  br label %bb.aj, !dbg !12790

bb.av:                                            ; preds = %bb.q
  %i.ev = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15end_color_matchCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0), !dbg !12826 ; 2 uses
  %.not89 = icmp eq ptr %i.ev, null, !dbg !12827
  br i1 %.not89, label %bb.ax, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12828

bb.aw:                                            ; preds = %bb.q
  store i64 %i.cf, ptr %7, align 8, !dbg !12829
  br label %.backedge, !dbg !12830

bb.ax:                                            ; preds = %bb.av
  %i.ew = load i64, ptr %i.i, align 8, !dbg !12831, !noundef !401 ; 4 uses
  %i.ex = load i64, ptr %i.j, align 8, !dbg !12831, !noundef !401 ; 4 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew, !dbg !12832
  %.not90 = icmp ugt i64 %i.ex, %2
  %or.cond96 = or i1 %i.ey, %.not90, !dbg !12832
  br i1 %or.cond96, label %bb.az, label %bb.ay, !dbg !12832, !prof !576

bb.ay:                                            ; preds = %bb.ax
  %i.ez = sub nuw i64 %i.ex, %i.ew, !dbg !12833
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew, !dbg !12834
  %.val = load ptr, ptr %i.r, align 8, !dbg !12835, !nonnull !401, !align !467, !noundef !401
  %i.fb = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg(ptr nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef %i.ez), !dbg !12835 ; 2 uses
  %.not91 = icmp eq ptr %i.fb, null, !dbg !12836
  br i1 %.not91, label %.loopexit, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12837

bb.az:                                            ; preds = %bb.ax
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ew, i64 noundef %i.ex, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !dbg !12838
  unreachable, !dbg !12838

bb.ba:                                            ; preds = %.loopexit
  %i.fc = load ptr, ptr %i.r, align 8, !dbg !12839, !nonnull !401, !align !467, !noundef !401
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 240, !dbg !12839
  %i.fe = load ptr, ptr %i.fd, align 8, !dbg !12839, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 135, !dbg !12840
  %i.fg = load i8, ptr %i.ff, align 1, !dbg !12840, !range !443, !alias.scope !12656, !noundef !401
  %.not.i.i109 = icmp eq i8 %i.fg, -1, !dbg !12840
  br i1 %.not.i.i109, label %bb.bb, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110, !dbg !12841

bb.bb:                                            ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 128, !dbg !12842
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 139, !dbg !12843
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !12843, !range !443, !alias.scope !12656, !noundef !401
  %i.fk = icmp ne i8 %i.fj, -1, !dbg !12843
  %i.fl = load i8, ptr %i.fh, align 8, !range !403, !alias.scope !12656
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 129
  %i.fo = load <4 x i8>, ptr %i.fn, align 1, !alias.scope !12656
  %.fr346 = freeze <4 x i8> %i.fo
  %i.fp = trunc <4 x i8> %.fr346 to <4 x i1>
  %i.fq = bitcast <4 x i1> %i.fp to i4, !dbg !12844
  %i.fr = icmp ne i4 %i.fq, 0, !dbg !12844
  %i.fs = or i1 %i.fk, %i.fr, !dbg !12844
  %op.rdx343 = select i1 %i.fs, i1 true, i1 %i.fm, !dbg !12844
  br i1 %op.rdx343, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i121, !dbg !12844

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i121: ; preds = %bb.bb
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 134, !dbg !12845
  %i.fu = load i8, ptr %i.ft, align 2, !dbg !12845, !range !403, !alias.scope !12656, !noundef !401
  %i.fv = trunc nuw i8 %i.fu to i1, !dbg !12846
  br i1 %i.fv, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12847

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110: ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.i121, %bb.bb, %bb.ba
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12848
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !12848, !noundef !401
  %.not.i111 = icmp eq ptr %i.fx, null, !dbg !12849
  br i1 %.not.i111, label %bb.bc, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12850

bb.bc:                                            ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread.i110
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 184, !dbg !12851 ; 6 uses
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !12852, !noundef !401
  %i.ga = icmp eq i64 %i.fz, 0, !dbg !12853
  br i1 %i.ga, label %bb.bd, label %bb.be, !dbg !12853, !prof !427

bb.bd:                                            ; preds = %bb.bc
  store i64 -1, ptr %i.fy, align 8, !dbg !12854
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 200, !dbg !12855
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !12855, !range !429, !alias.scope !12658, !noundef !401
  %i.gd = trunc nuw i64 %i.gc to i1, !dbg !12855
  br i1 %i.gd, label %.sink.split.i.i114, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.i, !dbg !12855

.sink.split.i.i114:                               ; preds = %bb.bd
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 208, !dbg !12855
  %i.gf = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %.sink.split.i._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit_crit_edge.i unwind label %bb.bf, !dbg !12855

.sink.split.i._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit_crit_edge.i: ; preds = %.sink.split.i.i114
  %.pre.i115 = load i64, ptr %i.fy, align 8, !dbg !12856
  %i.gg = add i64 %.pre.i115, 1, !dbg !12857
  br label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.i, !dbg !12855

bb.be:                                            ; preds = %bb.bc
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14, !dbg !12858
  unreachable, !dbg !12858

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.i: ; preds = %.sink.split.i._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit_crit_edge.i, %bb.bd
  %i.gh = phi i64 [ 0, %bb.bd ], [ %i.gg, %.sink.split.i._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit_crit_edge.i ], !dbg !12856
  %.sroa.0.0.i7.i113 = phi ptr [ null, %bb.bd ], [ %i.gf, %.sink.split.i._RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit_crit_edge.i ], !dbg !12855
  store i64 %i.gh, ptr %i.fy, align 8, !dbg !12859
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18end_line_highlightCs2NzvFoTxuAy_2rg.exit, !dbg !12860

bb.bf:                                            ; preds = %.sink.split.i.i114
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = load i64, ptr %i.fy, align 8, !dbg !12861, !noundef !401
  %i.gk = add i64 %i.gj, 1, !dbg !12862
  store i64 %i.gk, ptr %i.fy, align 8, !dbg !12863
  br label %common.resume, !dbg !12864
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12865 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [2 x i8], align 1                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [2 x i8], align 1                 ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [2 x i8], align 1                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 13 uses
  %i.as = alloca [24 x i8], align 8               ; 11 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [1 x i8], align 1                ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [1 x i8], align 1                ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 5 uses
  %i.bb = alloca [1 x i8], align 1                ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [2 x i8], align 1                ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 13 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [1 x i8], align 1                ; 4 uses
  %i.bo = alloca [1 x i8], align 1                ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 5 uses
  %i.bq = alloca [1 x i8], align 1                ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 5 uses
  %i.bs = alloca [1 x i8], align 1                ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [2 x i8], align 1                ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 11 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [8 x i8], align 8                ; 6 uses
  %i.by = alloca [40 x i8], align 8               ; 8 uses
  %i.bz = alloca [40 x i8], align 8               ; 8 uses
  %i.ca = alloca [40 x i8], align 8               ; 8 uses
  %i.cb = alloca [16 x i8], align 8               ; 7 uses
  %i.cc = alloca [16 x i8], align 8               ; 7 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %i.ce = alloca [1 x i8], align 1                ; 4 uses
  %i.cf = alloca [1 x i8], align 1                ; 4 uses
  %i.cg = alloca [1 x i8], align 1                ; 4 uses
  %i.ch = alloca [1 x i8], align 1                ; 4 uses
  %i.ci = alloca [32 x i8], align 8               ; 5 uses
  %i.cj = alloca [1 x i8], align 1                ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 5 uses
  %i.cl = alloca [1 x i8], align 1                ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 4 uses
  %i.cn = alloca [1 x i8], align 1                ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 5 uses
  %i.cp = alloca [1 x i8], align 1                ; 4 uses
  %i.cq = alloca [32 x i8], align 8               ; 5 uses
  %i.cr = alloca [1 x i8], align 1                ; 4 uses
  %i.cs = alloca [32 x i8], align 8               ; 4 uses
  %i.ct = alloca [1 x i8], align 1                ; 4 uses
  %i.cu = alloca [32 x i8], align 8               ; 5 uses
  %i.cv = alloca [1 x i8], align 1                ; 4 uses
  %i.cw = alloca [32 x i8], align 8               ; 5 uses
  %i.cx = alloca [1 x i8], align 1                ; 4 uses
  %i.cy = alloca [32 x i8], align 8               ; 4 uses
  %i.cz = alloca [16 x i8], align 16              ; 4 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [2 x i8], align 1                ; 4 uses
  %i.dc = alloca [1 x i8], align 1                ; 4 uses
  %i.dd = alloca [2 x i8], align 1                ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16379 ; 149 uses
  %i.df = load ptr, ptr %i.de, align 8, !dbg !16379, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 240, !dbg !16379
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !16379, !nonnull !401, !align !467, !noundef !401 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 184, !dbg !16379 ; 6 uses
  %i.dj = load i64, ptr %i.di, align 8, !dbg !16380, !noalias !16110, !noundef !401 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 9223372036854775807, !dbg !16381
  br i1 %i.dk, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE6borrowCs2NzvFoTxuAy_2rg.exit.i, label %bb.b, !dbg !16382, !prof !427

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14, !dbg !16383
  unreachable, !dbg !16383

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE6borrowCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 256, !dbg !16384
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !16384, !noundef !401
  %.not.i = icmp eq i64 %i.dm, 0, !dbg !16385
  br i1 %.not.i, label %bb.c, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE20write_search_preludeCs2NzvFoTxuAy_2rg.exit.thread, !dbg !16386

bb.c:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE6borrowCs2NzvFoTxuAy_2rg.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !16387
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !16387, !nonnull !401, !noundef !401 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16, !dbg !16388
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !16388, !range !450, !noundef !401
  %.not13.i = icmp eq i64 %i.dq, -1, !dbg !16388
  br i1 %.not13.i, label %bb.d, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE6borrowCs2NzvFoTxuAy_2rg.exit22.i, !dbg !16389

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE6borrowCs2NzvFoTxuAy_2rg.exit22.i: ; preds = %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 264, !dbg !16390
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !16390, !noundef !401
  %.not14.i = icmp eq i64 %i.ds, 0, !dbg !16391
  br i1 %.not14.i, label %bb.d, label %bb.e, !dbg !16392
end_hunk_6
