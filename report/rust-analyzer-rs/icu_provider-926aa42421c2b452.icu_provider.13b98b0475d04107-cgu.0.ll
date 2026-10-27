Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_provider-926aa42421c2b452.icu_provider.13b98b0475d04107-cgu.0?download=true
inline.NumInlined: 133
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c"u", align 1
@1 = private unnamed_addr constant [1 x i8] c"t", align 1
@2 = private unnamed_addr constant [8 x i8] c"true\00\00\00\00", align 1
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCs1GZEXNOm2AR_12icu_provider }>, align 8
@4 = private unnamed_addr constant [31 x i8] c"Invalid marker attribute syntax", align 1
@5 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/icu_provider-2.2.0/src/request.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"f\00\00\00\00\00\00\00P\01\00\00\0D\00\00\00" }>, align 8
@7 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/icu_provider-2.2.0/src/marker.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00s\01\00\00\0D\00\00\00" }>, align 8
@9 = private unnamed_addr constant [5 x i8] c"[0-9]", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00w\01\00\00\0F\00\00\00" }>, align 8
@11 = private unnamed_addr constant [1 x i8] c"V", align 1
@_RNvNvNtCs6QFUeBF2qRm_4yoke12cartable_ptr12sentinel_for8SENTINEL = external local_unnamed_addr global ptr
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\22\01\00\00(\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\22\01\00\007\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00(\01\00\00#\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\19\01\00\00\0D\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\1A\01\00\00\0D\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\1B\01\00\00\0D\00\00\00" }>, align 8
@19 = private unnamed_addr constant [4 x i8] c"\01/\C0\00", align 1
@20 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRAhj8_NtB6_5Debug3fmtCs1GZEXNOm2AR_12icu_provider }>, align 8
@22 = private unnamed_addr constant [12 x i8] c"DataMarkerId", align 1
@23 = private unnamed_addr constant [4 x i8] c"hash", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB3_7Unicode19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2a_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1w_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.e, -1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4
  %i.h = icmp eq i8 %i.g, -1                      ; 3 uses
  %or.cond = select i1 %.not, i1 %i.h, i1 false   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i8, ptr %i.i, align 1, !range !4, !noundef !5
  %.not8 = icmp eq i8 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.l = load i8, ptr %i.k, align 1, !range !4
  %.not9 = icmp eq i8 %i.l, -1
  %i.m = select i1 %.not8, i1 %.not9, i1 false
  br i1 %i.m, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.n, align 8           ; 4 uses
  %i.o = load i8, ptr %.val, align 1, !range !6, !noalias !45, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.q = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val13, i32 noundef 45), !noalias !45
  br i1 %i.q, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %.val, align 1, !noalias !45
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.d, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.r = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  br i1 %i.r, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47
  %i.t = load i8, ptr %i.s, align 1, !range !4, !alias.scope !46, !noundef !5
  %.not.i = icmp eq i8 %i.t, -1                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !4, !alias.scope !46
  %.not3.i.not = icmp eq i8 %i.v, -1              ; 3 uses
  %.4.i = select i1 %.not3.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.u
  %.sroa.0.0.i14 = select i1 %.not.i, ptr %.4.i, ptr %i.s ; 2 uses
  %i.w = select i1 %.not3.i.not, i64 0, i64 8
  %.idx = select i1 %.not.i, i64 %i.w, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14, i64 %.idx ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47
  store ptr %1, ptr %i.c, align 8, !noalias !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !noalias !48
  %.not.not.not.i.not.not.not.i.not1 = select i1 %.not.i, i1 %.not3.i.not, i1 false
  br i1 %.not.not.not.i.not.not.not.i.not1, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ab, %i.x
  br i1 %.not.not.not.i.not.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ %.sroa.0.0.i14, %bb.f ] ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.ac, align 1, !alias.scope !49, !noalias !50
  %i.ad = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i, i1 false)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = lshr i32 %i.ae, 3
  %i.ag = sub nuw nsw i32 8, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBb_3fmt9FormatterE0INtB7_5FnMutTReEE8call_mutCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef range(i64 0, 9) %i.ah), !noalias !50
  br i1 %i.ai, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.g

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47
  br label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %.5.i.i = select i1 %i.h, ptr inttoptr (i64 1 to ptr), ptr %i.f
  %.sroa.0.0.i.i = select i1 %.not, ptr %.5.i.i, ptr %0 ; 2 uses
  %i.aj = select i1 %i.h, i64 0, i64 18
  %.idx.i = select i1 %.not, i64 %i.aj, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx.i
  br i1 %or.cond, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i ], [ %i.ao, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.016.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 2 ; 2 uses
  %.val8.i = load i16, ptr %.sroa.0.016.i, align 1, !alias.scope !52
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %.val8.i to i32
  %i.aq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i.i, i1 false)
  %i.ar = lshr i32 %i.aq, 3
  %i.as = sub nuw nsw i32 4, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !51, !nonnull !5, !noundef !5 ; 2 uses
  %.val7.i = load ptr, ptr %i.n, align 8, !alias.scope !51 ; 4 uses
  %i.au = load i8, ptr %.val.i, align 1, !range !6, !noalias !53, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.aw = call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val7.i, i32 noundef 45), !noalias !53
  br i1 %i.aw, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.val.i, align 1, !noalias !53
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.ax = call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val7.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.016.i, i64 noundef range(i64 0, 9) %i.at)
  br i1 %i.ax, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.k

bb.k:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55
  %i.ay = load i8, ptr %i.ap, align 1, !range !4, !alias.scope !54, !noundef !5
  %.not.i10.i = icmp eq i8 %i.ay, -1              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 3 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !range !4, !alias.scope !54
  %.not3.i.i.not = icmp eq i8 %i.ba, -1           ; 3 uses
  %.4.i.i = select i1 %.not3.i.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.az
  %.sroa.0.0.i13.i = select i1 %.not.i10.i, ptr %.4.i.i, ptr %i.ap ; 2 uses
  %i.bb = select i1 %.not3.i.i.not, i64 0, i64 8
  %.idx5 = select i1 %.not.i10.i, i64 %i.bb, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i, i64 %.idx5 ; 2 uses
  store ptr %i.bc, ptr %i.al, align 8, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  store ptr %1, ptr %i.a, align 8, !noalias !56
  store ptr %i.am, ptr %i.an, align 8, !noalias !56
  %.not.not.not.i.not.not.not.i.not.i2 = select i1 %.not.i10.i, i1 %.not3.i.i.not, i1 false
  br i1 %.not.not.not.i.not.not.not.i.not.i2, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i, label %.lr.ph4

bb.l:                                             ; preds = %.lr.ph4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.not.not.i.not.not.not.i.not.i, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.k, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ %.sroa.0.0.i13.i, %bb.k ] ; 3 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.be, align 1, !alias.scope !57, !noalias !58
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i.i.i, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = sub nuw nsw i32 8, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBb_3fmt9FormatterE0INtB7_5FnMutTReEE8call_mutCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.be, i64 noundef range(i64 0, 9) %i.bj), !noalias !58
  br i1 %i.bk, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i, label %bb.l

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i: ; preds = %.lr.ph4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  br label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  %.not20.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not20.i, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.h

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i, %bb.i, %bb.d, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i, %._crit_edge, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ true, %bb.d ], [ true, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread ], [ true, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i ], [ false, %._crit_edge ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i ], [ true, %bb.i ], [ false, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB3_7Unicode19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2a_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.e, -1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4
  %i.h = icmp eq i8 %i.g, -1                      ; 3 uses
  %or.cond = select i1 %.not, i1 %i.h, i1 false   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i8, ptr %i.i, align 1, !range !4, !noundef !5
  %.not8 = icmp eq i8 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.l = load i8, ptr %i.k, align 1, !range !4
  %.not9 = icmp eq i8 %i.l, -1
  %i.m = select i1 %.not8, i1 %.not9, i1 false
  br i1 %i.m, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.n, align 8           ; 4 uses
  %i.o = load i8, ptr %.val, align 1, !range !6, !noalias !96, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.q = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val13, i32 noundef 45), !noalias !96
  br i1 %i.q, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %.val, align 1, !noalias !96
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.d, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.r = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  br i1 %i.r, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !98
  %i.t = load i8, ptr %i.s, align 1, !range !4, !alias.scope !97, !noundef !5
  %.not.i = icmp eq i8 %i.t, -1                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !4, !alias.scope !97
  %.not3.i.not = icmp eq i8 %i.v, -1              ; 3 uses
  %.4.i = select i1 %.not3.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.u
  %.sroa.0.0.i14 = select i1 %.not.i, ptr %.4.i, ptr %i.s ; 2 uses
  %i.w = select i1 %.not3.i.not, i64 0, i64 8
  %.idx = select i1 %.not.i, i64 %i.w, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14, i64 %.idx ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98
  store ptr %1, ptr %i.c, align 8, !noalias !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !noalias !99
  %.not.not.not.i.not.not.not.i.not1 = select i1 %.not.i, i1 %.not3.i.not, i1 false
  br i1 %.not.not.not.i.not.not.not.i.not1, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ab, %i.x
  br i1 %.not.not.not.i.not.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ %.sroa.0.0.i14, %bb.f ] ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.ac, align 1, !alias.scope !100, !noalias !101
  %i.ad = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i, i1 false)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = lshr i32 %i.ae, 3
  %i.ag = sub nuw nsw i32 8, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0INtB7_5FnMutTReEE8call_mutCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef range(i64 0, 9) %i.ah), !noalias !101
  br i1 %i.ai, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.g

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98
  br label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.5.i.i = select i1 %i.h, ptr inttoptr (i64 1 to ptr), ptr %i.f
  %.sroa.0.0.i.i = select i1 %.not, ptr %.5.i.i, ptr %0 ; 2 uses
  %i.aj = select i1 %i.h, i64 0, i64 18
  %.idx.i = select i1 %.not, i64 %i.aj, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx.i
  br i1 %or.cond, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i ], [ %i.ao, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.016.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 2 ; 2 uses
  %.val.i = load i16, ptr %.sroa.0.016.i, align 1, !alias.scope !103
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %.val.i to i32
  %i.aq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i.i, i1 false)
  %i.ar = lshr i32 %i.aq, 3
  %i.as = sub nuw nsw i32 4, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %.val7.i = load ptr, ptr %1, align 8, !alias.scope !102, !nonnull !5, !noundef !5 ; 2 uses
  %.val8.i = load ptr, ptr %i.n, align 8, !alias.scope !102 ; 4 uses
  %i.au = load i8, ptr %.val7.i, align 1, !range !6, !noalias !104, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.aw = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val8.i, i32 noundef 45), !noalias !104
  br i1 %i.aw, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.val7.i, align 1, !noalias !104
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.ax = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.016.i, i64 noundef range(i64 0, 9) %i.at)
  br i1 %i.ax, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.k

bb.k:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  %i.ay = load i8, ptr %i.ap, align 1, !range !4, !alias.scope !105, !noundef !5
  %.not.i10.i = icmp eq i8 %i.ay, -1              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 3 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !range !4, !alias.scope !105
  %.not3.i.i.not = icmp eq i8 %i.ba, -1           ; 3 uses
  %.4.i.i = select i1 %.not3.i.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.az
  %.sroa.0.0.i13.i = select i1 %.not.i10.i, ptr %.4.i.i, ptr %i.ap ; 2 uses
  %i.bb = select i1 %.not3.i.i.not, i64 0, i64 8
  %.idx5 = select i1 %.not.i10.i, i64 %i.bb, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i, i64 %.idx5 ; 2 uses
  store ptr %i.bc, ptr %i.al, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  store ptr %1, ptr %i.a, align 8, !noalias !107
  store ptr %i.am, ptr %i.an, align 8, !noalias !107
  %.not.not.not.i.not.not.not.i.not.i2 = select i1 %.not.i10.i, i1 %.not3.i.i.not, i1 false
  br i1 %.not.not.not.i.not.not.not.i.not.i2, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i, label %.lr.ph4

bb.l:                                             ; preds = %.lr.ph4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.not.not.i.not.not.not.i.not.i, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.k, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ %.sroa.0.0.i13.i, %bb.k ] ; 3 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.be, align 1, !alias.scope !108, !noalias !109
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i.i.i, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = sub nuw nsw i32 8, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0INtB7_5FnMutTReEE8call_mutCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.be, i64 noundef range(i64 0, 9) %i.bj), !noalias !109
  br i1 %i.bk, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i, label %bb.l

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i: ; preds = %.lr.ph4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  br label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  %.not20.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not20.i, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.h

_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i, %bb.i, %bb.d, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i, %._crit_edge, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ true, %bb.d ], [ true, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread ], [ true, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.thread.i ], [ false, %._crit_edge ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i ], [ true, %bb.i ], [ false, %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transformNtB3_9Transform19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2e_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1A_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [3 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noundef !5
  %.not = icmp eq i8 %i.f, -1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %or.cond = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8 = load ptr, ptr %i.j, align 8            ; 12 uses
  %i.k = load i8, ptr %.val, align 1, !range !6, !noalias !149, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.m = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, i32 noundef 45), !noalias !149
  br i1 %i.m, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %.val, align 1, !noalias !149
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.c, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.n = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1)
  br i1 %i.n, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit
  br i1 %.not, label %_RINvMNtCs96xUavsWfLi_15icu_locale_core6langidNtB3_18LanguageIdentifier30for_each_subtag_str_lowercasedNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB5_4dataNtB2i_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1E_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %.val34.i = load i24, ptr %i.e, align 8, !alias.scope !151
  %.sroa.0.0.insert.ext.i.i.i = zext i24 %.val34.i to i32
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i.i, i1 false)
  %i.p = lshr i32 %i.o, 3
  %i.q = sub nuw nsw i32 4, %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load i8, ptr %.val, align 1, !range !6, !noalias !152, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, i32 noundef 45), !noalias !152
  br i1 %i.u, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %.val, align 1, !noalias !152
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.h, %bb.g
  %i.v = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.e, i64 noundef range(i64 0, 9) %i.r)
  br i1 %i.v, label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !range !4, !alias.scope !150, !noundef !5
  %.not.i = icmp eq i8 %i.x, -1
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !150
  %.sroa.05.0.copyload.i = load i32, ptr %i.w, align 1, !alias.scope !150 ; 3 uses
  %i.y = add i32 %.sroa.05.0.copyload.i, 1061109567
  %i.z = sub i32 -623191334, %.sroa.05.0.copyload.i
  %i.aa = and i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 538976288
  %i.ad = or i32 %i.ac, %.sroa.05.0.copyload.i    ; 2 uses
  store i32 %i.ad, ptr %i.d, align 4, !noalias !150
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 false)
  %i.af = lshr i32 %i.ae, 3
  %i.ag = sub nuw nsw i32 4, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = load i8, ptr %.val, align 1, !range !6, !noalias !153, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, i32 noundef 45), !noalias !154
  br i1 %i.ak, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.thread.i, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.i

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %.val, align 1, !noalias !153
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.i: ; preds = %bb.l, %bb.k
  %i.al = call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 9) %i.ah)
  br i1 %i.al, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.thread.i, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !range !4, !alias.scope !150, !noundef !5
  %.not22.i = icmp eq i8 %i.an, -1
  br i1 %.not22.i, label %bb.r, label %bb.o

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.thread.i: ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !150
  br label %_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions9transform6fieldsNtB3_6Fields19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2k_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1G_9FormatterE0ECs1GZEXNOm2AR_12icu_provider.exit

bb.n:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !150
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !150
  %.sroa.019.0.copyload.i = load i24, ptr %i.am, align 1, !alias.scope !150
  %.sroa.0.0.insert.ext.i.i38.i = zext i24 %.sroa.019.0.copyload.i to i32 ; 3 uses
  %i.ao = add nuw nsw i32 %.sroa.0.0.insert.ext.i.i38.i, 4144959
end_hunk_0
