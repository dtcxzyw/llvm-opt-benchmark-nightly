inline.NumInlined: 138
inline.NumDeleted: 95
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [60 x i8] c"WeakRef() called in function context instead of constructor\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"target argument is not an object\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"WeakRef.prototype.deref() called on non-WeakRef object\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm24createWeakRefConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 409, ptr noundef nonnull @_ZN6hermes2vm18weakRefConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSWeakRefEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 53) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.d = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 409) #3
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
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #3
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 410, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm21weakRefPrototypeDerefEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18weakRefConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 59, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store ptr @.str, ptr %3, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !36
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !38, !noalias !39
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %5 = load i32, ptr %i.o, align 4
  %6 = add i32 %5, -436207616
  %i.p = icmp ult i32 %6, 855638016
  %spec.select.i = select i1 %i.p, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.q = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !28 ; 2 uses
  %i.r = icmp ugt i64 %i.q, -844424930131969
  %i.s = and i64 %i.q, 281474976710655
  %i.t = icmp ne i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit7, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit7:           ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 32, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !34
  store ptr @.str.1, ptr %4, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.y, align 8, !tbaa !36
  %i.z = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.aa = tail call noundef i32 @_ZN6hermes2vm7Runtime16addToKeptObjectsENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i) #3 ; 0 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !38, !noalias !42 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ac = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  tail call void @_ZN6hermes2vm9JSWeakRef9setTargetERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i) #3
  %.sroa.0.0.copyload.i8 = load i64, ptr %i.ab, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit7, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.011.1 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.d ], [ %i.z, %_ZN6hermes2vm11TwineChar16C2EPKc.exit7 ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i8, %bb.d ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit7 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21weakRefPrototypeDerefEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !45
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %4 = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %4, -16777216
  %i.e = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 889192448
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSWeakRefEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !28 ; 2 uses
  %.pre14 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSWeakRefEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSWeakRefEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i ], [ %.pre14, %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSWeakRefEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSWeakRefEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store ptr @.str.2, ptr %3, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !36
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.f

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSWeakRefEEENS0_6HandleIT_EEv.exit
  %i.o = inttoptr i64 %.pre-phi to ptr
  %i.p = tail call i64 @_ZNK6hermes2vm9JSWeakRef5derefERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(9816) %1) #3 ; 3 uses
  %.mask.i = and i64 %i.p, -140737488355328
  %i.q = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.q, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = or i64 %i.p, -281474976710656            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !11
  store i64 %i.r, ptr %i.v, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %i.r) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = tail call noundef i32 @_ZN6hermes2vm7Runtime16addToKeptObjectsENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #3 ; 0 uses
  %.sroa.0.0.copyload.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.013.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.b ], [ 1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.p, %bb.b ], [ %.sroa.0.0.copyload.i7, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime16addToKeptObjectsENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm9JSWeakRef9setTargetERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i64 @_ZNK6hermes2vm9JSWeakRef5derefERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSWeakRefEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!37 = !{!26, !4, i64 8}
!38 = !{!27, !20, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!41 = distinct !{!41, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!44 = distinct !{!44, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!47 = distinct !{!47, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_0
