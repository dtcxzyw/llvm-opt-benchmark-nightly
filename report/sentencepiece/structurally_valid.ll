Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/structurally_valid?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.google::protobuf::internal::UTF8StateMachineObj" = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.google::protobuf::internal::RemapEntry" = type { i8, i8, i16 }

@_ZN6google8protobuf8internalL27utf8acceptnonsurrogates_objE = internal constant %"struct.google::protobuf::internal::UTF8StateMachineObj" { i32 0, i32 256, i32 2304, i32 0, i32 8, i32 1, i32 538976288, i32 0, ptr @_ZN6google8protobuf8internalL23utf8acceptnonsurrogatesE, ptr @_ZN6google8protobuf8internalL34utf8acceptnonsurrogates_remap_baseE, ptr @_ZN6google8protobuf8internalL36utf8acceptnonsurrogates_remap_stringE, ptr @_ZN6google8protobuf8internalL28utf8acceptnonsurrogates_fastE }, align 8
@_ZN6google8protobuf8internalL23utf8acceptnonsurrogatesE = internal constant [2304 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\03\03\03\03\03\03\03\03\03\03\03\03\07\03\03\04\05\05\05\06\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F2\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0", align 16
@_ZN6google8protobuf8internalL34utf8acceptnonsurrogates_remap_baseE = internal constant [1 x %"struct.google::protobuf::internal::RemapEntry"] zeroinitializer, align 2
@_ZN6google8protobuf8internalL36utf8acceptnonsurrogates_remap_stringE = internal constant [1 x i8] zeroinitializer, align 1
@_ZN6google8protobuf8internalL28utf8acceptnonsurrogates_fastE = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 256) i32 @_ZN6google8protobuf8internal15UTF8GenericScanEPKNS1_19UTF8StateMachineObjEPKciPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !12
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 4 uses
  %i.g = icmp slt i32 %2, 7
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -7
  %i.i = select i1 %i.g, ptr %1, ptr %i.h         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = load i32, ptr %0, align 8, !tbaa !25
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = ptrtoint ptr %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.critedge3, %bb.b
  %.098 = phi ptr [ %1, %bb.b ], [ %.11, %.critedge3 ] ; 4 uses
  %i.w = ptrtoint ptr %.098 to i64
  %i.x = and i64 %i.w, 7                          ; 2 uses
  %.not149 = icmp ne i64 %i.x, 0
  %i.y = icmp ult ptr %.098, %i.f
  %or.cond150 = select i1 %.not149, i1 %i.y, i1 false
  br i1 %or.cond150, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.199151 = phi ptr [ %i.ae, %bb.d ], [ %.098, %bb.c ] ; 3 uses
  %i.z = load i8, ptr %.199151, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.199151, i64 1 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 7                        ; 2 uses
  %.not = icmp ne i64 %i.ag, 0
  %i.ah = icmp ult ptr %i.ae, %i.f
  %or.cond = select i1 %.not, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.d, %bb.c
  %.199.lcssa = phi ptr [ %.098, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %.lcssa141 = phi i64 [ %i.x, %bb.c ], [ %i.ag, %bb.d ]
  %i.ai = icmp eq i64 %.lcssa141, 0
  %i.aj = icmp ult ptr %.199.lcssa, %i.i
  %or.cond233 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond233, label %.lr.ph225, label %.critedge.thread

.lr.ph225:                                        ; preds = %.critedge, %.preheader138.backedge
  %.2100224 = phi ptr [ %i.an, %.preheader138.backedge ], [ %.199.lcssa, %.critedge ] ; 5 uses
  %i.ak = load i32, ptr %.2100224, align 4        ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2100224, i64 4
  %i.am = load i32, ptr %i.al, align 4            ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.2100224, i64 8 ; 3 uses
  %i.ao = sub i32 %i.ak, %i.r
  %i.ap = add i32 %i.ak, %i.t
  %i.aq = or i32 %i.ao, %i.ap
  %i.ar = sub i32 %i.am, %i.r
  %i.as = or i32 %i.aq, %i.ar
  %i.at = add i32 %i.am, %i.t
  %i.au = or i32 %i.as, %i.at
  %i.av = and i32 %i.au, -2139062144
  %.not111 = icmp eq i32 %i.av, 0
  %i.aw = lshr i32 %i.am, 8
  %i.ax = lshr i32 %i.am, 16
  %i.ay = lshr i32 %i.am, 24
  %4 = zext nneg i32 %i.ay to i64
  br i1 %.not111, label %.preheader138.backedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph225
  %i.az = lshr i32 %i.ak, 24
  %5 = zext nneg i32 %i.az to i64
  %i.ba = lshr i32 %i.ak, 16
  %i.bb = lshr i32 %i.ak, 8
  %i.bc = and i32 %i.ak, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = and i32 %i.bb, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = and i32 %i.ba, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 %5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = or i8 %i.bj, %i.bf
  %i.br = or i8 %i.bq, %i.bn
  %i.bs = or i8 %i.br, %i.bp
  %.not112 = icmp eq i8 %i.bs, 0
  br i1 %.not112, label %.split, label %.critedge.thread

.split:                                           ; preds = %bb.e
  %i.bt = and i32 %i.am, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = and i32 %i.aw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = and i32 %i.ax, 255
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 %4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = or i8 %i.ca, %i.bw
  %i.ci = or i8 %i.ch, %i.ce
  %i.cj = or i8 %i.ci, %i.cg
  %.fr = freeze i8 %i.cj
  %.not113 = icmp eq i8 %.fr, 0
  br i1 %.not113, label %.preheader138.backedge, label %.critedge.thread.loopexit.split.loop.exit

.preheader138.backedge:                           ; preds = %.lr.ph225, %.split
  %i.ck = icmp ult ptr %i.an, %i.i
  br i1 %i.ck, label %.lr.ph225, label %.critedge.thread

.critedge.thread.loopexit.split.loop.exit:        ; preds = %.split
  %i.cl = getelementptr inbounds nuw i8, ptr %.2100224, i64 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %bb.e, %.preheader138.backedge, %.critedge.thread.loopexit.split.loop.exit, %.critedge
  %.6 = phi ptr [ %.199.lcssa, %.critedge ], [ %i.cl, %.critedge.thread.loopexit.split.loop.exit ], [ %i.an, %.preheader138.backedge ], [ %.2100224, %bb.e ], [ %.199151, %.lr.ph ] ; 5 uses
  %i.cm = icmp ult ptr %.6, %i.f
  br i1 %i.cm, label %.lr.ph155.preheader, label %.critedge.thread._crit_edge

.lr.ph155.preheader:                              ; preds = %.critedge.thread
  %.6177 = ptrtoaddr ptr %.6 to i64
  %i.cn = getelementptr i8, ptr %.6, i64 %i.b
  %scevgep = getelementptr i8, ptr %i.cn, i64 %i.e
  %i.co = sub i64 0, %.6177
  %scevgep178 = getelementptr i8, ptr %scevgep, i64 %i.co ; 2 uses
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.f
  %.0154 = phi ptr [ %i.cy, %bb.f ], [ %i.n, %.lr.ph155.preheader ] ; 2 uses
  %.7153 = phi ptr [ %i.cv, %bb.f ], [ %.6, %.lr.ph155.preheader ] ; 4 uses
  %i.cp = load i8, ptr %.7153, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.0154, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13  ; 3 uses
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp ugt i8 %i.cs, -17
  br i1 %i.cu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph155
  %i.cv = getelementptr inbounds nuw i8, ptr %.7153, i64 1 ; 2 uses
  %i.cw = shl i32 %i.ct, %i.d
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.n, i64 %i.cx ; 2 uses
  %exitcond.not = icmp eq ptr %i.cv, %scevgep178
  br i1 %exitcond.not, label %.critedge.thread._crit_edge, label %.lr.ph155, !llvm.loop !16

bb.g:                                             ; preds = %.lr.ph155
  %i.cz = ptrtoint ptr %.0154 to i64
  %i.da = sub i64 %i.cz, %i.v
  %i.db = trunc i64 %i.da to i32
  %i.dc = load i32, ptr %i.u, align 4, !tbaa !29
  %i.dd = icmp ugt i32 %i.dc, %i.db
  br i1 %i.dd, label %.critedge3, label %.preheader137.preheader

.preheader137.preheader:                          ; preds = %bb.g
  %i.de = getelementptr inbounds i8, ptr %.7153, i64 -1 ; 3 uses
  %i.df = icmp ugt ptr %i.de, %1
  br i1 %i.df, label %.lr.ph227, label %.critedge3

.preheader137:                                    ; preds = %.lr.ph227
  %i.dg = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 3 uses
  %i.dh = icmp ugt ptr %i.dg, %1
  br i1 %i.dh, label %.lr.ph227, label %.critedge3, !llvm.loop !17

.lr.ph227:                                        ; preds = %.preheader137.preheader, %.preheader137
  %i.di = phi ptr [ %i.dg, %.preheader137 ], [ %i.de, %.preheader137.preheader ] ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = icmp slt i8 %i.dj, -64
  br i1 %i.dk, label %.preheader137, label %..critedge3.loopexit_crit_edge, !llvm.loop !17

.critedge.thread._crit_edge:                      ; preds = %.critedge.thread, %bb.f
  %.7.lcssa = phi ptr [ %scevgep178, %bb.f ], [ %.6, %.critedge.thread ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.cy, %bb.f ], [ %i.n, %.critedge.thread ]
  %i.dl = ptrtoint ptr %.0.lcssa to i64
  %i.dm = ptrtoint ptr %i.n to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !29
  %i.dq = icmp ugt i32 %i.dp, %i.do
  br i1 %i.dq, label %.thread134, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge.thread._crit_edge
  %i.dr = getelementptr inbounds i8, ptr %.7.lcssa, i64 -1 ; 3 uses
  %i.ds = icmp ugt ptr %i.dr, %1
  br i1 %i.ds, label %.lr.ph230, label %.thread134

.preheader:                                       ; preds = %.lr.ph230
  %i.dt = getelementptr inbounds i8, ptr %i.dv, i64 -1 ; 3 uses
  %i.du = icmp ugt ptr %i.dt, %1
  br i1 %i.du, label %.lr.ph230, label %.thread134, !llvm.loop !18

.lr.ph230:                                        ; preds = %.preheader.preheader, %.preheader
  %i.dv = phi ptr [ %i.dt, %.preheader ], [ %i.dr, %.preheader.preheader ] ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = icmp slt i8 %i.dw, -64
  br i1 %i.dx, label %.preheader, label %..thread134.loopexit_crit_edge, !llvm.loop !18

..critedge3.loopexit_crit_edge:                   ; preds = %.lr.ph227
  br label %.critedge3, !llvm.loop !17

.critedge3:                                       ; preds = %.preheader137, %.preheader137.preheader, %..critedge3.loopexit_crit_edge, %bb.g
  %.11 = phi ptr [ %.7153, %bb.g ], [ %i.di, %..critedge3.loopexit_crit_edge ], [ %i.de, %.preheader137.preheader ], [ %i.dg, %.preheader137 ] ; 2 uses
  %i.dy = icmp eq i8 %i.cs, -3
  br i1 %i.dy, label %bb.c, label %.thread134

..thread134.loopexit_crit_edge:                   ; preds = %.lr.ph230
  br label %.thread134, !llvm.loop !18

.thread134:                                       ; preds = %.critedge3, %.preheader, %.preheader.preheader, %..thread134.loopexit_crit_edge, %.critedge.thread._crit_edge
  %.297133 = phi i32 [ 240, %.preheader.preheader ], [ 241, %.critedge.thread._crit_edge ], [ 240, %.preheader ], [ 240, %..thread134.loopexit_crit_edge ], [ %i.ct, %.critedge3 ]
  %.11131 = phi ptr [ %i.dr, %.preheader.preheader ], [ %.7.lcssa, %.critedge.thread._crit_edge ], [ %i.dt, %.preheader ], [ %i.dv, %..thread134.loopexit_crit_edge ], [ %.11, %.critedge3 ]
  %i.dz = ptrtoint ptr %.11131 to i64
  %i.ea = ptrtoint ptr %1 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  store i32 %i.ec, ptr %3, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.thread134, %bb.a
  %.2103 = phi i32 [ 241, %bb.a ], [ %.297133, %.thread134 ]
  ret i32 %.2103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 256) i32 @_ZN6google8protobuf8internal24UTF8GenericScanFastAsciiEPKNS1_19UTF8StateMachineObjEPKciPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 0, ptr %3, align 4, !tbaa !12
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 4 uses
  %i.e = icmp slt i32 %2, 7
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -7
  %i.g = select i1 %i.e, ptr %1, ptr %i.f         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge4, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.aq, %.critedge4 ] ; 4 uses
  %i.i = ptrtoint ptr %.0 to i64
  %i.j = and i64 %i.i, 7                          ; 2 uses
  %.not50 = icmp ne i64 %i.j, 0
  %i.k = icmp ult ptr %.0, %i.d
  %or.cond51 = select i1 %.not50, i1 %i.k, i1 false
  br i1 %or.cond51, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.152 = phi ptr [ %i.n, %bb.d ], [ %.0, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %.152, align 1, !tbaa !13
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.152, i64 1 ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 7                          ; 2 uses
  %.not = icmp ne i64 %i.p, 0
  %i.q = icmp ult ptr %i.n, %i.d
  %or.cond = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %bb.d, %bb.c
  %.1.lcssa = phi ptr [ %.0, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %.lcssa = phi i64 [ %i.j, %bb.c ], [ %i.p, %bb.d ]
  %i.r = icmp eq i64 %.lcssa, 0
  %i.s = icmp ult ptr %.1.lcssa, %i.g
  %or.cond64 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond64, label %.lr.ph55, label %.critedge2

.lr.ph55:                                         ; preds = %.critedge, %bb.e
  %.254 = phi ptr [ %i.z, %bb.e ], [ %.1.lcssa, %.critedge ] ; 4 uses
  %i.t = load i32, ptr %.254, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.254, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = or i32 %i.v, %i.t
  %i.x = and i32 %i.w, -2139062144
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph55
  %i.z = getelementptr inbounds nuw i8, ptr %.254, i64 8 ; 3 uses
  %i.aa = icmp ult ptr %i.z, %i.g
  br i1 %i.aa, label %.lr.ph55, label %.critedge2, !llvm.loop !1

.critedge2:                                       ; preds = %.lr.ph, %bb.e, %.lr.ph55, %.critedge
  %.3 = phi ptr [ %.1.lcssa, %.critedge ], [ %.254, %.lr.ph55 ], [ %i.z, %bb.e ], [ %.152, %.lr.ph ] ; 5 uses
  %i.ab = icmp ult ptr %.3, %i.d
  br i1 %i.ab, label %.lr.ph60.preheader, label %.critedge4
end_hunk_0
