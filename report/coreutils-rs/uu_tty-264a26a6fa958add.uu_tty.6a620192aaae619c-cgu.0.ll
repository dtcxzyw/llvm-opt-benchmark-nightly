Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tty-264a26a6fa958add.uu_tty.6a620192aaae619c-cgu.0?download=true
inline.NumInlined: 35
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [3 x i8] c"tty", align 1
@1 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@2 = private unnamed_addr constant [9 x i8] c"tty-about", align 1
@3 = private unnamed_addr constant [9 x i8] c"tty-usage", align 1
@4 = private unnamed_addr constant [6 x i8] c"silent", align 1
@5 = private unnamed_addr constant [5 x i8] c"quiet", align 1
@6 = private unnamed_addr constant [15 x i8] c"tty-help-silent", align 1

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs98gWJ9r8fEu_6uu_tty6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [640 x i8], align 8               ; 55 uses
  %.sroa.0 = alloca [488 x i8], align 8           ; 4 uses
  %.sroa.748.sroa.0.sroa.5 = alloca [112 x i8], align 8 ; 4 uses
  %.sroa.748.sroa.6 = alloca [12 x i8], align 4   ; 4 uses
  %i.c = alloca [640 x i8], align 8               ; 9 uses
  %i.d = alloca [712 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [712 x i8], align 8               ; 55 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 9) #12
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !alias.scope !4, !noalias !10 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.i, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.i, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 9) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !13
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.f, align 8, !alias.scope !21, !noalias !25 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i5, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.i4.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i6, align 8
  %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.i4.sroa.4.0.copyload = load i64, ptr %.sroa.5.i4.sroa.4.0..sroa.55.0..sroa_idx.i6.sroa_idx, align 8
  %.sroa.5.i4.sroa.0.0 = select i1 %i.n, ptr undef, ptr %.sroa.5.i4.sroa.0.0.copyload
  %.sroa.5.i4.sroa.4.0 = select i1 %i.n, i64 undef, i64 %.sroa.5.i4.sroa.4.0.copyload
  store i64 0, ptr %i.h, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  store i64 0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  store i64 -1, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  store i64 -1, ptr %.sroa.0.sroa.41.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  store i64 -1, ptr %.sroa.0.sroa.43.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  store i64 -1, ptr %.sroa.0.sroa.45.0..sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store i64 %.sroa.0.0.copyload.i5, ptr %.sroa.4.0..sroa_idx13, align 8, !alias.scope !25, !noalias !19
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  store ptr %.sroa.5.i4.sroa.0.0, ptr %.sroa.6.0..sroa_idx15, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  store i64 %.sroa.5.i4.sroa.4.0, ptr %.sroa.8.0..sroa_idx17, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i64 -1, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 536
  store i64 -1, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  store ptr @0, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 568
  store i64 3, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store ptr null, ptr %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.15.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store ptr null, ptr %.sroa.8.sroa.15.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  store ptr @1, ptr %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  store i64 25, ptr %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store ptr null, ptr %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.21.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  store ptr null, ptr %.sroa.8.sroa.21.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.23.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  store ptr null, ptr %.sroa.8.sroa.23.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.25.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  store ptr null, ptr %.sroa.8.sroa.25.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  store ptr null, ptr %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 696
  store i32 -1, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !25, !noalias !19
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 700
  %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 708
  store i8 0, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 128, ptr %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx17.sroa_idx, align 4
  store i32 128, ptr %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx17.sroa_idx, align 8
  %.val = load i64, ptr %i.e, align 8, !range !26, !noundef !13 ; 2 uses
  %i.p = icmp eq i64 %.val, 0
  br i1 %i.p, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !13, !noundef !13
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #12
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.748.sroa.0.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.748.sroa.6)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  store i64 -1, ptr %i.s, align 8, !alias.scope !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  store i64 -1, ptr %i.t, align 8, !alias.scope !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  store i8 -1, ptr %i.u, align 4, !alias.scope !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %i.v, align 8, !alias.scope !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.w, align 8, !alias.scope !27
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %i.x, align 8, !alias.scope !27
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %i.y, align 8, !alias.scope !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !alias.scope !27
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i64 0, ptr %i.b, align 8, !alias.scope !27
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 628 ; 2 uses
  store i32 -1, ptr %i.ac, align 4, !alias.scope !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i64 0, ptr %i.ad, align 8, !alias.scope !27
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %i.ae, align 8, !alias.scope !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.af, align 8, !alias.scope !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.ag, align 8, !alias.scope !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store i64 0, ptr %i.ah, align 8, !alias.scope !27
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !27
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !27
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !27
  store ptr @4, ptr %i.q, align 8
  store i64 6, ptr %i.r, align 8
  store ptr @4, ptr %i.z, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 6, ptr %i.ai, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #13, !noalias !38
  %i.aj = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !40, !noalias !38, !nonnull !13, !noundef !13 ; 3 uses
  store ptr @5, ptr %i.aj, align 8, !noalias !41
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx.i11, align 8, !noalias !41
  %.sroa.5.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i12, align 8, !noalias !41
  store i64 1, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !40, !noalias !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(488) %i.b, i64 488, i1 false)
  %.sroa.451.0.copyload = load i64, ptr %i.s, align 8, !alias.scope !42 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %.sroa.552.0.copyload = load ptr, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !42 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.748.sroa.0.sroa.5, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.748.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 15) #12
  %.sroa.059.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.260.0.copyload = load ptr, ptr %.sroa.260.0..sroa_idx, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.361.0.copyload = load i64, ptr %.sroa.361.0..sroa_idx, align 8
  %.0.val.off.i = add i64 %.sroa.451.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.552.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.552.0.copyload, i64 noundef %.sroa.451.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #12
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.c, ptr noundef nonnull align 8 dereferenceable(488) %.sroa.0, i64 488, i1 false)
  %.sroa.442.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store i64 %.sroa.059.0.copyload, ptr %.sroa.442.0..sroa_idx43, align 8
  %.sroa.645.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store ptr %.sroa.260.0.copyload, ptr %.sroa.645.0..sroa_idx46, align 8
  %.sroa.748.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store i64 %.sroa.361.0.copyload, ptr %.sroa.748.0..sroa_idx49, align 8
  %.sroa.748.sroa.0.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.748.sroa.0.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.748.sroa.0.sroa.5, i64 112, i1 false)
  %.sroa.748.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i32 115, ptr %.sroa.748.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx, align 8
  %.sroa.748.sroa.6.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.748.sroa.6.0..sroa.748.0..sroa_idx49.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.748.sroa.6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.0.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.748.sroa.6)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  store i8 2, ptr %i.ak, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.d, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !13
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) #12 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs98gWJ9r8fEu_6uu_tty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #2 {
bb.a:
  %i.a = mul i64 %1, 24                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #12
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12
  %i.g = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #12
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !26, !noundef !13 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14) #12
  %i.f = load i64, ptr %i.a, align 8, !range !45, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !46, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_0
