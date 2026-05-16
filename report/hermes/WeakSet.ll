inline.NumInlined: 273
inline.NumDeleted: 166
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.149", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.149" = type { %"class.llvh::SmallVectorImpl.150", %"struct.llvh::SmallVectorStorage.153" }
%"class.llvh::SmallVectorImpl.150" = type { %"class.llvh::SmallVectorTemplateBase.151" }
%"class.llvh::SmallVectorTemplateBase.151" = type { %"class.llvh::SmallVectorTemplateCommon.152" }
%"class.llvh::SmallVectorTemplateCommon.152" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.153" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.154"] }
%"struct.llvh::AlignedCharArrayUnion.154" = type { %"struct.llvh::AlignedCharArray.155" }
%"struct.llvh::AlignedCharArray.155" = type { [8 x i8] }
%"class.hermes::vm::CallResult.160" = type { %"class.llvh::Optional" }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.161", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.161" = type { %"struct.llvh::AlignedCharArray.162" }
%"struct.llvh::AlignedCharArray.162" = type { [16 x i8] }
%"struct.hermes::vm::IteratorRecord" = type { %"class.hermes::vm::Handle", %"class.hermes::vm::Handle.159" }
%"class.hermes::vm::Handle" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"class.hermes::vm::Handle.159" = type { %"class.hermes::vm::HandleBase" }

@.str = private unnamed_addr constant [40 x i8] c"WeakSet must be called as a constructor\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Property 'add' for WeakSet is not callable\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"WeakSet.prototype.add can only be called on a WeakSet\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"WeakSet key must be an Object\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"WeakSet.prototype.delete can only be called on a WeakSet\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"WeakSet.prototype.has can only be called on a WeakSet\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm24createWeakSetConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 6 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 253, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm19weakSetPrototypeAddEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #4
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 255, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22weakSetPrototypeDeleteEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #4
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 256, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm19weakSetPrototypeHasEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 408) #4
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
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
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #4
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #4
  %i.o = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 408, ptr noundef nonnull @_ZN6hermes2vm18weakSetConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 0, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS8_EEPv, i32 noundef 52) #4 ; 2 uses
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 59, ptr %i.o) #4
  ret ptr %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19weakSetPrototypeAddEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !27 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %5, 52
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !30 ; 2 uses
  %.pre13 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre13, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !36
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !38
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.f

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.q, align 8, !tbaa !23 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.0.0.copyload.i5, -844424930131969
  br i1 %i.r, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.s = and i64 %.sroa.0.0.copyload.i5, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %.shift.i.i.i.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i.i.i.i.i6, align 1
  %7 = add i8 %6, -26
  %i.u = icmp ult i8 %7, 51
  %spec.select.i = select i1 %i.u, ptr %i.q, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.v = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !30 ; 2 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit7, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit7:           ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !36
  store ptr @.str.3, ptr %4, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !38
  %i.ae = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.af = tail call noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase8setValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEENS2_INS0_11HermesValueEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E) #4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i8 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit7, %bb.e, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.012.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ae, %_ZN6hermes2vm11TwineChar16C2EPKc.exit7 ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.sroa.5.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit7 ], [ %.sroa.0.0.copyload.i8, %bb.e ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22weakSetPrototypeDeleteEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !42 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 52
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !30 ; 2 uses
  %.pre8 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre8, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 56, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !36
  store ptr @.str.4, ptr %3, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !38
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i4 = load i64, ptr %i.q, align 8, !tbaa !23 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.0.0.copyload.i4, -844424930131969
  br i1 %i.r, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.s = and i64 %.sroa.0.0.copyload.i4, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %.shift.i.i.i.i.i.i.i.i5 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i5, align 1
  %6 = add i8 %5, -26
  %i.u = icmp ult i8 %6, 51
  %spec.select.i = select i1 %i.u, ptr %i.q, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.v = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !30 ; 2 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.aa = tail call noundef zeroext i1 @_ZN6hermes2vm17JSWeakMapImplBase11deleteValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i) #4
  %i.ab = zext i1 %i.aa to i64
  %i.ac = or disjoint i64 %i.ab, -1407374883553280
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.07.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ 1, %bb.d ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ -1407374883553280, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %i.ac, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19weakSetPrototypeHasEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !45 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 52
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !30 ; 2 uses
  %.pre8 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre8, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !36
  store ptr @.str.5, ptr %3, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !38
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i4 = load i64, ptr %i.q, align 8, !tbaa !23 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.0.0.copyload.i4, -844424930131969
  br i1 %i.r, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.s = and i64 %.sroa.0.0.copyload.i4, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %.shift.i.i.i.i.i.i.i.i5 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i5, align 1
  %6 = add i8 %5, -26
  %i.u = icmp ult i8 %6, 51
  %spec.select.i = select i1 %i.u, ptr %i.q, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.v = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !30 ; 2 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.aa = tail call noundef zeroext i1 @_ZN6hermes2vm17JSWeakMapImplBase8hasValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i) #4
  %i.ab = zext i1 %i.aa to i64
  %i.ac = or disjoint i64 %i.ab, -1407374883553280
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.07.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ 1, %bb.d ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ -1407374883553280, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %i.ac, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18weakSetConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::CallResult.160", align 8 ; 5 uses
  %7 = alloca %"struct.hermes::vm::IteratorRecord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  store ptr %1, ptr %3, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !53
  store ptr %3, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30
  %.mask.i.i.i = and i64 %i.n, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b, !prof !41

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 39, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !36
  store ptr @.str, ptr %4, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !38
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %2, align 8, !tbaa !25, !noalias !55 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !23 ; 2 uses
  %i.u = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.u, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.v = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %8 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.x = icmp eq i8 %8, 52
  br i1 %i.x, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %bb.b
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i
  %.sroa.01.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.thread.i ], [ %i.t, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.ab, align 8, !tbaa !23
  %.mask.i = and i64 %.sroa.0.0.copyload.i26, -140737488355328
  switch i64 %.mask.i, label %bb.c [
    i64 -1688849860263936, label %.critedge
    i64 -1548112371908608, label %.critedge
  ]

.critedge:                                        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEv.exit
  %.sroa.0.0.copyload.i31 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !23
  br label %bb.p

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ac = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 253, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #4 ; 2 uses
  %i.ad = extractvalue { i32, i64 } %i.ac, 0
  %i.ae = extractvalue { i32, i64 } %i.ac, 1      ; 3 uses
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %bb.p, label %bb.d, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 192 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !11
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.an = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ag, i64 %i.ae) #4 ; 2 uses
  %.sroa.0.0.copyload.i.i32.pr = load i64, ptr %i.an, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload.i.i32 = phi i64 [ %i.ae, %bb.e ], [ %.sroa.0.0.copyload.i.i32.pr, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.an, %bb.f ]
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i.i32, -844424930131969
  br i1 %i.ao, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ap = and i64 %.sroa.0.0.copyload.i.i32, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %.shift.i.i.i.i.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i34, align 1
  %10 = add i8 %9, -68
  %i.ar = icmp ult i8 %10, 9
  %spec.select.i = select i1 %i.ar, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i33 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.as = load i64, ptr %.sroa.0.0.i33, align 8, !tbaa !30 ; 2 uses
  %i.at = icmp ugt i64 %i.as, -844424930131969
  %i.au = and i64 %i.as, 281474976710655
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit35, !prof !22

_ZN6hermes2vm11TwineChar16C2EPKc.exit35:          ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 42, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !36
  store ptr @.str.1, ptr %5, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ba, align 8, !tbaa !38
  %i.bb = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.p

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.bc = load i32, ptr %i.y, align 8, !tbaa !39
  %.not59 = icmp eq i32 %i.bc, 0
  %i.bd = load ptr, ptr %2, align 8
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %.sroa.02.0.i = select i1 %.not59, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.be
  call void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.160") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 undef, i8 0) #4
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !58, !range !64, !noundef !65
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %bb.h, !prof !41

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  store i32 %i.bj, ptr %i.k, align 8, !tbaa !53
  store ptr %i.bo, ptr %i.j, align 8, !tbaa !21
  store ptr %i.bi, ptr %i.i, align 8, !tbaa !11
  %i.bp = call ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #4 ; 4 uses
  %.not60 = icmp eq ptr %i.bp, inttoptr (i64 -1 to ptr)
  br i1 %.not60, label %.critedge23, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, -844424930131969
  %i.bs = and i64 %i.bq, 281474976710655
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = and i1 %i.br, %i.bt
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i36 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !23
  br label %.critedge23

bb.l:                                             ; preds = %bb.j
  %i.bv = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 61, ptr nonnull %i.bp, i32 0, ptr noundef null) #4 ; 2 uses
  %i.bw = extractvalue { i32, i64 } %i.bv, 0
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.critedge23, label %bb.m, !prof !41

bb.m:                                             ; preds = %bb.l
  %i.by = extractvalue { i32, i64 } %i.bv, 1
  %i.bz = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i33, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, i64 %i.by, i1 noundef zeroext false) #4
  %i.ca = extractvalue { i32, i64 } %i.bz, 0
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %bb.i, !prof !41, !llvm.loop !67

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  %i.cc = call noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.0.0.copyload) #4
  br label %.critedge23

.critedge23:                                      ; preds = %bb.l, %bb.i, %bb.n, %bb.k
  %.sroa.058.2 = phi i32 [ %i.cc, %bb.n ], [ 1, %bb.k ], [ 0, %bb.i ], [ 0, %bb.l ]
  %.sroa.10.1 = phi i64 [ undef, %bb.n ], [ %.sroa.0.0.copyload.i36, %bb.k ], [ undef, %bb.i ], [ undef, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %.critedge23
  %.sroa.058.3 = phi i32 [ %.sroa.058.2, %.critedge23 ], [ 0, %bb.g ]
  %.sroa.10.2 = phi i64 [ %.sroa.10.1, %.critedge23 ], [ undef, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %_ZN6hermes2vm11TwineChar16C2EPKc.exit35, %bb.o, %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.058.7 = phi i32 [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %.critedge ], [ 0, %bb.c ], [ %.sroa.058.3, %bb.o ], [ %i.bb, %_ZN6hermes2vm11TwineChar16C2EPKc.exit35 ]
  %.sroa.10.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i31, %.critedge ], [ undef, %bb.c ], [ %.sroa.10.2, %bb.o ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit35 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.058.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.6, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.160") align 8, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i8) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase8setValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm17JSWeakMapImplBase11deleteValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm17JSWeakMapImplBase8hasValueENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS8_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!25 = !{!26, !20, i64 0}
!26 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !20, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!29 = distinct !{!29, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!30 = !{!31, !24, i64 0}
!31 = !{!"_ZTSN6hermes2vm11HermesValueE", !24, i64 0}
!32 = !{!33, !34, i64 24}
!33 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !34, i64 8, !5, i64 16, !34, i64 24, !24, i64 32, !24, i64 40}
!34 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!35 = !{!33, !24, i64 32}
!36 = !{!33, !24, i64 40}
!37 = !{!5, !5, i64 0}
!38 = !{!33, !34, i64 8}
!39 = !{!40, !4, i64 8}
!40 = !{!"_ZTSN6hermes2vm10NativeArgsE", !26, i64 0, !4, i64 8, !20, i64 16}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!44 = distinct !{!44, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
end_hunk_0
