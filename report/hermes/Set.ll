inline.NumInlined: 615
inline.NumDeleted: 328
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.153", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.153" = type { %"class.llvh::SmallVectorImpl.154", %"struct.llvh::SmallVectorStorage.157" }
%"class.llvh::SmallVectorImpl.154" = type { %"class.llvh::SmallVectorTemplateBase.155" }
%"class.llvh::SmallVectorTemplateBase.155" = type { %"class.llvh::SmallVectorTemplateCommon.156" }
%"class.llvh::SmallVectorTemplateCommon.156" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.157" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.158"] }
%"struct.llvh::AlignedCharArrayUnion.158" = type { %"struct.llvh::AlignedCharArray.159" }
%"struct.llvh::AlignedCharArray.159" = type { [8 x i8] }
%"class.hermes::vm::CallResult.162" = type { %"class.llvh::Optional" }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.163", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.163" = type { %"struct.llvh::AlignedCharArray.164" }
%"struct.llvh::AlignedCharArray.164" = type { [16 x i8] }
%"struct.hermes::vm::IteratorRecord" = type { %"class.hermes::vm::Handle", %"class.hermes::vm::Handle.161" }
%"class.hermes::vm::Handle" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"class.hermes::vm::Handle.161" = type { %"class.hermes::vm::HandleBase" }

$_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE7forEachENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_8CallableEEENS4_INS0_11HermesValueEEE = comdat any

$_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE11nextElementENS0_6HandleIS3_EERNS0_7RuntimeE = comdat any

@.str = private unnamed_addr constant [31 x i8] c"Constructor Set requires 'new'\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Set Constructor only applies to Set object\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Property 'add' for Set is not callable\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Non-Set object called on Set.prototype.add\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Non-Set object called on Set.prototype.clear\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Non-Set object called on Set.prototype.delete\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Non-Set object called on Set.prototype.entries\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Non-Set object called on Set.prototype.forEach\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"callbackfn must be Callable inSet.prototype.forEach\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Non-Set object called on Set.prototype.has\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Non-Set object called on Set.prototype.size\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Non-Set object called on Set.prototype.values\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"Non-SetIterator object called on SetIterator.prototype.next\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner10zeroValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.13 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm20createSetConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 14 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 253, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm15setPrototypeAddEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 254, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm17setPrototypeClearEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 255, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm18setPrototypeDeleteEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 211, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm19setPrototypeEntriesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 189, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm19setPrototypeForEachEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 256, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm15setPrototypeHasEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #5
  tail call void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 257, i32 257, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22setPrototypeSizeGetterEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 258, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm18setPrototypeValuesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #5
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 258, ptr nonnull %i.a, i32 0, ptr noundef null) #5 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = extractvalue { i32, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_11HermesValueEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #6
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_11HermesValueEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_11HermesValueEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  store i64 %i.d, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_11HermesValueEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.d) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 84, i32 318, ptr %.0.i.i.i.i.i.i, i32 0) #5
  %.mask.i = and i32 %i.o, 255
  %i.p = icmp eq i32 %.mask.i, 0
  br i1 %i.p, label %bb.e, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #6
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.q = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 268436017, i32 318, ptr %.0.i.i.i.i.i.i, i32 0) #5
  %.mask.i74 = and i32 %i.q, 255
  %i.r = icmp eq i32 %.mask.i74, 0
  br i1 %i.r, label %bb.f, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit75, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #6
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit75: ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.t = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.s, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 249) #5
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = or i64 %i.u, -844424930131968            ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !12
  store i64 %i.v, ptr %i.y, align 8, !tbaa !24
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureIbEET_NS0_10CallResultIS3_Xsr6detail23GetCallResultSpecializeIS3_EE5valueEEE.exit75
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.w, i64 %i.v) #5
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.ad, %bb.h ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #5
  %i.ae = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 249, ptr noundef nonnull @_ZN6hermes2vm14setConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 0, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS8_EEPv, i32 noundef 47) #5
  ret ptr %i.ae
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15setPrototypeAddEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !28 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre11 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre11, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 42, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.3, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.q ; 2 uses
  %i.r = load i64, ptr %.sroa.02.0.i, align 8     ; 2 uses
  %i.s = icmp ult i64 %i.r, -1970324836974592
  %i.t = and i64 %i.r, 9223372036854775807
  %i.u = icmp eq i64 %i.t, 0
  %or.cond = and i1 %i.s, %i.u
  %.sroa.04.0 = select i1 %or.cond, ptr @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, ptr %.sroa.02.0.i ; 2 uses
  %i.v = inttoptr i64 %.pre-phi to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.x = ptrtoint ptr %1 to i64
  %i.y = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.z = add i64 %i.y, %i.x
  %i.aa = or i64 %i.z, -281474976710656
  %i.ab = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !12
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !24
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #5
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit

_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.c ], [ %i.ak, %bb.d ]
  %i.al = tail call noundef i32 @_ZN6hermes2vm14OrderedHashMap6insertENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.04.0, ptr nonnull %.sroa.04.0) #5 ; 0 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.010.0 = phi i32 [ 1, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i6, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE8addValueENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEES9_.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17setPrototypeClearEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !42
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre4 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre4, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 44, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.4, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = inttoptr i64 %.pre-phi to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.0.0.copyload.i.i3.i = load i32, ptr %i.p, align 4, !tbaa !3
  %i.q = ptrtoint ptr %1 to i64
  %i.r = zext i32 %.sroa.0.0.copyload.i.i3.i to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr
  tail call void @_ZN6hermes2vm14OrderedHashMap5clearERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(9816) %1) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.03.0 = phi i32 [ 1, %bb.b ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18setPrototypeDeleteEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !45 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre5 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre5, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 45, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.5, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.q
  %i.r = inttoptr i64 %.pre-phi to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.t = ptrtoint ptr %1 to i64
  %i.u = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.v = add i64 %i.u, %i.t
  %i.w = or i64 %i.v, -281474976710656
  %i.x = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !12
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !24
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.z, i64 %i.x) #5
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit

_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.ag, %bb.d ]
  %i.ah = tail call noundef zeroext i1 @_ZN6hermes2vm14OrderedHashMap5eraseENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #5
  %i.ai = zext i1 %i.ah to i64
  %i.aj = or disjoint i64 %i.ai, -1407374883553280
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.04.0 = phi i32 [ 1, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %i.aj, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE9deleteKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19setPrototypeEntriesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !48 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre14 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre14, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.6, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.f

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.p = tail call ptr @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.o) #5
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = or i64 %i.q, -281474976710656            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !12
  store i64 %i.r, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %i.r) #5 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.aa, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = and i64 %i.ah, 562949949227008
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = icmp eq ptr %i.ag, %i.aj
  br i1 %i.ak, label %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit, label %bb.e, !prof !23

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef %i.al) #5
  %.sroa.0.0.copyload.i7.pre = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit

_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit, %bb.e
  %.sroa.0.0.copyload.i7 = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit ], [ %.sroa.0.0.copyload.i7.pre, %bb.e ]
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %.sroa.0.0.copyload.i.i.i, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.ap
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ad, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store i32 2, ptr %i.aq, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.011.0 = phi i32 [ 1, %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i7, %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19setPrototypeForEachEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !70 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %5, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre12 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre12, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.7, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.q, align 8, !tbaa !24 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.0.0.copyload.i7, -844424930131969
  br i1 %i.r, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.s = and i64 %.sroa.0.0.copyload.i7, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %.shift.i.i.i.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i.i.i.i.i8, align 1
  %7 = add i8 %6, -68
  %i.u = icmp ult i8 %7, 9
  %spec.select.i = select i1 %i.u, ptr %i.q, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.v = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !31 ; 2 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit9, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit9:           ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.ab, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !37
  store ptr @.str.8, ptr %4, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !39
  %i.ae = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.af = icmp ugt i32 %i.p, 1
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i = select i1 %i.af, ptr %i.ag, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.ah = tail call noundef i32 @_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE7forEachENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_8CallableEEENS4_INS0_11HermesValueEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i, ptr nonnull %.sroa.02.0.i)
  %i.ai = icmp ne i32 %i.ah, 0
  %spec.select = zext i1 %i.ai to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.011.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ae, %_ZN6hermes2vm11TwineChar16C2EPKc.exit9 ], [ %spec.select, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15setPrototypeHasEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !73 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre5 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre5, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 42, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.9, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.q
  %i.r = inttoptr i64 %.pre-phi to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.t = ptrtoint ptr %1 to i64
  %i.u = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.v = add i64 %i.u, %i.t
  %i.w = or i64 %i.v, -281474976710656
  %i.x = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !12
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !24
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.z, i64 %i.x) #5
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit

_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.ag, %bb.d ]
  %i.ah = tail call noundef zeroext i1 @_ZN6hermes2vm14OrderedHashMap3hasENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #5
  %i.ai = zext i1 %i.ah to i64
  %i.aj = or disjoint i64 %i.ai, -1407374883553280
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.04.0 = phi i32 [ 1, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %i.aj, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE6hasKeyENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22setPrototypeSizeGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !76
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.01.0.copyload, -844424930131969
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.sroa.01.0.copyload, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.shift.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZN6hermes2vm10dyn_vmcastINS0_9JSMapImplILNS0_8CellKindE47EEEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 43, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !37
  store ptr @.str.10, ptr %3, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !39
  %i.j = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_9JSMapImplILNS0_8CellKindE47EEEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.k, align 4, !tbaa !3
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  %i.r = uitofp i32 %i.q to double
  %i.s = bitcast double %i.r to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_9JSMapImplILNS0_8CellKindE47EEEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.3.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.s, %_ZN6hermes2vm10dyn_vmcastINS0_9JSMapImplILNS0_8CellKindE47EEEEEPT_NS0_11HermesValueE.exit ]
  %.sroa.0.0 = phi i32 [ %i.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_9JSMapImplILNS0_8CellKindE47EEEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18setPrototypeValuesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !81 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 47
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre14 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre14, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 45, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.11, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.f

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.p = tail call ptr @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.o) #5
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = or i64 %i.q, -281474976710656            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !12
  store i64 %i.r, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %i.r) #5 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.aa, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = and i64 %i.ah, 562949949227008
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = icmp eq ptr %i.ag, %i.aj
  br i1 %i.ak, label %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit, label %bb.e, !prof !23

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef %i.al) #5
  %.sroa.0.0.copyload.i7.pre = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit

_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit, %bb.e
  %.sroa.0.0.copyload.i7 = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit ], [ %.sroa.0.0.copyload.i7.pre, %bb.e ]
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %.sroa.0.0.copyload.i.i.i, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.ap
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ad, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store i32 1, ptr %i.aq, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.011.0 = phi i32 [ 1, %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit ], [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i7, %_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE18initializeIteratorERNS0_7RuntimeENS0_6HandleINS0_9JSMapImplILS2_47EEEEENS0_13IterationKindE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14setConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::CallResult.162", align 8 ; 5 uses
  %8 = alloca %"struct.hermes::vm::IteratorRecord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %1, ptr %3, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !87
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !89
  store ptr %3, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %.mask.i.i.i = and i64 %i.n, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.b, !prof !7

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 30, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !37
  store ptr @.str, ptr %4, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !39
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %2, align 8, !tbaa !26, !noalias !91 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !24 ; 2 uses
  %i.u = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.u, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.v = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %9 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.x = icmp eq i8 %9, 47
  br i1 %i.x, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %bb.b
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre73 = and i64 %.pre, 281474976710655
  %i.y = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.v, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre73, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.z = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ %i.y, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.t, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_9JSMapImplILNS0_8CellKindE47EEEEEbNS0_11HermesValueE.exit.thread.i ] ; 6 uses
  %i.aa = icmp ne i64 %.pre-phi, 0
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit32:          ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ac, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 42, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !37
  store ptr @.str.1, ptr %5, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !39
  %i.ag = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.w

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_9JSMapImplILNS0_8CellKindE47EEEEENS0_6HandleIT_EEv.exit
  %i.ah = call ptr @_ZN6hermes2vm14OrderedHashMap6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE17initializeStorageENS0_6HandleIS3_EERNS0_7RuntimeE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = or i64 %i.ai, -281474976710656          ; 3 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !12
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14OrderedHashMapEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ar = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ak, i64 %i.aj) #5
  %.sroa.0.0.copyload.i.i4.pre.i = load i64, ptr %i.ar, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14OrderedHashMapEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14OrderedHashMapEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.copyload.i.i4.i = phi i64 [ %i.aj, %bb.e ], [ %.sroa.0.0.copyload.i.i4.pre.i, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20 ; 3 uses
  %i.av = and i64 %.sroa.0.0.copyload.i.i4.i, 281474976710655 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = and i64 %i.ay, 562949949227008
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = icmp eq ptr %i.ax, %i.ba
  br i1 %i.bb, label %_ZN6hermes2vm9GCPointerINS0_14OrderedHashMapEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14OrderedHashMapEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i
  %i.bc = inttoptr i64 %i.av to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef %i.bc) #5
  br label %_ZN6hermes2vm9GCPointerINS0_14OrderedHashMapEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm9GCPointerINS0_14OrderedHashMapEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.g, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14OrderedHashMapEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = sub i64 %.sroa.0.0.copyload.i.i4.i, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.bg
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.au, align 4, !tbaa !3
  br label %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE17initializeStorageENS0_6HandleIS3_EERNS0_7RuntimeE.exit

_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE17initializeStorageENS0_6HandleIS3_EERNS0_7RuntimeE.exit: ; preds = %bb.c, %_ZN6hermes2vm9GCPointerINS0_14OrderedHashMapEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !40
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE17initializeStorageENS0_6HandleIS3_EERNS0_7RuntimeE.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !26, !noalias !94
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.bl, align 8, !tbaa !24
  %.mask.i = and i64 %.sroa.0.0.copyload.i33, -140737488355328
  switch i64 %.mask.i, label %bb.h [
    i64 -1688849860263936, label %.critedge
    i64 -1548112371908608, label %.critedge
  ]

.critedge:                                        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE17initializeStorageENS0_6HandleIS3_EERNS0_7RuntimeE.exit
  %.sroa.0.0.copyload.i38 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24
  br label %bb.w

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bm = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 253, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #5 ; 2 uses
  %i.bn = extractvalue { i32, i64 } %i.bm, 0
  %i.bo = extractvalue { i32, i64 } %i.bm, 1      ; 3 uses
  %i.bp = icmp eq i32 %i.bn, 0
  br i1 %i.bp, label %bb.w, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 192 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !12 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 200
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = icmp ult ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !12
  store i64 %i.bo, ptr %i.bs, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bq, i64 %i.bo) #5 ; 2 uses
  %.sroa.0.0.copyload.i.i39.pr = load i64, ptr %i.bx, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.sroa.0.0.copyload.i.i39 = phi i64 [ %i.bo, %bb.j ], [ %.sroa.0.0.copyload.i.i39.pr, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.j ], [ %i.bx, %bb.k ]
  %i.by = icmp ugt i64 %.sroa.0.0.copyload.i.i39, -844424930131969
  br i1 %i.by, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bz = and i64 %.sroa.0.0.copyload.i.i39, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %.shift.i.i.i.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %10 = load i8, ptr %.shift.i.i.i.i.i.i.i.i41, align 1
  %11 = add i8 %10, -68
  %i.cb = icmp ult i8 %11, 9
  %spec.select.i = select i1 %i.cb, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i40 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.cc = load i64, ptr %.sroa.0.0.i40, align 8, !tbaa !31 ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, -844424930131969
  %i.ce = and i64 %i.cc, 281474976710655
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = and i1 %i.cd, %i.cf
  br i1 %i.cg, label %bb.l, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit42

_ZN6hermes2vm11TwineChar16C2EPKc.exit42:          ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ch, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 38, ptr %i.ci, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.cj, align 8, !tbaa !37
  store ptr @.str.2, ptr %6, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ck, align 8, !tbaa !39
  %i.cl = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.w

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.cm = load i32, ptr %i.bh, align 8, !tbaa !40
  %.not71 = icmp eq i32 %i.cm, 0
  %i.cn = load ptr, ptr %2, align 8
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %.sroa.02.0.i = select i1 %.not71, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.co
  call void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.162") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 undef, i8 0) #5
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !97, !range !102, !noundef !103
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !12 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.n, label %bb.o, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !12
  store i64 -281474976710656, ptr %i.cu, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.cz = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 -281474976710656) #5
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i.i43 = phi ptr [ %i.cu, %bb.n ], [ %i.cz, %bb.o ] ; 3 uses
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.db = load i32, ptr %i.k, align 8, !tbaa !89  ; 2 uses
  %i.dc = zext i32 %i.db to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  store i32 %i.db, ptr %i.k, align 8, !tbaa !89
  store ptr %i.dg, ptr %i.j, align 8, !tbaa !22
  store ptr %i.da, ptr %i.i, align 8, !tbaa !12
  %i.dh = call ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(16) %8) #5 ; 2 uses
  %.not72 = icmp eq ptr %i.dh, inttoptr (i64 -1 to ptr)
  br i1 %.not72, label %.critedge28, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = icmp ugt i64 %i.di, -844424930131969
  %i.dk = and i64 %i.di, 281474976710655
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = and i1 %i.dj, %i.dl
  br i1 %i.dm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i44 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !24
  br label %.critedge28

bb.s:                                             ; preds = %bb.q
  %i.dn = or i64 %i.di, -281474976710656
  store i64 %i.dn, ptr %.0.i.i.i.i.i.i43, align 8, !tbaa !31
  %i.do = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 61, ptr nonnull %.0.i.i.i.i.i.i43, i32 0, ptr noundef null) #5 ; 2 uses
  %i.dp = extractvalue { i32, i64 } %i.do, 0
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.critedge28, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.dr = extractvalue { i32, i64 } %i.do, 1
  %i.ds = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i40, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, i64 %i.dr, i1 noundef zeroext false) #5
  %i.dt = extractvalue { i32, i64 } %i.ds, 0
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.u, label %bb.p, !prof !7, !llvm.loop !105

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8
  %i.dv = call noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.0.0.copyload) #5
  br label %.critedge28

.critedge28:                                      ; preds = %bb.s, %bb.p, %bb.u, %bb.r
  %.sroa.070.2 = phi i32 [ %i.dv, %bb.u ], [ 1, %bb.r ], [ 0, %bb.p ], [ 0, %bb.s ]
  %.sroa.11.1 = phi i64 [ undef, %bb.u ], [ %.sroa.0.0.copyload.i44, %bb.r ], [ undef, %bb.p ], [ undef, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge28
  %.sroa.070.3 = phi i32 [ %.sroa.070.2, %.critedge28 ], [ 0, %bb.l ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %.critedge28 ], [ undef, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.w

bb.w:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit32, %.critedge, %_ZN6hermes2vm11TwineChar16C2EPKc.exit42, %bb.v, %bb.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.070.7 = phi i32 [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %.critedge ], [ %i.ag, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32 ], [ 0, %bb.h ], [ %.sroa.070.3, %bb.v ], [ %i.cl, %_ZN6hermes2vm11TwineChar16C2EPKc.exit42 ]
  %.sroa.11.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i38, %.critedge ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32 ], [ undef, %bb.h ], [ %.sroa.11.2, %bb.v ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit42 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.070.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.11.6, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.162") align 8, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i8) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare ptr @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm9JSMapImplILNS0_8CellKindE47EE7forEachENS0_6HandleIS3_EERNS0_7RuntimeENS4_INS0_8CallableEEENS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !12
  store i64 -281474976710656, ptr %i.d, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.b, i64 -281474976710656) #5
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre46 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %.pre46, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %0, align 8, !tbaa !24
  %i.o = and i64 %.sroa.0.0.copyload.i.i17, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.sroa.0.0.copyload.i.i18 = load i32, ptr %i.q, align 4, !tbaa !3
  %i.r = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.s = zext i32 %.sroa.0.0.copyload.i.i18 to i64
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call noundef ptr @_ZNK6hermes2vm14OrderedHashMap12iteratorNextERNS0_7RuntimeEPNS0_12HashMapEntryE(ptr noundef nonnull align 4 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef null) #5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.x = zext i32 %i.n to i64                     ; 2 uses
  %storemerge.in41 = ptrtoint ptr %i.v to i64     ; 2 uses
  %storemerge42 = or i64 %storemerge.in41, -281474976710656
  store i64 %storemerge42, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.y = and i64 %storemerge.in41, 281474976710655 ; 2 uses
  %.not43 = icmp eq i64 %i.y, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.aa = phi i64 [ %i.y, %.lr.ph ], [ %i.au, %bb.e ]
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i32 %i.n, ptr %i.m, align 8, !tbaa !89
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !22
  store ptr %i.j, ptr %i.l, align 8, !tbaa !12
  %i.af = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.06.0.copyload = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.05.0.copyload = load i64, ptr %i.ah, align 8, !tbaa !24
  %.sroa.0.0.copyload.i22 = load i64, ptr %0, align 8, !tbaa !24
  %i.ai = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i64 %.sroa.05.0.copyload, i64 %.sroa.06.0.copyload, i64 %.sroa.0.0.copyload.i22, i1 noundef zeroext false) #5
  %i.aj = extractvalue { i32, i64 } %i.ai, 0
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %0, align 8, !tbaa !24
  %i.al = and i64 %.sroa.0.0.copyload.i.i23, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %.sroa.0.0.copyload.i.i24 = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i24 to i64
  %i.ap = add i64 %i.ao, %i.r
  %i.aq = inttoptr i64 %i.ap to ptr
  %.sroa.0.0.copyload.i.i25 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ar = and i64 %.sroa.0.0.copyload.i.i25, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call noundef ptr @_ZNK6hermes2vm14OrderedHashMap12iteratorNextERNS0_7RuntimeEPNS0_12HashMapEntryE(ptr noundef nonnull align 4 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.as) #5
  %storemerge.in = ptrtoint ptr %i.at to i64      ; 2 uses
  %storemerge = or i64 %storemerge.in, -281474976710656
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.au = and i64 %storemerge.in, 281474976710655 ; 2 uses
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.d, %bb.e, %_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.2 = phi i32 [ 1, %_ZN6hermes2vm13MutableHandleINS0_12HashMapEntryEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ 1, %bb.e ], [ 0, %bb.d ]
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.x
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i32 %i.n, ptr %i.m, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !22
  store ptr %i.j, ptr %i.l, align 8, !tbaa !12
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm26createSetIteratorPrototypeERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = tail call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = or i64 %i.c, -281474976710656            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !12
  store i64 %i.d, ptr %i.h, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.d) #5
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 259, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24setIteratorPrototypeNextEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.o = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.n, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 250) #5
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -844424930131968            ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !12
  store i64 %i.q, ptr %i.t, align 8, !tbaa !24
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #5
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.e ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #5
  ret ptr %.0.i.i.i.i.i.i
}

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24setIteratorPrototypeNextEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26, !noalias !108 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.e = icmp eq i8 %4, 49
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre8 = and i64 %.pre, 281474976710655
  %i.f = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre8, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.g = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i ], [ %i.f, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = icmp ne i64 %.pre-phi, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 59, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !37
  store ptr @.str.12, ptr %3, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !39
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE49EEEEENS0_6HandleIT_EEv.exit
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE11nextElementENS0_6HandleIS3_EERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = extractvalue { i32, i64 } %i.o, 1
  %i.r = icmp ne i32 %i.p, 0                      ; 2 uses
  %spec.select = zext i1 %i.r to i32
  %spec.select7 = select i1 %i.r, i64 %i.q, i64 undef
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.05.1 = phi i32 [ %i.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select, %bb.b ]
  %.sroa.46.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select7, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.46.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE49EE11nextElementENS0_6HandleIS3_EERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !12
  store i64 -1688849860263936, ptr %i.d, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.b, i64 -1688849860263936) #5
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !24
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 4, !tbaa !111, !range !102, !noundef !103
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.0.0.copyload.i.i26 = load i32, ptr %i.p, align 4, !tbaa !3
  %i.q = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.r = zext i32 %.sroa.0.0.copyload.i.i26 to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr
  %.sroa.0.0.copyload.i.i28 = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i28, 0
  %i.u = zext i32 %.sroa.0.0.copyload.i.i28 to i64
  %i.v = add i64 %i.u, %i.q
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = select i1 %.not.i.i.i.i, ptr null, ptr %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.y, align 4, !tbaa !3
  %i.z = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.aa = add i64 %i.z, %i.q
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call noundef ptr @_ZNK6hermes2vm14OrderedHashMap12iteratorNextERNS0_7RuntimeEPNS0_12HashMapEntryE(ptr noundef nonnull align 4 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.x) #5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ag = ptrtoint ptr %i.o to i64
  %i.ah = and i64 %i.ag, 562949949227008
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp eq ptr %i.af, %i.ai
  br i1 %i.aj, label %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.ac) #5
  br label %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.d, %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = sub i64 %i.ak, %i.q
  %i.am = trunc i64 %i.al to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.am
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.o, align 4, !tbaa !3
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %0, align 8, !tbaa !24
  %i.an = and i64 %.sroa.0.0.copyload.i.i29, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !112 ; 3 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !55
  switch i32 %i.as, label %bb.n [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.at = zext i32 %i.aq to i64
  %i.au = add i64 %i.at, %i.q
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.08.0.copyload = load i64, ptr %i.aw, align 8, !tbaa !24
  store i64 %.sroa.08.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ax = zext i32 %i.aq to i64
  %i.ay = add i64 %i.ax, %i.q
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.07.0.copyload = load i64, ptr %i.ba, align 8, !tbaa !24
  store i64 %.sroa.07.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.bb = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 2, i32 noundef 2) #5 ; 4 uses
  %.not67 = icmp eq ptr %i.bb, inttoptr (i64 -1 to ptr)
  br i1 %.not67, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %0, align 8, !tbaa !24
  %i.bc = and i64 %.sroa.0.0.copyload.i.i35, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.0.0.copyload.i.i36 = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bf = zext i32 %.sroa.0.0.copyload.i.i36 to i64
  %i.bg = add i64 %i.bf, %i.q
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.06.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !24
  store i64 %.sroa.06.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.bj = tail call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, ptr nonnull %.0.i.i.i.i.i.i) #5 ; 0 uses
  %.sroa.0.0.copyload.i.i37 = load i64, ptr %0, align 8, !tbaa !24
  %i.bk = and i64 %.sroa.0.0.copyload.i.i37, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i.i38 = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bn = zext i32 %.sroa.0.0.copyload.i.i38 to i64
  %i.bo = add i64 %i.bn, %i.q
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.04.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !24
  store i64 %.sroa.04.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.br = tail call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1, ptr nonnull %.0.i.i.i.i.i.i) #5 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bb, align 8, !tbaa !24
  store i64 %.sroa.0.0.copyload.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.k:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 1, ptr %i.bs, align 4, !tbaa !111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 3 uses
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = and i64 %i.bv, 562949949227008
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp ne ptr %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ca = load i8, ptr %i.bz, align 1, !range !102
end_hunk_0
