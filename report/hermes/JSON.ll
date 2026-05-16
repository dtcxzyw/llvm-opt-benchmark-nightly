inline.NumInlined: 184
inline.NumDeleted: 151
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }

@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm16createJSONObjectERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #2
  br label %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE59EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !7
  br label %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE59EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12SingleObjectILNS0_8CellKindE59EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !15 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, 281474976710655
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.o = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.q
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.s = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, %i.o
  %i.t = trunc i64 %i.s to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.t
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 989855784, ptr %i.i, align 4, !tbaa !17
  store <4 x i32> <i32 0, i32 14, i32 14, i32 14>, ptr %i.u, align 4
  %.01320.i.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.3.i.i.i, align 4, !tbaa !3
  %.01320.i.ptr.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.4.i.i.i, align 4, !tbaa !3
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = or i64 %i.v, -281474976710656            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE59EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !21
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12SingleObjectILNS0_8CellKindE59EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE59EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.af = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %i.w) #2
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12SingleObjectILNS0_8CellKindE59EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12SingleObjectILNS0_8CellKindE59EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.af, %bb.e ] ; 4 uses
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 280, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm9jsonParseEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #2
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 406, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm13jsonStringifyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3) #2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.ah = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 405) #2
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = or i64 %i.ai, -844424930131968          ; 2 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !18  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12SingleObjectILNS0_8CellKindE59EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !21
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !15
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12SingleObjectILNS0_8CellKindE59EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ar = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ak, i64 %i.aj) #2
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.f ], [ %i.ar, %bb.g ]
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 268436020, ptr %.0.i.i.i.i.i.i.i, i32 316) #2
  ret ptr %.0.i.i.i.i.i.i
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm9jsonParseEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #2 ; 2 uses
  %.not9 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not9, label %bb.e, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !21
  store i64 %i.g, ptr %i.k, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #2
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !33
  %i.r = icmp ugt i32 %i.q, 1
  %i.s = load ptr, ptr %2, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.sroa.02.0.i5 = select i1 %i.r, ptr %i.t, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.02.0.i5, align 8, !tbaa !15 ; 2 uses
  %i.u = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.u, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.v = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %3 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %4 = add i8 %3, -68
  %i.x = icmp ult i8 %4, 9
  %spec.select.i = select i1 %i.x, ptr %.sroa.02.0.i5, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ]
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm16runtimeJSONParseERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEENS3_INS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr %.sroa.0.0.i) #2 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = extractvalue { i32, i64 } %i.y, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.08.0 = phi i32 [ %i.z, %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.aa, %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm13jsonStringifyEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8                ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = icmp ugt i32 %i.b, 1
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.02.0.i4 = select i1 %i.e, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.g = icmp ugt i32 %i.b, 2
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.sroa.02.0.i5 = select i1 %i.g, ptr %i.h, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.i = tail call { i32, i64 } @_ZN6hermes2vm20runtimeJSONStringifyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr nonnull %.sroa.02.0.i4, ptr nonnull %.sroa.02.0.i5) #2
  ret { i32, i64 } %i.i
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #1

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm16runtimeJSONParseERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEENS3_INS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm20runtimeJSONStringifyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!7 = !{!8, !10, i64 16}
!8 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !9, i64 0, !10, i64 16, !10, i64 24}
!9 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!13 = !{!8, !10, i64 24}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !20, i64 8}
!20 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!21 = !{!22, !30, i64 192}
!22 = !{!"_ZTSN6hermes2vm7GCScopeE", !23, i64 0, !20, i64 8, !5, i64 16, !24, i64 144, !30, i64 192, !30, i64 200, !4, i64 208}
!23 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!24 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !25, i64 0, !29, i64 16}
!25 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !26, i64 0}
!26 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !27, i64 0}
!27 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !28, i64 0}
!28 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!29 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!30 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!31 = !{!22, !30, i64 200}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!34, !4, i64 8}
!34 = !{!"_ZTSN6hermes2vm10NativeArgsE", !35, i64 0, !4, i64 8, !30, i64 16}
!35 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !30, i64 0}
end_hunk_0
