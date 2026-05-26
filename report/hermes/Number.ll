inline.NumInlined: 587
inline.NumDeleted: 219
begin_hunk_0
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.160" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.161"] }
%"struct.llvh::AlignedCharArrayUnion.161" = type { %"struct.llvh::AlignedCharArray.162" }
%"struct.llvh::AlignedCharArray.162" = type { [1 x i8] }
%class.DtoaAllocator = type { %union.anon.163, ptr }
%union.anon.163 = type { ptr, [1192 x i8] }
%"class.llvh::raw_svector_ostream" = type { %"class.llvh::raw_pwrite_stream.base", ptr }
%"class.llvh::raw_pwrite_stream.base" = type { %"class.llvh::raw_ostream.base" }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.llvh::format_object" = type <{ %"class.llvh::format_object_base", %"class.std::tuple.165", [4 x i8] }>
%"class.llvh::format_object_base" = type { ptr, ptr }
%"class.std::tuple.165" = type { %"struct.std::_Tuple_impl.166" }
%"struct.std::_Tuple_impl.166" = type { %"struct.std::_Head_base.167" }
%"struct.std::_Head_base.167" = type { i32 }

$_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_ = comdat any

$_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE = comdat any

$_ZN4llvh15SmallVectorImplIcE6insertEPcOc = comdat any

$_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE = comdat any

$_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE = comdat any

$_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE = comdat any

$_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

$_ZNK4llvh13format_objectIJiEE7snprintEPcj = comdat any

$_ZTVN4llvh13format_objectIJiEEE = comdat any

@.str = private unnamed_addr constant [54 x i8] c"Number.prototype.valueOf() can only be used on Number\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Number.prototype.toString() can only be used on Number\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid radix value\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Number.prototype.toLocaleString() can only be used on Number\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"toFixed argument must be between 0 and 100\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Number.prototype.toFixed() can only be used on Number\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Number.prototype.toExponential() can only be used on Number\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"toExponential argument must be between 0 and 100\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"e+0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"e%+d\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Number.prototype.toPrecision() can only be used on Number\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"toPrecision argument must be between 1 and 100\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZTVN4llvh13format_objectIJiEEE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvh18format_object_base4homeEv, ptr @_ZNK4llvh13format_objectIJiEE7snprintEPcj] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23createNumberConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 262, ptr noundef nonnull @_ZN6hermes2vm17numberConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSNumberEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 56) #12 ; 15 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 35, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22numberPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23numberPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 30, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm29numberPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 270, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22numberPrototypeToFixedEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 271, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm28numberPrototypeToExponentialEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 272, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm26numberPrototypeToPrecisionEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
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
  store i64 -1688849860263936, ptr %i.f, align 8, !tbaa !23
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.d, i64 -1688849860263936) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 16 uses
  store i64 9218868437227405311, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.l = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 263, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 1, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.m = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 264, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 9221120237041090560, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.n = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 38, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 -4503599627370496, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.o = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 265, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 9218868437227405312, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.p = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 266, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 4372995238176751616, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.q = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 267, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 4845873199050653695, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.r = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 268, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  store i64 -4377498837804122113, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !25
  %i.s = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 269, i32 312, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #12 ; 0 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 49, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm14numberIsFiniteEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 273, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm15numberIsIntegerEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 48, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm11numberIsNaNEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 274, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm19numberIsSafeIntegerEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 46, ptr nonnull %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 47, ptr nonnull %i.u) #12
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17numberConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.d) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = extractvalue { i32, i64 } %i.e, 1        ; 3 uses
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %.critedge, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %.mask.i = and i64 %i.g, -281474976710656
  %i.i = icmp eq i64 %.mask.i, -562949953421312
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = bitcast i64 %i.g to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = and i64 %i.g, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call { i32, double } @_ZNK6hermes2vm15BigIntPrimitive8toDoubleERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(9816) %1) #12 ; 2 uses
  %i.n = extractvalue { i32, double } %i.m, 0
  %i.o = extractvalue { i32, double } %i.m, 1
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %.critedge, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.3 = phi double [ 0.000000e+00, %bb.a ], [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25
  %.mask.i.i.i = and i64 %i.s, -140737488355328
  %.not19 = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !32, !noalias !33
  %.sroa.03.0.copyload = load i64, ptr %i.t, align 8, !tbaa !23 ; 2 uses
  %i.u = and i64 %.sroa.03.0.copyload, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %.3, ptr %i.w, align 8, !tbaa !36
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.x = fcmp uno double %.3, 0.000000e+00
  %i.y = bitcast double %.3 to i64
  %.sroa.0.0.i = select i1 %i.x, i64 9221120237041090560, i64 %i.y, !prof !30
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.h, %bb.g
  %.sroa.016.2 = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.b ], [ 0, %bb.e ]
  %.sroa.517.0 = phi i64 [ %.sroa.03.0.copyload, %bb.g ], [ %.sroa.0.0.i, %bb.h ], [ undef, %bb.b ], [ undef, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.016.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.517.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22numberPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = icmp ult i64 %i.b, -1970324836974592
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, -844424930131969
  br i1 %i.d, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.b, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 939524096
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSNumberEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !55
  store ptr @.str, ptr %3, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.l, align 8, !tbaa !57
  %i.m = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.d

_ZN6hermes2vm10dyn_vmcastINS0_8JSNumberEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !36 ; 2 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00
  %i.q = bitcast double %i.o to i64
  %.sroa.0.0.i = select i1 %i.p, i64 9221120237041090560, i64 %i.q, !prof !30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm10dyn_vmcastINS0_8JSNumberEEEPT_NS0_11HermesValueE.exit
  %.sroa.4.0 = phi i64 [ %.sroa.0.0.i, %_ZN6hermes2vm10dyn_vmcastINS0_8JSNumberEEEPT_NS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.b, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_8JSNumberEEEPT_NS0_11HermesValueE.exit ], [ %i.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23numberPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !58 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, -1970324836974592
  %i.d = bitcast i64 %i.b to double
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %i.b, -844424930131969
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.b, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.h, -16777216
  %i.i = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 939524096
  br i1 %i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !55
  store ptr @.str.1, ptr %3, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !57
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.125.pre = load double, ptr %i.o, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.125 = phi double [ %.125.pre, %bb.d ], [ %i.d, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %.not57 = icmp eq i32 %i.q, 0
  br i1 %.not57, label %.thread53, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !23
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.s = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.s, label %.thread53, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.t = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.r) #12 ; 2 uses
  %i.u = extractvalue { i32, i64 } %i.t, 0
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = extractvalue { i32, i64 } %i.t, 1
  %i.x = bitcast i64 %i.w to double               ; 3 uses
  %i.y = fcmp uge double %i.x, 2.000000e+00
  %i.z = fcmp ule double %i.x, 3.600000e+01
  %or.cond.not = and i1 %i.y, %i.z
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 19, ptr %i.ab, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !55
  store ptr @.str.2, ptr %4, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !57
  %i.ae = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.af = fptoui double %i.x to i32               ; 2 uses
  %.not = icmp ne i32 %i.af, 10
  %i.ag = tail call double @llvm.fabs.f64(double %.125)
  %i.ah = fcmp one double %i.ag, +inf
  %or.cond = select i1 %.not, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.j, label %.thread53

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call ptr @_ZN6hermes2vm23numberToStringWithRadixERNS0_7RuntimeEdj(ptr noundef nonnull align 8 dereferenceable(9816) %1, double noundef %.125, i32 noundef %i.af) #12
  %.sroa.0.0.copyload.i34 = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %.critedge

.thread53:                                        ; preds = %bb.e, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.i
  %i.aj = fcmp uno double %.125, 0.000000e+00
  %i.ak = bitcast double %.125 to i64
  %.sroa.0.0.i35 = select i1 %i.aj, i64 9221120237041090560, i64 %i.ak, !prof !30 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !7  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !22

bb.k:                                             ; preds = %.thread53
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !11
  store i64 %.sroa.0.0.i35, ptr %i.ao, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.l:                                             ; preds = %.thread53
  %i.at = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.am, i64 %.sroa.0.0.i35) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.k ], [ %i.at, %bb.l ]
  %i.au = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not58 = icmp eq ptr %i.au, inttoptr (i64 -1 to ptr)
  br i1 %.not58, label %.critedge, label %bb.m, !prof !30

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = or i64 %i.av, -844424930131968
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.h, %bb.f, %.thread, %bb.j
  %.sroa.041.4 = phi i32 [ 0, %bb.f ], [ 1, %bb.j ], [ %i.n, %.thread ], [ %i.ae, %bb.h ], [ 1, %bb.m ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.7.1 = phi i64 [ undef, %bb.f ], [ %.sroa.0.0.copyload.i34, %bb.j ], [ undef, %.thread ], [ undef, %bb.h ], [ %i.aw, %bb.m ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm29numberPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !61
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, -1970324836974592
  %i.d = bitcast i64 %i.b to double
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %i.b, -844424930131969
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.b, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.h, -16777216
  %i.i = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 939524096
  br i1 %i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 60, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !55
  store ptr @.str.3, ptr %3, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !57
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.1.pre = load double, ptr %i.o, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi double [ %.1.pre, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.p = fcmp uno double %.1, 0.000000e+00
  %i.q = bitcast double %.1 to i64
  %.sroa.0.0.i = select i1 %i.p, i64 9221120237041090560, i64 %i.q, !prof !30 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !11
  store i64 %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %.sroa.0.0.i) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %.thread
  %.sroa.012.2 = phi i32 [ %i.n, %.thread ], [ 1, %bb.h ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.4.1 = phi i64 [ undef, %.thread ], [ %i.ac, %bb.h ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22numberPrototypeToFixedEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvh::SmallString", align 8 ; 13 uses
  %8 = alloca %class.DtoaAllocator, align 8       ; 4 uses
  %9 = alloca %"class.llvh::SmallString", align 8 ; 19 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not70 = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not70, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.j
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.ag, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.n = extractvalue { i32, i64 } %i.k, 1
  %i.o = bitcast i64 %i.n to double               ; 3 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %i.q = fcmp ogt double %i.o, 1.000000e+02
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.c, !prof !30

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 42, ptr %i.t, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !55
  store ptr @.str.4, ptr %5, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !57
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.x = fptosi double %i.o to i32                ; 6 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !32, !noalias !64 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = icmp ult i64 %i.z, -1970324836974592
  %i.ab = bitcast i64 %i.z to double
  br i1 %i.aa, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ugt i64 %i.z, -844424930131969
  br i1 %i.ac, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.d
  %i.ad = and i64 %i.z, 281474976710655
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i32, ptr %i.ae, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.af, -16777216
  %i.ag = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 939524096
  %spec.select.i = select i1 %i.ag, ptr %i.y, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.d, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.d ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i ]
  %i.ah = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !25 ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, -844424930131969
  %i.aj = and i64 %i.ah, 281474976710655          ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = and i1 %i.ai, %i.ak
  br i1 %i.al, label %.thread, label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.am, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 53, ptr %i.an, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !55
  store ptr @.str.5, ptr %6, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ap, align 8, !tbaa !57
  %i.aq = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ag

.thread:                                          ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ar = inttoptr i64 %i.aj to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.1.pre = load double, ptr %i.as, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.thread
  %.1 = phi double [ %.1.pre, %.thread ], [ %i.ab, %bb.c ] ; 7 uses
  %i.at = fcmp uno double %.1, 0.000000e+00
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.av = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.au, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 38) #12
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = or i64 %i.aw, -844424930131968
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.ay = tail call noundef double @llvm.fabs.f64(double %.1)
  %i.az = fcmp ult double %i.ay, 1.000000e+21
  br i1 %i.az, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !11
  store double %.1, ptr %i.bd, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

end_hunk_0
