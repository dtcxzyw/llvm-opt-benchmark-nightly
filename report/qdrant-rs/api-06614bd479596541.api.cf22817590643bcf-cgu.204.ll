Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.204?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [7 x i8] c"Default", align 1
@1 = private unnamed_addr constant [6 x i8] c"Binary", align 1
@2 = private unnamed_addr constant [11 x i8] c"Scalar4Bits", align 1
@3 = private unnamed_addr constant [11 x i8] c"Scalar8Bits", align 1
@4 = private unnamed_addr constant [7 x i8] c"Setting", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt }>, align 8
@switch.table._RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt = private unnamed_addr constant [4 x i8] c"\07\06\0B\0B", align 8
@switch.table._RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt.1 = private unnamed_addr constant [4 x ptr] [ptr @0, ptr @1, ptr @2, ptr @3], align 8

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !8, !noundef !4 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 67108864
  %.not1.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

switch.lookup:                                    ; preds = %bb.a
  %i.k = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = zext nneg i32 %i.b to i64
  %switch.gep7 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB8_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1v_3fmt.1, i64 %i.l
  %switch.load8 = load ptr, ptr %switch.gep7, align 8
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load8, i64 noundef %switch.ext)
  br label %_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.f, %bb.e, %bb.d, %switch.lookup
  %.sroa.0.0.in = phi i1 [ %i.m, %switch.lookup ], [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encoding7VariantNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12
  store ptr %i.c, ptr %i.b, align 8, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  %i.e = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB5_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  %i.d = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 4}
!6 = distinct !{!6, i1 true, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt"}
!7 = distinct !{!7, !6, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt: argument 1"}
!8 = !{!7}
!9 = distinct !{!9, i1 true, !"_RNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB5_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!10 = distinct !{!10, !9, !"_RNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB5_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!11 = distinct !{!11, !9, !"_RNvXsl_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encodingNtB5_7VariantNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!12 = !{!11, !10}
end_hunk_0
