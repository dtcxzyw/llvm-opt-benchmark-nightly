Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/json?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.absl::lts_20250512::Status" = type { i64 }
%"class.google::protobuf::io::ArrayInputStream" = type { %"class.google::protobuf::io::ZeroCopyInputStream", ptr, i32, i32, i32, i32 }
%"class.google::protobuf::io::ZeroCopyInputStream" = type { ptr }
%"class.google::protobuf::io::StringOutputStream" = type { %"class.google::protobuf::io::ZeroCopyOutputStream", ptr }
%"class.google::protobuf::io::ZeroCopyOutputStream" = type { ptr }
%"struct.google::protobuf::json_internal::ParseOptions" = type <{ i8, i8, [2 x i8], i32, i8, [3 x i8] }>

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12PrintOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(6) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10, !range !11, !noundef !12
  %i.d = load i8, ptr %5, align 1, !tbaa !13, !range !11, !noundef !12
  %.sroa.9.0.insert.ext = zext nneg i8 %i.d to i48
  %.sroa.9.0.insert.shift = shl nuw nsw i48 %.sroa.9.0.insert.ext, 40
  %.sroa.8.0.insert.ext = zext nneg i8 %i.c to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 32
  %6 = load i32, ptr %i.a, align 1
  %7 = zext i32 %6 to i48
  %op.rdx = or disjoint i48 %.sroa.8.0.insert.shift, %7
  %op.rdx10 = or disjoint i48 %op.rdx, %.sroa.9.0.insert.shift
  tail call void @_ZN6google8protobuf13json_internal18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i48 %op.rdx10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6google8protobuf13json_internal18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i48) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json18BinaryToJsonStringEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PSA_RKNS1_12PrintOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(6) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4json18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12PrintOptionsE.exit:
  %6 = alloca %"class.google::protobuf::io::ArrayInputStream", align 8 ; 4 uses
  %7 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.a = load ptr, ptr %3, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = trunc i64 %i.c to i32
  call void @_ZN6google8protobuf2io16ArrayInputStreamC1EPKvii(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.a, i32 noundef %i.d, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %4)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10, !range !11, !noalias !29, !noundef !12
  %i.h = load i8, ptr %5, align 1, !tbaa !13, !range !11, !noalias !29, !noundef !12
  %.sroa.9.0.insert.ext.i = zext nneg i8 %i.h to i48
  %.sroa.9.0.insert.shift.i = shl nuw nsw i48 %.sroa.9.0.insert.ext.i, 40
  %.sroa.8.0.insert.ext.i = zext nneg i8 %i.g to i48
  %.sroa.8.0.insert.shift.i = shl nuw nsw i48 %.sroa.8.0.insert.ext.i, 32
  %8 = load i32, ptr %i.e, align 1
  %9 = zext i32 %8 to i48
  %op.rdx = or disjoint i48 %.sroa.8.0.insert.shift.i, %9
  %op.rdx9 = or disjoint i48 %op.rdx, %.sroa.9.0.insert.shift.i
  call void @_ZN6google8protobuf13json_internal18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i48 %op.rdx9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret void
}

declare void @_ZN6google8protobuf2io16ArrayInputStreamC1EPKvii(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12ParseOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"struct.google::protobuf::json_internal::ParseOptions", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15, !range !11, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16, !range !11, !noundef !12
  %i.e = load i8, ptr %5, align 1, !tbaa !17, !range !11, !noundef !12
  store i8 %i.b, ptr %6, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !18
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 100, ptr %.sroa.77.0..sroa_idx, align 4, !tbaa !19
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.e, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !18
  tail call void @_ZN6google8protobuf13json_internal18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.google::protobuf::json_internal::ParseOptions") align 8 %6)
  ret void
}

declare void @_ZN6google8protobuf13json_internal18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef byval(%"struct.google::protobuf::json_internal::ParseOptions") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json18JsonToBinaryStringEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EPSA_RKNS1_12ParseOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 %3, ptr %4, ptr noundef %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.google::protobuf::json_internal::ParseOptions", align 8 ; 7 uses
  %8 = alloca %"class.google::protobuf::io::ArrayInputStream", align 8 ; 4 uses
  %9 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  %i.a = trunc i64 %3 to i32
  call void @_ZN6google8protobuf2io16ArrayInputStreamC1EPKvii(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %4, i32 noundef %i.a, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15, !range !11, !noalias !32, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16, !range !11, !noalias !32, !noundef !12
  %i.f = load i8, ptr %6, align 1, !tbaa !17, !range !11, !noalias !32, !noundef !12
  store i8 %i.c, ptr %7, align 8, !tbaa !18, !noalias !32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !18, !noalias !32
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 100, ptr %.sroa.77.0..sroa_idx.i, align 4, !tbaa !19, !noalias !32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.f, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !18, !noalias !32
  call void @_ZN6google8protobuf13json_internal18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull byval(%"struct.google::protobuf::json_internal::ParseOptions") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json19MessageToJsonStringERKNS0_7MessageEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_12PrintOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(6) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4json19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamERKNS1_12PrintOptionsE.exit:
  %4 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10, !range !11, !noalias !35, !noundef !12
  %i.d = load i8, ptr %3, align 1, !tbaa !13, !range !11, !noalias !35, !noundef !12
  %.sroa.9.0.insert.ext.i = zext nneg i8 %i.d to i48
  %.sroa.9.0.insert.shift.i = shl nuw nsw i48 %.sroa.9.0.insert.ext.i, 40
  %.sroa.8.0.insert.ext.i = zext nneg i8 %i.c to i48
  %.sroa.8.0.insert.shift.i = shl nuw nsw i48 %.sroa.8.0.insert.ext.i, 32
  %5 = load i32, ptr %i.a, align 1
  %6 = zext i32 %5 to i48
  %op.rdx = or disjoint i48 %.sroa.8.0.insert.shift.i, %6
  %op.rdx4 = or disjoint i48 %op.rdx, %.sroa.9.0.insert.shift.i
  call void @_ZN6google8protobuf13json_internal19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i48 %op.rdx4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamERKNS1_12PrintOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(6) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10, !range !11, !noundef !12
  %i.d = load i8, ptr %3, align 1, !tbaa !13, !range !11, !noundef !12
  %.sroa.9.0.insert.ext = zext nneg i8 %i.d to i48
  %.sroa.9.0.insert.shift = shl nuw nsw i48 %.sroa.9.0.insert.ext, 40
  %.sroa.8.0.insert.ext = zext nneg i8 %i.c to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 32
  %4 = load i32, ptr %i.a, align 1
  %5 = zext i32 %4 to i48
  %op.rdx = or disjoint i48 %.sroa.8.0.insert.shift, %5
  %op.rdx8 = or disjoint i48 %op.rdx, %.sroa.9.0.insert.shift
  tail call void @_ZN6google8protobuf13json_internal19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i48 %op.rdx8)
  ret void
}

declare void @_ZN6google8protobuf13json_internal19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamENS1_13WriterOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i48) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json19JsonStringToMessageESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7MessageERKNS1_12ParseOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %1, ptr %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4json19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageERKNS1_12ParseOptionsE.exit:
  %5 = alloca %"class.google::protobuf::io::ArrayInputStream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.a = trunc i64 %1 to i32
  call void @_ZN6google8protobuf2io16ArrayInputStreamC1EPKvii(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, i32 noundef %i.a, i32 noundef -1)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.c = load i16, ptr %i.b, align 1, !noalias !38
  %i.d = zext i16 %i.c to i64
  %.sroa.0.1.insert.insert.i = or disjoint i64 %i.d, 429496729600
  %i.e = load i8, ptr %4, align 1, !tbaa !17, !range !11, !noalias !38, !noundef !12
  call void @_ZN6google8protobuf13json_internal19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull %5, ptr noundef %3, i64 %.sroa.0.1.insert.insert.i, i8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4json19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageERKNS1_12ParseOptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.b = load i16, ptr %i.a, align 1
  %i.c = zext i16 %i.b to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %i.c, 429496729600
  %i.d = load i8, ptr %3, align 1, !tbaa !17, !range !11, !noundef !12
  tail call void @_ZN6google8protobuf13json_internal19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr noundef %2, i64 %.sroa.0.1.insert.insert, i8 %i.d)
  ret void
}

declare void @_ZN6google8protobuf13json_internal19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageENS1_12ParseOptionsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef, ptr noundef, i64, i8) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"_ZTSN6google8protobuf4json12PrintOptionsE", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5}
!10 = !{!9, !8, i64 5}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!9, !8, i64 0}
!14 = !{!"_ZTSN6google8protobuf4json12ParseOptionsE", !8, i64 0, !8, i64 1, !8, i64 2}
!15 = !{!14, !8, i64 1}
!16 = !{!14, !8, i64 2}
!17 = !{!14, !8, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, i1 true, !"_ZN6google8protobuf4json18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12PrintOptionsE"}
!21 = distinct !{!21, !20, !"_ZN6google8protobuf4json18BinaryToJsonStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12PrintOptionsE: argument 0"}
!22 = !{!"any pointer", !4, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !4, i64 16}
!27 = !{!26, !23, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!21}
!30 = distinct !{!30, i1 true, !"_ZN6google8protobuf4json18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12ParseOptionsE"}
!31 = distinct !{!31, !30, !"_ZN6google8protobuf4json18JsonToBinaryStreamEPNS0_4util12TypeResolverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io19ZeroCopyInputStreamEPNSD_20ZeroCopyOutputStreamERKNS1_12ParseOptionsE: argument 0"}
!32 = !{!31}
!33 = distinct !{!33, i1 true, !"_ZN6google8protobuf4json19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamERKNS1_12PrintOptionsE"}
!34 = distinct !{!34, !33, !"_ZN6google8protobuf4json19MessageToJsonStreamERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamERKNS1_12PrintOptionsE: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 true, !"_ZN6google8protobuf4json19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageERKNS1_12ParseOptionsE"}
!37 = distinct !{!37, !36, !"_ZN6google8protobuf4json19JsonStreamToMessageEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageERKNS1_12ParseOptionsE: argument 0"}
!38 = !{!37}
end_hunk_0
