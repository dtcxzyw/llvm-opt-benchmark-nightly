inline.NumInlined: 141
inline.NumDeleted: 84
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }

@.str = private unnamed_addr constant [28 x i8] c"BigInt is not a constructor\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"radix out-of-range in BigInt.prototype.toString\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23createBigIntConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 94, ptr noundef nonnull @_ZN6hermes2vm17bigintConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSBigIntEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 67) #3 ; 3 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm23bigintPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 35, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22bigintPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 30, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm29bigintPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 95, ptr noundef nonnull @_ZN6hermes2vm15BigIntPrimitive6asIntNERNS0_7RuntimeEmNS0_6HandleIS1_EE, ptr noundef nonnull @_ZN6hermes2vm14bigintTruncateEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #3
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.b, i32 96, ptr noundef nonnull @_ZN6hermes2vm15BigIntPrimitive7asUintNERNS0_7RuntimeEmNS0_6HandleIS1_EE, ptr noundef nonnull @_ZN6hermes2vm14bigintTruncateEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.d = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 94) #3
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
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17bigintConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %.mask.i.i.i = and i64 %i.c, -140737488355328
  %.not = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %.not, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store ptr @.str, ptr %3, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !36
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !38, !noalias !39
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !23
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ -1688849860263936, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !11
  store i64 %.sroa.0.0.i, ptr %i.p, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.u = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %.sroa.0.0.i) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef 2) #3 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = extractvalue { i32, i64 } %i.v, 1        ; 2 uses
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %bb.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.z = icmp ult i64 %i.x, -1970324836974592
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = bitcast i64 %i.x to double
  %i.ab = tail call { i32, i64 } @_ZN6hermes2vm14numberToBigIntERNS0_7RuntimeEd(ptr noundef nonnull align 8 dereferenceable(9816) %1, double noundef %i.aa) #3 ; 2 uses
  %i.ac = extractvalue { i32, i64 } %i.ab, 0
  %i.ad = extractvalue { i32, i64 } %i.ab, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #3 ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = extractvalue { i32, i64 } %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.09.1 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.af, %bb.h ], [ %i.ac, %bb.g ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.5.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ag, %bb.h ], [ %i.ad, %bb.g ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23bigintPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !43
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a) #3 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i32, i64 } %i.b, 1
  %i.f = and i64 %i.e, 281474976710655
  %i.g = or disjoint i64 %i.f, -562949953421312   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !11
  store i64 %i.g, ptr %i.k, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37
  %.not = icmp eq i32 %i.r, 0
  %i.s = load ptr, ptr %2, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.t ; 2 uses
  %i.u = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !28
  %.mask.i = and i64 %i.u, -140737488355328
  %i.v = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.v, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.w = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #3 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.z = extractvalue { i32, i64 } %i.w, 1
  %i.aa = bitcast i64 %i.z to double              ; 3 uses
  %i.ab = fcmp olt double %i.aa, 2.000000e+00
  %i.ac = fcmp ogt double %i.aa, 3.600000e+01
  %or.cond = or i1 %i.ab, %i.ac
  br i1 %or.cond, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.g

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 47, ptr %i.ae, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !34
  store ptr @.str.1, ptr %3, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ag, align 8, !tbaa !36
  %i.ah = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = fptoui double %i.aa to i32
  %i.aj = trunc i32 %i.ai to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %.1 = phi i8 [ 10, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ %i.aj, %bb.g ]
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = tail call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive8toStringERNS0_7RuntimeENS0_12PseudoHandleIS1_EEh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.al, i8 noundef zeroext %.1) #3 ; 2 uses
  %i.an = extractvalue { i32, i64 } %i.am, 0
  %i.ao = extractvalue { i32, i64 } %i.am, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.a
  %.sroa.017.2 = phi i32 [ 0, %bb.a ], [ %i.an, %bb.h ], [ %i.ah, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.e ]
  %.sroa.518.1 = phi i64 [ undef, %bb.a ], [ %i.ao, %bb.h ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.017.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.518.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22bigintPrototypeValueOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !46
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a) #3
  ret { i32, i64 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm29bigintPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !49
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a) #3 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = extractvalue { i32, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.f, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !11
  store i64 %i.d, ptr %i.i, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.d) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  %i.o = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #3 ; 2 uses
  %.not = icmp eq ptr %i.o, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or i64 %i.p, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.a
  %.sroa.09.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.410.1 = phi i64 [ undef, %bb.a ], [ %i.q, %bb.e ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.410.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive6asIntNERNS0_7RuntimeEmNS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), i64 noundef, ptr) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14bigintTruncateEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #3 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double
  %i.j = fptoui double %i.i to i64
  %i.k = load i32, ptr %i.a, align 8, !tbaa !37
  %i.l = icmp ugt i32 %i.k, 1
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  %.sroa.02.0.i8 = select i1 %i.l, ptr %i.n, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i8) #3 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = and i64 %i.r, 281474976710655
  %i.t = or disjoint i64 %i.s, -562949953421312   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !11
  store i64 %i.t, ptr %i.x, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.t) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.d ], [ %i.ac, %bb.e ]
  %i.ad = tail call { i32, i64 } %0(ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 noundef %i.j, ptr %.0.i.i.i.i.i.i) #3 ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0
  %i.af = extractvalue { i32, i64 } %i.ad, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %bb.b, %bb.a
  %.sroa.013.1 = phi i32 [ 0, %bb.a ], [ %i.ae, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ 0, %bb.b ]
  %.sroa.414.1 = phi i64 [ undef, %bb.a ], [ %i.af, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.414.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive7asUintNERNS0_7RuntimeEmNS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), i64 noundef, ptr) #2

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14numberToBigIntERNS0_7RuntimeEd(ptr noundef nonnull align 8 dereferenceable(9816), double noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15thisBigIntValueERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive8toStringERNS0_7RuntimeENS0_12PseudoHandleIS1_EEh(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSBigIntEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

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
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!45 = distinct !{!45, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!48 = distinct !{!48, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!51 = distinct !{!51, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_0
