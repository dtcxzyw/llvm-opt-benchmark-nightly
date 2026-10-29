Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/nu_ansi_term-9bb6675c98489c2a.nu_ansi_term.e7e93d55965afa6a-cgu.0?download=true
inline.NumInlined: 269
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c"\1B[0m", align 1
@1 = private unnamed_addr constant [2 x i8] c"\1B[", align 1
@2 = private unnamed_addr constant [1 x i8] c";", align 1
@3 = private unnamed_addr constant [1 x i8] c"m", align 1
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"\1B]2;", align 1
@6 = private unnamed_addr constant [2 x i8] c"\1B\\", align 1
@7 = private unnamed_addr constant [5 x i8] c"\1B]8;;", align 1
@8 = private unnamed_addr constant [7 x i8] c"\1B]8;;\1B\\", align 1
@9 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"40", align 1
@11 = private unnamed_addr constant [3 x i8] c"100", align 1
@12 = private unnamed_addr constant [2 x i8] c"41", align 1
@13 = private unnamed_addr constant [3 x i8] c"101", align 1
@14 = private unnamed_addr constant [2 x i8] c"42", align 1
@15 = private unnamed_addr constant [3 x i8] c"102", align 1
@16 = private unnamed_addr constant [2 x i8] c"43", align 1
@17 = private unnamed_addr constant [3 x i8] c"103", align 1
@18 = private unnamed_addr constant [2 x i8] c"44", align 1
@19 = private unnamed_addr constant [3 x i8] c"104", align 1
@20 = private unnamed_addr constant [2 x i8] c"45", align 1
@21 = private unnamed_addr constant [3 x i8] c"105", align 1
@22 = private unnamed_addr constant [2 x i8] c"46", align 1
@23 = private unnamed_addr constant [3 x i8] c"106", align 1
@24 = private unnamed_addr constant [2 x i8] c"47", align 1
@25 = private unnamed_addr constant [3 x i8] c"107", align 1
@26 = private unnamed_addr constant [8 x i8] c"\0548;5;\C0\00", align 1
@27 = private unnamed_addr constant [14 x i8] c"\0548;2;\C0\01;\C0\01;\C0\00", align 1
@28 = private unnamed_addr constant [2 x i8] c"49", align 1
@29 = private unnamed_addr constant [2 x i8] c"30", align 1
@30 = private unnamed_addr constant [2 x i8] c"90", align 1
@31 = private unnamed_addr constant [2 x i8] c"31", align 1
@32 = private unnamed_addr constant [2 x i8] c"91", align 1
@33 = private unnamed_addr constant [2 x i8] c"32", align 1
@34 = private unnamed_addr constant [2 x i8] c"92", align 1
@35 = private unnamed_addr constant [2 x i8] c"33", align 1
@36 = private unnamed_addr constant [2 x i8] c"93", align 1
@37 = private unnamed_addr constant [2 x i8] c"34", align 1
@38 = private unnamed_addr constant [2 x i8] c"94", align 1
@39 = private unnamed_addr constant [2 x i8] c"35", align 1
@40 = private unnamed_addr constant [2 x i8] c"95", align 1
@41 = private unnamed_addr constant [2 x i8] c"36", align 1
@42 = private unnamed_addr constant [2 x i8] c"96", align 1
@43 = private unnamed_addr constant [2 x i8] c"37", align 1
@44 = private unnamed_addr constant [2 x i8] c"97", align 1
@45 = private unnamed_addr constant [8 x i8] c"\0538;5;\C0\00", align 1
@46 = private unnamed_addr constant [14 x i8] c"\0538;2;\C0\01;\C0\01;\C0\00", align 1
@47 = private unnamed_addr constant [2 x i8] c"39", align 1
@48 = private unnamed_addr constant [8 x i8] c"\02\1B[\C0\01m\C0\00", align 1
@49 = private unnamed_addr constant [11 x i8] c"\02\1B[\C0\01;\C0\01m\C0\00", align 1
@50 = private unnamed_addr constant [2 x i8] c", ", align 1
@51 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/mod.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"K\00\00\00\00\00\00\00]\03\00\00\15\00\00\00" }>, align 8
@_RNvNtCsjUslRMS7Tf2_12nu_ansi_term4ansi5RESET = constant <{ ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@53 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nu-ansi-term-0.50.3/src/util.rs\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"d\00\00\00\00\00\00\00\18\00\00\00<\00\00\00" }>, align 8
@55 = private unnamed_addr constant [8 x i8] c"Style { ", align 1
@56 = private unnamed_addr constant [8 x i8] c"\03fg(\C0\01)\00", align 1
@57 = private unnamed_addr constant [8 x i8] c"\03on(\C0\01)\00", align 1
@58 = private unnamed_addr constant [5 x i8] c"blink", align 1
@59 = private unnamed_addr constant [4 x i8] c"bold", align 1
@60 = private unnamed_addr constant [6 x i8] c"dimmed", align 1
@61 = private unnamed_addr constant [6 x i8] c"hidden", align 1
@62 = private unnamed_addr constant [6 x i8] c"italic", align 1
@63 = private unnamed_addr constant [7 x i8] c"reverse", align 1
@64 = private unnamed_addr constant [13 x i8] c"strikethrough", align 1
@65 = private unnamed_addr constant [9 x i8] c"underline", align 1
@66 = private unnamed_addr constant [2 x i8] c" }", align 1
@67 = private unnamed_addr constant [8 x i8] c"Style {}", align 1
@68 = private unnamed_addr constant [5 x i8] c"Style", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsjUslRMS7Tf2_12nu_ansi_term5style5ColorENtNtB7_3fmt5Debug3fmtBO_ }>, align 8
@70 = private unnamed_addr constant [10 x i8] c"foreground", align 1
@71 = private unnamed_addr constant [10 x i8] c"background", align 1
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCshzWfHUSfYae_4core3fmtbNtB5_5Debug3fmt }>, align 8
@73 = private unnamed_addr constant [13 x i8] c"\C0\03;2;\C0\01;\C0\01;\C0\00", align 1
@74 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str, ptr @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char, ptr @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt }>, align 8
@75 = private unnamed_addr constant [4 x i8] c"None", align 1
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsjUslRMS7Tf2_12nu_ansi_term5style5ColorNtB6_5Debug3fmtBA_ }>, align 8
@77 = private unnamed_addr constant [4 x i8] c"Some", align 1
@78 = private unnamed_addr constant [5 x i8] c"Black", align 1
@79 = private unnamed_addr constant [8 x i8] c"DarkGray", align 1
@80 = private unnamed_addr constant [3 x i8] c"Red", align 1
@81 = private unnamed_addr constant [8 x i8] c"LightRed", align 1
@82 = private unnamed_addr constant [5 x i8] c"Green", align 1
@83 = private unnamed_addr constant [10 x i8] c"LightGreen", align 1
@84 = private unnamed_addr constant [6 x i8] c"Yellow", align 1
@85 = private unnamed_addr constant [11 x i8] c"LightYellow", align 1
@86 = private unnamed_addr constant [4 x i8] c"Blue", align 1
@87 = private unnamed_addr constant [9 x i8] c"LightBlue", align 1
@88 = private unnamed_addr constant [6 x i8] c"Purple", align 1
@89 = private unnamed_addr constant [11 x i8] c"LightPurple", align 1
@90 = private unnamed_addr constant [7 x i8] c"Magenta", align 1
@91 = private unnamed_addr constant [12 x i8] c"LightMagenta", align 1
@92 = private unnamed_addr constant [4 x i8] c"Cyan", align 1
@93 = private unnamed_addr constant [9 x i8] c"LightCyan", align 1
@94 = private unnamed_addr constant [5 x i8] c"White", align 1
@95 = private unnamed_addr constant [9 x i8] c"LightGray", align 1
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCsjUslRMS7Tf2_12nu_ansi_term }>, align 8
@97 = private unnamed_addr constant [5 x i8] c"Fixed", align 1
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@99 = private unnamed_addr constant [3 x i8] c"Rgb", align 1
@100 = private unnamed_addr constant [7 x i8] c"Default", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(17) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 1                 ; 6 uses
  %i.n = alloca [4 x i8], align 1                 ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [1 x i8], align 1                 ; 18 uses
  %.sroa.13 = alloca [3 x i8], align 1            ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.10.0.copyload.fr = freeze i8 %.sroa.10.0.copyload ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13.0..sroa_idx, i64 3, i1 false)
  %.sroa.1322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.1322.0.copyload = load i8, ptr %.sroa.1322.0..sroa_idx, align 1 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.q                     ; 9 uses
  %i.r = icmp eq i8 %.sroa.10.0.copyload.fr, 0
  %.not.i.i = icmp eq i8 %.sroa.11.0.copyload, -1 ; 2 uses
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.s = icmp eq i64 %.fr.scalar, 0
  %op.rdx = and i1 %i.s, %i.r
  %op.rdx33 = select i1 %op.rdx, i1 %.not.i.i, i1 false
  br i1 %op.rdx33, label %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit, label %bb.b

_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit: ; preds = %bb.a
  %.not3.i.i = icmp eq i8 %.sroa.1322.0.copyload, -1
  br i1 %.not3.i.i, label %bb.ak, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.t = trunc nuw i8 %.sroa.10.0.copyload.fr to i1
  br i1 %i.t, label %bb.c, label %.thread

.thread:                                          ; preds = %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit, %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !93, !noalias !94, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !93, !noalias !94, !nonnull !4, !align !5, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !95, !nonnull !4
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 2) #19, !noalias !95, !inline_history !6
  br i1 %i.z, label %bb.ak, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !96, !noalias !97, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !96, !noalias !97, !nonnull !4, !align !5, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !98, !nonnull !4
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 4) #19, !noalias !98, !inline_history !6
  br i1 %i.af, label %bb.ak, label %.thread

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @74, ptr %i.ah, align 8
  %i.ai = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aj = extractelement <64 x i1> %i.ai, i64 0
  br i1 %i.aj, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit, %bb.d
  %i.ak = bitcast <8 x i8> %.fr to <64 x i1>
  %i.al = extractelement <64 x i1> %i.ak, i64 8
  br i1 %i.al, label %bb.g, label %bb.f

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 49, ptr %i.l, align 4, !noalias !99
  store i8 1, ptr %i.p, align 1, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !99
  store ptr %i.l, ptr %i.k, align 8, !noalias !99
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !99
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.am = load ptr, ptr %1, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !noundef !4
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !align !5, !noundef !4
  %i.ao = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @4, ptr noundef nonnull %i.k), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.ao, label %bb.al, label %bb.e

bb.f:                                             ; preds = %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62, %bb.e
  %i.ap = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aq = extractelement <64 x i1> %i.ap, i64 16
  br i1 %i.aq, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 50, ptr %i.j, align 4, !noalias !103
  %i.ar = load i8, ptr %i.p, align 1, !range !7, !noalias !103, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !104, !noalias !105, !nonnull !4, !noundef !4
  %i.au = load ptr, ptr %i.v, align 8, !alias.scope !104, !noalias !105, !nonnull !4, !align !5, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !4, !noalias !106, !nonnull !4
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1) #19, !noalias !106, !inline_history !107
  br i1 %i.ax, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62.thread, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.al

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit62: ; preds = %bb.h, %bb.g
  store i8 1, ptr %i.p, align 1, !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !103
  store ptr %i.j, ptr %i.i, align 8, !noalias !103
  %.sroa.47.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i60, align 8, !noalias !103
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ay = load ptr, ptr %1, align 8, !alias.scope !108, !noalias !109, !nonnull !4, !noundef !4
  %i.az = load ptr, ptr %i.v, align 8, !alias.scope !108, !noalias !109, !nonnull !4, !align !5, !noundef !4
  %i.ba = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noundef nonnull @4, ptr noundef nonnull %i.i), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.ba, label %bb.al, label %bb.f

bb.i:                                             ; preds = %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68, %bb.f
  %i.bb = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bc = extractelement <64 x i1> %i.bb, i64 24
  br i1 %i.bc, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 51, ptr %i.h, align 4, !noalias !111
  %i.bd = load i8, ptr %i.p, align 1, !range !7, !noalias !111, !noundef !4
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.k, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !112, !noalias !113, !nonnull !4, !noundef !4
  %i.bg = load ptr, ptr %i.v, align 8, !alias.scope !112, !noalias !113, !nonnull !4, !align !5, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !4, !noalias !114, !nonnull !4
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1) #19, !noalias !114, !inline_history !107
  br i1 %i.bj, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68.thread, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.al

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit68: ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.p, align 1, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111
  store ptr %i.h, ptr %i.g, align 8, !noalias !111
  %.sroa.47.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i66, align 8, !noalias !111
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.bk = load ptr, ptr %1, align 8, !alias.scope !115, !noalias !116, !nonnull !4, !noundef !4
  %i.bl = load ptr, ptr %i.v, align 8, !alias.scope !115, !noalias !116, !nonnull !4, !align !5, !noundef !4
  %i.bm = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bl, ptr noundef nonnull @4, ptr noundef nonnull %i.g), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.bm, label %bb.al, label %bb.i

bb.l:                                             ; preds = %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74, %bb.i
  %i.bn = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bo = extractelement <64 x i1> %i.bn, i64 32
  br i1 %i.bo, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 52, ptr %i.f, align 4, !noalias !118
  %i.bp = load i8, ptr %i.p, align 1, !range !7, !noalias !118, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.n, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.br = load ptr, ptr %1, align 8, !alias.scope !119, !noalias !120, !nonnull !4, !noundef !4
  %i.bs = load ptr, ptr %i.v, align 8, !alias.scope !119, !noalias !120, !nonnull !4, !align !5, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !4, !noalias !121, !nonnull !4
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1) #19, !noalias !121, !inline_history !107
  br i1 %i.bv, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74.thread, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit74: ; preds = %bb.n, %bb.m
  store i8 1, ptr %i.p, align 1, !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !118
  store ptr %i.f, ptr %i.e, align 8, !noalias !118
  %.sroa.47.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i72, align 8, !noalias !118
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !122, !noalias !123, !nonnull !4, !noundef !4
  %i.bx = load ptr, ptr %i.v, align 8, !alias.scope !122, !noalias !123, !nonnull !4, !align !5, !noundef !4
  %i.by = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noundef nonnull @4, ptr noundef nonnull %i.e), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.by, label %bb.al, label %bb.l

bb.o:                                             ; preds = %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80, %bb.l
  %i.bz = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ca = extractelement <64 x i1> %i.bz, i64 40
  br i1 %i.ca, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 53, ptr %i.d, align 4, !noalias !125
  %i.cb = load i8, ptr %i.p, align 1, !range !7, !noalias !125, !noundef !4
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.cd = load ptr, ptr %1, align 8, !alias.scope !126, !noalias !127, !nonnull !4, !noundef !4
  %i.ce = load ptr, ptr %i.v, align 8, !alias.scope !126, !noalias !127, !nonnull !4, !align !5, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !4, !noalias !128, !nonnull !4
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 1) #19, !noalias !128, !inline_history !107
  br i1 %i.ch, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80.thread, label %_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

_RNCINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_E0B7_.exit80: ; preds = %bb.q, %bb.p
  store i8 1, ptr %i.p, align 1, !noalias !125
end_hunk_0
begin_hunk_1_@_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB2_3Rgb15from_hex_string:bb.a

bb.i:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.168.i, i64 1
  %i.w = add nsw i64 %.sroa.15.167.i, -1          ; 2 uses
  %i.x = shl nuw i64 %.sroa.042.066.i, 4
  %i.y = zext nneg i32 %.sroa.02.0.i.i to i64
  %i.z = or disjoint i64 %i.x, %i.y               ; 2 uses
  %.not52.i = icmp eq i64 %i.w, 0
  br i1 %.not52.i, label %.loopexit, label %.preheader58.i

.preheader58.i:                                   ; preds = %thread-pre-split.i, %bb.i
  %.sroa.0.168.i = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i8, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.167.i = phi i64 [ %i.w, %bb.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.042.066.i = phi i64 [ %i.z, %bb.i ], [ 0, %thread-pre-split.i ] ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.042.066.i, 1152921504606846975
  br i1 %i.aa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread, label %bb.j, !prof !15

bb.j:                                             ; preds = %.preheader58.i
  %i.ab = load i8, ptr %.sroa.0.168.i, align 1, !alias.scope !518, !noundef !4 ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp ugt i8 %i.ab, 57
  %i.ae = add nsw i32 %i.ac, -65
  %i.af = and i32 %i.ae, -33
  %i.ag = add nuw nsw i32 %i.af, 10
  %i.ah = add nsw i32 %i.ac, -48
  %.sroa.02.0.i.i = select i1 %i.ad, i32 %i.ag, i32 %i.ah ; 2 uses
  %i.ai = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.ai, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.272.i = phi ptr [ %i.at, %bb.k ], [ %.sroa.0.0.i8, %.preheader.i ] ; 2 uses
  %.sroa.15.271.i = phi i64 [ %i.as, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.270.i = phi i64 [ %i.av, %bb.k ], [ 0, %.preheader.i ]
  %i.aj = load i8, ptr %.sroa.0.272.i, align 1, !alias.scope !518, !noundef !4 ; 2 uses
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 57
  %i.am = add nsw i32 %i.ak, -65
  %i.an = and i32 %i.am, -33
  %i.ao = add nuw nsw i32 %i.an, 10
  %i.ap = add nsw i32 %i.ak, -48
  %.sroa.02.0.i56.i = select i1 %i.al, i32 %i.ao, i32 %i.ap ; 2 uses
  %i.aq = icmp ugt i32 %.sroa.02.0.i56.i, 15
  br i1 %i.aq, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ar = shl i64 %.sroa.042.270.i, 4
  %i.as = add nsw i64 %.sroa.15.271.i, -1         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.272.i, i64 1
  %i.au = zext nneg i32 %.sroa.02.0.i56.i to i64
  %i.av = or disjoint i64 %i.ar, %i.au            ; 2 uses
  %.not53.i = icmp eq i64 %i.as, 0
  br i1 %.not53.i, label %.loopexit, label %.lr.ph.i

bb.l:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %bb.i, %bb.k, %.preheader.i
  %.sroa.910.0 = phi i64 [ %i.av, %bb.k ], [ 0, %.preheader.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.aw = lshr i64 %.sroa.910.0, 16
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = lshr i64 %.sroa.910.0, 8
  %i.az = trunc i64 %i.ay to i8
  %i.ba = trunc i64 %.sroa.910.0 to i8
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread: ; preds = %.preheader58.i, %bb.j, %.lr.ph.i, %.loopexit, %bb.h, %bb.h, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit
  %.sroa.7.1 = phi i8 [ 0, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit ], [ %i.ba, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.lr.ph.i ], [ 0, %bb.j ], [ 0, %.preheader58.i ]
  %.sroa.4.1 = phi i8 [ 0, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit ], [ %i.az, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.lr.ph.i ], [ 0, %bb.j ], [ 0, %.preheader58.i ]
  %.sroa.0.1 = phi i8 [ 0, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit ], [ %i.ax, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.lr.ph.i ], [ 0, %bb.j ], [ 0, %.preheader58.i ]
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.bb = icmp eq i64 %.val, 0
  br i1 %i.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit9, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit9: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsjUslRMS7Tf2_12nu_ansi_term.exit.thread, %bb.n
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.1 to i24
  %.sroa.7.0.insert.shift = shl nuw i24 %.sroa.7.0.insert.ext, 16
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.1 to i24
  %.sroa.4.0.insert.shift = shl nuw nsw i24 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.insert = or disjoint i24 %.sroa.4.0.insert.shift, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.1 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i24 @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB2_3Rgb4lerp(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0, i24 %1, float noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = fcmp olt float %2, 0.000000e+00
  %spec.store.select.i = select i1 %i.a, float 0.000000e+00, float %2 ; 2 uses
  %i.b = fcmp ogt float %spec.store.select.i, 1.000000e+00
  %spec.store.select1.i = select i1 %i.b, float 1.000000e+00, float %spec.store.select.i ; 4 uses
  %i.c = fsub float 1.000000e+00, %spec.store.select1.i ; 2 uses
  %i.d = load i8, ptr %0, align 1, !alias.scope !523, !noundef !4
  %i.e = uitofp i8 %i.d to float
  %i.f = fcmp olt float %i.c, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.f, float 0.000000e+00, float %i.c ; 2 uses
  %i.g = fcmp ogt float %spec.store.select.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i = select i1 %i.g, float 1.000000e+00, float %spec.store.select.i.i.i ; 3 uses
  %i.h = fmul float %spec.store.select1.i.i.i, %i.e
  %i.i = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !523, !noundef !4
  %i.l = uitofp i8 %i.k to float
  %i.m = fmul float %spec.store.select1.i.i.i, %i.l
  %i.n = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !523, !noundef !4
  %i.q = uitofp i8 %i.p to float
  %i.r = fmul float %spec.store.select1.i.i.i, %i.q
  %i.s = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.r)
  %.sroa.0.0.extract.trunc.i = trunc i24 %1 to i8
  %.sroa.2.0.extract.shift.i = lshr i24 %1, 8
  %.sroa.2.0.extract.trunc.i = trunc i24 %.sroa.2.0.extract.shift.i to i8
  %.sroa.3.0.extract.shift.i = lshr i24 %1, 16
  %.sroa.3.0.extract.trunc.i = trunc nuw i24 %.sroa.3.0.extract.shift.i to i8
  %i.t = uitofp i8 %.sroa.0.0.extract.trunc.i to float
  %i.u = fmul float %spec.store.select1.i, %i.t
  %i.v = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.u)
  %i.w = uitofp i8 %.sroa.2.0.extract.trunc.i to float
  %i.x = fmul float %spec.store.select1.i, %i.w
  %i.y = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.x)
  %i.z = uitofp i8 %.sroa.3.0.extract.trunc.i to float
  %i.aa = fmul float %spec.store.select1.i, %i.z
  %i.ab = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.aa)
  %i.ac = tail call i8 @llvm.uadd.sat.i8(i8 %i.i, i8 %i.v)
  %i.ad = tail call i8 @llvm.uadd.sat.i8(i8 %i.n, i8 %i.y)
  %i.ae = tail call i8 @llvm.uadd.sat.i8(i8 %i.s, i8 %i.ab)
  %.sroa.3.0.insert.ext = zext i8 %i.ae to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.ad to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.02.0.insert.ext = zext i8 %i.ac to i24
  %.sroa.02.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.02.0.insert.ext
  ret i24 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i24 @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB2_3Rgb8from_f32(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %spec.store.select.i = select i1 %i.a, float 0.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %spec.store.select.i, 1.000000e+00
  %spec.store.select1.i = select i1 %i.b, float 1.000000e+00, float %spec.store.select.i
  %i.c = fmul float %spec.store.select1.i, 2.550000e+02
  %i.d = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.c)
  %i.e = fcmp olt float %1, 0.000000e+00
  %spec.store.select.i1 = select i1 %i.e, float 0.000000e+00, float %1 ; 2 uses
  %i.f = fcmp ogt float %spec.store.select.i1, 1.000000e+00
  %spec.store.select1.i2 = select i1 %i.f, float 1.000000e+00, float %spec.store.select.i1
  %i.g = fmul float %spec.store.select1.i2, 2.550000e+02
  %i.h = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.g)
  %i.i = fcmp olt float %2, 0.000000e+00
  %spec.store.select.i3 = select i1 %i.i, float 0.000000e+00, float %2 ; 2 uses
  %i.j = fcmp ogt float %spec.store.select.i3, 1.000000e+00
  %spec.store.select1.i4 = select i1 %i.j, float 1.000000e+00, float %spec.store.select.i3
  %i.k = fmul float %spec.store.select1.i4, 2.550000e+02
  %i.l = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.k)
  %.sroa.3.0.insert.ext = zext i8 %i.l to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.h to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.d to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i24 @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB2_3Rgb8gray_f32(float noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.a, float 0.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.b, float 1.000000e+00, float %spec.store.select.i.i
  %i.c = fmul float %spec.store.select1.i.i, 2.550000e+02
  %i.d = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.c)
  %.sroa.3.0.insert.ext.i = zext i8 %i.d to i24
  %.sroa.0.0.insert.insert.i = mul nuw i24 %.sroa.3.0.insert.ext.i, 65793
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %0) unnamed_addr #5 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 1, !range !7
  %.fr30 = freeze i8 %i.c
  %i.d = icmp eq i8 %.fr30, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !range !14
  %.not.i = icmp eq i8 %i.f, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.g = icmp eq i64 %.fr.scalar, 0
  %op.rdx = and i1 %i.g, %i.d
  %op.rdx28 = select i1 %op.rdx, i1 %.not.i, i1 false
  br i1 %op.rdx28, label %bb.b, label %_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5StyleNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.i = load i8, ptr %i.h, align 1, !range !14, !alias.scope !526, !noundef !4
  %.not3.i = icmp eq i8 %i.i, -1
  br label %_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5StyleNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5StyleNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.shrunk.i = phi i1 [ %.not3.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i24 @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term8gradientNtB2_8Gradient2at(ptr noalias nofree noundef readonly captures(none) dereferenceable(6) %0, float noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.02.0.copyload = load i24, ptr %i.a, align 1 ; 3 uses
  %i.b = fcmp olt float %1, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.b, float 0.000000e+00, float %1 ; 2 uses
  %i.c = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.c, float 1.000000e+00, float %spec.store.select.i.i ; 4 uses
  %i.d = fsub float 1.000000e+00, %spec.store.select1.i.i ; 2 uses
  %i.e = load i8, ptr %0, align 1, !alias.scope !533, !noundef !4
  %i.f = uitofp i8 %i.e to float
  %i.g = fcmp olt float %i.d, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.g, float 0.000000e+00, float %i.d ; 2 uses
  %i.h = fcmp ogt float %spec.store.select.i.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i.i = select i1 %i.h, float 1.000000e+00, float %spec.store.select.i.i.i.i ; 3 uses
  %i.i = fmul float %spec.store.select1.i.i.i.i, %i.f
  %i.j = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !533, !noundef !4
  %i.m = uitofp i8 %i.l to float
  %i.n = fmul float %spec.store.select1.i.i.i.i, %i.m
  %i.o = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !533, !noundef !4
  %i.r = uitofp i8 %i.q to float
  %i.s = fmul float %spec.store.select1.i.i.i.i, %i.r
  %i.t = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.s)
  %.sroa.0.0.extract.trunc.i.i = trunc i24 %.sroa.02.0.copyload to i8
  %.sroa.2.0.extract.shift.i.i = lshr i24 %.sroa.02.0.copyload, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i24 %.sroa.2.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.shift.i.i = lshr i24 %.sroa.02.0.copyload, 16
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i24 %.sroa.3.0.extract.shift.i.i to i8
  %i.u = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.v = fmul float %spec.store.select1.i.i, %i.u
  %i.w = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.v)
  %i.x = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.y = fmul float %spec.store.select1.i.i, %i.x
  %i.z = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.y)
  %i.aa = uitofp i8 %.sroa.3.0.extract.trunc.i.i to float
  %i.ab = fmul float %spec.store.select1.i.i, %i.aa
  %i.ac = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.ab)
  %i.ad = tail call i8 @llvm.uadd.sat.i8(i8 %i.j, i8 %i.w)
  %i.ae = tail call i8 @llvm.uadd.sat.i8(i8 %i.o, i8 %i.z)
  %i.af = tail call i8 @llvm.uadd.sat.i8(i8 %i.t, i8 %i.ac)
  %.sroa.3.0.insert.ext.i = zext i8 %i.af to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i = zext i8 %i.ae to i24
  %.sroa.2.0.insert.shift.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.02.0.insert.ext.i = zext i8 %i.ad to i24
  %.sroa.02.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.insert.i, %.sroa.02.0.insert.ext.i
  ret i24 %.sroa.02.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term8gradientNtB2_8Gradient5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(6) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [3 x i8], align 4                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = uitofp i64 %3 to float
  %i.k = fdiv nnan float 1.000000e+00, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.m = icmp samesign eq i64 %3, 0
  br i1 %i.m, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvMNtCsjUslRMS7Tf2_12nu_ansi_term8gradientNtB2f_8Gradient5build0EB2h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.02.0.copyload.i.i.i = load i24, ptr %i.p, align 1, !alias.scope !563, !noalias !564 ; 3 uses
  %i.z = load i8, ptr %1, align 1, !alias.scope !565, !noalias !564, !noundef !4
  %i.aa = uitofp i8 %i.z to float
  %i.ab = load i8, ptr %i.q, align 1, !alias.scope !565, !noalias !564, !noundef !4
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = load i8, ptr %i.r, align 1, !alias.scope !565, !noalias !564, !noundef !4
  %i.ae = uitofp i8 %i.ad to float
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i24 %.sroa.02.0.copyload.i.i.i to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i24 %.sroa.02.0.copyload.i.i.i, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc i24 %.sroa.2.0.extract.shift.i.i.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i24 %.sroa.02.0.copyload.i.i.i, 16
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc nuw i24 %.sroa.3.0.extract.shift.i.i.i.i.i to i8
  %i.af = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i.i.i to float
  %i.ag = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i.i.i to float
  %i.ah = uitofp i8 %.sroa.3.0.extract.trunc.i.i.i.i.i to float
  %..i.i.i = select i1 %4, i8 48, i8 38
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %.lr.ph.i
  %i.ai = phi i64 [ 0, %.lr.ph.i ], [ %i.bx, %bb.p ] ; 3 uses
  %.sroa.0.043.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.022.0.copyload.i, %bb.p ] ; 4 uses
  %.sroa.7.042.i = phi ptr [ inttoptr (i64 1 to ptr), %.lr.ph.i ], [ %.sroa.4.0.copyload.i, %bb.p ] ; 3 uses
  %.sroa.8.041.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.p ] ; 6 uses
  %i.aj = phi ptr [ %2, %.lr.ph.i ], [ %i.bt, %bb.p ] ; 6 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.aj, align 1, !noalias !566, !noundef !4 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i: ; preds = %bb.b
  %i.ao = and i8 %i.am, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = icmp ne ptr %i.al, %i.l
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 3 uses
  %i.as = load i8, ptr %i.al, align 1, !noalias !566, !noundef !4
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.am, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = zext nneg i8 %i.am to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i
  %i.az = icmp ne ptr %i.ar, %i.l
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 3 ; 3 uses
  %i.bb = load i8, ptr %i.ar, align 1, !noalias !566, !noundef !4
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i
  %i.bj = icmp ne ptr %i.ba, %i.l
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bl = load i8, ptr %i.ba, align 1, !noalias !566, !noundef !4
  %i.bm = shl nuw nsw i32 %i.ap, 18
  %i.bn = and i32 %i.bm, 1835008
  %i.bo = shl nuw nsw i32 %i.bf, 6
  %i.bp = and i8 %i.bl, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = or disjoint i32 %i.br, %i.bn
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i
  %i.bt = phi ptr [ %i.ba, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit16.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i ], [ %i.al, %bb.c ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.bh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit14.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit16.i.i.i ], [ %i.aw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjUslRMS7Tf2_12nu_ansi_term.exit12.i.i.i ], [ %i.ay, %bb.c ] ; 3 uses
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.bu)
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.ai, %i.ak
  %i.bx = add i64 %i.bw, %i.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !567
  store i64 %.sroa.0.043.i, ptr %i.h, align 8, !noalias !567
  store ptr %.sroa.7.042.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !567
  store i64 %.sroa.8.041.i, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !567
end_hunk_1
begin_hunk_2_@_RNvNtCsjUslRMS7Tf2_12nu_ansi_term8gradient23build_all_gradient_text:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !628
  store ptr %i.i, ptr %i.e, align 8, !noalias !628
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !628
  store ptr %i.g, ptr %i.ad, align 8, !noalias !628
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !628
  store ptr %i.k, ptr %i.ae, align 8, !noalias !628
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !628
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @49, ptr noundef nonnull %i.e)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i unwind label %bb.j, !noalias !628

bb.j:                                             ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val30.i.i = load i64, ptr %i.g, align 8, !noalias !628 ; 2 uses
  %i.dz = icmp eq i64 %.val30.i.i, 0
  br i1 %i.dz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit58.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val31.i.i = load ptr, ptr %i.af, align 8, !noalias !628, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31.i.i, i64 noundef %.val30.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit58.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !628
  %.val28.i.i = load i64, ptr %i.g, align 8, !noalias !628 ; 2 uses
  %i.ea = icmp eq i64 %.val28.i.i, 0
  br i1 %i.ea, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit59.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i
  %.val29.i.i = load ptr, ptr %i.af, align 8, !noalias !628, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef %.val28.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit59.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit59.i.i: ; preds = %bb.l, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !628
  %.val26.i.i = load i64, ptr %i.i, align 8, !noalias !628 ; 2 uses
  %i.eb = icmp eq i64 %.val26.i.i, 0
  br i1 %i.eb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit60.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit59.i.i
  %.val27.i.i = load ptr, ptr %i.ag, align 8, !noalias !628, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %.val26.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit60.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit60.i.i: ; preds = %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit59.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !628
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !628 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !628, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !628 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !628
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.ec = sub i64 %i.au, %i.av
  %i.ed = icmp ugt i64 %.sroa.8.0.copyload.i.i, %i.ec
  br i1 %i.ed, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i, !prof !15

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit60.i.i
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjUslRMS7Tf2_12nu_ansi_term(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.av, i64 noundef %.sroa.8.0.copyload.i.i)
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i.i.i
  %i.ee = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8, !alias.scope !632, !noalias !625, !noundef !4 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %.pre.i = load ptr, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !632, !noalias !625
  %.sroa.022.0.copyload.pre.pre.i = load i64, ptr %i.l, align 8, !alias.scope !633, !noalias !625
  br label %bb.n

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit60.i.i
  %i.eg = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i = icmp eq i64 %.sroa.8.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i, %.noexc.i.i
  %.sroa.022.0.copyload.pre.i = phi i64 [ %.sroa.022.0.copyload.pre.pre.i, %.noexc.i.i ], [ %i.au, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ]
  %i.eh = phi ptr [ %.pre.i, %.noexc.i.i ], [ %.sroa.7.047.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ] ; 2 uses
  %i.ei = phi i64 [ %i.ee, %.noexc.i.i ], [ %i.av, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull readonly align 1 %.sroa.5.0.copyload.i.i, i64 %.sroa.8.0.copyload.i.i, i1 false), !noalias !634
  br label %bb.q

bb.o:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.el, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i

bb.q:                                             ; preds = %bb.n, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i
  %.sroa.4.0.copyload.i = phi ptr [ %i.eh, %bb.n ], [ %.sroa.7.047.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ] ; 2 uses
  %.sroa.022.0.copyload.i = phi i64 [ %.sroa.022.0.copyload.pre.i, %bb.n ], [ %i.au, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ] ; 2 uses
  %i.em = phi i64 [ %i.ei, %bb.n ], [ %i.av, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i.i.i ]
  %i.en = add i64 %i.em, %.sroa.8.0.copyload.i.i  ; 2 uses
  %i.eo = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.eo, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i: ; preds = %bb.p, %bb.o, %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit58.i.i, %bb.e
  %.pn19.i.i = phi { ptr, i32 } [ %i.dg, %bb.e ], [ %.pn.i.i, %bb.f ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit58.i.i ], [ %i.ek, %bb.o ], [ %i.ek, %bb.p ] ; 2 uses
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !627, !noalias !625 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i, 0
  br i1 %i.ep, label %common.resume, label %bb.s

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i
  %.val21.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !627, !noalias !625, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !628
  br label %common.resume

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !625
  %i.eq = icmp eq ptr %i.cg, %i.p
  br i1 %i.eq, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtCsjUslRMS7Tf2_12nu_ansi_term8gradient23build_all_gradient_text0EB2g_.exit, label %bb.b

common.resume:                                    ; preds = %bb.u, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn19.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjUslRMS7Tf2_12nu_ansi_term.exit.i.i ], [ %.pn19.i.i, %bb.s ], [ %i.ew, %bb.v ], [ %i.ew, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtCsjUslRMS7Tf2_12nu_ansi_term8gradient23build_all_gradient_text0EB2g_.exit: ; preds = %bb.t, %bb.a
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.en, %bb.t ] ; 5 uses
  %.sroa.7.0.lcssa.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %.sroa.4.0.copyload.i, %bb.t ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.022.0.copyload.i, %bb.t ] ; 2 uses
  store i64 %.sroa.0.0.lcssa.i, ptr %i.m, align 8, !alias.scope !623
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.sroa.7.0.lcssa.i, ptr %.sroa.7.0..sroa_idx12.i, align 8, !alias.scope !623
  %.sroa.8.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx18.i, align 8, !alias.scope !623
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.er = sub i64 %.sroa.0.0.lcssa.i, %.sroa.8.0.lcssa.i
  %i.es = icmp ult i64 %i.er, 4
  br i1 %i.es, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i, !prof !15

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i: ; preds = %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtCsjUslRMS7Tf2_12nu_ansi_term8gradient23build_all_gradient_text0EB2g_.exit
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjUslRMS7Tf2_12nu_ansi_term(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.8.0.lcssa.i, i64 noundef 4)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i
  %i.et = load i64, ptr %.sroa.8.0..sroa_idx18.i, align 8, !alias.scope !635, !noundef !4 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %.pre = load ptr, ptr %.sroa.7.0..sroa_idx12.i, align 8, !alias.scope !635
  br label %bb.w

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i: ; preds = %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtCsjUslRMS7Tf2_12nu_ansi_term8gradient23build_all_gradient_text0EB2g_.exit
  %i.ev = icmp sgt i64 %.sroa.8.0.lcssa.i, -1
  call void @llvm.assume(i1 %i.ev)
  br label %bb.w

bb.u:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.thread.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.m, align 8             ; 2 uses
  %i.ex = icmp eq i64 %.val, 0
  br i1 %i.ex, label %common.resume, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val7 = load ptr, ptr %.sroa.7.0..sroa_idx12.i, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %common.resume

bb.w:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i, %.noexc
  %i.ey = phi ptr [ %.pre, %.noexc ], [ %.sroa.7.0.lcssa.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i ]
  %i.ez = phi i64 [ %i.et, %.noexc ], [ %.sroa.8.0.lcssa.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjUslRMS7Tf2_12nu_ansi_term.exit.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  store i32 1831885595, ptr %i.fa, align 1, !noalias !635
  %i.fb = add nuw i64 %i.ez, 4
  store i64 %i.fb, ptr %.sroa.8.0..sroa_idx18.i, align 8, !alias.scope !635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB4_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 1                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 14 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !noundef !4
  %i.i = and i32 %i.h, 8388608
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.1019.0.copyload = load i8, ptr %.sroa.1019.0..sroa_idx, align 1
  %.sroa.1019.0.copyload.fr = freeze i8 %.sroa.1019.0.copyload ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.1223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.1223.0.copyload = load i8, ptr %.sroa.1223.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.j = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.j                     ; 9 uses
  %.sroa.10.0.copyload.fr = freeze i8 %.sroa.10.0.copyload
  %i.k = icmp eq i8 %.sroa.10.0.copyload.fr, 0
  %.not.i.i = icmp eq i8 %.sroa.1019.0.copyload.fr, -1 ; 2 uses
  %.not3.i.i = icmp eq i8 %.sroa.1223.0.copyload, -1 ; 2 uses
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.l = icmp eq i64 %.fr.scalar, 0
  %op.rdx = and i1 %i.l, %i.k
  %2 = and i1 %op.rdx, %.not.i.i
  %op.rdx97 = select i1 %2, i1 %.not3.i.i, i1 false
  br i1 %op.rdx97, label %bb.d, label %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 5)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 10, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 5, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.s = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 6, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.v = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noundef nonnull %.sroa.8.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.z = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 13, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 9, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  %i.ae = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ae

_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread: ; preds = %bb.b
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 8)
  br i1 %i.af, label %bb.ae, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 8)
  br label %bb.ae

bb.e:                                             ; preds = %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = phi i8 [ 0, %bb.e ], [ 1, %bb.g ]       ; 2 uses
  br i1 %.not3.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.1019.0.copyload.fr, ptr %i.d, align 1
  %.sroa.12.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.9..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx, i64 3, i1 false)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXse_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5ColorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.ai = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !5, !noundef !4
  %i.al = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @56, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.al, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.f

_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread: ; preds = %bb.g, %bb.p, %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.1223.0.copyload, ptr %i.b, align 1
  %.sroa.14.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.13..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx, i64 3, i1 false)
  %i.am = trunc nuw i8 %i.ah to i1
  br i1 %i.am, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.f
  %i.an = phi i8 [ 1, %bb.l ], [ %i.ah, %bb.f ]
  %i.ao = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ap = extractelement <64 x i1> %i.ao, i64 32
  br i1 %i.ap, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.k, %bb.h
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5ColorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !align !5, !noundef !4
  %i.at = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as, ptr noundef nonnull @57, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.at, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 2)
  br i1 %i.au, label %bb.m, label %bb.j

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.m:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread

bb.n:                                             ; preds = %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit, %bb.i
  %i.av = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aw = extractelement <64 x i1> %i.av, i64 0
  br i1 %i.aw, label %bb.r, label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.ax = trunc nuw i8 %i.an to i1
  br i1 %i.ax, label %bb.p, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 2), !noalias !638
  br i1 %i.ay, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit

_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit: ; preds = %bb.o, %bb.p
  store i8 1, ptr %i.e, align 1, !noalias !638
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 5)
  br i1 %i.az, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.n

bb.q:                                             ; preds = %bb.r, %bb.n
  %i.ba = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bb = extractelement <64 x i1> %i.ba, i64 8
  br i1 %i.bb, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bc = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 4) #19
  br i1 %i.bc, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.q

bb.s:                                             ; preds = %bb.t, %bb.q
  %i.bd = bitcast <8 x i8> %.fr to <64 x i1>
  %i.be = extractelement <64 x i1> %i.bd, i64 48
  br i1 %i.be, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bf = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 6) #19
  br i1 %i.bf, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.s

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.bg = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bh = extractelement <64 x i1> %i.bg, i64 16
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bi = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6) #19
  br i1 %i.bi, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  %i.bj = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bk = extractelement <64 x i1> %i.bj, i64 40
  br i1 %i.bk, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bl = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6) #19
  br i1 %i.bl, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.w

bb.y:                                             ; preds = %bb.z, %bb.w
  %i.bm = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bn = extractelement <64 x i1> %i.bm, i64 56
  br i1 %i.bn, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bo = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7) #19
  br i1 %i.bo, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.y

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.bp = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bq = extractelement <64 x i1> %i.bp, i64 24
  br i1 %i.bq, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 13) #19
  br i1 %i.br, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.aa

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %i.bs = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !4, !nonnull !4
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.by = call fastcc noundef zeroext i1 @_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 9) #19
  br i1 %i.by, label %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.ac

bb.ae:                                            ; preds = %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread, %bb.c, %bb.ac, %bb.d, %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread
  %.sroa.0.5.shrunk = phi i1 [ %i.ae, %bb.c ], [ %i.ag, %bb.d ], [ %i.bx, %bb.ac ], [ true, %_RNCNvXNtCsjUslRMS7Tf2_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt0B6_.exit.thread ], [ true, %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread ]
  ret i1 %.sroa.0.5.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsjUslRMS7Tf2_12nu_ansi_term5writeDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsjUslRMS7Tf2_12nu_ansi_term5writeDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_NtB2_8AnyWrite9write_str(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #19
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i24 @_RNvXs0_NtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB5_3RgbINtNtCshzWfHUSfYae_4core7convert4FromTfffEE4from(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0) unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.f = fcmp olt float %i.a, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.f, float 0.000000e+00, float %i.a ; 2 uses
  %i.g = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.g, float 1.000000e+00, float %spec.store.select.i.i
  %i.h = fmul float %spec.store.select1.i.i, 2.550000e+02
  %i.i = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.h)
  %i.j = fcmp olt float %i.c, 0.000000e+00
  %spec.store.select.i1.i = select i1 %i.j, float 0.000000e+00, float %i.c ; 2 uses
  %i.k = fcmp ogt float %spec.store.select.i1.i, 1.000000e+00
  %spec.store.select1.i2.i = select i1 %i.k, float 1.000000e+00, float %spec.store.select.i1.i
  %i.l = fmul float %spec.store.select1.i2.i, 2.550000e+02
  %i.m = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.l)
  %i.n = fcmp olt float %i.e, 0.000000e+00
  %spec.store.select.i3.i = select i1 %i.n, float 0.000000e+00, float %i.e ; 2 uses
  %i.o = fcmp ogt float %spec.store.select.i3.i, 1.000000e+00
  %spec.store.select1.i4.i = select i1 %i.o, float 1.000000e+00, float %spec.store.select.i3.i
  %i.p = fmul float %spec.store.select1.i4.i, 2.550000e+02
  %i.q = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.p)
  %.sroa.3.0.insert.ext.i = zext i8 %i.q to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i = zext i8 %i.m to i24
  %.sroa.2.0.insert.shift.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.i to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB5_3RgbNtNtB7_8gradient13ANSIColorCode15ansi_color_code(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %. = select i1 %2, i8 48, i8 38
  store i8 %., ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @73, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsjUslRMS7Tf2_12nu_ansi_term5style5ColorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5ColorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #19
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCsjUslRMS7Tf2_12nu_ansi_term(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !641, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRhNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17) %0, ptr noundef nonnull %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_5InfixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(34) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [17 x i8], align 1                ; 4 uses
  %i.c = alloca [17 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  call void @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term10differenceNtB2_10Difference7between(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.d)
  %i.e = load i8, ptr %i.c, align 1, !range !16, !noundef !4 ; 2 uses
  %i.f = icmp samesign ugt i8 %i.e, 1
  %i.g = zext nneg i8 %i.e to i64
  %i.h = add nsw i64 %i.g, -1
  %i.i = select i1 %i.f, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = call fastcc noundef zeroext i1 @_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_prefixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17) %i.c, ptr noundef nonnull %1)
  br label %bb.d

_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %i.d, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvNtCsjUslRMS7Tf2_12nu_ansi_term4ansi5RESET, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !644, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !644, !nonnull !4, !align !5, !noundef !4
  %i.o = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @9, ptr noundef nonnull %i.a), !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.j, %bb.c ], [ %i.o, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6SuffixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.12.0.copyload.i = load i8, ptr %.sroa.12.0..sroa_idx.i, align 1, !alias.scope !651
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.13.0.copyload.i = load i8, ptr %.sroa.13.0..sroa_idx.i, align 1, !alias.scope !651
  %.sroa.141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.141.0.copyload.i = load i8, ptr %.sroa.141.0..sroa_idx.i, align 1, !alias.scope !651
  %i.c = load <8 x i8>, ptr %0, align 1, !alias.scope !651
  %.fr = freeze <8 x i8> %i.c
  %.sroa.12.0.copyload.i.fr = freeze i8 %.sroa.12.0.copyload.i
  %i.d = icmp eq i8 %.sroa.12.0.copyload.i.fr, 0
  %.sroa.13.0.copyload.i.fr = freeze i8 %.sroa.13.0.copyload.i
  %.not.i.i.i = icmp eq i8 %.sroa.13.0.copyload.i.fr, -1
  %.not3.i.i.i = icmp eq i8 %.sroa.141.0.copyload.i, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.e = icmp eq i64 %.fr.scalar, 0
  %op.rdx = and i1 %i.e, %i.d
  %2 = and i1 %op.rdx, %.not.i.i.i
  %op.rdx3 = select i1 %2, i1 %.not3.i.i.i, i1 false
  br i1 %op.rdx3, label %_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_suffixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_.exit, label %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i

_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !651
  store ptr @_RNvNtCsjUslRMS7Tf2_12nu_ansi_term4ansi5RESET, ptr %i.a, align 8, !noalias !651
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.f = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @4, ptr noundef nonnull %i.a), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !651
  br label %_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_suffixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_.exit

_RINvMNtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtNtB5_5style5Style12write_suffixDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB5_.exit: ; preds = %bb.a, %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i
  %.sroa.0.0.i = phi i1 [ %i.f, %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [17 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [17 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !663
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.e, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !663
  store ptr %i.d, ptr %i.c, align 8, !noalias !663
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !663
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !664, !noalias !665, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !664, !noalias !665, !nonnull !4, !align !5, !noundef !4
  %i.i = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @4, ptr noundef nonnull %i.c), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !663
  br i1 %i.i, label %_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call fastcc noundef zeroext i1 @_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE11write_innerDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noundef nonnull %1)
  br i1 %i.j, label %_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14.i

_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.e, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !663
  store ptr %i.b, ptr %i.a, align 8, !noalias !663
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6SuffixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !663
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !667, !noalias !668, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !667, !noalias !668, !nonnull !4, !align !5, !noundef !4
  %i.m = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @4, ptr noundef nonnull %i.a), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !663
  br label %_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit

_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit: ; preds = %bb.a, %bb.b, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14.i
  %.sroa.0.0.i = phi i1 [ true, %bb.b ], [ %i.m, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14.i ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB5_18AnsiGenericStringseENtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [17 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [17 x i8], align 1                ; 4 uses
  %i.f = alloca [17 x i8], align 1                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [17 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %.val1, 0
  br i1 %.not.i, label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit.i

_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.j, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !686, !noalias !687, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !686, !noalias !687, !nonnull !4, !align !5, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @4, ptr noundef nonnull %i.g), !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.n, label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit.i
  %i.o = call fastcc noundef zeroext i1 @_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE11write_innerDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val, ptr noundef nonnull %1)
  br i1 %i.o, label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = icmp eq i64 %.val1, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.e
  %i.r = icmp ult i64 %.sroa.6.0.i2, 3
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader.i
  %i.s = getelementptr [72 x i8], ptr %.val, i64 %.val1 ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %.sroa.12.0..sroa_idx.i = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.12.0.copyload.i = load i8, ptr %.sroa.12.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr i8, ptr %i.s, i64 -15
  %.sroa.13.0.copyload.i = load i8, ptr %.sroa.13.0..sroa_idx.i, align 1
  %.sroa.144.0..sroa_idx.i = getelementptr i8, ptr %i.s, i64 -11
  %.sroa.144.0.copyload.i = load i8, ptr %.sroa.144.0..sroa_idx.i, align 1
  %i.u = load <8 x i8>, ptr %i.t, align 8
  %.fr = freeze <8 x i8> %i.u
  %.sroa.12.0.copyload.i.fr = freeze i8 %.sroa.12.0.copyload.i
  %i.v = icmp eq i8 %.sroa.12.0.copyload.i.fr, 0
  %.sroa.13.0.copyload.i.fr = freeze i8 %.sroa.13.0.copyload.i
  %.not.i.i.i = icmp eq i8 %.sroa.13.0.copyload.i.fr, -1
  %.not3.i.i.i = icmp eq i8 %.sroa.144.0.copyload.i, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.w = icmp eq i64 %.fr.scalar, 0
  %op.rdx = and i1 %i.w, %i.v
  %2 = and i1 %op.rdx, %.not.i.i.i
  %op.rdx5 = select i1 %2, i1 %.not3.i.i.i, i1 false
  br i1 %op.rdx5, label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i

_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvNtCsjUslRMS7Tf2_12nu_ansi_term4ansi5RESET, ptr %i.a, align 8
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term, ptr %.sroa.437.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !689, !noalias !690, !nonnull !4, !noundef !4
  %i.y = load ptr, ptr %i.l, align 8, !alias.scope !689, !noalias !690, !nonnull !4, !align !5, !noundef !4
  %i.z = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @4, ptr noundef nonnull %i.a), !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.sroa.0.05.i3 = phi ptr [ %i.ab, %bb.c ], [ %.val, %.preheader.i ] ; 3 uses
  %.sroa.6.0.i2 = phi i64 [ %i.aa, %bb.c ], [ %.val1, %.preheader.i ] ; 2 uses
  %i.aa = add i64 %.sroa.6.0.i2, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3, i64 120 ; 2 uses
  call void @_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term10differenceNtB2_10Difference7between(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.ad)
  %i.ae = load i8, ptr %i.f, align 1, !range !16, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = select i1 %i.af, i64 %i.ah, i64 0
  switch i64 %i.ai, label %bb.d [
    i64 0, label %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit47.i
    i64 1, label %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit50.i
    i64 2, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit47.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.e, ptr noundef nonnull align 1 dereferenceable(17) %i.f, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !692, !noalias !693, !nonnull !4, !noundef !4
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !692, !noalias !693, !nonnull !4, !align !5, !noundef !4
  %i.al = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @4, ptr noundef nonnull %i.d), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.al, label %bb.f, label %bb.e

_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit50.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %i.ad, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x ptr> <ptr @_RNvNtCsjUslRMS7Tf2_12nu_ansi_term4ansi5RESET, ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjUslRMS7Tf2_12nu_ansi_term>, ptr %i.b, align 16
  store ptr %i.c, ptr %i.p, align 16
  store ptr @_RNvXs2_NtCsjUslRMS7Tf2_12nu_ansi_term4ansiNtB5_6PrefixNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.am = load ptr, ptr %1, align 8, !alias.scope !695, !noalias !696, !nonnull !4, !noundef !4
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !695, !noalias !696, !nonnull !4, !align !5, !noundef !4
  %i.ao = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @9, ptr noundef nonnull %i.b), !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit50.i, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit47.i, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ap = call fastcc noundef zeroext i1 @_RINvMs6_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_17AnsiGenericStringeE11write_innerDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab, ptr noundef nonnull %1)
  br i1 %i.ap, label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit, label %bb.c

bb.f:                                             ; preds = %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit47.i, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit

_RINvMs9_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB6_18AnsiGenericStringseE12write_to_anyDNtNtCshzWfHUSfYae_4core3fmt5WriteEL_EB8_.exit: ; preds = %bb.e, %bb.a, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit.i, %bb.b, %._crit_edge, %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i, %bb.f
  %.sroa.0.0.i = phi i1 [ true, %_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit.i ], [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.b ], [ %i.z, %_RNvMNtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread.i ], [ false, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsjUslRMS7Tf2_12nu_ansi_term5style5ColorENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !14, !noundef !4
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsg_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs_NtCsjUslRMS7Tf2_12nu_ansi_term5writeDNtNtNtCshzWfHUSfYae_4core2io5write5WriteEL_NtB4_8AnyWrite9write_fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  %i.c = tail call noundef ptr %i.b(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs_NtCsjUslRMS7Tf2_12nu_ansi_term5writeDNtNtNtCshzWfHUSfYae_4core2io5write5WriteEL_NtB4_8AnyWrite9write_str(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  %i.c = tail call noundef ptr %i.b(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #19
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i24 @_RNvXsa_NtCsjUslRMS7Tf2_12nu_ansi_term3rgbNtB5_3RgbINtNtNtCshzWfHUSfYae_4core3ops5arith3MulfE3mul(i24 %0, float noundef %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i24 %0 to i8
  %.sroa.2.0.extract.shift = lshr i24 %0, 8
  %.sroa.2.0.extract.trunc = trunc i24 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i24 %0, 16
  %.sroa.3.0.extract.trunc = trunc nuw i24 %.sroa.3.0.extract.shift to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.b = fcmp olt float %1, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.b, float 0.000000e+00, float %1 ; 2 uses
  %i.c = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.c, float 1.000000e+00, float %spec.store.select.i.i ; 3 uses
  %i.d = fmul float %spec.store.select1.i.i, %i.a
  %i.e = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.d)
  %i.f = uitofp i8 %.sroa.2.0.extract.trunc to float
  %i.g = fmul float %spec.store.select1.i.i, %i.f
  %i.h = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.g)
  %i.i = uitofp i8 %.sroa.3.0.extract.trunc to float
  %i.j = fmul float %spec.store.select1.i.i, %i.i
  %i.k = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.j)
  %.sroa.3.0.insert.ext.i = zext i8 %i.k to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i = zext i8 %i.h to i24
  %.sroa.2.0.insert.shift.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.e to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsa_NtCsjUslRMS7Tf2_12nu_ansi_term5styleNtB5_5ColorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(4) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !range !9, !noundef !4
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a, %bb.g, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.h, %bb.d ], [ %i.w, %bb.g ], [ true, %bb.c ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.b [
    i8 18, label %bb.d
end_hunk_2
