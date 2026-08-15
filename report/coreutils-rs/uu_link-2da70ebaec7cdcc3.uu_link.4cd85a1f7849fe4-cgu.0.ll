inline.NumInlined: 61
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5875614554295535572 to ptr), ptr inttoptr (i64 3467203893602029906 to ptr) }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCspz30MYDFtM_7uu_link }>, align 8
@2 = private unnamed_addr constant [4 x i8] c"link", align 1
@3 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@4 = private unnamed_addr constant [10 x i8] c"link-about", align 1
@5 = private unnamed_addr constant [10 x i8] c"link-usage", align 1
@6 = private unnamed_addr constant [5 x i8] c"FILES", align 1
@_RNvNtCspz30MYDFtM_7uu_link7options5FILES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @6, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCspz30MYDFtM_7uu_link6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link.exit:
  %i.a = alloca [640 x i8], align 8               ; 58 uses
  %i.b = alloca [640 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [712 x i8], align 8               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 4) #10
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !4, !noalias !10 ; 2 uses
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.h, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.h, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 10) #10
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.e, align 8, !alias.scope !13, !noalias !19 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i5, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.i4.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i6, align 8
  %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.i4.sroa.4.0.copyload = load i64, ptr %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx, align 8
  %.sroa.5.i4.sroa.0.0 = select i1 %i.i, ptr undef, ptr %.sroa.5.i4.sroa.0.0.copyload
  %.sroa.5.i4.sroa.4.0 = select i1 %i.i, i64 undef, i64 %.sroa.5.i4.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 10) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !22, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !22
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m) #10
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.d, align 8, !alias.scope !23, !noalias !29 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i12, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i11.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i13, align 8
  %.sroa.5.i11.sroa.4.0..sroa.55.0..sroa_idx.i13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.i11.sroa.4.0.copyload = load i64, ptr %.sroa.5.i11.sroa.4.0..sroa.55.0..sroa_idx.i13.sroa_idx, align 8
  %.sroa.5.i11.sroa.0.0 = select i1 %i.n, ptr undef, ptr %.sroa.5.i11.sroa.0.0.copyload
  %.sroa.5.i11.sroa.4.0 = select i1 %i.n, i64 undef, i64 %.sroa.5.i11.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.g, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store i64 %.sroa.0.0.copyload.i5, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store ptr %.sroa.5.i4.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  store i64 %.sroa.5.i4.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  store i64 %.sroa.0.0.copyload.i12, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store ptr %.sroa.5.i11.sroa.0.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i64 %.sroa.5.i11.sroa.4.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.11.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  store ptr @2, ptr %.sroa.0.sroa.6.sroa.11.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  store i64 4, ptr %.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.13.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  store ptr null, ptr %.sroa.0.sroa.6.sroa.13.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.15.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  store ptr null, ptr %.sroa.0.sroa.6.sroa.15.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.17.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store ptr @3, ptr %.sroa.0.sroa.6.sroa.17.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.18.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  store i64 25, ptr %.sroa.0.sroa.6.sroa.18.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.19.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  store ptr null, ptr %.sroa.0.sroa.6.sroa.19.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.21.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 640
  store ptr null, ptr %.sroa.0.sroa.6.sroa.21.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.23.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 656
  store ptr null, ptr %.sroa.0.sroa.6.sroa.23.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.25.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 672
  store ptr null, ptr %.sroa.0.sroa.6.sroa.25.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.27.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  store ptr null, ptr %.sroa.0.sroa.6.sroa.27.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.28.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  store <4 x i32> <i32 -1, i32 128, i32 128, i32 0>, ptr %.sroa.0.sroa.6.sroa.28.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %i.q, align 8, !alias.scope !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %i.r, align 8, !alias.scope !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 -1, ptr %i.s, align 4, !alias.scope !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store i64 -1, ptr %i.t, align 8, !alias.scope !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store i64 0, ptr %i.u, align 8, !alias.scope !32
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %i.w, align 8, !alias.scope !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.x, align 8, !alias.scope !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 0, ptr %i.y, align 8, !alias.scope !32
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 0, ptr %i.a, align 8, !alias.scope !32
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %i.aa, align 4, !alias.scope !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 0, ptr %i.ab, align 8, !alias.scope !32
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.ac, align 8, !alias.scope !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.ad, align 8, !alias.scope !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.ae, align 8, !alias.scope !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  store i64 0, ptr %i.af, align 8, !alias.scope !32
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !32
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 3 uses
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32
  store ptr @6, ptr %i.o, align 8
  store i64 5, ptr %i.p, align 8
  store i32 5, ptr %i.v, align 8
  store i64 1, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #10, !noalias !43
  %i.ag = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #10, !noalias !43 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.a, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link.exit.i.i.i, !prof !46

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #11, !noalias !43
  unreachable

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link.exit.i.i.i: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link.exit
  store i64 1, ptr %i.ag, align 8, !noalias !47
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !47
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !47
  %i.ai = ptrtoint ptr %i.ag to i64
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af) #12, !noalias !48
  %.pre.i.i.i = load ptr, ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !55, !noalias !48 ; 2 uses
  store i64 -5875614554295535572, ptr %.pre.i.i.i, align 8, !noalias !58
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !58
  store i64 1, ptr %.sroa.560.0..sroa_idx.i, align 8, !alias.scope !55, !noalias !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 464 ; 2 uses
  %i.ak = load i64, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !59, !noalias !62, !noundef !22 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !range !64, !alias.scope !59, !noalias !62, !noundef !22
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #12, !noalias !62
  br label %bb.c

bb.c:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link.exit.i.i.i, %bb.b
  %i.an = load ptr, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !59, !noalias !62, !nonnull !22, !noundef !22
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ak ; 4 uses
  store i64 %i.ai, ptr %i.ao, align 8, !noalias !65
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 ptrtoint (ptr @1 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !65
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !65
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !65
  %i.ap = add i64 %i.ak, 1
  store i64 %i.ap, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !59, !noalias !62
  %.sroa.0.sroa.0.0.copyload = load <80 x i8>, ptr %i.a, align 8, !alias.scope !66
  %.sroa.474.0.copyload = load i64, ptr %i.t, align 8, !alias.scope !66
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.677.0.copyload = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !alias.scope !66 ; 4 uses
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.880.0.copyload = load ptr, ptr %.sroa.880.0..sroa_idx, align 8, !alias.scope !66 ; 4 uses
  %.sroa.983.sroa.0.0.copyload = load <536 x i8>, ptr %i.u, align 8, !alias.scope !66
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.sroa.474.0.copyload.off = add i64 %.sroa.474.0.copyload, -4
  %switch = icmp ult i64 %.sroa.474.0.copyload.off, -5
  br i1 %switch, label %bb.d, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.880.0.copyload) ]
  %i.aq = load ptr, ptr %.sroa.880.0.copyload, align 8, !invariant.load !22, !noalias !72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.677.0.copyload) ]
  call void %i.aq(ptr noundef nonnull %.sroa.677.0.copyload) #13, !noalias !72, !inline_history !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.880.0.copyload, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !64, !invariant.load !22, !noalias !72 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.880.0.copyload, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !81, !invariant.load !22, !noalias !72
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.677.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.677.0.copyload, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #10, !noalias !72
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit: ; preds = %bb.c, %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  store <80 x i8> %.sroa.0.sroa.0.0.copyload, ptr %i.b, align 8, !alias.scope !82, !noalias !83
  %.sroa.474.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %.sroa.474.0..sroa_idx75, align 8, !alias.scope !82, !noalias !83
  %.sroa.983.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store <536 x i8> %.sroa.983.sroa.0.0.copyload, ptr %.sroa.983.0..sroa_idx84, align 8, !alias.scope !82, !noalias !83
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.g, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load i64, ptr %i.c, align 8, !range !64, !noundef !22 ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !22, !noundef !22
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #10
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCspz30MYDFtM_7uu_link(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECspz30MYDFtM_7uu_link.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECspz30MYDFtM_7uu_link.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #10
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECspz30MYDFtM_7uu_link.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECspz30MYDFtM_7uu_link.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCspz30MYDFtM_7uu_link(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noinline nounwind }
attributes #13 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{!5, !7, !8}
!5 = distinct !{!5, !6, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCspz30MYDFtM_7uu_link: argument 0"}
!6 = distinct !{!6, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCspz30MYDFtM_7uu_link"}
!7 = distinct !{!7, !6, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCspz30MYDFtM_7uu_link: argument 1"}
!8 = distinct !{!8, !9, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link: argument 2"}
!9 = distinct !{!9, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link"}
!10 = !{!11, !12}
!11 = distinct !{!11, !9, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link: argument 0"}
!12 = distinct !{!12, !9, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECspz30MYDFtM_7uu_link: argument 1"}
!13 = !{!14, !16, !17}
!14 = distinct !{!14, !15, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link: argument 0"}
!15 = distinct !{!15, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link"}
!16 = distinct !{!16, !15, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link: argument 1"}
!17 = distinct !{!17, !18, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 2"}
!18 = distinct !{!18, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 0"}
!21 = distinct !{!21, !18, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 1"}
!22 = !{}
!23 = !{!24, !26, !27}
!24 = distinct !{!24, !25, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link: argument 0"}
!25 = distinct !{!25, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link"}
!26 = distinct !{!26, !25, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCspz30MYDFtM_7uu_link: argument 1"}
!27 = distinct !{!27, !28, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 2"}
!28 = distinct !{!28, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 0"}
!31 = distinct !{!31, !28, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECspz30MYDFtM_7uu_link: argument 1"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvXsb_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3ArgNtNtCs6JMX4GRUq9U_4core7default7Default7default: argument 0"}
!34 = distinct !{!34, !"_RNvXsb_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3ArgNtNtCs6JMX4GRUq9U_4core7default7Default7default"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECspz30MYDFtM_7uu_link: argument 0"}
!37 = distinct !{!37, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECspz30MYDFtM_7uu_link"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECspz30MYDFtM_7uu_link: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECspz30MYDFtM_7uu_link: argument 0"}
!42 = distinct !{!42, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECspz30MYDFtM_7uu_link"}
!43 = !{!44, !41, !36, !39}
!44 = distinct !{!44, !45, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintEE3newCspz30MYDFtM_7uu_link: argument 0"}
!45 = distinct !{!45, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintEE3newCspz30MYDFtM_7uu_link"}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!41, !36, !39}
!48 = !{!49, !51, !53, !54, !36}
!49 = distinct !{!49, !50, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link: argument 1"}
!50 = distinct !{!50, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link"}
!51 = distinct !{!51, !52, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCspz30MYDFtM_7uu_link: argument 0"}
!52 = distinct !{!52, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCspz30MYDFtM_7uu_link"}
!53 = distinct !{!53, !52, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCspz30MYDFtM_7uu_link: argument 2"}
!54 = distinct !{!54, !52, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCspz30MYDFtM_7uu_link: argument 3"}
!55 = !{!56, !57, !41, !39}
!56 = distinct !{!56, !50, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCspz30MYDFtM_7uu_link: argument 0"}
!57 = distinct !{!57, !52, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCspz30MYDFtM_7uu_link: argument 1"}
!58 = !{!51, !54, !36}
!59 = !{!60, !57, !41, !39}
!60 = distinct !{!60, !61, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCspz30MYDFtM_7uu_link: argument 0"}
!61 = distinct !{!61, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCspz30MYDFtM_7uu_link"}
!62 = !{!63, !51, !53, !54, !36}
!63 = distinct !{!63, !61, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCspz30MYDFtM_7uu_link: argument 1"}
!64 = !{i64 0, i64 -9223372036854775808}
!65 = !{!51, !53, !36}
!66 = !{!36, !39}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link: argument 0"}
!69 = distinct !{!69, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link: argument 1"}
!72 = !{!73, !75, !77, !68, !71, !79}
!73 = distinct !{!73, !74, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16ValueParserInnerECspz30MYDFtM_7uu_link: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16ValueParserInnerECspz30MYDFtM_7uu_link"}
!75 = distinct !{!75, !76, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserECspz30MYDFtM_7uu_link: argument 0"}
!76 = distinct !{!76, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserECspz30MYDFtM_7uu_link"}
!77 = distinct !{!77, !78, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECspz30MYDFtM_7uu_link: argument 0"}
!78 = distinct !{!78, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECspz30MYDFtM_7uu_link"}
!79 = distinct !{!79, !69, !"_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECspz30MYDFtM_7uu_link: argument 2"}
!80 = distinct !{null, null, null, null, null}
!81 = !{i64 1, i64 536870913}
!82 = !{!68, !71}
!83 = !{!79}
end_hunk_0
