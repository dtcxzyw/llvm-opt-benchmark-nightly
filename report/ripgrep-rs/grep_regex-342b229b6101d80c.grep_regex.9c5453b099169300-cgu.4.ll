Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.4?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/vec/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\DC\0B\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\004\10\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !15, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 4611686018427387904, !dbg !18
  tail call void @llvm.assume(i1 %i.c), !dbg !20
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsdq8xsXUia3c_10grep_regex(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !21 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !21 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !21 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27
  %i.h = load ptr, ptr %i.g, align 8, !dbg !27, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.e, !dbg !40
  %i.j = sub i64 %i.b, %i.f, !dbg !48
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.f, !dbg !50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !68
  store i64 %i.f, ptr %i.l, align 8, !dbg !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !68
  store i64 %i.j, ptr %i.m, align 8, !dbg !68
  store ptr %i.i, ptr %0, align 8, !dbg !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !68
  store ptr %i.k, ptr %i.n, align 8, !dbg !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !68
  store ptr %1, ptr %i.o, align 8, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !70 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !71 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !71, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !74
  tail call void @llvm.assume(i1 %i.c), !dbg !76
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsdq8xsXUia3c_10grep_regex(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !77 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !77 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !77 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !79
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !83
  %i.h = load ptr, ptr %i.g, align 8, !dbg !83, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e, !dbg !92
  %i.j = sub i64 %i.b, %i.f, !dbg !95
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f, !dbg !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !106
  store i64 %i.f, ptr %i.l, align 8, !dbg !106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !106
  store i64 %i.j, ptr %i.m, align 8, !dbg !106
  store ptr %i.i, ptr %0, align 8, !dbg !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106
  store ptr %i.k, ptr %i.n, align 8, !dbg !106
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !106
  store ptr %1, ptr %i.o, align 8, !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !108 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !109 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !109, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744, !dbg !112
  tail call void @llvm.assume(i1 %i.c), !dbg !114
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsdq8xsXUia3c_10grep_regex(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !115 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !115 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !115 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !117
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !121
  %i.h = load ptr, ptr %i.g, align 8, !dbg !121, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.e, !dbg !130
  %i.j = sub i64 %i.b, %i.f, !dbg !133
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f, !dbg !135
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !144
  store i64 %i.f, ptr %i.l, align 8, !dbg !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !144
  store i64 %i.j, ptr %i.m, align 8, !dbg !144
  store ptr %i.i, ptr %0, align 8, !dbg !144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144
  store ptr %i.k, ptr %i.n, align 8, !dbg !144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !144
  store ptr %1, ptr %i.o, align 8, !dbg !144
  ret void, !dbg !145
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE8dedup_byNCNvMs2_BH_NtBH_3Seq5dedup0ECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !146 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !147 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !147, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744, !dbg !150
  tail call void @llvm.assume(i1 %i.c), !dbg !152
  %i.d = icmp samesign ult i64 %i.b, 2, !dbg !153
  br i1 %i.d, label %.thread, label %bb.b, !dbg !153

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155
  %i.f = load ptr, ptr %i.e, align 8, !dbg !155, !nonnull !14, !noundef !14 ; 5 uses
  br label %bb.c, !dbg !165

bb.c:                                             ; preds = %bb.b, %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit
  %.sroa.0.028 = phi i64 [ 1, %bb.b ], [ %i.u, %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit ] ; 6 uses
  %i.g = getelementptr [32 x i8], ptr %i.f, i64 %.sroa.0.028, !dbg !167 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170), !dbg !173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176), !dbg !173
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !178
  %i.i = load i64, ptr %i.h, align 8, !dbg !178, !alias.scope !170, !noalias !176, !noundef !14 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -16, !dbg !196
  %i.k = load i64, ptr %i.j, align 8, !dbg !196, !alias.scope !176, !noalias !170, !noundef !14
  %i.l = icmp eq i64 %i.i, %i.k, !dbg !202
  br i1 %i.l, label %bb.d, label %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit, !dbg !202

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 -24, !dbg !218
  %i.n = load ptr, ptr %i.m, align 8, !dbg !218, !alias.scope !176, !noalias !170, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !231
  %i.p = load ptr, ptr %i.o, align 8, !dbg !231, !alias.scope !170, !noalias !176, !nonnull !14, !noundef !14
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.i), !dbg !236, !noalias !241
  %.not.i = icmp eq i32 %bcmp.i, 0, !dbg !236
  br i1 %.not.i, label %bb.e, label %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit, !dbg !242

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !243 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !dbg !243, !range !246, !alias.scope !170, !noalias !176, !noundef !14
  %i.s = getelementptr i8, ptr %i.g, i64 -8, !dbg !247 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !dbg !247, !range !246, !alias.scope !176, !noalias !170, !noundef !14
  %.not1.i = icmp eq i8 %i.r, %i.t, !dbg !249
  br i1 %.not1.i, label %bb.g, label %bb.f, !dbg !249

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.q, align 8, !dbg !250, !alias.scope !170, !noalias !176
  store i8 0, ptr %i.s, align 8, !dbg !253, !alias.scope !176, !noalias !170
  br label %bb.g, !dbg !255

_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.d, %bb.c
  %i.u = add nuw nsw i64 %.sroa.0.028, 1, !dbg !256 ; 2 uses
  %.not = icmp eq i64 %i.u, %i.b, !dbg !165
  br i1 %.not, label %.thread, label %bb.c, !dbg !165

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = add nuw i64 %.sroa.0.028, 1, !dbg !258   ; 3 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader unwind label %.loopexit.split-lp, !dbg !259

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader: ; preds = %bb.g
  %i.w = icmp ult i64 %i.v, %i.b, !dbg !270
  br i1 %i.w, label %.lr.ph, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit._crit_edge, !dbg !270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.0.028, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader ], [ %.sroa.12.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15 ], !dbg !271
  store i64 %.sroa.12.1.lcssa, ptr %i.a, align 8, !dbg !272
  br label %.thread, !dbg !275

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15
  %.sroa.12.130 = phi i64 [ %.sroa.12.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15 ], [ %.sroa.0.028, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader ] ; 4 uses
  %.sroa.5.129 = phi i64 [ %.sroa.5.2.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15 ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.5.129, !dbg !276 ; 5 uses
  %i.y = getelementptr [32 x i8], ptr %i.f, i64 %.sroa.12.130, !dbg !278 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281), !dbg !284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286), !dbg !284
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !288
  %i.aa = load i64, ptr %i.z, align 8, !dbg !288, !alias.scope !281, !noalias !286, !noundef !14 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 -16, !dbg !293
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !293, !alias.scope !286, !noalias !281, !noundef !14
  %i.ad = icmp eq i64 %i.aa, %i.ac, !dbg !297
  br i1 %i.ad, label %bb.h, label %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14, !dbg !297

bb.h:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %i.y, i64 -24, !dbg !301
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !301, !alias.scope !286, !noalias !281, !nonnull !14, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !306
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !306, !alias.scope !281, !noalias !286, !nonnull !14, !noundef !14
  %bcmp.i11 = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.af, i64 %i.aa), !dbg !311, !noalias !313
  %.not.i12 = icmp eq i32 %bcmp.i11, 0, !dbg !311
  br i1 %.not.i12, label %bb.i, label %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14, !dbg !314

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !315 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !dbg !315, !range !246, !alias.scope !281, !noalias !286, !noundef !14
  %i.ak = getelementptr i8, ptr %i.y, i64 -8, !dbg !317 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !dbg !317, !range !246, !alias.scope !286, !noalias !281, !noundef !14
  %.not1.i13 = icmp eq i8 %i.aj, %i.al, !dbg !319
  br i1 %.not1.i13, label %bb.k, label %bb.j, !dbg !319

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ai, align 8, !dbg !320, !alias.scope !281, !noalias !286
  store i8 0, ptr %i.ak, align 8, !dbg !322, !alias.scope !286, !noalias !281
  br label %bb.k, !dbg !324

.thread:                                          ; preds = %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit._crit_edge
  ret void, !dbg !325

_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14: ; preds = %.lr.ph, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !dbg !326
  %i.am = add i64 %.sroa.12.130, 1, !dbg !331
  %i.an = add nuw nsw i64 %.sroa.5.129, 1, !dbg !332
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15, !dbg !333

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ao = add nuw nsw i64 %.sroa.5.129, 1, !dbg !334 ; 2 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15 unwind label %.loopexit, !dbg !335

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit15: ; preds = %bb.k, %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14
  %.sroa.5.2.a = phi i64 [ %i.an, %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14 ], [ %i.ao, %bb.k ], !dbg !340 ; 2 uses
  %.sroa.12.2 = phi i64 [ %i.am, %_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex.exit14 ], [ %.sroa.12.130, %bb.k ], !dbg !341 ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.5.2.a, %i.b, !dbg !270
  br i1 %i.ap, label %.lr.ph, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit._crit_edge, !dbg !270

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.5.0.a = phi i64 [ %i.ao, %.loopexit ], [ %i.v, %.loopexit.split-lp ], !dbg !341 ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.130, %.loopexit ], [ %.sroa.0.028, %.loopexit.split-lp ], !dbg !271 ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aq = sub i64 %i.b, %.sroa.5.0.a, !dbg !342   ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.12.0, !dbg !357
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.5.0.a, !dbg !361
  %i.at = shl nuw nsw i64 %i.aq, 5, !dbg !364
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.as, i64 %i.at, i1 false), !dbg !364, !noalias !368
  %i.au = add i64 %i.aq, %.sroa.12.0, !dbg !373
  store i64 %i.au, ptr %i.a, align 8, !dbg !375, !noalias !368
  resume { ptr, i32 } %lpad.phi, !dbg !378
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtB6_5drain5DrainBG_EECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !379 {
bb.a:
  %.sroa.410.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !380
  invoke void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.h, !dbg !381

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !382
  %i.d = load i64, ptr %i.c, align 8, !dbg !382, !range !383, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !382
  %i.f = load i64, ptr %i.e, align 8, !dbg !382   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !384
  %i.g = trunc nuw i64 %i.d to i1, !dbg !385
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !385, !prof !388

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !389 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !389, !alias.scope !392, !noundef !14 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !dbg !395, !range !404, !alias.scope !392, !noundef !14
  %i.k = sub i64 %i.j, %i.i, !dbg !405
  %i.l = icmp ugt i64 %i.f, %i.k, !dbg !408
  br i1 %i.l, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit, !dbg !409, !prof !410

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit_crit_edge unwind label %bb.h, !dbg !411

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit_crit_edge: ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 8, !dbg !412
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit, !dbg !411

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %bb.g unwind label %bb.h, !dbg !419

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit_crit_edge, %bb.c
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit_crit_edge ], [ %i.i, %bb.c ], !dbg !412 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !420
  %i.o = load ptr, ptr %i.n, align 8, !dbg !420, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !429
  call void @llvm.experimental.noalias.scope.decl(metadata !431), !dbg !434
  call void @llvm.experimental.noalias.scope.decl(metadata !435), !dbg !438
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.a, align 8, !dbg !446, !alias.scope !460, !noalias !463, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !dbg !467, !alias.scope !460, !noalias !463, !nonnull !14, !noundef !14 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r, !dbg !469
  br i1 %i.s, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i, !dbg !476

_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit, %bb.f
  %i.t = phi i64 [ %i.x, %bb.f ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit ] ; 3 uses
  %i.u = phi ptr [ %i.v, %bb.f ], [ %i.q, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477), !dbg !479
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !480 ; 3 uses
  %.sroa.0.0.copyload6.i.i = load i64, ptr %i.u, align 8, !dbg !484, !noalias !496 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload6.i.i, -1, !dbg !497
  br i1 %.not.i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.loopexit.i, label %bb.f, !dbg !498

bb.f:                                             ; preds = %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !484
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i), !dbg !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx7.i.i, i64 24, i1 false), !dbg !500, !noalias !501
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.t, !dbg !502 ; 2 uses
  store i64 %.sroa.0.0.copyload6.i.i, ptr %i.w, align 8, !dbg !513, !noalias !516
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i, i64 24, i1 false), !dbg !513, !noalias !516
  %i.x = add i64 %i.t, 1, !dbg !521               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i), !dbg !524
  %i.y = icmp eq ptr %i.v, %i.r, !dbg !469
  br i1 %i.y, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.loopexit.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i, !dbg !476

_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.loopexit.i: ; preds = %bb.f, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i
  %.val5.i.ph.i = phi i64 [ %i.t, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex.exit.i.i ], [ %i.x, %bb.f ]
  store ptr %i.v, ptr %i.a, align 8, !dbg !525, !alias.scope !526, !noalias !463
  br label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.loopexit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit
  %.val5.i.i = phi i64 [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex.exit ], [ %.val5.i.ph.i, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex.exit.loopexit.i ], !dbg !527
  store i64 %.val5.i.i, ptr %i.h, align 8, !dbg !528, !noalias !501
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !541
  ret void, !dbg !542

bb.g:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm, !dbg !543

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.i, !dbg !544

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !543
  unreachable, !dbg !543
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !546 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !dbg !550
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !551
  %i.b = load ptr, ptr %i.a, align 8, !dbg !551, !alias.scope !547, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !563
  %i.d = load i64, ptr %i.c, align 8, !dbg !563, !alias.scope !547, !noundef !14 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !564
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph, !dbg !564

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !564
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph, !dbg !564

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !564
  %i.h = add i64 %.sroa.0.0.i.i1, 1, !dbg !564    ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !564, !noalias !547, !inline_history !571

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !564    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !564
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !564

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !564
  br i1 %i.l, label %.body, label %.lr.ph3, !dbg !564

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2, !dbg !564
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #17
          to label %bb.c unwind label %bb.e, !dbg !564, !noalias !547, !inline_history !571

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !564, !noalias !547, !inline_history !571
  unreachable, !dbg !564

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.f, !dbg !572

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !575
  ret void, !dbg !550

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !550
  unreachable, !dbg !550

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %.body
  resume { ptr, i32 } %i.k, !dbg !550
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !577 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !dbg !581
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !582
  %i.b = load ptr, ptr %i.a, align 8, !dbg !582, !alias.scope !578, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !593
  %i.d = load i64, ptr %i.c, align 8, !dbg !593, !alias.scope !578, !noundef !14 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !594
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph, !dbg !594

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !594
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph, !dbg !594

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !594
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1, !dbg !594 ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit.i.i unwind label %bb.b, !dbg !601, !noalias !578

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !594    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !594
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !594

end_hunk_0
begin_hunk_1_@_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsdq8xsXUia3c_10grep_regex:bb.a

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8, !dbg !2083
  br label %bb.c, !dbg !2086

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !2086
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtCskKLDkoKarTP_4core6option8IntoIterBU_EE9from_iterCsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i24 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2087 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.2.0.extract.shift.i = lshr i24 %1, 8
  %i.b = and i24 %1, 255, !dbg !2091
  %i.c = zext nneg i24 %i.b to i64, !dbg !2091    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2105, !noalias !2115
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !2105, !noalias !2115
  %i.d = load i64, ptr %i.a, align 8, !dbg !2105, !range !383, !noalias !2115, !noundef !14
  %i.e = trunc nuw i64 %i.d to i1, !dbg !2118
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2119
  %i.g = load i64, ptr %i.f, align 8, !dbg !2119, !range !2120, !noalias !2115, !noundef !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2119 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i, !dbg !2118, !prof !410

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !2121, !noalias !2115
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #15, !dbg !2122, !noalias !2115
  unreachable, !dbg !2122

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !2124, !noalias !2115, !nonnull !14, !noundef !14 ; 2 uses
  %i.k = icmp uge i64 %i.g, %i.c, !dbg !2125
  tail call void @llvm.assume(i1 %i.k), !dbg !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2134, !noalias !2115
  %i.l = trunc i24 %1 to i1, !dbg !2135
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit, !dbg !2154

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i
  %i.m = trunc nuw i24 %.sroa.2.0.extract.shift.i to i16
  store i16 %i.m, ptr %i.j, align 1, !dbg !2155, !noalias !2162
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit, !dbg !2154

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i, %.lr.ph.i.i.i.i.i
  %.val10.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i ], !dbg !2171
  store i64 %i.g, ptr %0, align 8, !dbg !2172
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2172
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2172
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2172
  store i64 %.val10.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2172
  ret void, !dbg !2173
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEINtB2_12SpecFromIterBU_INtNtCskKLDkoKarTP_4core6option8IntoIterBU_EE9from_iterCsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 -1, 1114112) %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2174 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175), !dbg !2178
  %i.b = icmp ne i32 %1, -1, !dbg !2179
  %i.c = zext i1 %i.b to i64, !dbg !2179          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2188, !noalias !2175
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !2188, !noalias !2175
  %i.d = load i64, ptr %i.a, align 8, !dbg !2188, !range !383, !noalias !2175, !noundef !14
  %i.e = trunc nuw i64 %i.d to i1, !dbg !2197
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2198
  %i.g = load i64, ptr %i.f, align 8, !dbg !2198, !range !2120, !noalias !2175, !noundef !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2198 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i, !dbg !2197, !prof !410

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !2199, !noalias !2175
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #15, !dbg !2200, !noalias !2175
  unreachable, !dbg !2200

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !2201, !noalias !2175, !nonnull !14, !noundef !14 ; 3 uses
  %i.k = icmp uge i64 %i.g, %i.c, !dbg !2202
  tail call void @llvm.assume(i1 %i.k), !dbg !2204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2206, !noalias !2175
  %.not9.i.i.i.i.i = icmp eq i32 %1, -1, !dbg !2207
  br i1 %.not9.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph.split.us.i.i.i.i.i, !dbg !2223

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i
  store i32 %1, ptr %i.j, align 4, !dbg !2224, !noalias !2231
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4, !dbg !2224
  store i32 %2, ptr %i.l, align 4, !dbg !2224, !noalias !2231
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit, !dbg !2223

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtCskKLDkoKarTP_4core6option8IntoIterB13_EE9from_iterCsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %.val8.i.i.i.i.i = phi i64 [ 1, %.lr.ph.split.us.i.i.i.i.i ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeE7reserveCsdq8xsXUia3c_10grep_regex.exit.i.i.i ], !dbg !2240
  store i64 %i.g, ptr %0, align 8, !dbg !2241, !alias.scope !2175
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2241
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2241, !alias.scope !2175
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2241
  store i64 %.val8.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2241, !alias.scope !2175
  ret void, !dbg !2242
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !2243 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64, !dbg !2245
  %i.b = ptrtoint ptr %1 to i64, !dbg !2245
  %i.c = sub nuw i64 %i.a, %i.b, !dbg !2245       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2259 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !2259, !alias.scope !2264, !noundef !14 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !dbg !2269, !range !404, !alias.scope !2264, !noundef !14
  %i.g = sub i64 %i.f, %i.e, !dbg !2274
  %i.h = icmp ugt i64 %i.c, %i.g, !dbg !2276
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i, !dbg !2277, !prof !410

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1), !dbg !2278
  %i.i = load i64, ptr %i.d, align 8, !dbg !2279, !alias.scope !2285, !noundef !14 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !2286
  tail call void @llvm.assume(i1 %i.j), !dbg !2288
  br label %bb.b, !dbg !2289

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.a
  %i.k = icmp sgt i64 %i.e, -1, !dbg !2286
  tail call void @llvm.assume(i1 %i.k), !dbg !2288
  %.not.i = icmp eq ptr %2, %1, !dbg !2289
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsdq8xsXUia3c_10grep_regex.exit, label %bb.b, !dbg !2289

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.thread.i ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2291
  %i.n = load ptr, ptr %i.m, align 8, !dbg !2291, !alias.scope !2285, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l, !dbg !2300
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false), !dbg !2303
  %.pre.i = load i64, ptr %i.d, align 8, !dbg !2306, !alias.scope !2285
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsdq8xsXUia3c_10grep_regex.exit, !dbg !2307

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i, %bb.b
  %i.p = phi i64 [ %.pre.i, %bb.b ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdq8xsXUia3c_10grep_regex.exit.i ], !dbg !2306
  %i.q = add i64 %i.p, %i.c, !dbg !2306
  store i64 %i.q, ptr %i.d, align 8, !dbg !2306, !alias.scope !2285
  ret void, !dbg !2308
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis0_0EINtNtB2p_6result6ResultzNtNtB42_5error5ErrorEEE9from_iterB42_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !dbg !2309 {
bb.a:
  tail call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis0_0EINtNtB1d_6result6ResultzNtNtB3r_5error5ErrorEEB2G_EB3r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1), !dbg !2313
  ret void, !dbg !2315
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis1_0EINtNtB2p_6result6ResultzNtNtB42_5error5ErrorEEE9from_iterB42_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !dbg !2316 {
bb.a:
  tail call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis1_0EINtNtB1d_6result6ResultzNtNtB3r_5error5ErrorEEB2G_EB3r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1), !dbg !2317
  ret void, !dbg !2319
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2320 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2322
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2329
  %i.f = load ptr, ptr %i.e, align 8, !dbg !2329, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !2343, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !dbg !2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2353, !noalias !2358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2360, !noalias !2358
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !2360, !noalias !2358
  %i.h = load i64, ptr %i.b, align 8, !dbg !2360, !range !383, !noalias !2358, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1, !dbg !2366
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2367
  %i.k = load i64, ptr %i.j, align 8, !dbg !2367, !range !2120, !noalias !2358, !noundef !14 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2367 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i, !dbg !2366, !prof !410

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !2368, !noalias !2358
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #15, !dbg !2369, !noalias !2358
  unreachable, !dbg !2369

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !2370, !noalias !2358, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !2371
  tail call void @llvm.assume(i1 %i.o), !dbg !2373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2375, !noalias !2358
  store i64 %i.k, ptr %i.c, align 8, !dbg !2376, !noalias !2358
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2376
  store ptr %i.n, ptr %i.p, align 8, !dbg !2376, !noalias !2358
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2376 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g, !dbg !2377
  %i.s = icmp eq i64 %i.k, 0, !dbg !2389
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph.i, !dbg !2389

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c, !dbg !2389

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.10.046.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.v, %bb.g ]
  %.sroa.013.045.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.g ] ; 5 uses
  %.sroa.7.044.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.g ] ; 3 uses
  %i.v = add i64 %.sroa.10.046.i, -1, !dbg !2398  ; 2 uses
  %i.w = icmp eq ptr %.sroa.013.045.i, %i.r, !dbg !2399
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdq8xsXUia3c_10grep_regex.exit, label %bb.d, !dbg !2411

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.045.i, i64 32, !dbg !2412
  %i.y = add nuw nsw i64 %.sroa.7.044.i, 1, !dbg !2415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418), !dbg !2421
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.045.i, i64 8, !dbg !2423
  %.val.i.i = load ptr, ptr %i.z, align 8, !dbg !2423, !alias.scope !2427, !noalias !2428, !nonnull !14, !noundef !14
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.045.i, i64 16, !dbg !2423
  %.val1.i.i = load i64, ptr %i.aa, align 8, !dbg !2423, !alias.scope !2427, !noalias !2428, !noundef !14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2430, !noalias !2445
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !2430, !noalias !2358

.noexc.i:                                         ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !dbg !2430, !range !383, !noalias !2445, !noundef !14
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !2451
  %i.ad = load i64, ptr %i.t, align 8, !dbg !2452, !range !2120, !noalias !2445, !noundef !14 ; 3 uses
  br i1 %i.ac, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i.i.i.i, !dbg !2451, !prof !410

bb.e:                                             ; preds = %.noexc.i
  %i.ae = load i64, ptr %i.u, align 8, !dbg !2453, !noalias !2445
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #15
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !dbg !2454, !noalias !2358

.noexc12.i:                                       ; preds = %bb.e
  unreachable, !dbg !2454

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i.i.i.i: ; preds = %.noexc.i
  %i.af = load ptr, ptr %i.u, align 8, !dbg !2455, !noalias !2445, !nonnull !14, !noundef !14 ; 2 uses
  %i.ag = icmp ule i64 %.val1.i.i, %i.ad, !dbg !2456
  tail call void @llvm.assume(i1 %i.ag), !dbg !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2460, !noalias !2445
  %.not.i.i.i.i = icmp eq i64 %.val1.i.i, 0, !dbg !2461
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f, !dbg !2461

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i, i1 false), !dbg !2463, !noalias !2468
  br label %bb.g, !dbg !2469

bb.g:                                             ; preds = %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.045.i, i64 24, !dbg !2470
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !2470, !range !246, !alias.scope !2427, !noalias !2428, !noundef !14
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.044.i, !dbg !2471 ; 4 uses
  store i64 %i.ad, ptr %i.aj, align 8, !dbg !2472, !noalias !2358
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !2472
  store ptr %i.af, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !2472, !noalias !2358
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !2472
  store i64 %.val1.i.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !2472, !noalias !2358
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !2472
  store i8 %i.ai, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !2472, !noalias !2358
  %i.ak = icmp eq i64 %i.v, 0, !dbg !2389
  br i1 %i.ak, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdq8xsXUia3c_10grep_regex.exit, label %bb.c, !dbg !2389

bb.h:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2479, !noalias !2358
  unreachable, !dbg !2479

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.044.i, ptr %i.q, align 8, !dbg !2480, !noalias !2358
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.j unwind label %bb.h, !dbg !2489, !noalias !2358

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi.i, !dbg !2479

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.c, %bb.g, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit.i
  store i64 %i.g, ptr %i.q, align 8, !dbg !2490, !noalias !2358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2493, !noalias !2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2489, !noalias !2358
  ret void, !dbg !2494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !2495 {
bb.a:
  ret void, !dbg !2496
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2497 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2498
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2498, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2507
  %i.d = load i64, ptr %i.c, align 8, !dbg !2507, !noundef !14 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !2508
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph47, !dbg !2508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !2508
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph47, !dbg !2508

.lr.ph47:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit.i
  %.sroa.0.0.i46 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i46, !dbg !2508 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i46, 1, !dbg !2508 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2515), !dbg !2508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518), !dbg !2521
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !2524 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527), !dbg !2524
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530), !dbg !2533
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2536
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !dbg !2536, !alias.scope !2539, !nonnull !14, !noundef !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !2536
  %.val1.i.i.i.i.i = load i64, ptr %i.k, align 8, !dbg !2536, !alias.scope !2539, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542), !dbg !2545
  %i.l = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !2552
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i.i, label %.lr.ph, !dbg !2552

bb.b:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %.val1.i.i.i.i.i, !dbg !2552
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i.i, label %.lr.ph, !dbg !2552

.lr.ph:                                           ; preds = %.lr.ph47, %bb.b
  %.sroa.0.0.i.i.i.i.i.i.i45 = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph47 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i45, !dbg !2552
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i45, 1, !dbg !2552 ; 4 uses
  %.val7.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !dbg !2552, !alias.scope !2542, !noalias !2555, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val7.i.i.i.i.i.i.i)
          to label %bb.b unwind label %bb.d, !dbg !2552, !noalias !2556

bb.c:                                             ; preds = %.lr.ph49
  %i.p = add i64 %.sroa.0.1.i.i.i.i.i.i.i48, 1, !dbg !2552 ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val1.i.i.i.i.i, !dbg !2552
  br i1 %i.q, label %.body.i.i.i.i.i, label %.lr.ph49, !dbg !2552

bb.d:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %.val1.i.i.i.i.i, !dbg !2552
  br i1 %i.s, label %.body.i.i.i.i.i, label %.lr.ph49, !dbg !2552

.lr.ph49:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i.i.i.i.i48 = phi i64 [ %i.p, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i48, !dbg !2552
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !dbg !2552, !alias.scope !2542, !noalias !2555, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val.i.i.i.i.i.i.i) #17
          to label %bb.c unwind label %bb.e, !dbg !2552, !noalias !2556

bb.e:                                             ; preds = %.lr.ph49
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2552, !noalias !2556
  unreachable, !dbg !2552

.body.i.i.i.i.i:                                  ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.f, !dbg !2557

bb.f:                                             ; preds = %.body.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2536
  unreachable, !dbg !2536

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %bb.b, %.lr.ph47
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.g, !dbg !2560

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i
  %i.w = icmp eq i64 %i.aa, %i.d, !dbg !2508
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit._crit_edge, label %.lr.ph53, !dbg !2508

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.r, %.body.i.i.i.i.i ]
  %i.y = icmp eq i64 %i.h, %i.d, !dbg !2508
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit._crit_edge, label %.lr.ph53, !dbg !2508

.lr.ph53:                                         ; preds = %.body.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit
  %.sroa.0.1.i52 = phi i64 [ %i.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit ], [ %i.h, %.body.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i52, !dbg !2508 ; 3 uses
  %i.aa = add i64 %.sroa.0.1.i52, 1, !dbg !2508   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562), !dbg !2508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565), !dbg !2568
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !2570 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572), !dbg !2570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575), !dbg !2578
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !2580
  %.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !2580, !alias.scope !2582, !nonnull !14, !noundef !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !2580
  %.val1.i.i.i.i = load i64, ptr %i.ad, align 8, !dbg !2580, !alias.scope !2582, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583), !dbg !2586
  %i.ae = icmp eq i64 %.val1.i.i.i.i, 0, !dbg !2590
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i, label %.lr.ph51, !dbg !2590

bb.h:                                             ; preds = %.lr.ph51
  %i.af = icmp eq i64 %i.ah, %.val1.i.i.i.i, !dbg !2590
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i, label %.lr.ph51, !dbg !2590

.lr.ph51:                                         ; preds = %.lr.ph53, %bb.h
  %.sroa.0.0.i.i.i.i.i.i50 = phi i64 [ %i.ah, %bb.h ], [ 0, %.lr.ph53 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i50, !dbg !2590
  %i.ah = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i50, 1, !dbg !2590 ; 4 uses
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !dbg !2590, !alias.scope !2583, !noalias !2582, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val7.i.i.i.i.i.i)
          to label %bb.h unwind label %bb.j, !dbg !2590, !noalias !2592

bb.i:                                             ; preds = %.lr.ph55
  %i.ai = add i64 %.sroa.0.1.i.i.i.i.i.i54, 1, !dbg !2590 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.val1.i.i.i.i, !dbg !2590
  br i1 %i.aj, label %.body.i.i.i.i, label %.lr.ph55, !dbg !2590

bb.j:                                             ; preds = %.lr.ph51
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.al = icmp eq i64 %i.ah, %.val1.i.i.i.i, !dbg !2590
  br i1 %i.al, label %.body.i.i.i.i, label %.lr.ph55, !dbg !2590

.lr.ph55:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i.i.i.i54 = phi i64 [ %i.ai, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i54, !dbg !2590
  %.val.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !dbg !2590, !alias.scope !2583, !noalias !2582, !nonnull !14, !noundef !14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val.i.i.i.i.i.i) #17
          to label %bb.i unwind label %bb.k, !dbg !2590, !noalias !2592

bb.k:                                             ; preds = %.lr.ph55
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2590, !noalias !2592
  unreachable, !dbg !2590

.body.i.i.i.i:                                    ; preds = %bb.i, %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body unwind label %bb.l, !dbg !2593

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2580
  unreachable, !dbg !2580

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.h, %.lr.ph53
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.m, !dbg !2595

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !2508

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1u_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECsdq8xsXUia3c_10grep_regex.exit.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !2508

.body:                                            ; preds = %.body.i.i.i.i, %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !dbg !2508
  unreachable, !dbg !2508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBL_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2x_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsdq8xsXUia3c_10grep_regex.exit.i, %bb.a
  ret void, !dbg !2597
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2598 {
bb.a:
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!140 = distinct !DISubprogram(name: "new<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3newCsdq8xsXUia3c_10grep_regex", scope: !60, file: !57, line: 94, type: !13, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!141 = !DILocation(line: 1040, column: 9, scope: !142, inlinedAt: !143)
!142 = distinct !DISubprogram(name: "iter<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7Literal4iterCsdq8xsXUia3c_10grep_regex", scope: !66, file: !65, line: 1039, type: !13, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!143 = !DILocation(line: 3045, column: 35, scope: !134)
!144 = !DILocation(line: 3042, column: 13, scope: !134)
!145 = !DILocation(line: 3049, column: 6, scope: !108)
!146 = distinct !DISubprogram(name: "dedup_by<regex_syntax::hir::literal::Literal, alloc::alloc::Global, regex_syntax::hir::literal::{impl#4}::dedup::{closure_env#0}>", linkageName: "_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE8dedup_byNCNvMs2_BH_NtBH_3Seq5dedup0ECsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 2669, type: !13, scopeLine: 2669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!147 = !DILocation(line: 3100, column: 19, scope: !148, inlinedAt: !149)
!148 = distinct !DISubprogram(name: "len<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3lenCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 3099, type: !13, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!149 = !DILocation(line: 2673, column: 24, scope: !146)
!150 = !DILocation(line: 3105, column: 37, scope: !151, inlinedAt: !149)
!151 = distinct !DILexicalBlock(scope: !148, file: !9, line: 3100, column: 9)
!152 = !DILocation(line: 3105, column: 18, scope: !151, inlinedAt: !149)
!153 = !DILocation(line: 2674, column: 12, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !9, line: 2673, column: 9)
!155 = !DILocation(line: 611, column: 9, scope: !156, inlinedAt: !157)
!156 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::literal::Literal>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 610, type: !13, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!157 = !DILocation(line: 606, column: 14, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::literal::Literal>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 605, type: !13, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!159 = !DILocation(line: 296, column: 20, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3ptrCsdq8xsXUia3c_10grep_regex", scope: !36, file: !29, line: 295, type: !13, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!161 = !DILocation(line: 2052, column: 18, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "as_mut_ptr<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE10as_mut_ptrCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 2049, type: !13, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!163 = !DILocation(line: 2682, column: 26, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !9, line: 2681, column: 9)
!165 = !DILocation(line: 2683, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !164, file: !9, line: 2682, column: 9)
!167 = !DILocation(line: 971, column: 18, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7Literal3addCsdq8xsXUia3c_10grep_regex", scope: !53, file: !52, line: 937, type: !13, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!169 = !DILocation(line: 2687, column: 34, scope: !166)
!170 = !{!171}
!171 = distinct !{!171, !172, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex: argument 0"}
!172 = distinct !{!172, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex"}
!173 = !DILocation(line: 2690, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !9, line: 2688, column: 17)
!175 = distinct !DILexicalBlock(scope: !166, file: !9, line: 2687, column: 17)
!176 = !{!177}
!177 = distinct !{!177, !172, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex: argument 1"}
!178 = !DILocation(line: 1864, column: 86, scope: !179, inlinedAt: !180)
!179 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8as_sliceCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 1847, type: !13, scopeLine: 1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!180 = distinct !DILocation(line: 3854, column: 14, scope: !181, inlinedAt: !183)
!181 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsdq8xsXUia3c_10grep_regex", scope: !182, file: !9, line: 3853, type: !13, scopeLine: 3853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!182 = !DINamespace(name: "{impl#10}", scope: !11)
!183 = distinct !DILocation(line: 2070, column: 9, scope: !184, inlinedAt: !190)
!184 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMs5_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB5_7Literal8as_bytes", scope: !186, file: !185, line: 2069, type: !13, scopeLine: 2069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!185 = !DIFile(filename: "src/hir/literal.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-syntax-0.8.11", checksumkind: CSK_MD5, checksum: "444cbbba09a39352f6b98c2ff0043e8e")
!186 = !DINamespace(name: "Literal", scope: !187)
!187 = !DINamespace(name: "literal", scope: !188)
!188 = !DINamespace(name: "hir", scope: !189)
!189 = !DINamespace(name: "regex_syntax", scope: null)
!190 = distinct !DILocation(line: 1344, column: 25, scope: !191, inlinedAt: !195)
!191 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex", scope: !192, file: !185, line: 1343, type: !194, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!192 = !DINamespace(name: "dedup", scope: !193)
!193 = !DINamespace(name: "{impl#4}", scope: !187)
!194 = !DISubroutineType(cc: DW_CC_nocall, types: !14)
!195 = distinct !DILocation(line: 2690, column: 17, scope: !174)
!196 = !DILocation(line: 1864, column: 86, scope: !179, inlinedAt: !197)
!197 = distinct !DILocation(line: 3854, column: 14, scope: !198, inlinedAt: !199)
!198 = !DILexicalBlockFile(scope: !181, file: !9, discriminator: 2)
!199 = distinct !DILocation(line: 2070, column: 9, scope: !200, inlinedAt: !201)
!200 = !DILexicalBlockFile(scope: !184, file: !185, discriminator: 2)
!201 = distinct !DILocation(line: 1344, column: 44, scope: !191, inlinedAt: !195)
!202 = !DILocation(line: 21, column: 12, scope: !203, inlinedAt: !208)
!203 = distinct !DILexicalBlock(scope: !205, file: !204, line: 20, column: 9)
!204 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d6518c072587d593bede5b5773a8b8b")
!205 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsdq8xsXUia3c_10grep_regex", scope: !206, file: !204, line: 19, type: !13, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!206 = !DINamespace(name: "{impl#0}", scope: !207)
!207 = !DINamespace(name: "cmp", scope: !62)
!208 = distinct !DILocation(line: 276, column: 15, scope: !209, inlinedAt: !213)
!209 = distinct !DISubprogram(name: "ne<[u8], [u8]>", linkageName: "_RNvYShNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsdq8xsXUia3c_10grep_regex", scope: !211, file: !210, line: 275, type: !13, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!210 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3827688213b20765e212e5bbc524e186")
!211 = !DINamespace(name: "PartialEq", scope: !212)
!212 = !DINamespace(name: "cmp", scope: !46)
!213 = distinct !DILocation(line: 2403, column: 13, scope: !214, inlinedAt: !217)
!214 = distinct !DISubprogram(name: "ne<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRShNtB7_9PartialEq2neCsdq8xsXUia3c_10grep_regex", scope: !215, file: !210, line: 2402, type: !13, scopeLine: 2402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!215 = !DINamespace(name: "{impl#9}", scope: !216)
!216 = !DINamespace(name: "impls", scope: !212)
!217 = distinct !DILocation(line: 1344, column: 20, scope: !191, inlinedAt: !195)
!218 = !DILocation(line: 611, column: 9, scope: !219, inlinedAt: !220)
!219 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 610, type: !13, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!220 = distinct !DILocation(line: 606, column: 14, scope: !221, inlinedAt: !223)
!221 = !DILexicalBlockFile(scope: !222, file: !29, discriminator: 2)
!222 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrhECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 605, type: !13, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!223 = distinct !DILocation(line: 296, column: 20, scope: !224, inlinedAt: !226)
!224 = !DILexicalBlockFile(scope: !225, file: !29, discriminator: 2)
!225 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE3ptrCsdq8xsXUia3c_10grep_regex", scope: !36, file: !29, line: 295, type: !13, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!226 = distinct !DILocation(line: 1968, column: 18, scope: !227, inlinedAt: !229)
!227 = !DILexicalBlockFile(scope: !228, file: !9, discriminator: 2)
!228 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE6as_ptrCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 1965, type: !13, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!229 = distinct !DILocation(line: 1864, column: 76, scope: !230, inlinedAt: !197)
!230 = !DILexicalBlockFile(scope: !179, file: !9, discriminator: 2)
!231 = !DILocation(line: 611, column: 9, scope: !219, inlinedAt: !232)
!232 = distinct !DILocation(line: 606, column: 14, scope: !222, inlinedAt: !233)
!233 = distinct !DILocation(line: 296, column: 20, scope: !225, inlinedAt: !234)
!234 = distinct !DILocation(line: 1968, column: 18, scope: !228, inlinedAt: !235)
!235 = distinct !DILocation(line: 1864, column: 76, scope: !179, inlinedAt: !180)
!236 = !DILocation(line: 157, column: 13, scope: !237, inlinedAt: !240)
!237 = distinct !DILexicalBlock(scope: !238, file: !204, line: 156, column: 13)
!238 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsdq8xsXUia3c_10grep_regex", scope: !239, file: !204, line: 151, type: !13, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!239 = !DINamespace(name: "{impl#5}", scope: !207)
!240 = distinct !DILocation(line: 24, column: 22, scope: !203, inlinedAt: !208)
!241 = !{!171, !177}
!242 = !DILocation(line: 1344, column: 20, scope: !191, inlinedAt: !195)
!243 = !DILocation(line: 2096, column: 9, scope: !244, inlinedAt: !245)
!244 = distinct !DISubprogram(name: "is_exact", linkageName: "_RNvMs5_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB5_7Literal8is_exact", scope: !186, file: !185, line: 2095, type: !13, scopeLine: 2095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!245 = distinct !DILocation(line: 1347, column: 25, scope: !191, inlinedAt: !195)
!246 = !{i8 0, i8 2}
!247 = !DILocation(line: 2096, column: 9, scope: !244, inlinedAt: !248)
!248 = distinct !DILocation(line: 1347, column: 44, scope: !191, inlinedAt: !195)
!249 = !DILocation(line: 1347, column: 20, scope: !191, inlinedAt: !195)
!250 = !DILocation(line: 2105, column: 9, scope: !251, inlinedAt: !252)
!251 = distinct !DISubprogram(name: "make_inexact", linkageName: "_RNvMs5_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB5_7Literal12make_inexact", scope: !186, file: !185, line: 2104, type: !13, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!252 = distinct !DILocation(line: 1348, column: 26, scope: !191, inlinedAt: !195)
!253 = !DILocation(line: 2105, column: 9, scope: !251, inlinedAt: !254)
!254 = distinct !DILocation(line: 1349, column: 26, scope: !191, inlinedAt: !195)
!255 = !DILocation(line: 1347, column: 17, scope: !191, inlinedAt: !195)
!256 = !DILocation(line: 2695, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !166, file: !9, line: 2684, column: 13)
!258 = !DILocation(line: 2754, column: 35, scope: !166)
!259 = !DILocation(line: 848, column: 1, scope: !260, inlinedAt: !262)
!260 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!261 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ef5abec170db493b218d7a08e98d8953")
!262 = distinct !DILocation(line: 848, column: 1, scope: !263, inlinedAt: !264)
!263 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!264 = distinct !DILocation(line: 848, column: 1, scope: !265, inlinedAt: !266)
!265 = distinct !DISubprogram(name: "drop_glue<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!266 = distinct !DILocation(line: 843, column: 14, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "drop_in_place<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 831, type: !13, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!268 = !DILocation(line: 2758, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !166, file: !9, line: 2753, column: 9)
!270 = !DILocation(line: 2764, column: 19, scope: !269)
!271 = !DILocation(line: 2754, column: 13, scope: !166)
!272 = !DILocation(line: 2223, column: 9, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "set_len<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7set_lenCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 2216, type: !13, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!274 = !DILocation(line: 2792, column: 21, scope: !269)
!275 = !DILocation(line: 2795, column: 5, scope: !146)
!276 = !DILocation(line: 971, column: 18, scope: !168, inlinedAt: !277)
!277 = !DILocation(line: 2765, column: 38, scope: !269)
!278 = !DILocation(line: 971, column: 18, scope: !168, inlinedAt: !279)
!279 = !DILocation(line: 2766, column: 38, scope: !280)
!280 = distinct !DILexicalBlock(scope: !269, file: !9, line: 2765, column: 17)
!281 = !{!282}
!282 = distinct !{!282, !283, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex: argument 0"}
!283 = distinct !{!283, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex"}
!284 = !DILocation(line: 2769, column: 39, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !9, line: 2766, column: 17)
!286 = !{!287}
!287 = distinct !{!287, !283, !"_RNCNvMs2_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literalNtB7_3Seq5dedup0Csdq8xsXUia3c_10grep_regex: argument 1"}
!288 = !DILocation(line: 1864, column: 86, scope: !179, inlinedAt: !289)
!289 = distinct !DILocation(line: 3854, column: 14, scope: !181, inlinedAt: !290)
!290 = distinct !DILocation(line: 2070, column: 9, scope: !184, inlinedAt: !291)
!291 = distinct !DILocation(line: 1344, column: 25, scope: !191, inlinedAt: !292)
!292 = distinct !DILocation(line: 2769, column: 39, scope: !285)
!293 = !DILocation(line: 1864, column: 86, scope: !179, inlinedAt: !294)
!294 = distinct !DILocation(line: 3854, column: 14, scope: !198, inlinedAt: !295)
!295 = distinct !DILocation(line: 2070, column: 9, scope: !200, inlinedAt: !296)
!296 = distinct !DILocation(line: 1344, column: 44, scope: !191, inlinedAt: !292)
!297 = !DILocation(line: 21, column: 12, scope: !203, inlinedAt: !298)
!298 = distinct !DILocation(line: 276, column: 15, scope: !209, inlinedAt: !299)
!299 = distinct !DILocation(line: 2403, column: 13, scope: !214, inlinedAt: !300)
!300 = distinct !DILocation(line: 1344, column: 20, scope: !191, inlinedAt: !292)
!301 = !DILocation(line: 611, column: 9, scope: !219, inlinedAt: !302)
!302 = distinct !DILocation(line: 606, column: 14, scope: !221, inlinedAt: !303)
!303 = distinct !DILocation(line: 296, column: 20, scope: !224, inlinedAt: !304)
!304 = distinct !DILocation(line: 1968, column: 18, scope: !227, inlinedAt: !305)
!305 = distinct !DILocation(line: 1864, column: 76, scope: !230, inlinedAt: !294)
!306 = !DILocation(line: 611, column: 9, scope: !219, inlinedAt: !307)
!307 = distinct !DILocation(line: 606, column: 14, scope: !222, inlinedAt: !308)
!308 = distinct !DILocation(line: 296, column: 20, scope: !225, inlinedAt: !309)
!309 = distinct !DILocation(line: 1968, column: 18, scope: !228, inlinedAt: !310)
!310 = distinct !DILocation(line: 1864, column: 76, scope: !179, inlinedAt: !289)
!311 = !DILocation(line: 157, column: 13, scope: !237, inlinedAt: !312)
!312 = distinct !DILocation(line: 24, column: 22, scope: !203, inlinedAt: !298)
!313 = !{!282, !287}
!314 = !DILocation(line: 1344, column: 20, scope: !191, inlinedAt: !292)
!315 = !DILocation(line: 2096, column: 9, scope: !244, inlinedAt: !316)
!316 = distinct !DILocation(line: 1347, column: 25, scope: !191, inlinedAt: !292)
!317 = !DILocation(line: 2096, column: 9, scope: !244, inlinedAt: !318)
!318 = distinct !DILocation(line: 1347, column: 44, scope: !191, inlinedAt: !292)
!319 = !DILocation(line: 1347, column: 20, scope: !191, inlinedAt: !292)
!320 = !DILocation(line: 2105, column: 9, scope: !251, inlinedAt: !321)
!321 = distinct !DILocation(line: 1348, column: 26, scope: !191, inlinedAt: !292)
!322 = !DILocation(line: 2105, column: 9, scope: !251, inlinedAt: !323)
!323 = distinct !DILocation(line: 1349, column: 26, scope: !191, inlinedAt: !292)
!324 = !DILocation(line: 1347, column: 17, scope: !191, inlinedAt: !292)
!325 = !DILocation(line: 2795, column: 6, scope: !146)
!326 = !DILocation(line: 574, column: 14, scope: !327, inlinedAt: !328)
!327 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappingNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 553, type: !13, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!328 = !DILocation(line: 2781, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !9, line: 2776, column: 21)
!330 = distinct !DILexicalBlock(scope: !285, file: !9, line: 2769, column: 17)
!331 = !DILocation(line: 2784, column: 21, scope: !329)
!332 = !DILocation(line: 2785, column: 21, scope: !329)
!333 = !DILocation(line: 2770, column: 17, scope: !330)
!334 = !DILocation(line: 2772, column: 21, scope: !330)
!335 = !DILocation(line: 848, column: 1, scope: !260, inlinedAt: !336)
!336 = distinct !DILocation(line: 848, column: 1, scope: !263, inlinedAt: !337)
!337 = distinct !DILocation(line: 848, column: 1, scope: !265, inlinedAt: !338)
!338 = distinct !DILocation(line: 843, column: 14, scope: !267, inlinedAt: !339)
!339 = !DILocation(line: 2774, column: 21, scope: !330)
!340 = !DILocation(line: 0, scope: !330)
!341 = !DILocation(line: 0, scope: !166)
!342 = !DILocation(line: 2719, column: 13, scope: !343, inlinedAt: !347)
!343 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !345, file: !344, line: 2718, type: !13, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!344 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "346a9515419f6590f35e1630dc7e24c4")
!345 = !DINamespace(name: "{impl#11}", scope: !346)
!346 = !DINamespace(name: "num", scope: !46)
!347 = distinct !DILocation(line: 2729, column: 42, scope: !348, inlinedAt: !354)
!348 = distinct !DILexicalBlock(scope: !349, file: !9, line: 2725, column: 21)
!349 = distinct !DILexicalBlock(scope: !350, file: !9, line: 2724, column: 21)
!350 = distinct !DISubprogram(name: "drop<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE8dedup_byINtB2_13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex", scope: !351, file: !9, line: 2717, type: !13, scopeLine: 2717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!351 = !DINamespace(name: "{impl#0}", scope: !352)
!352 = !DINamespace(name: "dedup_by", scope: !353)
!353 = !DINamespace(name: "{impl#1}", scope: !11)
!354 = distinct !DILocation(line: 848, column: 1, scope: !355, inlinedAt: !356)
!355 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#1}::dedup_by::FillGapOnDrop<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBL_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!356 = distinct !DILocation(line: 2795, column: 5, scope: !166)
!357 = !DILocation(line: 971, column: 18, scope: !358, inlinedAt: !359)
!358 = distinct !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7Literal3addCsdq8xsXUia3c_10grep_regex", scope: !53, file: !52, line: 937, type: !13, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!359 = distinct !DILocation(line: 2732, column: 43, scope: !360, inlinedAt: !354)
!360 = distinct !DILexicalBlock(scope: !348, file: !9, line: 2729, column: 21)
!361 = !DILocation(line: 971, column: 18, scope: !358, inlinedAt: !362)
!362 = distinct !DILocation(line: 2734, column: 41, scope: !363, inlinedAt: !354)
!363 = distinct !DILexicalBlock(scope: !360, file: !9, line: 2732, column: 21)
!364 = !DILocation(line: 665, column: 9, scope: !365, inlinedAt: !366)
!365 = distinct !DISubprogram(name: "copy<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4copyNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 650, type: !13, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!366 = distinct !DILocation(line: 2738, column: 21, scope: !367, inlinedAt: !354)
!367 = distinct !DILexicalBlock(scope: !363, file: !9, line: 2734, column: 21)
!368 = !{!369, !371}
!369 = distinct !{!369, !370, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE8dedup_byINtB2_13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex: argument 0"}
!370 = distinct !{!370, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE8dedup_byINtB2_13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex"}
!371 = distinct !{!371, !372, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBL_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex: argument 0"}
!372 = distinct !{!372, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE8dedup_by13FillGapOnDropNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBL_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex"}
!373 = !DILocation(line: 2744, column: 38, scope: !374, inlinedAt: !354)
!374 = distinct !DILexicalBlock(scope: !367, file: !9, line: 2742, column: 21)
!375 = !DILocation(line: 2223, column: 9, scope: !376, inlinedAt: !377)
!376 = distinct !DISubprogram(name: "set_len<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7set_lenCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 2216, type: !13, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!377 = distinct !DILocation(line: 2744, column: 30, scope: !374, inlinedAt: !354)
!378 = !DILocation(line: 2669, column: 5, scope: !146)
!379 = distinct !DISubprogram(name: "extend_trusted<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtB6_5drain5DrainBG_EECsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 4121, type: !13, scopeLine: 4121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!380 = !DILocation(line: 4122, column: 27, scope: !379)
!381 = !DILocation(line: 4122, column: 36, scope: !379)
!382 = !DILocation(line: 4122, column: 19, scope: !379)
!383 = !{i64 0, i64 2}
!384 = !DILocation(line: 4122, column: 47, scope: !379)
!385 = !DILocation(line: 4123, column: 16, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !9, line: 4123, column: 40)
!387 = distinct !DILexicalBlock(scope: !379, file: !9, line: 4122, column: 9)
!388 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!389 = !DILocation(line: 1461, column: 26, scope: !390, inlinedAt: !391)
!390 = distinct !DISubprogram(name: "reserve<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 1460, type: !13, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!391 = distinct !DILocation(line: 4130, column: 18, scope: !386)
!392 = !{!393}
!393 = distinct !{!393, !394, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex: argument 0"}
!394 = distinct !{!394, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex"}
!395 = !DILocation(line: 616, column: 49, scope: !396, inlinedAt: !397)
!396 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 615, type: !13, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!397 = distinct !DILocation(line: 764, column: 27, scope: !398, inlinedAt: !399)
!398 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 763, type: !13, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!399 = distinct !DILocation(line: 670, column: 17, scope: !400, inlinedAt: !401)
!400 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner7reserveCsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 652, type: !13, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!401 = distinct !DILocation(line: 341, column: 29, scope: !402, inlinedAt: !403)
!402 = distinct !DISubprogram(name: "reserve<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE7reserveCsdq8xsXUia3c_10grep_regex", scope: !36, file: !29, line: 339, type: !13, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!403 = distinct !DILocation(line: 1461, column: 18, scope: !390, inlinedAt: !391)
!404 = !{i64 0, i64 -9223372036854775808}
!405 = !DILocation(line: 2719, column: 13, scope: !406, inlinedAt: !407)
!406 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !345, file: !344, line: 2718, type: !13, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!407 = distinct !DILocation(line: 764, column: 56, scope: !398, inlinedAt: !399)
!408 = !DILocation(line: 764, column: 9, scope: !398, inlinedAt: !399)
!409 = !DILocation(line: 670, column: 12, scope: !400, inlinedAt: !401)
!410 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!411 = !DILocation(line: 672, column: 17, scope: !400, inlinedAt: !401)
!412 = !DILocation(line: 14, column: 35, scope: !413, inlinedAt: !417)
!413 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !415, file: !414, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!414 = !DIFile(filename: "library/alloc/src/vec/set_len_on_drop.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "9a0d01ce4a85900df996691fa734ffd7")
!415 = !DINamespace(name: "SetLenOnDrop", scope: !416)
!416 = !DINamespace(name: "set_len_on_drop", scope: !11)
!417 = !DILocation(line: 4133, column: 37, scope: !418)
!418 = distinct !DILexicalBlock(scope: !386, file: !9, line: 4132, column: 17)
!419 = !DILocation(line: 4148, column: 13, scope: !387)
!420 = !DILocation(line: 611, column: 9, scope: !421, inlinedAt: !422)
!421 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::literal::Literal>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 610, type: !13, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!422 = !DILocation(line: 606, column: 14, scope: !423, inlinedAt: !424)
!423 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::literal::Literal>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !30, file: !29, line: 605, type: !13, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!424 = !DILocation(line: 296, column: 20, scope: !425, inlinedAt: !426)
!425 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3ptrCsdq8xsXUia3c_10grep_regex", scope: !36, file: !29, line: 295, type: !13, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!426 = !DILocation(line: 2052, column: 18, scope: !427, inlinedAt: !428)
!427 = distinct !DISubprogram(name: "as_mut_ptr<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE10as_mut_ptrCsdq8xsXUia3c_10grep_regex", scope: !10, file: !9, line: 2049, type: !13, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!428 = !DILocation(line: 4132, column: 32, scope: !386)
!429 = !DILocation(line: 4134, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !418, file: !9, line: 4133, column: 17)
!431 = !{!432}
!432 = distinct !{!432, !433, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0ECsdq8xsXUia3c_10grep_regex: argument 0"}
!433 = distinct !{!433, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0ECsdq8xsXUia3c_10grep_regex"}
!434 = !DILocation(line: 4134, column: 26, scope: !430)
!435 = !{!436}
!436 = distinct !{!436, !437, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex: argument 0"}
!437 = distinct !{!437, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex"}
!438 = !DILocation(line: 887, column: 14, scope: !439, inlinedAt: !445)
!439 = distinct !DISubprogram(name: "for_each<alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>>", linkageName: "_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0ECsdq8xsXUia3c_10grep_regex", scope: !441, file: !440, line: 877, type: !13, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!440 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "01d98c48af571165434b0e69cec701b1")
!441 = !DINamespace(name: "Iterator", scope: !442)
!442 = !DINamespace(name: "iterator", scope: !443)
!443 = !DINamespace(name: "traits", scope: !444)
!444 = !DINamespace(name: "iter", scope: !46)
!445 = distinct !DILocation(line: 4134, column: 26, scope: !430)
!446 = !DILocation(line: 161, column: 27, scope: !447, inlinedAt: !450)
!447 = distinct !DISubprogram(name: "next<regex_syntax::hir::literal::Literal>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex", scope: !449, file: !448, line: 157, type: !13, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!448 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!449 = !DINamespace(name: "{impl#171}", scope: !61)
!450 = distinct !DILocation(line: 156, column: 19, scope: !451, inlinedAt: !455)
!451 = distinct !DISubprogram(name: "next<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex", scope: !453, file: !452, line: 155, type: !13, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!452 = !DIFile(filename: "library/alloc/src/vec/drain.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d929a31bb59246873c7578638a9389f")
!453 = !DINamespace(name: "{impl#5}", scope: !454)
!454 = !DINamespace(name: "drain", scope: !11)
!455 = distinct !DILocation(line: 2666, column: 34, scope: !456, inlinedAt: !459)
!456 = distinct !DILexicalBlock(scope: !457, file: !440, line: 2666, column: 41)
!457 = distinct !DILexicalBlock(scope: !458, file: !440, line: 2665, column: 9)
!458 = distinct !DISubprogram(name: "fold<alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>>>", linkageName: "_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex", scope: !441, file: !440, line: 2660, type: !13, scopeLine: 2660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!459 = distinct !DILocation(line: 887, column: 14, scope: !439, inlinedAt: !445)
!460 = !{!461, !436, !432}
!461 = distinct !{!461, !462, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex: argument 1:pre.rot"}
!462 = distinct !{!462, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex"}
!463 = !{!464, !465, !466}
!464 = distinct !{!464, !462, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex: argument 0"}
!465 = distinct !{!465, !437, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1D_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECsdq8xsXUia3c_10grep_regex: argument 1"}
!466 = distinct !{!466, !433, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_eachNCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0ECsdq8xsXUia3c_10grep_regex: argument 1"}
!467 = !DILocation(line: 162, column: 34, scope: !468, inlinedAt: !450)
!468 = distinct !DILexicalBlock(scope: !447, file: !448, line: 161, column: 17)
!469 = !DILocation(line: 1663, column: 9, scope: !470, inlinedAt: !474)
!470 = distinct !DISubprogram(name: "eq<regex_syntax::hir::literal::Literal>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtB9_3cmp9PartialEq2eqCsdq8xsXUia3c_10grep_regex", scope: !472, file: !471, line: 1662, type: !13, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!471 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a4d50389e713a3b15a513e9fe2df9dcb")
!472 = !DINamespace(name: "{impl#15}", scope: !473)
!473 = !DINamespace(name: "non_null", scope: !45)
!474 = distinct !DILocation(line: 180, column: 28, scope: !475, inlinedAt: !450)
!475 = distinct !DILexicalBlock(scope: !468, file: !448, line: 162, column: 17)
!476 = !DILocation(line: 180, column: 28, scope: !475, inlinedAt: !450)
!477 = !{!478}
!478 = distinct !{!478, !462, !"_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsdq8xsXUia3c_10grep_regex: argument 1"}
!479 = !DILocation(line: 2666, column: 34, scope: !456, inlinedAt: !459)
!480 = !DILocation(line: 627, column: 28, scope: !481, inlinedAt: !483)
!481 = distinct !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3addCsdq8xsXUia3c_10grep_regex", scope: !482, file: !471, line: 619, type: !13, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!482 = !DINamespace(name: "NonNull", scope: !473)
!483 = distinct !DILocation(line: 185, column: 40, scope: !475, inlinedAt: !450)
!484 = !DILocation(line: 1756, column: 9, scope: !485, inlinedAt: !486)
!485 = distinct !DISubprogram(name: "read<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 1717, type: !13, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!486 = distinct !DILocation(line: 156, column: 45, scope: !487, inlinedAt: !489)
!487 = distinct !DISubprogram(name: "{closure#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global>", linkageName: "_RNCNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB7_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Csdq8xsXUia3c_10grep_regex", scope: !488, file: !452, line: 156, type: !13, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!488 = !DINamespace(name: "next", scope: !453)
!489 = distinct !DILocation(line: 1165, column: 29, scope: !490, inlinedAt: !495)
!490 = distinct !DILexicalBlock(scope: !492, file: !491, line: 1165, column: 13)
!491 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "19e5872d6fa0fdc09fc7d1b5fc5e7fd1")
!492 = distinct !DISubprogram(name: "map<&regex_syntax::hir::literal::Literal, regex_syntax::hir::literal::Literal, alloc::vec::drain::{impl#5}::next::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE3mapBJ_NCNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB1R_5DrainBJ_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsdq8xsXUia3c_10grep_regex", scope: !493, file: !491, line: 1160, type: !13, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!493 = !DINamespace(name: "Option", scope: !494)
!494 = !DINamespace(name: "option", scope: !46)
!495 = distinct !DILocation(line: 156, column: 26, scope: !451, inlinedAt: !455)
!496 = !{!478, !436, !465, !432, !466}
!497 = !DILocation(line: 2666, column: 29, scope: !456, inlinedAt: !459)
!498 = !DILocation(line: 2666, column: 19, scope: !456, inlinedAt: !459)
!499 = !DILocation(line: 2667, column: 21, scope: !456, inlinedAt: !459)
!500 = !DILocation(line: 2666, column: 24, scope: !456, inlinedAt: !459)
!501 = !{!436, !465, !432, !466}
!502 = !DILocation(line: 971, column: 18, scope: !503, inlinedAt: !504)
!503 = distinct !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7Literal3addCsdq8xsXUia3c_10grep_regex", scope: !53, file: !52, line: 937, type: !13, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!504 = distinct !DILocation(line: 4135, column: 36, scope: !505, inlinedAt: !508)
!505 = distinct !DISubprogram(name: "{closure#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>", linkageName: "_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtB8_5drain5DrainBI_EE0Csdq8xsXUia3c_10grep_regex", scope: !506, file: !9, line: 4134, type: !13, scopeLine: 4134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!506 = !DINamespace(name: "extend_trusted", scope: !507)
!507 = !DINamespace(name: "{impl#22}", scope: !11)
!508 = distinct !DILocation(line: 884, column: 29, scope: !509, inlinedAt: !512)
!509 = distinct !DISubprogram(name: "{closure#0}<regex_syntax::hir::literal::Literal, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2g_3VecB1f_E14extend_trustedINtNtB2g_5drain5DrainB1f_EE0E0Csdq8xsXUia3c_10grep_regex", scope: !510, file: !440, line: 884, type: !13, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!510 = !DINamespace(name: "call", scope: !511)
!511 = !DINamespace(name: "for_each", scope: !441)
!512 = distinct !DILocation(line: 2667, column: 21, scope: !456, inlinedAt: !459)
!513 = !DILocation(line: 1964, column: 41, scope: !514, inlinedAt: !515)
!514 = distinct !DISubprogram(name: "write<regex_syntax::hir::literal::Literal>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 1941, type: !13, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!515 = distinct !DILocation(line: 4135, column: 21, scope: !505, inlinedAt: !508)
!516 = !{!517, !519, !436, !465, !432, !466}
!517 = distinct !{!517, !518, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtB8_5drain5DrainBI_EE0Csdq8xsXUia3c_10grep_regex: argument 0"}
!518 = distinct !{!518, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtB8_5drain5DrainBI_EE0Csdq8xsXUia3c_10grep_regex"}
!519 = distinct !{!519, !520, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2g_3VecB1f_E14extend_trustedINtNtB2g_5drain5DrainB1f_EE0E0Csdq8xsXUia3c_10grep_regex: argument 0"}
!520 = distinct !{!520, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2g_3VecB1f_E14extend_trustedINtNtB2g_5drain5DrainB1f_EE0E0Csdq8xsXUia3c_10grep_regex"}
!521 = !DILocation(line: 19, column: 9, scope: !522, inlinedAt: !523)
!522 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !415, file: !414, line: 18, type: !13, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!523 = distinct !DILocation(line: 4139, column: 31, scope: !505, inlinedAt: !508)
!524 = !DILocation(line: 2667, column: 31, scope: !456, inlinedAt: !459)
!525 = !DILocation(line: 185, column: 25, scope: !475, inlinedAt: !450)
!526 = !{!478, !436, !432}
!527 = !DILocation(line: 2670, column: 5, scope: !458, inlinedAt: !459)
!528 = !DILocation(line: 31, column: 9, scope: !529, inlinedAt: !531)
!529 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB4_12SetLenOnDropNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop", scope: !530, file: !414, line: 30, type: !194, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!530 = !DINamespace(name: "{impl#1}", scope: !416)
!531 = distinct !DILocation(line: 848, column: 1, scope: !532, inlinedAt: !533)
!532 = distinct !DISubprogram(name: "drop_glue<alloc::vec::set_len_on_drop::SetLenOnDrop>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_drop12SetLenOnDropECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !194, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!533 = distinct !DILocation(line: 848, column: 1, scope: !534, inlinedAt: !535)
!534 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBK_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralE14extend_trustedINtNtBK_5drain5DrainB1k_EE0ECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !194, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!535 = distinct !DILocation(line: 848, column: 1, scope: !536, inlinedAt: !537)
!536 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<regex_syntax::hir::literal::Literal, alloc::alloc::Global, alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2C_3VecB1B_E14extend_trustedINtNtB2C_5drain5DrainB1B_EE0E0ECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !194, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!537 = distinct !DILocation(line: 2670, column: 5, scope: !458, inlinedAt: !459)
!538 = !DILocation(line: 848, column: 1, scope: !539, inlinedAt: !540)
!539 = distinct !DISubprogram(name: "drop_glue<alloc::vec::drain::Drain<regex_syntax::hir::literal::Literal, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralEECsdq8xsXUia3c_10grep_regex", scope: !45, file: !261, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!540 = distinct !DILocation(line: 2670, column: 5, scope: !458, inlinedAt: !459)
!541 = !DILocation(line: 4140, column: 18, scope: !430)
end_hunk_2
