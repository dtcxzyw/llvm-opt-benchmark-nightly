Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/nu_ansi_term-5f1a6dadfb7f9d17.nu_ansi_term.19c2a078b38c910e-cgu.00?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c"\1B[0m", align 1
@1 = private unnamed_addr constant [2 x i8] c"\1B[", align 1
@2 = private unnamed_addr constant [1 x i8] c";", align 1
@3 = private unnamed_addr constant [1 x i8] c"m", align 1
@_RNvNtCs2d7w8VUmBQM_12nu_ansi_term4ansi5RESET = external global { ptr, i64 }
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"40", align 1
@6 = private unnamed_addr constant [3 x i8] c"100", align 1
@7 = private unnamed_addr constant [2 x i8] c"41", align 1
@8 = private unnamed_addr constant [3 x i8] c"101", align 1
@9 = private unnamed_addr constant [2 x i8] c"42", align 1
@10 = private unnamed_addr constant [3 x i8] c"102", align 1
@11 = private unnamed_addr constant [2 x i8] c"43", align 1
@12 = private unnamed_addr constant [3 x i8] c"103", align 1
@13 = private unnamed_addr constant [2 x i8] c"44", align 1
@14 = private unnamed_addr constant [3 x i8] c"104", align 1
@15 = private unnamed_addr constant [2 x i8] c"45", align 1
@16 = private unnamed_addr constant [3 x i8] c"105", align 1
@17 = private unnamed_addr constant [2 x i8] c"46", align 1
@18 = private unnamed_addr constant [3 x i8] c"106", align 1
@19 = private unnamed_addr constant [2 x i8] c"47", align 1
@20 = private unnamed_addr constant [3 x i8] c"107", align 1
@21 = private unnamed_addr constant [8 x i8] c"\0548;5;\C0\00", align 1
@22 = private unnamed_addr constant [14 x i8] c"\0548;2;\C0\01;\C0\01;\C0\00", align 1
@23 = private unnamed_addr constant [2 x i8] c"49", align 1
@24 = private unnamed_addr constant [2 x i8] c"30", align 1
@25 = private unnamed_addr constant [2 x i8] c"90", align 1
@26 = private unnamed_addr constant [2 x i8] c"31", align 1
@27 = private unnamed_addr constant [2 x i8] c"91", align 1
@28 = private unnamed_addr constant [2 x i8] c"32", align 1
@29 = private unnamed_addr constant [2 x i8] c"92", align 1
@30 = private unnamed_addr constant [2 x i8] c"33", align 1
@31 = private unnamed_addr constant [2 x i8] c"93", align 1
@32 = private unnamed_addr constant [2 x i8] c"34", align 1
@33 = private unnamed_addr constant [2 x i8] c"94", align 1
@34 = private unnamed_addr constant [2 x i8] c"35", align 1
@35 = private unnamed_addr constant [2 x i8] c"95", align 1
@36 = private unnamed_addr constant [2 x i8] c"36", align 1
@37 = private unnamed_addr constant [2 x i8] c"96", align 1
@38 = private unnamed_addr constant [2 x i8] c"37", align 1
@39 = private unnamed_addr constant [2 x i8] c"97", align 1
@40 = private unnamed_addr constant [8 x i8] c"\0538;5;\C0\00", align 1
@41 = private unnamed_addr constant [14 x i8] c"\0538;2;\C0\01;\C0\01;\C0\00", align 1
@42 = private unnamed_addr constant [2 x i8] c"39", align 1
@43 = private unnamed_addr constant [2 x i8] c", ", align 1
@44 = private unnamed_addr constant [8 x i8] c"Style { ", align 1
@45 = private unnamed_addr constant [8 x i8] c"\03fg(\C0\01)\00", align 1
@46 = private unnamed_addr constant [8 x i8] c"\03on(\C0\01)\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"blink", align 1
@48 = private unnamed_addr constant [4 x i8] c"bold", align 1
@49 = private unnamed_addr constant [6 x i8] c"dimmed", align 1
@50 = private unnamed_addr constant [6 x i8] c"hidden", align 1
@51 = private unnamed_addr constant [6 x i8] c"italic", align 1
@52 = private unnamed_addr constant [7 x i8] c"reverse", align 1
@53 = private unnamed_addr constant [13 x i8] c"strikethrough", align 1
@54 = private unnamed_addr constant [9 x i8] c"underline", align 1
@55 = private unnamed_addr constant [2 x i8] c" }", align 1
@56 = private unnamed_addr constant [8 x i8] c"Style {}", align 1
@57 = private unnamed_addr constant [5 x i8] c"Style", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs2d7w8VUmBQM_12nu_ansi_term5style5ColorENtNtB7_3fmt5Debug3fmtBO_ }>, align 8
@59 = private unnamed_addr constant [10 x i8] c"foreground", align 1
@60 = private unnamed_addr constant [10 x i8] c"background", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt }>, align 8
@62 = private unnamed_addr constant [4 x i8] c"None", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2d7w8VUmBQM_12nu_ansi_term5style5ColorNtB6_5Debug3fmtBA_ }>, align 8
@64 = private unnamed_addr constant [4 x i8] c"Some", align 1
@65 = private unnamed_addr constant [5 x i8] c"Black", align 1
@66 = private unnamed_addr constant [8 x i8] c"DarkGray", align 1
@67 = private unnamed_addr constant [3 x i8] c"Red", align 1
@68 = private unnamed_addr constant [8 x i8] c"LightRed", align 1
@69 = private unnamed_addr constant [5 x i8] c"Green", align 1
@70 = private unnamed_addr constant [10 x i8] c"LightGreen", align 1
@71 = private unnamed_addr constant [6 x i8] c"Yellow", align 1
@72 = private unnamed_addr constant [11 x i8] c"LightYellow", align 1
@73 = private unnamed_addr constant [4 x i8] c"Blue", align 1
@74 = private unnamed_addr constant [9 x i8] c"LightBlue", align 1
@75 = private unnamed_addr constant [6 x i8] c"Purple", align 1
@76 = private unnamed_addr constant [11 x i8] c"LightPurple", align 1
@77 = private unnamed_addr constant [7 x i8] c"Magenta", align 1
@78 = private unnamed_addr constant [12 x i8] c"LightMagenta", align 1
@79 = private unnamed_addr constant [4 x i8] c"Cyan", align 1
@80 = private unnamed_addr constant [9 x i8] c"LightCyan", align 1
@81 = private unnamed_addr constant [5 x i8] c"White", align 1
@82 = private unnamed_addr constant [9 x i8] c"LightGray", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs2d7w8VUmBQM_12nu_ansi_term }>, align 8
@84 = private unnamed_addr constant [5 x i8] c"Fixed", align 1
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@86 = private unnamed_addr constant [3 x i8] c"Rgb", align 1
@87 = private unnamed_addr constant [7 x i8] c"Default", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB5_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB5_(ptr noalias noundef readonly captures(none) dereferenceable(17) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
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
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13.0..sroa_idx, i64 3, i1 false)
  %.sroa.1322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.1322.0.copyload = load i8, ptr %.sroa.1322.0..sroa_idx, align 1 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.q                     ; 9 uses
  %i.r = icmp eq i8 %.sroa.10.0.copyload, 0
  %.not.i.i = icmp eq i8 %.sroa.11.0.copyload, -1 ; 2 uses
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.s = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.s, i1 %i.r, i1 false
  %op.rdx83 = select i1 %op.rdx, i1 %.not.i.i, i1 false
  br i1 %op.rdx83, label %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit, label %bb.b

_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit: ; preds = %bb.a
  %.not3.i.i = icmp eq i8 %.sroa.1322.0.copyload, -1
  br i1 %.not3.i.i, label %bb.ak, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.t = trunc nuw i8 %.sroa.10.0.copyload to i1
  br i1 %i.t, label %bb.c, label %.thread

.thread:                                          ; preds = %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit, %bb.c, %bb.b
  %i.u = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br i1 %i.u, label %bb.ak, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 9 to ptr))
  br i1 %i.v, label %bb.ak, label %.thread

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.x, align 8
  %i.y = bitcast <8 x i8> %.fr to <64 x i1>
  %i.z = extractelement <64 x i1> %i.y, i64 0
  br i1 %i.z, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit, %bb.d
  %i.aa = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ab = extractelement <64 x i1> %i.aa, i64 8
  br i1 %i.ab, label %bb.g, label %bb.f

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 49, ptr %i.l, align 4, !noalias !19
  store i8 1, ptr %i.p, align 1, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19
  store ptr %i.l, ptr %i.k, align 8, !noalias !19
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !19
  %i.ac = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.k), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.ac, label %bb.al, label %bb.e

bb.f:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60, %bb.e
  %i.ad = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ae = extractelement <64 x i1> %i.ad, i64 16
  br i1 %i.ae, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 50, ptr %i.j, align 4, !noalias !20
  %i.af = load i8, ptr %i.p, align 1, !range !3, !noalias !20, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60

bb.h:                                             ; preds = %bb.g
  %i.ah = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr)), !noalias !20
  br i1 %i.ah, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60.thread, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.al

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60: ; preds = %bb.g, %bb.h
  store i8 1, ptr %i.p, align 1, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20
  store ptr %i.j, ptr %i.i, align 8, !noalias !20
  %.sroa.47.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i58, align 8, !noalias !20
  %i.ai = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.i), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.ai, label %bb.al, label %bb.f

bb.i:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64, %bb.f
  %i.aj = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ak = extractelement <64 x i1> %i.aj, i64 24
  br i1 %i.ak, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 51, ptr %i.h, align 4, !noalias !21
  %i.al = load i8, ptr %i.p, align 1, !range !3, !noalias !21, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64

bb.k:                                             ; preds = %bb.j
  %i.an = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr)), !noalias !21
  br i1 %i.an, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64.thread, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.al

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64: ; preds = %bb.j, %bb.k
  store i8 1, ptr %i.p, align 1, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21
  store ptr %i.h, ptr %i.g, align 8, !noalias !21
  %.sroa.47.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i62, align 8, !noalias !21
  %i.ao = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.g), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.ao, label %bb.al, label %bb.i

bb.l:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68, %bb.i
  %i.ap = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aq = extractelement <64 x i1> %i.ap, i64 32
  br i1 %i.aq, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 52, ptr %i.f, align 4, !noalias !22
  %i.ar = load i8, ptr %i.p, align 1, !range !3, !noalias !22, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.n, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68

bb.n:                                             ; preds = %bb.m
  %i.at = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr)), !noalias !22
  br i1 %i.at, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68.thread, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68: ; preds = %bb.m, %bb.n
  store i8 1, ptr %i.p, align 1, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22
  store ptr %i.f, ptr %i.e, align 8, !noalias !22
  %.sroa.47.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i66, align 8, !noalias !22
  %i.au = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.e), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.au, label %bb.al, label %bb.l

bb.o:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72, %bb.l
  %i.av = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aw = extractelement <64 x i1> %i.av, i64 40
  br i1 %i.aw, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 53, ptr %i.d, align 4, !noalias !23
  %i.ax = load i8, ptr %i.p, align 1, !range !3, !noalias !23, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72

bb.q:                                             ; preds = %bb.p
  %i.az = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr)), !noalias !23
  br i1 %i.az, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72.thread, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72: ; preds = %bb.p, %bb.q
  store i8 1, ptr %i.p, align 1, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23
  store ptr %i.d, ptr %i.c, align 8, !noalias !23
  %.sroa.47.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i70, align 8, !noalias !23
  %i.ba = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.c), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ba, label %bb.al, label %bb.o

bb.r:                                             ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76, %bb.o
  %i.bb = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bc = extractelement <64 x i1> %i.bb, i64 48
  br i1 %i.bc, label %bb.v, label %bb.u

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 55, ptr %i.b, align 4, !noalias !24
  %i.bd = load i8, ptr %i.p, align 1, !range !3, !noalias !24, !noundef !4
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76

bb.t:                                             ; preds = %bb.s
  %i.bf = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr)), !noalias !24
  br i1 %i.bf, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76.thread, label %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76.thread: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76: ; preds = %bb.s, %bb.t
  store i8 1, ptr %i.p, align 1, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  store ptr %i.b, ptr %i.a, align 8, !noalias !24
  %.sroa.47.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i74, align 8, !noalias !24
  %i.bg = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.a), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bg, label %bb.al, label %bb.r

bb.u:                                             ; preds = %bb.v, %bb.r
  %i.bh = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bi = extractelement <64 x i1> %i.bh, i64 56
  br i1 %i.bi, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.bj = call fastcc noundef zeroext i1 @_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_(ptr noalias noundef align 8 dereferenceable(24) %i.o, i32 noundef 56)
  br i1 %i.bj, label %bb.al, label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not = icmp eq i8 %.sroa.1322.0.copyload, -1
  br i1 %.not, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bk = call fastcc noundef zeroext i1 @_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_(ptr noalias noundef align 8 dereferenceable(24) %i.o, i32 noundef 57)
  br i1 %i.bk, label %bb.al, label %bb.w

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %.sroa.1322.0.copyload, ptr %i.n, align 1
  %.sroa.15.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.13..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx, i64 3, i1 false)
  %i.bl = load i8, ptr %i.p, align 1, !range !3, !noundef !4
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.w
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %bb.ab, %bb.y
  store i8 1, ptr %i.p, align 1
  %i.bn = call fastcc noundef zeroext i1 @_RINvMs_NtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Color21write_background_codeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB7_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4) %i.n, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br i1 %i.bn, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.bo = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr))
  br i1 %i.bo, label %bb.ad, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.z

bb.ad:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.sink.split

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %.sroa.11.0.copyload, ptr %i.m, align 1
  %.sroa.13.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13.9..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.13, i64 3, i1 false)
  %i.bp = load i8, ptr %i.p, align 1, !range !3, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ai, %bb.z
  %i.br = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 3 to ptr))
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %i.bs = call fastcc noundef zeroext i1 @_RINvMs_NtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Color21write_foreground_codeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB7_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4) %i.m, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br i1 %i.bs, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.bt = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr))
  br i1 %i.bt, label %bb.aj, label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.af

bb.aj:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ad, %bb.aj, %bb.al
  %.sroa.0.3.ph = phi i1 [ true, %bb.ad ], [ %i.br, %bb.af ], [ true, %bb.al ], [ true, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %.thread, %bb.c, %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit
  %.sroa.0.3 = phi i1 [ true, %.thread ], [ false, %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit ], [ true, %bb.c ], [ %.sroa.0.3.ph, %.sink.split ]
  ret i1 %.sroa.0.3

bb.al:                                            ; preds = %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76.thread, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72.thread, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68.thread, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64.thread, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60.thread, %bb.x, %bb.v, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit76, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit72, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit68, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit64, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit60, %_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB5_5style5Style12write_suffixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB5_(ptr noalias noundef readonly captures(none) dereferenceable(17) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.144.0.copyload = load i8, ptr %.sroa.144.0..sroa_idx, align 1
  %i.b = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.b
  %i.c = icmp eq i8 %.sroa.12.0.copyload, 0
  %.not.i.i = icmp eq i8 %.sroa.13.0.copyload, -1
  %.not3.i.i = icmp eq i8 %.sroa.144.0.copyload, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.d = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.d, i1 %i.c, i1 false
  %3 = select i1 %op.rdx, i1 %.not.i.i, i1 false
  %op.rdx7 = select i1 %3, i1 %.not3.i.i, i1 false
  br i1 %op.rdx7, label %bb.b, label %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread

_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvNtCs2d7w8VUmBQM_12nu_ansi_term4ansi5RESET, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @4, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread
  %.sroa.0.0 = phi i1 [ %i.e, %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs_NtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Color21write_background_codeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB7_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i8, ptr %0, align 1, !range !5, !noundef !4
  switch i8 %i.g, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
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
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 7 to ptr))
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.z, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.47.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @21, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ab, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ac, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  store ptr %i.ad, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.411.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.t, %bb.n ], [ %i.u, %bb.o ], [ %i.v, %bb.p ], [ %i.w, %bb.q ], [ %i.x, %bb.r ], [ %i.y, %bb.s ], [ %i.aa, %bb.t ], [ %i.ag, %bb.u ], [ %i.ah, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs_NtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Color21write_foreground_codeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB7_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i8, ptr %0, align 1, !range !5, !noundef !4
  switch i8 %i.g, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
end_hunk_0
begin_hunk_1_@_RINvMs_NtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Color21write_foreground_codeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_EB7_:bb.a
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @24, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.z, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.47.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @40, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ab, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ac, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  store ptr %i.ad, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.411.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_7Display3fmtCs2d7w8VUmBQM_12nu_ansi_term, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @41, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.t, %bb.n ], [ %i.u, %bb.o ], [ %i.v, %bb.p ], [ %i.w, %bb.q ], [ %i.x, %bb.r ], [ %i.y, %bb.s ], [ %i.aa, %bb.t ], [ %i.ag, %bb.u ], [ %i.ah, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCs2d7w8VUmBQM_12nu_ansi_term4ansiNtNtB7_5style5Style12write_prefixDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_E0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 49, 58) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !3, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.j = call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @4, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5writeDNtNtCs4NRVxsYgnAr_4core3fmt5WriteEL_NtB2_8AnyWrite9write_fmt(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 3 to ptr))
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.j, %._crit_edge ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nofree captures(none) %.0.val, ptr %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 4, 14) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i8, ptr %.0.val, align 1, !range !3, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  store i8 1, ptr %.0.val, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2)
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain(ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %0) unnamed_addr #2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 1, !range !3
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !range !6
  %.not.i = icmp eq i8 %i.f, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.g = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.g, i1 %i.d, i1 false
  %op.rdx28 = select i1 %op.rdx, i1 %.not.i, i1 false
  br i1 %op.rdx28, label %bb.b, label %_RNvXs4_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.i = load i8, ptr %i.h, align 1, !range !6, !alias.scope !27, !noundef !4
  %.not3.i = icmp eq i8 %i.i, -1
  br label %_RNvXs4_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.shrunk.i = phi i1 [ %.not3.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB4_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(17) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
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
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.1019.0.copyload = load i8, ptr %.sroa.1019.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.1223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.1223.0.copyload = load i8, ptr %.sroa.1223.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.k = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.k                     ; 9 uses
  %i.l = icmp eq i8 %.sroa.10.0.copyload, 0
  %.not.i.i = icmp eq i8 %.sroa.1019.0.copyload, -1 ; 2 uses
  %.not3.i.i = icmp eq i8 %.sroa.1223.0.copyload, -1 ; 2 uses
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.m = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.m, i1 %i.l, i1 false
  %2 = select i1 %op.rdx, i1 %.not.i.i, i1 false
  %op.rdx96 = select i1 %2, i1 %.not3.i.i, i1 false
  br i1 %op.rdx96, label %bb.d, label %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 5)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.o = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 10, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 10, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 5, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.w = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 6, ptr noundef nonnull %.sroa.8.0..sroa_idx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 7, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 13, ptr noundef nonnull %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 9, ptr noundef nonnull %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  %i.af = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ae

_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread: ; preds = %bb.b
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 8)
  br i1 %i.ag, label %bb.ae, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8)
  br label %bb.ae

bb.e:                                             ; preds = %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ai = phi i8 [ 0, %bb.e ], [ 1, %bb.g ]       ; 2 uses
  br i1 %.not3.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.1019.0.copyload, ptr %i.d, align 1
  %.sroa.12.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.9..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx, i64 3, i1 false)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXse_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !30, !noundef !4
  %i.am = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noundef nonnull @45, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.am, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.f

_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread: ; preds = %bb.g, %bb.p, %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.1223.0.copyload, ptr %i.b, align 1
  %.sroa.14.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.13..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx, i64 3, i1 false)
  %i.an = trunc nuw i8 %i.ai to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.f
  %i.ao = phi i8 [ 1, %bb.l ], [ %i.ai, %bb.f ]
  %i.ap = bitcast <8 x i8> %.fr to <64 x i1>
  %i.aq = extractelement <64 x i1> %i.ap, i64 32
  br i1 %i.aq, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.k, %bb.h
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !align !30, !noundef !4
  %i.au = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noundef nonnull @46, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.au, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2)
  br i1 %i.av, label %bb.m, label %bb.j

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.m:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread

bb.n:                                             ; preds = %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit, %bb.i
  %i.aw = bitcast <8 x i8> %.fr to <64 x i1>
  %i.ax = extractelement <64 x i1> %i.aw, i64 0
  br i1 %i.ax, label %bb.r, label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.ay = trunc nuw i8 %i.ao to i1
  br i1 %i.ay, label %bb.p, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit

bb.p:                                             ; preds = %bb.o
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2), !noalias !31
  br i1 %i.az, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit

_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit: ; preds = %bb.o, %bb.p
  store i8 1, ptr %i.e, align 1, !noalias !31
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 5)
  br i1 %i.ba, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.n

bb.q:                                             ; preds = %bb.r, %bb.n
  %i.bb = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bc = extractelement <64 x i1> %i.bb, i64 8
  br i1 %i.bc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bd = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 4)
  br i1 %i.bd, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.q

bb.s:                                             ; preds = %bb.t, %bb.q
  %i.be = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bf = extractelement <64 x i1> %i.be, i64 48
  br i1 %i.bf, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bg = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6)
  br i1 %i.bg, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.s

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.bh = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bi = extractelement <64 x i1> %i.bh, i64 16
  br i1 %i.bi, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bj = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 6)
  br i1 %i.bj, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  %i.bk = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bl = extractelement <64 x i1> %i.bk, i64 40
  br i1 %i.bl, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bm = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6)
  br i1 %i.bm, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.w

bb.y:                                             ; preds = %bb.z, %bb.w
  %i.bn = bitcast <8 x i8> %.fr to <64 x i1>
  %i.bo = extractelement <64 x i1> %i.bn, i64 56
  br i1 %i.bo, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 7)
  br i1 %i.bp, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.y

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.bq = bitcast <8 x i8> %.fr to <64 x i1>
  %i.br = extractelement <64 x i1> %i.bq, i64 24
  br i1 %i.br, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.bs = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 13)
  br i1 %i.bs, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.aa

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %i.bt = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !align !30, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !4, !nonnull !4
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.bz = call fastcc noundef zeroext i1 @_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_(ptr nonnull %i.e, ptr nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 9)
  br i1 %i.bz, label %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread, label %bb.ac

bb.ae:                                            ; preds = %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread, %bb.c, %bb.ac, %bb.d, %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread
  %.sroa.0.5.shrunk = phi i1 [ %i.ah, %bb.d ], [ %i.af, %bb.c ], [ true, %_RNCNvXNtCs2d7w8VUmBQM_12nu_ansi_term5debugNtNtB6_5style5StyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0B6_.exit.thread ], [ %i.by, %bb.ac ], [ true, %_RNvMNtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB2_5Style8is_plain.exit.thread ]
  ret i1 %.sroa.0.5.shrunk
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2d7w8VUmBQM_12nu_ansi_term5style5ColorNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtCs2d7w8VUmBQM_12nu_ansi_term5styleNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs2d7w8VUmBQM_12nu_ansi_term5style5ColorENtNtB7_3fmt5Debug3fmtBO_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !6, !noundef !4
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
end_hunk_1
