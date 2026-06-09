inline.NumInlined: 43
inline.NumDeleted: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.google::protobuf::internal::TcParser::UnknownFieldOps" = type { ptr, ptr }

$_ZN6google8protobuf8internal8TcParser20WriteVarintToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEii = comdat any

$_ZN6google8protobuf8internal8TcParser29WriteLengthDelimitedToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEiSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN6google8protobuf8internal12ExtensionSet15ParseMessageSetINS0_7MessageEEEPKcS6_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE = comdat any

$_ZZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmE4kOps = comdat any

@_ZZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmE4kOps = linkonce_odr constant %"struct.google::protobuf::internal::TcParser::UnknownFieldOps" { ptr @_ZN6google8protobuf8internal8TcParser20WriteVarintToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEii, ptr @_ZN6google8protobuf8internal8TcParser29WriteLengthDelimitedToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEiSt17basic_string_viewIcSt11char_traitsIcEE }, comdat, align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser15GenericFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %4, align 8, !tbaa !8
  %i.c = trunc i64 %5 to i32
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = or i32 %i.f, %i.c
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = trunc i64 %3 to i32                      ; 3 uses
  %i.i = and i32 %i.h, 7
  %i.j = icmp eq i32 %i.i, 4
  %i.k = icmp eq i32 %i.h, 0
  %or.cond.i = or i1 %i.k, %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.h, -1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.l, ptr %i.m, align 8, !tbaa !13
  br label %_ZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !18   ; 2 uses
  %.not.i = icmp eq i16 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = and i64 %3, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.r, ptr noundef nonnull %1, ptr noundef %i.u, ptr noundef nonnull %i.v, ptr noundef %2)
  br label %_ZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.f:                                             ; preds = %bb.d
  %i.x = and i64 %3, 4294967295
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit.i

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef %i.x, ptr noundef %.0.i.i, ptr noundef nonnull %1, ptr noundef %2)
  br label %_ZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a, %bb.c, %bb.e, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit.i
  %.1.i = phi ptr [ @_ZZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmE4kOps, %bb.a ], [ %1, %bb.c ], [ %i.w, %bb.e ], [ %i.af, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser18ReflectionFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %common.ret, label %bb.b, !prof !7

common.ret:                                       ; preds = %bb.i, %.split37, %.split, %bb.a
  %common.ret.op = phi ptr [ @_ZZN6google8protobuf8internal8TcParser19GenericFallbackImplINS0_7MessageENS0_15UnknownFieldSetEEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmE4kOps, %bb.a ], [ %i.ac, %bb.i ], [ %1, %.split37 ], [ %1, %.split ]
  ret ptr %common.ret.op

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %4, align 8, !tbaa !8
  %i.c = trunc i64 %5 to i32
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = or i32 %i.f, %i.c
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = trunc i64 %3 to i32                      ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 -1, ptr %i.j, align 8, !tbaa !13
  br label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.h, 7
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %.split37, label %bb.d

.split37:                                         ; preds = %bb.c
  %i.m = add nsw i32 %i.h, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.m, ptr %i.n, align 8, !tbaa !13
  br label %common.ret

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %i.q = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.r = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  %i.s = lshr i32 %i.h, 3                         ; 4 uses
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.p, i32 noundef %i.s) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZNK6google8protobuf10Descriptor34FindExtensionRangeContainingNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.p, i32 noundef %i.s)
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i32 noundef %i.s)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.x, ptr noundef nonnull %i.p, i32 noundef %i.s)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d
  %.0 = phi ptr [ %i.z, %bb.g ], [ %i.aa, %bb.h ], [ null, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = and i64 %3, 4294967295
  %i.ac = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.ab, ptr noundef %i.r, ptr noundef %.0)
  br label %common.ret
}

declare noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser19ReflectionParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr nofree noundef readnone captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat14_InternalParseEPNS0_7MessageEPKcPNS1_12ParseContextE(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat14_InternalParseEPNS0_7MessageEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser29MessageSetWireFormatParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !18
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet15ParseMessageSetINS0_7MessageEEEPKcS6_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %1, ptr noundef %i.g, ptr noundef nonnull %i.h, ptr noundef %2)
  ret ptr %i.i
}

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Descriptor34FindExtensionRangeContainingNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8TcParser20WriteVarintToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = sext i32 %2 to i64
  tail call void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i32 noundef %1, i64 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8TcParser29WriteLengthDelimitedToUnknownINS0_15UnknownFieldSetEEEvPNS0_11MessageLiteEiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i32 noundef %1, i64 %2, ptr %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call noundef ptr @_ZN6google8protobuf15UnknownFieldSet18AddLengthDelimitedB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i32 noundef %1) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef %3, i64 noundef %2) ; 0 uses
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf15UnknownFieldSet18AddLengthDelimitedB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal12ExtensionSet15ParseMessageSetINS0_7MessageEEEPKcS6_PKT_PNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.013.be, %.backedge ] ; 4 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !37
  %i.g = load ptr, ptr %4, align 8, !tbaa !39
  %i.h = icmp ult ptr %.013, %i.g
  br i1 %i.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.j = ptrtoint ptr %.013 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !41
  %i.o = icmp eq i32 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %i.m, 0
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  %or.cond.i.i = select i1 %i.p, i1 %i.s, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.013
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.c
  %i.t = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef %i.m, i32 noundef %i.f) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.t, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.t, 1
  %i.u = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.u, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28: ; preds = %bb.b, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.331 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.013, %bb.b ] ; 4 uses
  %i.v = load i8, ptr %.331, align 1, !tbaa !42   ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = icmp sgt i8 %i.v, -1
  %i.y = getelementptr inbounds nuw i8, ptr %.331, i64 1 ; 2 uses
  br i1 %i.x, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 7
  %i.ac = add nsw i32 %i.w, -128
  %i.ad = or disjoint i32 %i.ab, %i.ac            ; 2 uses
  %i.ae = icmp sgt i8 %i.z, -1
  br i1 %i.ae, label %bb.f, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.331, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.e
  %i.ag = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.331, i32 noundef %i.ad) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ag, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ag, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28, %bb.f, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.1.i836 = phi ptr [ %.fca.0.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.af, %bb.f ], [ %i.y, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28 ] ; 3 uses
  %.01635 = phi i32 [ %.fca.1.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.ad, %bb.f ], [ %i.w, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread28 ] ; 4 uses
  switch i32 %.01635, label %bb.i [
    i32 11, label %bb.g
    i32 0, label %bb.j
  ]

bb.g:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !43
  %i.aj = icmp slt i32 %i.ah, 1
  br i1 %i.aj, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !37
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !37
  %i.am = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet19ParseMessageSetItemEPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.1.i836, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) ; 2 uses
  %i.an = load <2 x i32>, ptr %i.d, align 8, !tbaa !3
  %i.ao = add nsw <2 x i32> %i.an, <i32 1, i32 -1>
  store <2 x i32> %i.ao, ptr %i.d, align 8, !tbaa !3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !13
  %i.aq = icmp ne i32 %i.ap, 11
  store i32 0, ptr %i.e, align 8, !tbaa !13
  %.not7 = icmp eq ptr %i.am, null
  %or.cond = or i1 %.not7, %i.aq
  br i1 %or.cond, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !44

.backedge:                                        ; preds = %bb.h, %bb.k
  %.013.be = phi ptr [ %i.av, %bb.k ], [ %i.am, %bb.h ]
  br label %bb.b

bb.i:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.ar = and i32 %.01635, 7
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, %bb.i
  %i.at = add i32 %.01635, -1
  store i32 %i.at, ptr %i.e, align 8, !tbaa !13
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.au = zext i32 %.01635 to i64
  %i.av = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.au, ptr noundef nonnull %.1.i836, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) ; 2 uses
  %.not6 = icmp eq ptr %i.av, null
  br i1 %.not6, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.g, %bb.h, %bb.k, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.d, %bb.j
  %.2 = phi ptr [ %.1.i836, %bb.j ], [ %spec.select, %bb.d ], [ null, %bb.k ], [ null, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ null, %bb.h ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %bb.g ]
  ret ptr %.2
}

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet19ParseMessageSetItemEPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN6google8protobuf8internal16TcParseTableBaseE", !10, i64 0, !10, i64 2, !4, i64 4, !5, i64 8, !5, i64 9, !10, i64 10, !4, i64 12, !4, i64 16, !10, i64 20, !10, i64 22, !4, i64 24, !11, i64 32, !12, i64 40, !12, i64 48}
!10 = !{!"short", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf8internal9ClassDataE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !4, i64 80}
!14 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !15, i64 0, !15, i64 8, !15, i64 16, !4, i64 24, !4, i64 28, !16, i64 32, !5, i64 40, !17, i64 72, !4, i64 80, !4, i64 84}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !12, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!9, !10, i64 2}
!19 = !{!9, !11, i64 32}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !22, i64 0, !23, i64 8, !12, i64 16, !12, i64 24, !24, i64 32, !4, i64 48, !26, i64 52, !26, i64 53}
!22 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !12, i64 0}
!23 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !12, i64 0}
!24 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !25, i64 4, !5, i64 5, !5, i64 8}
!25 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!28, !17, i64 0}
!28 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !17, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !32, i64 0, !33, i64 8}
!32 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !12, i64 0}
!33 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !12, i64 0}
!34 = !{!35, !17, i64 8}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !17, i64 8, !5, i64 16}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!37 = !{!38, !4, i64 92}
!38 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !14, i64 0, !4, i64 88, !4, i64 92, !31, i64 96}
!39 = !{!14, !15, i64 0}
!40 = !{!14, !15, i64 8}
!41 = !{!14, !4, i64 28}
!42 = !{!5, !5, i64 0}
!43 = !{!38, !4, i64 88}
!44 = !{!"branch_weights", i32 2002, i32 2000}
end_hunk_0
