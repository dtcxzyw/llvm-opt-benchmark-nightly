inline.NumInlined: 476
inline.NumDeleted: 202
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.155", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.155" = type { %"class.llvh::SmallVectorImpl.156", %"struct.llvh::SmallVectorStorage.159" }
%"class.llvh::SmallVectorImpl.156" = type { %"class.llvh::SmallVectorTemplateBase.157" }
%"class.llvh::SmallVectorTemplateBase.157" = type { %"class.llvh::SmallVectorTemplateCommon.158" }
%"class.llvh::SmallVectorTemplateCommon.158" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.159" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.160"] }
%"struct.llvh::AlignedCharArrayUnion.160" = type { %"struct.llvh::AlignedCharArray.161" }
%"struct.llvh::AlignedCharArray.161" = type { [8 x i8] }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::NativeArgs" = type { %"class.std::reverse_iterator", i32, ptr }
%"class.std::reverse_iterator" = type { ptr }
%"struct.hermes::vm::NamedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"struct.hermes::vm::PropertyDescriptor" = type { %union.anon.168, i32 }
%union.anon.168 = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Error.prototype.toString called on incompatible receiver \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot add new properties to object\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm22createErrorConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22errorPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240 ; 2 uses
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 147) #5
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !11
  store i64 %i.e, ptr %i.i, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 139, ptr %.0.i.i.i.i.i.i) #5
  %i.o = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #5
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -844424930131968            ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !11
  store i64 %i.q, ptr %i.t, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit44

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit44

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit44: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i43 = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.e ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 141, ptr %.0.i.i.i.i.i.i43) #5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aa = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.z, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm16errorStackGetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 14, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #5
  %i.ab = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.z, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm16errorStackSetterEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 14, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #5
  %i.ac = tail call i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.aa, ptr %i.ab) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  %i.ae = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 143, i32 236, ptr nonnull %i.ad, i32 0) #5 ; 0 uses
  %i.af = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 147, ptr noundef nonnull @_ZN6hermes2vm16ErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_7JSErrorEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 29) #5 ; 2 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.af, i32 145, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22errorCaptureStackTraceEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #5
  ret ptr %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22errorPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %1, ptr %3, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !30
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !32
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = load ptr, ptr %2, align 8, !tbaa !33, !noalias !35 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %6 = load i32, ptr %i.o, align 4
  %7 = add i32 %6, -436207616
  %i.p = icmp ult i32 %7, 855638016
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !25 ; 2 uses
  %.pre11 = and i64 %.pre, 281474976710655
  %i.q = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre11, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.r = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.q, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.l, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.s = icmp ne i64 %.pre-phi, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !42
  store ptr @.str, ptr %4, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.aa, align 8, !tbaa !44
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(48) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.d

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %i.ac = call ptr @_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #5 ; 2 uses
  %.not = icmp eq ptr %i.ac, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.d, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.ac, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.010.1 = phi i32 [ %i.ab, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i7, %bb.c ], [ undef, %bb.b ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, ptr noundef, i32, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm16errorStackGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

declare { i32, i64 } @_ZN6hermes2vm16errorStackSetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

declare i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm16ErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.03.0.copyload = load i64, ptr %i.a, align 8, !tbaa !23
  %i.b = or i64 %.sroa.03.0.copyload, -281474976710656 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !11
  store i64 %i.b, ptr %i.f, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.d, i64 %i.b) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !33     ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.p
  %i.q = icmp ugt i32 %i.o, 1
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.sroa.02.0.i8 = select i1 %i.q, ptr %i.r, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.s = call fastcc { i32, i64 } @_ZN6hermes2vmL20constructErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3, ptr nonnull %.sroa.02.0.i, ptr nonnull %.sroa.02.0.i8, ptr %.0.i.i.i.i.i.i)
  ret { i32, i64 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22errorCaptureStackTraceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !33, !noalias !48
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %5 = load i32, ptr %i.g, align 4
  %6 = add i32 %5, -436207616
  %i.h = icmp ult i32 %6, 855638016
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !25 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655            ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.n = inttoptr i64 %i.k to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 160
  %or.cond.not = icmp eq i32 %i.q, 0
  br i1 %or.cond.not, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.c, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 16, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !44
  %i.v = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = tail call ptr @_ZN6hermes2vm7JSError6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.w) #5
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = or i64 %i.y, -281474976710656            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !11
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.z) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = tail call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #5 ; 0 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !46
  %i.al = icmp ugt i32 %i.ak, 1
  br i1 %i.al, label %bb.g, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.am = load ptr, ptr %2, align 8, !tbaa !33, !noalias !51
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i24 = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i24, -844424930131969
  br i1 %i.ao, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.g
  %i.ap = and i64 %.sroa.0.0.copyload.i24, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %7 = load i32, ptr %i.aq, align 4
  %8 = add i32 %7, -1140850688
  %i.ar = icmp ult i32 %8, 150994944
  %spec.select.i25 = select i1 %i.ar, ptr %i.an, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.g, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i23 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.g ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i25, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.as = load i64, ptr %.sroa.03.0.i23, align 8, !tbaa !25 ; 2 uses
  %i.at = icmp ugt i64 %i.as, -844424930131969
  %i.au = and i64 %i.as, 281474976710655
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  tail call void @_ZN6hermes2vm7JSError23popFramesUntilInclusiveERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr nonnull %.sroa.03.0.i23) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.ax = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268435464, i32 319, ptr %.0.i.i.i.i.i.i, i32 0) #5 ; 2 uses
  %.mask = and i32 %i.ax, 255
  %i.ay = icmp eq i32 %.mask, 0
  br i1 %i.ay, label %bb.m, label %bb.j, !prof !45

bb.j:                                             ; preds = %bb.i
  %i.az = and i32 %i.ax, 256
  %.not45 = icmp eq i32 %i.az, 0
  br i1 %.not45, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit27, label %bb.k, !prof !45

_ZN6hermes2vm11TwineChar16C2EPKc.exit27:          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 35, ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !42
  store ptr @.str.3, ptr %4, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !44
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.bg = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 143, i32 236, ptr nonnull %i.bf, i32 0) #5
  %.mask46 = and i32 %i.bg, 255
  %i.bh = icmp eq i32 %.mask46, 0
  br i1 %i.bh, label %bb.l, label %bb.m, !prof !45

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 -1970324836974592, ptr %i.bi, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit27, %bb.i, %bb.l, %bb.k, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.042.1 = phi i32 [ %i.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.be, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27 ], [ 0, %bb.i ], [ 1, %bb.l ], [ 1, %bb.k ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.042.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm31createAggregateErrorConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240 ; 2 uses
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 148) #5
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !11
  store i64 %i.e, ptr %i.i, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 139, ptr %.0.i.i.i.i.i.i) #5
  %i.o = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #5
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -844424930131968            ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !11
  store i64 %i.q, ptr %i.t, align 8, !tbaa !23
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #5
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.e ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 141, ptr %.0.i.i.i.i.i.i.i) #5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 148, ptr noundef nonnull @_ZN6hermes2vm25AggregateErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, ptr nonnull %i.z, i32 noundef 2, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_7JSErrorEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 29) #5
  ret ptr %i.aa
}

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25AggregateErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 6 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !33     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.3.8.copyload = load i32, ptr %i.b, align 8 ; 4 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !tbaa !23
  %i.d = or i64 %.sroa.0.0.copyload, -281474976710656 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !11
  store i64 %i.d, ptr %i.h, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.d) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.a, ptr %3, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.3.8.copyload, ptr %i.n, align 8
  %.sroa.7.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false)
  %i.o = icmp ugt i32 %.sroa.3.8.copyload, 1
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i.i = select i1 %i.o, ptr %i.p, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.q = icmp ugt i32 %.sroa.3.8.copyload, 2
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i13.i = select i1 %i.q, ptr %i.r, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.s = call fastcc { i32, i64 } @_ZN6hermes2vmL20constructErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3, ptr nonnull %.sroa.02.0.i.i, ptr nonnull %.sroa.02.0.i13.i, ptr %.0.i.i.i.i.i.i) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN6hermes2vmL29constructAggregateErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_8JSObjectEEE.exit, label %bb.d, !prof !45

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.v = extractvalue { i32, i64 } %i.s, 1
  %i.w = or i64 %i.v, -281474976710656            ; 2 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !11
  store i64 %i.w, ptr %i.z, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.x, i64 %i.w) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.3.8.copyload, 0
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i14.i = select i1 %.not.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.af
  %i.ag = tail call ptr @_ZN6hermes2vm15iterableToArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i14.i) #5 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm23TimeoutErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !11
  store i64 %i.b, ptr %i.f, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.d, i64 %i.b) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !33     ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.p
  %i.q = icmp ugt i32 %i.o, 1
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.sroa.02.0.i8 = select i1 %i.q, ptr %i.r, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.s = call fastcc { i32, i64 } @_ZN6hermes2vmL20constructErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3, ptr nonnull %.sroa.02.0.i, ptr nonnull %.sroa.02.0.i8, ptr %.0.i.i.i.i.i.i)
  ret { i32, i64 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm26createQuitErrorConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240 ; 2 uses
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 156) #5
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !11
  store i64 %i.e, ptr %i.i, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 139, ptr %.0.i.i.i.i.i.i) #5
  %i.o = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #5
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -844424930131968            ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !11
  store i64 %i.q, ptr %i.t, align 8, !tbaa !23
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #5
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.e ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 141, ptr %.0.i.i.i.i.i.i.i) #5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 156, ptr noundef nonnull @_ZN6hermes2vm20QuitErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, ptr nonnull %i.z, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_7JSErrorEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 29) #5
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm20QuitErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.03.0.copyload = load i64, ptr %i.a, align 8, !tbaa !23
  %i.b = or i64 %.sroa.03.0.copyload, -281474976710656 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !11
  store i64 %i.b, ptr %i.f, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.d, i64 %i.b) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !33     ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.p
  %i.q = icmp ugt i32 %i.o, 1
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.sroa.02.0.i8 = select i1 %i.q, ptr %i.r, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.s = call fastcc { i32, i64 } @_ZN6hermes2vmL20constructErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3, ptr nonnull %.sroa.02.0.i, ptr nonnull %.sroa.02.0.i8, ptr %.0.i.i.i.i.i.i)
  ret { i32, i64 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL20constructErrorObjectERNS0_7RuntimeENS0_10NativeArgsENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull readonly captures(none) dead_on_return %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !11
  store i64 -281474976710656, ptr %i.d, align 8, !tbaa !23
  br label %_ZN6hermes2vm13MutableHandleINS0_7JSErrorEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.b, i64 -281474976710656) #5
  br label %_ZN6hermes2vm13MutableHandleINS0_7JSErrorEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_7JSErrorEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %.mask.i.i.i = and i64 %i.l, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_7JSErrorEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !33, !noalias !55
  %.sroa.017.0.copyload = load i64, ptr %i.m, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_7JSErrorEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.n = tail call ptr @_ZN6hermes2vm7JSError6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %4) #5
  %i.o = ptrtoint ptr %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.in = phi i64 [ %i.o, %bb.e ], [ %.sroa.017.0.copyload, %bb.d ]
  %storemerge = or i64 %storemerge.in, -281474976710656
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.p = tail call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #5
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.r, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %2, align 8, !tbaa !25
  %.mask.i = and i64 %i.r, -140737488355328
  %i.s = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2) #5
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.r, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !23 ; 2 uses
  %i.v = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.v, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.i
  %i.w = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %6 = load i32, ptr %i.x, align 4
  %7 = add i32 %6, -436207616
  %i.y = icmp ult i32 %7, 855638016
  %spec.select.i = select i1 %i.y, ptr %3, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.i ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.z = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !25 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, -844424930131969
  %i.ab = and i64 %i.z, 281474976710655
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = and i1 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i32 0, ptr %5, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.aj, align 4, !tbaa !58
  %i.ak = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 142, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #5
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -281474976710656          ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %bb.l, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !11
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.au = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.an, i64 %i.am) #5 ; 2 uses
  %.pre = load i64, ptr %i.au, align 8, !tbaa !25
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.k, %bb.l
  %i.av = phi i64 [ %i.am, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %.0.i.i.i.i.i.i32 = phi ptr [ %i.ap, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = icmp ugt i64 %i.av, -844424930131969
  %i.ax = and i64 %i.av, 281474976710655
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = and i1 %i.aw, %i.ay
  br i1 %i.az, label %bb.m, label %.critedge29

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %.sroa.08.0.copyload = load i64, ptr %5, align 8
  %i.ba = call { i32, i64 } @_ZN6hermes2vm8JSObject25getNamedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_NS0_23NamedPropertyDescriptorE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i32, i64 %.sroa.08.0.copyload) #5 ; 2 uses
  %i.bb = extractvalue { i32, i64 } %i.ba, 0
  %i.bc = extractvalue { i32, i64 } %i.ba, 1      ; 2 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %.critedge31, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !22

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !11
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.be, i64 %i.bc) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i.i.i.i34 = phi ptr [ %i.bg, %bb.o ], [ %i.bl, %bb.p ]
  %i.bm = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 142, i32 318, ptr %.0.i.i.i.i.i.i34, i32 1) #5
  %.mask = and i32 %i.bm, 255
  %.not60 = icmp eq i32 %.mask, 0
  br i1 %.not60, label %.critedge31, label %.critedge29

.critedge29:                                      ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.bo = zext i32 %i.ai to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !21
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !11
  br label %bb.q

.critedge31:                                      ; preds = %bb.m, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.bv = zext i32 %i.ai to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !21
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !11
  br label %bb.r

bb.q:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %.critedge29
  %.sroa.0.0.copyload.i39 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.f, %.critedge31, %bb.q
  %.sroa.058.2 = phi i32 [ 0, %bb.f ], [ 0, %.critedge31 ], [ 1, %bb.q ], [ 0, %bb.h ]
  %.sroa.659.0 = phi i64 [ undef, %bb.f ], [ undef, %.critedge31 ], [ %.sroa.0.0.copyload.i39, %bb.q ], [ undef, %bb.h ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.058.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.659.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSError6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7JSError23popFramesUntilInclusiveERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject25getNamedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_NS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15iterableToArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !9, i64 8}
!9 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !20, i64 192}
!12 = !{!"_ZTSN6hermes2vm7GCScopeE", !13, i64 0, !9, i64 8, !5, i64 16, !14, i64 144, !20, i64 192, !20, i64 200, !4, i64 208}
!13 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 0}
!14 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !15, i64 0, !19, i64 16}
!15 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !16, i64 0}
!16 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !17, i64 0}
!17 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !18, i64 0}
!18 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!19 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!20 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !10, i64 0}
!21 = !{!12, !20, i64 200}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!26, !24, i64 0}
!26 = !{!"_ZTSN6hermes2vm11HermesValueE", !24, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!12, !9, i64 8}
!29 = !{!18, !10, i64 0}
!30 = !{!18, !4, i64 12}
end_hunk_1
