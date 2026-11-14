Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/rustix-ab0bfa5c3d9cae73.rustix.ed5c5aaaf12e4ad2-cgu.15?download=true
inline.NumInlined: 39
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4, !guid !3
@1 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1, !guid !3
@2 = private unnamed_addr constant [6 x i8] c"CREATE", align 1, !guid !3
@3 = private unnamed_addr constant [7 x i8] c"REPLACE", align 1, !guid !3
@4 = private unnamed_addr constant <{ ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8] }> <{ ptr @2, [12 x i8] c"\06\00\00\00\00\00\00\00\01\00\00\00", [4 x i8] undef, ptr @3, [12 x i8] c"\07\00\00\00\00\00\00\00\02\00\00\00", [4 x i8] undef, ptr inttoptr (i64 1 to ptr), [12 x i8] c"\00\00\00\00\00\00\00\00\FF\FF\FF\FF", [4 x i8] undef }>, align 8, !guid !3

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvMs6_NtNtCsknsSkIKTXOw_6rustix4path7dec_intNtB6_6DecInt3newlEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([22 x i8]) align 1 captures(none) dereferenceable(22) %0, i32 noundef %1) unnamed_addr #0 !guid !5 {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 4 uses
  %.sroa.3.0.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %i.b, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.012 = phi i32 [ %.sroa.3.0.i, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ] ; 6 uses
  %i.c = add nuw nsw i64 %.sroa.0.0, 1            ; 2 uses
  %2 = icmp samesign ult i64 %.sroa.0.0, 21
  tail call void @llvm.assume(i1 %2)
  %i.d = urem i32 %.sroa.0.012, 10
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = udiv i32 %.sroa.0.012, 10
  %i.g = sub nuw nsw i64 20, %.sroa.0.0
  %i.h = or disjoint i8 %i.e, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  store i8 %i.h, ptr %i.i, align 1
  %i.j = icmp ult i32 %.sroa.0.012, 10
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %1, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i64 %.sroa.0.0, 20
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 19, %.sroa.0.0
  %i.n = add nuw nsw i64 %.sroa.0.0, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 45, ptr %i.o, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.1 = phi i64 [ %i.n, %bb.d ], [ %i.c, %bb.c ]
  %i.p = trunc nuw nsw i64 %.sroa.0.1 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.q, ptr noundef nonnull align 1 dereferenceable(21) %i.a, i64 21, i1 false)
  store i8 %i.p, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECsknsSkIKTXOw_6rustix(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 !guid !6 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsknsSkIKTXOw_6rustix(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 !guid !8 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtNtCsknsSkIKTXOw_6rustix4path7dec_intNtB5_6DecIntNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(22) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !11 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !12, !alias.scope !13, !noundef !4 ; 2 uses
  %i.b = icmp ult i8 %i.a, 22
  tail call void @llvm.assume(i1 %i.b)
  %i.c = zext nneg i8 %i.a to i64                 ; 2 uses
  %i.d = add nsw i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = sub nuw nsw i64 21, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB7_10XattrFlagsNtNtCs4NRVxsYgnAr_4core3fmt6Binary3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !17 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18
  store i32 %i.b, ptr %i.a, align 4, !noalias !18
  %i.c = call noundef zeroext i1 @_RNvXsq_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_6Binary3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB7_10XattrFlagsNtNtCs4NRVxsYgnAr_4core3fmt5Octal3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !23 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  store i32 %i.b, ptr %i.a, align 4, !noalias !24
  %i.c = call noundef zeroext i1 @_RNvXss_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Octal3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB7_10XattrFlagsNtNtCs4NRVxsYgnAr_4core3fmt8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !29 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  store i32 %i.b, ptr %i.a, align 4, !noalias !30
  %i.c = call noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB7_10XattrFlagsNtNtCs4NRVxsYgnAr_4core3fmt8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !35 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i32 %i.b, ptr %i.a, align 4, !noalias !36
  %i.c = call noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !41 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !42, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  store i32 %i.c, ptr %i.a, align 4, !noalias !43
  %i.i = call noundef zeroext i1 @_RINvNtCs3kOHrDoa4ON_8bitflags6parser9to_writerNtNtNtCsknsSkIKTXOw_6rustix2fs5xattr10XattrFlagsQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEBO_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !45 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @_RINvNtCs3kOHrDoa4ON_8bitflags6parser9to_writerNtNtNtCsknsSkIKTXOw_6rustix2fs5xattr10XattrFlagsQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEBO_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB5_16InternalBitFlagsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !guid !46 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCs3kOHrDoa4ON_8bitflags6parser8from_strNtNtNtCsknsSkIKTXOw_6rustix2fs5xattr10XattrFlagsEBN_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !47, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtNtCsknsSkIKTXOw_6rustix2fs5xattr1__NtB5_16InternalBitFlagsNtNtCs4NRVxsYgnAr_4core3fmt6Binary3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !48 {
end_hunk_0
