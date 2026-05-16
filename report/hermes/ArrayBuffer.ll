inline.NumInlined: 202
inline.NumDeleted: 124
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [64 x i8] c"ArrayBuffer() called in function context instead of constructor\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Too large of a byteLength requested\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"byteLength called on a non ArrayBuffer object\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Called ArrayBuffer.prototype.slice on a non-ArrayBuffer\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Cannot split with detached ArrayBuffers\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm28createArrayBufferConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 205, ptr noundef nonnull @_ZN6hermes2vm22arrayBufferConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_13JSArrayBufferEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 33) #4 ; 2 uses
  tail call void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 206, i32 206, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm30arrayBufferPrototypeByteLengthEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 105, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25arrayBufferPrototypeSliceEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.d = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 205) #4
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = or i64 %i.e, -844424930131968            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !11
  store i64 %i.f, ptr %i.j, align 8, !tbaa !23
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #4
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #4
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 207, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm17arrayBufferIsViewEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #4
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22arrayBufferConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %.mask.i.i.i = and i64 %i.c, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 63, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store ptr @.str, ptr %3, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !36
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !37, !noalias !38 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %.not13 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not13, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l
  %i.m = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #4 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = bitcast i64 %i.p to double
  %i.r = fptoui double %i.q to i64                ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4294967295
  br i1 %i.s, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit9, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit9:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 35, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !34
  store ptr @.str.1, ptr %4, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !36
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = trunc nuw i64 %i.r to i32
  %i.z = tail call noundef i32 @_ZN6hermes2vm13JSArrayBuffer15createDataBlockERNS0_7RuntimeENS0_6HandleIS1_EEjb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.i, i32 noundef %i.y, i1 noundef zeroext true) #4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9, %bb.b, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.012.1 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.e ], [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9 ], [ 0, %bb.b ], [ 0, %bb.d ]
  %.sroa.6.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9 ], [ undef, %bb.b ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm30arrayBufferPrototypeByteLengthEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !37, !noalias !42
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %4 = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %4, -16777216
  %i.e = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 553648128
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !28 ; 2 uses
  %.pre3 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ], [ %.pre3, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 45, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store ptr @.str.2, ptr %3, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !36
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit
  %i.o = inttoptr i64 %.pre-phi to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45
  %i.r = uitofp i32 %i.q to double
  %i.s = bitcast double %i.r to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.02.0 = phi i32 [ 1, %bb.b ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %i.s, %bb.b ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25arrayBufferPrototypeSliceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8                ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = icmp ugt i32 %i.b, 1
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.02.0.i21 = select i1 %i.e, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.g = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.g, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.h = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %5 = load i32, ptr %i.i, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %5, -16777216
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 553648128
  br i1 %i.j, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !28 ; 2 uses
  %.pre63 = and i64 %.pre, 281474976710655
  %i.k = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.h, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ], [ %.pre63, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.l = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ], [ %i.k, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.c, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.m = icmp ne i64 %.pre-phi, 0
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 55, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !34
  store ptr @.str.3, ptr %3, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !36
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.p

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSArrayBufferEEENS0_6HandleIT_EEv.exit
  %i.t = inttoptr i64 %.pre-phi to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !45
  %i.w = uitofp i32 %i.v to double                ; 8 uses
  %i.x = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #4 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = extractvalue { i32, i64 } %i.x, 1
  %i.ab = bitcast i64 %i.aa to double             ; 4 uses
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = fadd double %i.w, %i.ab                 ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, double 0.000000e+00, double %i.ad
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = fcmp olt double %i.w, %i.ab
  %i.ah = select i1 %i.ag, double %i.w, double %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi double [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.02.0.i21, align 8, !tbaa !28
  %.mask.i = and i64 %i.aj, -140737488355328
  %i.ak = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ak, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i21) #4 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = extractvalue { i32, i64 } %i.al, 1      ; 2 uses
  %i.ap = bitcast i64 %i.ao to double             ; 3 uses
  %i.aq = bitcast i64 %i.ao to double
  %i.ar = fcmp olt double %i.ap, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.as = fadd double %i.w, %i.ap                 ; 2 uses
  %i.at = fcmp olt double %i.as, 0.000000e+00
  %i.au = select i1 %i.at, double 0.000000e+00, double %i.as
  br label %bb.j

.thread:                                          ; preds = %bb.f, %bb.h
  %.0 = phi double [ %i.aq, %bb.h ], [ %i.w, %bb.f ]
  %storemerge61 = phi double [ %i.ap, %bb.h ], [ %i.w, %bb.f ]
  %i.av = fcmp ogt double %storemerge61, %i.w
  %.pre62 = select i1 %i.av, double %i.w, double %.0
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.aw = phi double [ %i.au, %bb.i ], [ %.pre62, %.thread ]
  %i.ax = fsub double %i.aw, %i.ai                ; 2 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  %.sroa.speculated = select i1 %i.ay, double 0.000000e+00, double %i.ax
  %i.az = fptoui double %i.ai to i32
  %i.ba = fptoui double %.sroa.speculated to i32  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bc = tail call ptr @_ZN6hermes2vm13JSArrayBuffer6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.bb) #4
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = or i64 %i.bd, -281474976710656          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !7  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !11
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bg, i64 %i.be) #4
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.k ], [ %i.bn, %bb.l ] ; 3 uses
  %i.bo = tail call noundef i32 @_ZN6hermes2vm13JSArrayBuffer15createDataBlockERNS0_7RuntimeENS0_6HandleIS1_EEjb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef %i.ba, i1 noundef zeroext true) #4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !23
  %i.bq = and i64 %.sroa.0.0.copyload.i.i26, 281474976710655
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 37
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit29

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  %i.bv = and i64 %.sroa.0.0.copyload.i.i27, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 37
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.o, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit29

_ZN6hermes2vm11TwineChar16C2EPKc.exit29:          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 39, ptr %i.cb, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.cc, align 8, !tbaa !34
  store ptr @.str.4, ptr %4, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.cd, align 8, !tbaa !36
  %i.ce = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN6hermes2vm13JSArrayBuffer18copyDataBlockBytesERNS0_7RuntimeEPS1_jS4_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull %i.bw, i32 noundef 0, ptr noundef nonnull %i.br, i32 noundef %i.az, i32 noundef %i.ba) #4
  %.sroa.0.0.copyload.i31 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29, %bb.o, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.g, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.059.3 = phi i32 [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.b ], [ 0, %bb.g ], [ %i.ce, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29 ], [ 1, %bb.o ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.sroa.7.3 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.b ], [ undef, %bb.g ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29 ], [ %.sroa.0.0.copyload.i31, %bb.o ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.3, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17arrayBufferIsViewEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) dead_on_return %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN6hermes2vm5vmisaINS0_10JSDataViewEEEbNS0_11HermesValueE.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !37, !noalias !61
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !23 ; 3 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_10JSDataViewEEEbNS0_11HermesValueE.exit

_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %3 = load i32, ptr %i.g, align 4
  %4 = add i32 %3, -587202560
  %i.h = icmp ult i32 %4, 184549376
  br i1 %i.h, label %_ZN6hermes2vm5vmisaINS0_10JSDataViewEEEbNS0_11HermesValueE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit
  %i.i = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  %5 = load i32, ptr %i.j, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %5, -16777216
  %i.k = icmp eq i32 %.mask.i.i.i.i.i.i.i, 570425344
  %i.l = zext i1 %i.k to i64
  %i.m = or disjoint i64 %i.l, -1407374883553280
  br label %_ZN6hermes2vm5vmisaINS0_10JSDataViewEEEbNS0_11HermesValueE.exit

_ZN6hermes2vm5vmisaINS0_10JSDataViewEEEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit
  %i.n = phi i64 [ -1407374883553279, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit ], [ -1407374883553280, %bb.a ], [ %i.m, %bb.b ], [ -1407374883553280, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.n, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm13JSArrayBuffer15createDataBlockERNS0_7RuntimeENS0_6HandleIS1_EEjb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm13JSArrayBuffer6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm13JSArrayBuffer18copyDataBlockBytesERNS0_7RuntimeEPS1_jS4_jj(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_13JSArrayBufferEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!25 = !{!26, !20, i64 16}
!26 = !{!"_ZTSN6hermes2vm10NativeArgsE", !27, i64 0, !4, i64 8, !20, i64 16}
!27 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !20, i64 0}
!28 = !{!29, !24, i64 0}
!29 = !{!"_ZTSN6hermes2vm11HermesValueE", !24, i64 0}
!30 = !{!31, !32, i64 24}
!31 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !32, i64 8, !5, i64 16, !32, i64 24, !24, i64 32, !24, i64 40}
!32 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!33 = !{!31, !24, i64 32}
!34 = !{!31, !24, i64 40}
!35 = !{!5, !5, i64 0}
!36 = !{!31, !32, i64 8}
!37 = !{!27, !20, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!40 = distinct !{!40, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!41 = !{!26, !4, i64 8}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!44 = distinct !{!44, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!45 = !{!46, !4, i64 32}
!46 = !{!"_ZTSN6hermes2vm13JSArrayBufferE", !47, i64 0, !56, i64 24, !4, i64 32, !57, i64 36, !57, i64 37}
!47 = !{!"_ZTSN6hermes2vm8JSObjectE", !48, i64 0, !49, i64 4, !50, i64 8, !54, i64 12, !55, i64 16}
!48 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!49 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!50 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !51, i64 0}
!51 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !52, i64 0}
!52 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !53, i64 0}
!53 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!54 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !51, i64 0}
!55 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !51, i64 0}
!56 = !{!"_ZTSN6hermes2vm6XorPtrIhLNS0_11XorPtrKeyIDE0EEE", !24, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!46, !57, i64 37}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!63 = distinct !{!63, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_0
