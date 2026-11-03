Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_test_helpers-da88f9ab579f3b7f.influxdb3_test_helpers.9c9b2ebec7d9dbd3-cgu.2?download=true
inline.NumInlined: 304
inline.NumDeleted: 157
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c"/", align 1
@1 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/str/pattern.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"w\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"w\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"w\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@5 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/sync/barrier.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"e\00\00\00\00\00\00\00\8B\00\00\008\00\00\00" }>, align 8
@7 = private unnamed_addr constant [30 x i8] c"there is at least one receiver", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"e\00\00\00\00\00\00\00\AF\00\00\00\16\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"e\00\00\00\00\00\00\00}\00\00\003\00\00\00" }>, align 8
@10 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/sync/watch.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"c\00\00\00\00\00\00\002\03\00\00E\00\00\00" }>, align 8
@12 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/lib.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"\\\00\00\00\00\00\00\00V\02\00\00,\00\00\00" }>, align 8
@14 = private unnamed_addr constant [48 x i8] c"influxdb3_test_helpers/src/object_store/mock.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"/\00\00\00\00\00\00\006\02\00\00J\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"/\00\00\00\00\00\00\00\D6\01\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"/\00\00\00\00\00\00\00\EE\01\00\00\09\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"/\00\00\00\00\00\00\00\E0\01\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtNtCseCDlJsl44RV_5tokio4sync5watch5errorINtB2_9SendErrorjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock17PutPayloadWrapperNtB6_5Debug3fmtBC_ }>, align 8
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store10PutOptionsNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB8_3ops5range5RangeyEENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3ops5range5RangeyENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store19PutMultipartOptionsNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock17WrappedGetOptionsNtB6_5Debug3fmtBC_ }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@28 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@29 = private unnamed_addr constant [4 x i8] c"path", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@32 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@33 = private unnamed_addr constant [6 x i8] c"source", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsdrBSO4t3gk1_22influxdb3_test_helpers, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@36 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@38 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers }>, align 8
@40 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@41 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@42 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@43 = private unnamed_addr constant [4 x i8] c"Path", align 1
@44 = private unnamed_addr constant [3 x i8] c"raw", align 1
@45 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@46 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @45, [24 x i8] zeroinitializer }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"w\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1LivM9IBWqb_12object_store4pathNtB3_4Path5parseReECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 18 uses
  %i.h = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) ; 2 uses
  %i.i = sext i1 %i.h to i64
  %.sroa.7.0 = add i64 %2, %i.i                   ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.h to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 3 uses
  %i.j = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %i.m = sext i1 %i.l to i64
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.m           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %.sroa.038.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.038.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 28 uses
  %.sroa.038.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.038.sroa.6.0.copyload = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.038.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.038.sroa.7.0.copyload = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.038.sroa.8.0.copyload = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx, align 8
  %.sroa.038.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.038.sroa.10.0.copyload = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx, align 8
  %.sroa.038.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.038.sroa.12.0.copyload = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 18 uses
  %.sroa.038.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.038.sroa.13.0.copyload = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.038.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.038.sroa.14.0.copyload = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.038.sroa.15.0.copyload = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = trunc nuw i64 %.sroa.038.sroa.0.0.copyload to i1
  %i.o = add nsw i64 %.sroa.038.sroa.15.0.copyload, -1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br i1 %i.n, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.q = and i64 %.sroa.038.sroa.6.0.copyload, 65536
  %.sroa.998.sroa.10115.0.extract.trunc.not = icmp eq i64 %i.q, 0
  %.sroa.998.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.sroa.6.0.copyload to i1
  br i1 %.sroa.998.sroa.10115.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.r = trunc i64 %.sroa.038.sroa.6.0.copyload to i1 ; 2 uses
  %i.s = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.e, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.d
  %i.t = icmp eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.t, label %bb.f, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !45, !noalias !46, !noundef !5
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload ; 4 uses
  %i.y = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.y, label %.loopexit19.i.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !noalias !47, !noundef !5 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i.peel: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = and i8 %i.z, 31
  %i.ad = zext nneg i8 %i.ac to i32               ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 1
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load i8, ptr %i.ab, align 1, !noalias !47, !noundef !5
  %i.ah = shl nuw nsw i32 %i.ad, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.z, -33
  br i1 %i.al, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.an = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 2
  %i.ao = icmp samesign ne i64 %i.an, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i8, ptr %i.am, align 1, !noalias !47, !noundef !5
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.z, -17
  br i1 %i.aw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ay = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 3
  %i.az = icmp samesign ne i64 %i.ay, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i8, ptr %i.ax, align 1, !noalias !47, !noundef !5
  %i.bb = shl nuw nsw i32 %i.ad, 18
  %i.bc = and i32 %i.bb, 1835008
  %i.bd = shl nuw nsw i32 %i.at, 6
  %i.be = and i8 %i.ba, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.bc
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i8 %i.z to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.av, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i.peel ], [ %i.bh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i.peel ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i.peel ], [ %i.bi, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  br i1 %i.r, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bk, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bm, i64 3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bn = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.038.sroa.4.0.copyload ; 23 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel = icmp ult i64 %i.bn, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.o, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.n
  %i.bp = icmp eq i64 %i.bn, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bp, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !45, !noalias !48, !noundef !5
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.peel, %bb.m
  %i.bt = icmp samesign eq i64 %i.bn, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bt, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !49, !noundef !5 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel: ; preds = %bb.q
  %i.bx = add nuw nsw i64 %i.bn, 1
  %i.by = icmp samesign ne i64 %i.bx, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i8 %i.bv, -33
  br i1 %i.bz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel
  %i.ca = add nuw nsw i64 %i.bn, 2
  %i.cb = icmp samesign ne i64 %i.ca, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.bv, -17
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel
  %i.cd = add nuw nsw i64 %i.bn, 3
  %i.ce = icmp samesign ne i64 %i.cd, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ce)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

.loopexit19.i.peel:                               ; preds = %bb.f
  br i1 %i.r, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.peel
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel: ; preds = %bb.r, %.loopexit19.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel, %bb.q, %bb.p, %bb.i, %.preheader.i.i.preheader
  %.sroa.998.sroa.0.4.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ %.sroa.998.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ true, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ 0, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel ]
  %.sroa.7.1.pn.peel = phi i64 [ %.sroa.7.1, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.7.1, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cf = icmp eq i64 %.sroa.7.1.pn.peel, 0
  br i1 %i.cf, label %.split249.us, label %bb.s

bb.s:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.7.1.pn.peel)
  %i.cg = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %.not77.peel = icmp eq i64 %i.cg, -1
  br i1 %.not77.peel, label %bb.t, label %.split251.us

bb.t:                                             ; preds = %bb.s
  %.sroa.0135.0.copyload.peel = load ptr, ptr %i.p, align 8 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.sroa.4136.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0135.0.copyload.peel, ptr %i.g, align 8
  store <2 x i64> %i.ch, ptr %.sroa.4148.0..sroa_idx, align 8
  %i.ci = icmp eq ptr %.sroa.0135.0.copyload.peel, inttoptr (i64 -1 to ptr)
  br i1 %i.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.peel unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.peel: ; preds = %bb.u
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.peel, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread, label %.preheader.i.i

.split.us:                                        ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.sroa.14.0.copyload) ]
  %i.cj = sub i64 %.sroa.038.sroa.15.0.copyload, %.sroa.038.sroa.6.0.copyload
  %umax49.i88.us = tail call i64 @llvm.umax.i64(i64 %.sroa.038.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %i.ck = add i64 %.sroa.038.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.ck, %.sroa.038.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %exitcond.not.i90.us375.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.15.0.copyload
  %invariant.op459 = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %.not181.us378 = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us, %.split.us
  %.sroa.19.0226.us = phi i64 [ %.sroa.038.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us ] ; 3 uses
  %.sroa.31102.0225.us = phi i64 [ %.sroa.038.sroa.10.0.copyload, %.split.us ], [ %.sroa.31102.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us ] ; 3 uses
  %.sroa.41.0224.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us ] ; 7 uses
  %i.cl = icmp eq i64 %.sroa.31102.0225.us, -1
  %i.cm = add i64 %.sroa.19.0226.us, %i.o         ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.038.sroa.13.0.copyload ; 2 uses
  br i1 %i.cl, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  br i1 %i.cn, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

.lr.ph.i.us:                                      ; preds = %bb.w, %.sink.split.i80.us
  %i.co = phi i64 [ %.sink.i.us, %.sink.split.i80.us ], [ %.sroa.31102.0225.us, %bb.w ] ; 3 uses
  %i.cp = phi i64 [ %i.ds, %.sink.split.i80.us ], [ %i.cm, %bb.w ]
  %i.cq = phi i64 [ %.ph71.i.us, %.sink.split.i80.us ], [ %.sroa.19.0226.us, %bb.w ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !50, !noundef !5
  %i.ct = and i8 %i.cs, 63
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %.sroa.038.sroa.7.0.copyload
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.co, i64 %.sroa.038.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %exitcond.not.i.us370.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.038.sroa.15.0.copyload
  br i1 %exitcond.not.i.us370.not, label %.lr.ph, label %.preheader182.us.preheader

bb.y:                                             ; preds = %bb.z
  %i.cy = add nuw i64 %.sroa.02.0.i.us371, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cy, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader182.us.preheader, label %.lr.ph

.preheader182.us.preheader:                       ; preds = %bb.y, %bb.x
  %i.cz = icmp ult i64 %i.co, %.sroa.038.sroa.4.0.copyload
  br i1 %i.cz, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.sroa.02.0.i.us371 = phi i64 [ %i.cy, %bb.y ], [ %.sroa.0.0.i.i.us, %bb.x ] ; 4 uses
  %i.da = add i64 %.sroa.02.0.i.us371, %i.cq      ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.038.sroa.13.0.copyload
  br i1 %i.db, label %bb.z, label %.split230.us

bb.z:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i.us371
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !51, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.da
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !50, !noundef !5
  %.not21.i.us = icmp eq i8 %i.dd, %i.df
  br i1 %.not21.i.us, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.reass.reass = add i64 %i.cq, %invariant.op
  %i.dg = add i64 %.reass.reass, %.sroa.02.0.i.us371
  br label %.sink.split.i80.us

.preheader182.us:                                 ; preds = %bb.ac
  %i.dh = icmp ult i64 %i.co, %i.di
  br i1 %i.dh, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge

.lr.ph373:                                        ; preds = %.preheader182.us.preheader, %.preheader182.us
  %.sroa.2.0.i.us372 = phi i64 [ %i.di, %.preheader182.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader182.us.preheader ]
  %i.di = add i64 %.sroa.2.0.i.us372, -1          ; 6 uses
  %i.dj = icmp ult i64 %i.di, %.sroa.038.sroa.15.0.copyload
  br i1 %i.dj, label %bb.ab, label %.split233.us

bb.ab:                                            ; preds = %.lr.ph373
  %i.dk = add i64 %i.di, %i.cq                    ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dl, label %bb.ac, label %.split236.us

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.di
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !51, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !50, !noundef !5
  %.not.i81.us = icmp eq i8 %i.dn, %i.dp
  br i1 %.not.i81.us, label %.preheader182.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %i.cq, %.sroa.038.sroa.6.0.copyload
  br label %.sink.split.i80.us

bb.ae:                                            ; preds = %.lr.ph.i.us
  %i.dr = add i64 %i.cq, %.sroa.038.sroa.15.0.copyload
  br label %.sink.split.i80.us

.sink.split.i80.us:                               ; preds = %bb.ae, %bb.ad, %bb.aa
  %.sink.i.us = phi i64 [ %i.cj, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.ae ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.dq, %bb.ad ], [ %i.dg, %bb.aa ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.ds = add i64 %.ph71.i.us, %i.o               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dt, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

.preheader182.us.preheader._crit_edge:            ; preds = %.preheader182.us.preheader, %.preheader182.us
  %i.du = add i64 %i.cq, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

bb.af:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  br i1 %i.cn, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

.lr.ph.i85.us:                                    ; preds = %bb.af, %bb.am
  %i.dv = phi i64 [ %i.eu, %bb.am ], [ %i.cm, %bb.af ]
  %i.dw = phi i64 [ %i.et, %bb.am ], [ %.sroa.19.0226.us, %bb.af ] ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !52, !noundef !5
  %i.dz = and i8 %i.dy, 63
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %.sroa.038.sroa.7.0.copyload
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.al, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i85.us
  br i1 %exitcond.not.i90.us375.not, label %.lr.ph377, label %.preheader.us.preheader.a

.preheader:                                       ; preds = %bb.ag
  %i.ee = add nuw i64 %.sroa.02.0.i89.us376, 1    ; 2 uses
  %exitcond.not.i90.us = icmp eq i64 %i.ee, %umax49.i88.us
  br i1 %exitcond.not.i90.us, label %.preheader.us.preheader.a, label %.lr.ph377

.preheader.us.preheader.a:                        ; preds = %.preheader, %.preheader.preheader
  br i1 %.not181.us378, label %.preheader.us.preheader._crit_edge, label %.lr.ph380.a

.lr.ph377:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i89.us376 = phi i64 [ %i.ee, %.preheader ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ef = add i64 %.sroa.02.0.i89.us376, %i.dw    ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.038.sroa.13.0.copyload
  br i1 %i.eg, label %bb.ag, label %.split239.us

bb.ag:                                            ; preds = %.lr.ph377
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i89.us376
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !53, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ef
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !52, !noundef !5
  %.not21.i92.us.a = icmp eq i8 %i.ei, %i.ek
  br i1 %.not21.i92.us.a, label %.preheader, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.reass337.reass = add i64 %i.dw, %invariant.op459
  %3 = add i64 %.reass337.reass, %.sroa.02.0.i89.us376
  br label %bb.am

.preheader.us:                                    ; preds = %bb.aj
  %.not181.us = icmp eq i64 %4, 0
  br i1 %.not181.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph380.a

.lr.ph380.a:                                      ; preds = %.preheader.us.preheader.a, %.preheader.us
  %.sroa.2.0.i93.us379 = phi i64 [ %4, %.preheader.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.us.preheader.a ]
  %4 = add i64 %.sroa.2.0.i93.us379, -1           ; 5 uses
  br i1 %.first_iter, label %bb.ai, label %.split243.us

bb.ai:                                            ; preds = %.lr.ph380.a
  %i.el = add i64 %4, %i.dw                       ; 3 uses
  %i.em = icmp ult i64 %i.el, %.sroa.038.sroa.13.0.copyload
  br i1 %i.em, label %bb.aj, label %.split246.us

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %4
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !53, !noundef !5
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.el
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !52, !noundef !5
  %.not.i94.us = icmp eq i8 %i.eo, %i.eq
  br i1 %.not.i94.us, label %.preheader.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = add i64 %.sroa.038.sroa.6.0.copyload, %i.dw
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i85.us
  %i.es = add i64 %i.dw, %.sroa.038.sroa.15.0.copyload
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %i.et = phi i64 [ %3, %bb.ah ], [ %i.es, %bb.al ], [ %i.er, %bb.ak ] ; 2 uses
  %i.eu = add i64 %i.et, %i.o                     ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ev, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.preheader.a, %.preheader.us
  %i.ew = add i64 %i.dw, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us: ; preds = %.sink.split.i80.us, %bb.am, %.preheader.us.preheader._crit_edge, %bb.af, %.preheader182.us.preheader._crit_edge, %bb.w
  %.sroa.51.2.us = phi i1 [ false, %.preheader182.us.preheader._crit_edge ], [ true, %bb.w ], [ true, %bb.am ], [ true, %bb.af ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %.sink.split.i80.us ]
  %.sroa.41.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %bb.w ], [ %.sroa.41.0224.us, %bb.am ], [ %.sroa.41.0224.us, %bb.af ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %.sink.split.i80.us ]
  %.sroa.31102.2.us = phi i64 [ 0, %.preheader182.us.preheader._crit_edge ], [ %.sroa.31102.0225.us, %bb.w ], [ -1, %bb.am ], [ -1, %bb.af ], [ -1, %.preheader.us.preheader._crit_edge ], [ %.sink.i.us, %.sink.split.i80.us ]
  %.sroa.19.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %bb.w ], [ %.sroa.038.sroa.13.0.copyload, %bb.am ], [ %.sroa.038.sroa.13.0.copyload, %bb.af ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %.sink.split.i80.us ]
  %.sroa.7.1.pn.us = phi i64 [ %i.cq, %.preheader182.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.w ], [ %.sroa.7.1, %bb.am ], [ %.sroa.7.1, %bb.af ], [ %i.dw, %.preheader.us.preheader._crit_edge ], [ %.sroa.7.1, %.sink.split.i80.us ] ; 2 uses
  %i.ex = icmp eq i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us
  br i1 %i.ex, label %.split249.us, label %bb.an

bb.an:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us
  %.sroa.4.1.i.us = sub nuw i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0224.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
  %i.ey = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %.not77.us = icmp eq i64 %i.ey, -1
  br i1 %.not77.us, label %bb.ao, label %.split251.us

bb.ao:                                            ; preds = %bb.an
  %.sroa.0135.0.copyload.us = load ptr, ptr %i.p, align 8 ; 2 uses
  %i.ez = load <2 x i64>, ptr %.sroa.4136.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0135.0.copyload.us, ptr %i.g, align 8
  store <2 x i64> %i.ez, ptr %.sroa.4148.0..sroa_idx, align 8
  %i.fa = icmp eq ptr %.sroa.0135.0.copyload.us, inttoptr (i64 -1 to ptr)
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.us unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.us: ; preds = %bb.ap
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i.us, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread, label %bb.v

.preheader.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit
  %.sroa.5.0227 = phi i64 [ %.sroa.5.5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit ], [ %.sroa.5.5.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel ] ; 15 uses
  %.sroa.41.0224 = phi i64 [ %.sroa.41.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit ], [ %.sroa.41.2.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel ] ; 4 uses
  %.sroa.998.sroa.0.0222 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit ], [ %.sroa.998.sroa.0.4.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.5.0227, 0
  br i1 %i.fb, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0227, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.aq
  %i.fc = icmp eq i64 %.sroa.5.0227, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fc, label %bb.as, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0227
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !45, !noalias !46, !noundef !5
  %i.ff = icmp sgt i8 %i.fe, -65
  br i1 %i.ff, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0227 ; 4 uses
  %i.fh = icmp samesign eq i64 %.sroa.5.0227, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fh, label %.loopexit19.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = load i8, ptr %i.fg, align 1, !noalias !47, !noundef !5 ; 5 uses
  %i.fj = icmp sgt i8 %i.fi, -1
  br i1 %i.fj, label %bb.au, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i: ; preds = %bb.at
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fl = and i8 %i.fi, 31
  %i.fm = zext nneg i8 %i.fl to i32               ; 3 uses
  %i.fn = add nuw nsw i64 %.sroa.5.0227, 1
  %i.fo = icmp samesign ne i64 %i.fn, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load i8, ptr %i.fk, align 1, !noalias !47, !noundef !5
  %i.fq = shl nuw nsw i32 %i.fm, 6
  %i.fr = and i8 %i.fp, 63
  %i.fs = zext nneg i8 %i.fr to i32               ; 2 uses
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = icmp samesign ugt i8 %i.fi, -33
  br i1 %i.fu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i, label %bb.av

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fw = add nuw nsw i64 %.sroa.5.0227, 2
  %i.fx = icmp samesign ne i64 %i.fw, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fx)
  %i.fy = load i8, ptr %i.fv, align 1, !noalias !47, !noundef !5
  %i.fz = shl nuw nsw i32 %i.fs, 6
  %i.ga = and i8 %i.fy, 63
  %i.gb = zext nneg i8 %i.ga to i32
  %i.gc = or disjoint i32 %i.fz, %i.gb            ; 2 uses
  %i.gd = shl nuw nsw i32 %i.fm, 12
  %i.ge = or disjoint i32 %i.gc, %i.gd
  %i.gf = icmp samesign ugt i8 %i.fi, -17
  br i1 %i.gf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i, label %bb.av

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.gh = add nuw nsw i64 %.sroa.5.0227, 3
  %i.gi = icmp samesign ne i64 %i.gh, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gi)
  %i.gj = load i8, ptr %i.gg, align 1, !noalias !47, !noundef !5
  %i.gk = shl nuw nsw i32 %i.fm, 18
  %i.gl = and i32 %i.gk, 1835008
  %i.gm = shl nuw nsw i32 %i.gc, 6
  %i.gn = and i8 %i.gj, 63
  %i.go = zext nneg i8 %i.gn to i32
  %i.gp = or disjoint i32 %i.gm, %i.go
  %i.gq = or disjoint i32 %i.gp, %i.gl
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gr = zext nneg i8 %i.fi to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ge, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.peel.i ], [ %i.gq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.peel.i ], [ %i.ft, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.peel.i ], [ %i.gr, %bb.au ] ; 4 uses
  %i.gs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gs)
  br i1 %.sroa.998.sroa.0.0222, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gt, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gu, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.gv, i64 3, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ax ], [ %..i.i.peel.i, %bb.ay ], [ 1, %bb.aw ]
  %i.gw = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0227 ; 23 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i = icmp ult i64 %i.gw, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.bb, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ba
  %i.gy = icmp eq i64 %i.gw, %.sroa.038.sroa.13.0.copyload
  br i1 %i.gy, label %bb.bc, label %.loopexit.i

bb.bb:                                            ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !45, !noalias !48, !noundef !5
  %i.hb = icmp sgt i8 %i.ha, -65
  br i1 %i.hb, label %bb.bc, label %.loopexit.i

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i, %bb.az
  %i.hc = icmp samesign eq i64 %i.gw, %.sroa.038.sroa.13.0.copyload
  br i1 %i.hc, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gw
  %i.he = load i8, ptr %i.hd, align 1, !noalias !49, !noundef !5 ; 3 uses
  %i.hf = icmp sgt i8 %i.he, -1
  br i1 %i.hf, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i: ; preds = %bb.bd
  %i.hg = add nuw nsw i64 %i.gw, 1
  %i.hh = icmp samesign ne i64 %i.hg, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hh)
  %i.hi = icmp samesign ugt i8 %i.he, -33
  br i1 %i.hi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i
  %i.hj = add nuw nsw i64 %i.gw, 2
  %i.hk = icmp samesign ne i64 %i.hj, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ugt i8 %i.he, -17
  br i1 %i.hl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i
  %i.hm = add nuw nsw i64 %i.gw, 3
  %i.hn = icmp samesign ne i64 %i.hm, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hn)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

.loopexit.i:                                      ; preds = %bb.bb, %.split.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i, %bb.o, %.split.i.i.i.i.peel, %bb.e, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.038.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.e ], [ %i.bn, %.split.i.i.i.i.peel ], [ %i.bn, %bb.o ], [ %i.gw, %bb.bb ], [ %i.gw, %.split.i.i.i.i ], [ %.sroa.5.0227, %bb.ar ], [ %.sroa.5.0227, %.split.i.i.i.peel.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.038.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #21, !noalias !48
  unreachable

.loopexit19.i:                                    ; preds = %bb.as
  br i1 %.sroa.998.sroa.0.0222, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.be

.split243.us:                                     ; preds = %.lr.ph380.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !54
  unreachable

.split246.us:                                     ; preds = %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !54
  unreachable

.split239.us:                                     ; preds = %.lr.ph377
  %i.ho = add i64 %i.dw, %.sroa.038.sroa.4.0.copyload
  %umax.i91 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.ho)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i91, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !54
  unreachable

.split233.us:                                     ; preds = %.lr.ph373
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !55
  unreachable

.split236.us:                                     ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !55
  unreachable

.split230.us:                                     ; preds = %.lr.ph
  %i.hp = add i64 %i.cq, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hp)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !55
  unreachable

bb.be:                                            ; preds = %.loopexit19.i
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i, %bb.bd, %bb.bc, %bb.av, %.loopexit19.i, %bb.be
  %.sroa.51.2 = phi i1 [ true, %bb.be ], [ false, %.loopexit19.i ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i ], [ false, %bb.bd ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0224, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i ]
  %.sroa.7.1.pn = phi i64 [ %.sroa.7.1, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit14.i.i.i.i ] ; 2 uses
  %i.hq = icmp eq i64 %.sroa.7.1.pn, %.sroa.41.0224
  br i1 %i.hq, label %.split249.us, label %bb.bk

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.7.1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.hr = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.hs = trunc nuw i64 %i.hr to i1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !range !56, !noundef !5 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.hs, label %bb.bf, label %bb.bg, !prof !8

bb.bf:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  %i.hw = load i64, ptr %i.hv, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hu, i64 %i.hw) #21
  unreachable

bb.bg:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.thread
  %i.hx = load ptr, ptr %i.hv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hy = icmp ule i64 %.sroa.7.1, %i.hu
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not76 = icmp eq i64 %.sroa.7.1, 0
  br i1 %.not76, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hu, ptr %i.hz, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.1, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.7.1, i1 false)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bn, %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseReE0CsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %bb.b, %bb.bh
  ret void

.split249.us:                                     ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.peel, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ia = load i64, ptr %i.c, align 8, !range !7, !noundef !5
  %i.ib = trunc nuw i64 %i.ia to i1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !range !56, !noundef !5 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ib, label %bb.bl, label %bb.bm, !prof !8

bb.bk:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsdrBSO4t3gk1_22influxdb3_test_helpers.exit
  %.sroa.4.1.i = sub nuw i64 %.sroa.7.1.pn, %.sroa.41.0224
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
  %i.if = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %.not77 = icmp eq i64 %i.if, -1
  br i1 %.not77, label %bb.bw, label %.split251.us

bb.bl:                                            ; preds = %.split249.us
  %i.ig = load i64, ptr %i.ie, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.id, i64 %i.ig) #21
  unreachable

bb.bm:                                            ; preds = %.split249.us
  %i.ih = load ptr, ptr %i.ie, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ii = icmp ule i64 %2, %i.id
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not78 = icmp eq i64 %2, 0
  br i1 %.not78, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.id, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ih, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.bj

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.bn

.split251.us:                                     ; preds = %bb.s, %bb.bk, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %bb.bp, !noalias !59

bb.bp:                                            ; preds = %bb.br, %.split251.us
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #22
          to label %common.resume unwind label %bb.bv, !noalias !60

bb.bq:                                            ; preds = %.split251.us
  %i.ik = load i64, ptr %i.a, align 8, !range !7, !noalias !59, !noundef !5
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !56, !noalias !59, !noundef !5 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.il, label %bb.br, label %bb.bs, !prof !8

bb.br:                                            ; preds = %bb.bq
  %i.ip = load i64, ptr %i.io, align 8, !noalias !59
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.in, i64 %i.ip) #21
          to label %bb.bu unwind label %bb.bp, !noalias !59

bb.bs:                                            ; preds = %bb.bq
  %i.iq = load ptr, ptr %i.io, align 8, !noalias !59, !nonnull !5, !noundef !5 ; 2 uses
  %i.ir = icmp ule i64 %2, %i.in
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseReE0CsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !61
  br label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseReE0CsdrBSO4t3gk1_22influxdb3_test_helpers.exit

bb.bu:                                            ; preds = %bb.br
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !60
  unreachable

common.resume:                                    ; preds = %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.ij, %bb.bp ], [ %lpad.loopexit.split-lp424, %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseReE0CsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !alias.scope !61
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.it, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.in, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iq, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bj

bb.bw:                                            ; preds = %bb.bk
  %.sroa.0135.0.copyload = load ptr, ptr %i.p, align 8 ; 2 uses
  %i.iu = load <2 x i64>, ptr %.sroa.4136.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0135.0.copyload, ptr %i.g, align 8
  store <2 x i64> %i.iu, ptr %.sroa.4148.0..sroa_idx, align 8
  %i.iv = icmp eq ptr %.sroa.0135.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.iv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i.i unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
