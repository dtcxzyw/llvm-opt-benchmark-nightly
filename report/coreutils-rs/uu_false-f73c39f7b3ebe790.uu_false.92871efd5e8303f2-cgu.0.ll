Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_false-f73c39f7b3ebe790.uu_false.92871efd5e8303f2-cgu.0?download=true
inline.NumInlined: 25
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [5 x i8] c"false", align 1
@1 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@2 = private unnamed_addr constant [11 x i8] c"false-about", align 1
@3 = private unnamed_addr constant [4 x i8] c"help", align 1
@4 = private unnamed_addr constant [15 x i8] c"false-help-text", align 1
@5 = private unnamed_addr constant [7 x i8] c"version", align 1
@6 = private unnamed_addr constant [18 x i8] c"false-version-text", align 1

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsczXM74sk5TG_8uu_false6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsczXM74sk5TG_8uu_false.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [640 x i8], align 8               ; 53 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [712 x i8], align 8               ; 55 uses
  %i.h = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 5) #3
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !18, !noalias !19 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.i, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.i, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 11) #3
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.e, align 8, !alias.scope !20, !noalias !21 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i5, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.i4.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i6, align 8
  %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.i4.sroa.4.0.copyload = load i64, ptr %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx, align 8
  %.sroa.5.i4.sroa.0.0 = select i1 %i.j, ptr undef, ptr %.sroa.5.i4.sroa.0.0.copyload
  %.sroa.5.i4.sroa.4.0 = select i1 %i.j, i64 undef, i64 %.sroa.5.i4.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.g, align 8
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store i64 %.sroa.0.0.copyload.i5, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store ptr %.sroa.5.i4.sroa.0.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  store i64 %.sroa.5.i4.sroa.4.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.12.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.12.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.14.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.14.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.18.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.4.sroa.18.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.20.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.4.sroa.20.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  store ptr @0, ptr %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.22.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  store i64 5, ptr %.sroa.0.sroa.4.sroa.22.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.23.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  store ptr null, ptr %.sroa.0.sroa.4.sroa.23.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  store ptr null, ptr %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.27.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store ptr @1, ptr %.sroa.0.sroa.4.sroa.27.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.28.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  store i64 25, ptr %.sroa.0.sroa.4.sroa.28.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.29.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  store ptr null, ptr %.sroa.0.sroa.4.sroa.29.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.31.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 640
  store ptr null, ptr %.sroa.0.sroa.4.sroa.31.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.33.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 656
  store ptr null, ptr %.sroa.0.sroa.4.sroa.33.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.35.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 672
  store ptr null, ptr %.sroa.0.sroa.4.sroa.35.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.37.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  store ptr null, ptr %.sroa.0.sroa.4.sroa.37.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.38.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  store <4 x i32> <i32 -1, i32 2621440, i32 2621440, i32 0>, ptr %.sroa.0.sroa.4.sroa.38.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.086.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.086.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 15) #3
  %.sroa.0229.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.2230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2230.0.copyload = load ptr, ptr %.sroa.2230.0..sroa_idx, align 8
  %.sroa.3231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3231.0.copyload = load i64, ptr %.sroa.3231.0..sroa_idx, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.086.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.086.sroa.5.0..sroa_idx, align 8
  %.sroa.086.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.086.sroa.7.0..sroa_idx, align 8
  %.sroa.086.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.086.sroa.9.0..sroa_idx, align 8
  %.sroa.086.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -1, ptr %.sroa.086.sroa.11.0..sroa_idx, align 8
  %.sroa.086.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %.sroa.086.sroa.13.0..sroa_idx, align 8
  %.sroa.086.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.14.0..sroa_idx, align 8
  %.sroa.086.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.16.0..sroa_idx, align 8
  %.sroa.086.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.18.0..sroa_idx, align 8
  %.sroa.086.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.20.0..sroa_idx, align 8
  %.sroa.086.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.22.0..sroa_idx, align 8
  %.sroa.086.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.24.0..sroa_idx, align 8
  %.sroa.086.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.26.0..sroa_idx, align 8
  %.sroa.086.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.28.0..sroa_idx, align 8
  %.sroa.086.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.sroa.086.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.31.0..sroa_idx, align 8
  %.sroa.086.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.086.sroa.33.0..sroa_idx, align 8
  %.sroa.086.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.35.0..sroa_idx, align 8
  %.sroa.086.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %.sroa.086.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.38.0..sroa_idx, align 8
  %.sroa.086.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.40.0..sroa_idx, align 8
  %.sroa.086.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.42.0..sroa_idx, align 8
  %.sroa.086.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %.sroa.086.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.086.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.45.0..sroa_idx, align 8
  %.sroa.086.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.086.sroa.47.0..sroa_idx, align 8
  %.sroa.086.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  store i64 0, ptr %.sroa.086.sroa.48.0..sroa_idx, align 8
  %.sroa.487.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  store i64 %.sroa.0229.0.copyload, ptr %.sroa.487.0..sroa_idx88, align 8
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store ptr %.sroa.2230.0.copyload, ptr %.sroa.690.0..sroa_idx91, align 8
  %.sroa.793.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  store i64 %.sroa.3231.0.copyload, ptr %.sroa.793.0..sroa_idx94, align 8
  %.sroa.793.sroa.5.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i64 -1, ptr %.sroa.793.sroa.5.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.7.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  store i64 -2, ptr %.sroa.793.sroa.7.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.9.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  store ptr @3, ptr %.sroa.793.sroa.9.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.10.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  store i64 4, ptr %.sroa.793.sroa.10.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.11.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store ptr @3, ptr %.sroa.793.sroa.11.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.12.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  store i64 4, ptr %.sroa.793.sroa.12.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.13.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  store ptr null, ptr %.sroa.793.sroa.13.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.15.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  store i32 -1, ptr %.sroa.793.sroa.15.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.16.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  store i32 -1, ptr %.sroa.793.sroa.16.0..sroa.793.0..sroa_idx94.sroa_idx, align 4
  %.sroa.793.sroa.17.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  store i32 0, ptr %.sroa.793.sroa.17.0..sroa.793.0..sroa_idx94.sroa_idx, align 8
  %.sroa.793.sroa.18.0..sroa.793.0..sroa_idx94.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 5, ptr %.sroa.793.sroa.18.0..sroa.793.0..sroa_idx94.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.d) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.h, ptr noundef nonnull align 8 dereferenceable(712) %i.g, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0152.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0152.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 18) #3
  %.sroa.0235.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2236.0.copyload = load ptr, ptr %.sroa.2236.0..sroa_idx, align 8
  %.sroa.3237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3237.0.copyload = load i64, ptr %.sroa.3237.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.0152.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0152.sroa.5.0..sroa_idx, align 8
  %.sroa.0152.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.0152.sroa.7.0..sroa_idx, align 8
  %.sroa.0152.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.0152.sroa.9.0..sroa_idx, align 8
  %.sroa.0152.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %.sroa.0152.sroa.11.0..sroa_idx, align 8
  %.sroa.0152.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.0152.sroa.13.0..sroa_idx, align 8
  %.sroa.0152.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.14.0..sroa_idx, align 8
  %.sroa.0152.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.16.0..sroa_idx, align 8
  %.sroa.0152.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.18.0..sroa_idx, align 8
  %.sroa.0152.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.20.0..sroa_idx, align 8
  %.sroa.0152.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.22.0..sroa_idx, align 8
  %.sroa.0152.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.24.0..sroa_idx, align 8
  %.sroa.0152.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.26.0..sroa_idx, align 8
  %.sroa.0152.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.28.0..sroa_idx, align 8
  %.sroa.0152.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.0152.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.31.0..sroa_idx, align 8
  %.sroa.0152.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0152.sroa.33.0..sroa_idx, align 8
  %.sroa.0152.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.35.0..sroa_idx, align 8
  %.sroa.0152.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.0152.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.38.0..sroa_idx, align 8
  %.sroa.0152.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.40.0..sroa_idx, align 8
  %.sroa.0152.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.42.0..sroa_idx, align 8
  %.sroa.0152.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.0152.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0152.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.45.0..sroa_idx, align 8
  %.sroa.0152.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0152.sroa.47.0..sroa_idx, align 8
  %.sroa.0152.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.0152.sroa.48.0..sroa_idx, align 8
  %.sroa.4153.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 %.sroa.0235.0.copyload, ptr %.sroa.4153.0..sroa_idx154, align 8
  %.sroa.6156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %.sroa.2236.0.copyload, ptr %.sroa.6156.0..sroa_idx157, align 8
  %.sroa.7159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i64 %.sroa.3237.0.copyload, ptr %.sroa.7159.0..sroa_idx160, align 8
  %.sroa.7159.sroa.5.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.7159.sroa.5.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.7.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.7159.sroa.7.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.9.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @5, ptr %.sroa.7159.sroa.9.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.10.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 7, ptr %.sroa.7159.sroa.10.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.11.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @5, ptr %.sroa.7159.sroa.11.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.12.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 7, ptr %.sroa.7159.sroa.12.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.13.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.7159.sroa.13.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.15.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %.sroa.7159.sroa.15.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.16.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.7159.sroa.16.0..sroa.7159.0..sroa_idx160.sroa_idx, align 4
  %.sroa.7159.sroa.17.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.7159.sroa.17.0..sroa.7159.0..sroa_idx160.sroa_idx, align 8
  %.sroa.7159.sroa.18.0..sroa.7159.0..sroa_idx160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 8, ptr %.sroa.7159.sroa.18.0..sroa.7159.0..sroa_idx160.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.h, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = distinct !{!4, i1 false, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsczXM74sk5TG_8uu_false"}
!5 = distinct !{!5, !4, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsczXM74sk5TG_8uu_false: argument 2"}
!6 = distinct !{!6, i1 false, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsczXM74sk5TG_8uu_false"}
!7 = distinct !{!7, !6, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsczXM74sk5TG_8uu_false: argument 1"}
!8 = distinct !{!8, !6, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsczXM74sk5TG_8uu_false: argument 0"}
!9 = distinct !{!9, !4, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsczXM74sk5TG_8uu_false: argument 1"}
!10 = distinct !{!10, !4, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsczXM74sk5TG_8uu_false: argument 0"}
!11 = distinct !{!11, i1 false, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsczXM74sk5TG_8uu_false"}
!12 = distinct !{!12, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsczXM74sk5TG_8uu_false: argument 2"}
!13 = distinct !{!13, i1 false, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsczXM74sk5TG_8uu_false"}
!14 = distinct !{!14, !13, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsczXM74sk5TG_8uu_false: argument 1"}
!15 = distinct !{!15, !13, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsczXM74sk5TG_8uu_false: argument 0"}
!16 = distinct !{!16, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsczXM74sk5TG_8uu_false: argument 1"}
!17 = distinct !{!17, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsczXM74sk5TG_8uu_false: argument 0"}
!18 = !{!8, !7, !5}
!19 = !{!10, !9}
!20 = !{!15, !14, !12}
!21 = !{!17, !16}
end_hunk_0
