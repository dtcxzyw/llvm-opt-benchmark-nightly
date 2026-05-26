inline.NumInlined: 2755
inline.NumDeleted: 1034
begin_hunk_0_@_ZN6hermes2vm11Interpreter33getArgumentsPropByValSlowPath_RJSERNS0_7RuntimeEPNS0_17PinnedHermesValueES5_NS0_6HandleINS0_8CallableEEEb:bb.a
  br i1 %i.bb, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bc = load i16, ptr %7, align 8
  %i.bd = and i16 %i.bc, 16
  %.not = icmp eq i16 %i.bd, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = inttoptr i64 %i.az to ptr
  %.sroa.06.0.copyload = load i64, ptr %7, align 8
  %i.bf = call { i32, i64 } @_ZN6hermes2vm8JSObject20getComputedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeERNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorE(ptr nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.06.0.copyload) ; 2 uses
  %i.bg = extractvalue { i32, i64 } %i.bf, 0
  %i.bh = extractvalue { i32, i64 } %i.bf, 1
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.r

.critedge:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.p
  %.sroa.068.0 = phi i32 [ %i.bg, %bb.p ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.sroa.9.0 = phi i64 [ %i.bh, %bb.p ], [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.critedge43

bb.r:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.q
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !61
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = call noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr noundef %i.bj) #10
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !69
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = uitofp i32 %i.bn to double
  %i.bp = bitcast double %i.bo to i64
  br label %.critedge43

bb.t:                                             ; preds = %bb.r, %bb.c
  %i.bq = call ptr @_ZN6hermes2vm11Interpreter22reifyArgumentsSlowPathERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %3, i1 noundef zeroext %4) ; 2 uses
  %.not72 = icmp eq ptr %i.bq, inttoptr (i64 -1 to ptr)
  br i1 %.not72, label %.critedge43, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.bq, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i49, ptr %1, align 8, !tbaa !69
  %i.br = call { i32, i64 } @_ZN6hermes2vm11Interpreter33getArgumentsPropByValSlowPath_RJSERNS0_7RuntimeEPNS0_17PinnedHermesValueES5_NS0_6HandleINS0_8CallableEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr %3, i1 noundef zeroext %4) ; 2 uses
  %i.bs = extractvalue { i32, i64 } %i.br, 0
  %i.bt = extractvalue { i32, i64 } %i.br, 1
  br label %.critedge43

.critedge43:                                      ; preds = %bb.s, %.critedge, %bb.i, %bb.u, %bb.t, %bb.d, %bb.b
  %.sroa.068.4 = phi i32 [ 0, %bb.d ], [ %i.e, %bb.b ], [ 0, %bb.t ], [ %i.bs, %bb.u ], [ 1, %bb.s ], [ 1, %bb.i ], [ %.sroa.068.0, %.critedge ]
  %.sroa.9.4 = phi i64 [ -1688849860263936, %bb.d ], [ %i.f, %bb.b ], [ -1688849860263936, %bb.t ], [ %i.bt, %bb.u ], [ %i.bp, %bb.s ], [ %.sroa.012.0.copyload, %bb.i ], [ %.sroa.9.0, %.critedge ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.068.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm12toArrayIndexERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm8JSObject20getComputedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeERNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %.sroa.319.0.extract.shift = lshr i64 %3, 32    ; 4 uses
  %i.a = and i64 %3, 32
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %.sroa.319.0.extract.trunc = trunc nuw i64 %.sroa.319.0.extract.shift to i32
  %i.b = load i32, ptr %0, align 4
  %i.c = lshr i32 %i.b, 24
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = tail call i64 %i.h(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.319.0.extract.trunc) #10, !inline_history !106
  %i.j = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.i, 1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = and i64 %3, 1280
  %or.cond = icmp eq i64 %i.k, 0
  br i1 %or.cond, label %bb.i, label %bb.d, !prof !107

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %0 to i64
  %i.m = or i64 %i.l, -281474976710656            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f, !prof !60

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !49
  store i64 %i.m, ptr %i.q, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 %i.m) #10
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !46  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre24 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !59
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.e, %bb.f
  %i.w = phi ptr [ %i.s, %bb.e ], [ %.pre26, %bb.f ]
  %i.x = phi ptr [ %i.u, %bb.e ], [ %.pre24, %bb.f ] ; 4 uses
  %i.y = phi ptr [ %i.o, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.z = or disjoint i64 %.sroa.319.0.extract.shift, -1266637395197952 ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.w
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !60

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !49
  store i64 %i.z, ptr %i.x, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %i.z) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i16 = phi ptr [ %i.x, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = tail call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i16, ptr %.0.i.i.i.i.i.i) #10
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.af = icmp ult i64 %3, 21474836480
  br i1 %i.af, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = add nuw nsw i64 %.sroa.319.0.extract.shift, 4294967291
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = and i64 %i.am, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.j, %bb.k
  %.sink6.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.319.0.extract.shift, %bb.j ]
  %.sink.i.i = phi ptr [ %i.an, %bb.k ], [ %i.ag, %bb.j ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.sink6.i.i
  %.sroa.0.0.i.i = load i32, ptr %i.ap, align 4, !tbaa !3
  store i32 %.sroa.0.0.i.i, ptr %4, align 4
  %i.aq = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.ar = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.aq, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.b
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.ar, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %i.ae, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %i.j, %bb.b ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !61 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.02.0.copyload, -844424930131969
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.sroa.02.0.copyload, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = add i32 %i.d, -1157627904
  %i.f = icmp ult i32 %i.e, 67108864
  br i1 %i.f, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit, label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.g = tail call { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.d, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1140850688
  br i1 %i.h, label %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit, label %bb.d

_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef nonnull %i.c, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.l = tail call noundef i32 @_ZN6hermes2vm7Runtime25raiseTypeErrorForCallableENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1) #10
  %i.m = insertvalue { i32, i64 } poison, i32 %i.l, 0
  %i.n = insertvalue { i32, i64 } %i.m, i64 -1688849860263936, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit, %bb.d, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.n, %bb.d ], [ %i.k, %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit ], [ %i.g, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !328
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !328
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !329
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !330  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9472 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  store i64 %i.k, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9808
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !331
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.k
  %i.t = and i64 %i.s, 34359738360
  %i.u = icmp samesign ugt i64 %i.t, 256
  br i1 %i.u, label %bb.d, label %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit

_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit: ; preds = %bb.c
  store ptr %i.i, ptr %i.h, align 8, !tbaa !330
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.j, align 8, !tbaa !68
  %i.y = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes2vm7Runtime10allocStackEjNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1, i64 -1688849860263936) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !332
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.ad = getelementptr inbounds i8, ptr %i.i, i64 -56
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69, !noalias !337
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds i8, ptr %i.i, i64 -40
  store ptr %i.ad, ptr %2, align 8, !tbaa !66, !alias.scope !337
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !340, !alias.scope !337
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !342, !alias.scope !337
  %i.ak = call { i32, i64 } %i.aa(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull dead_on_return %2) #10 ; 2 uses
  %i.al = extractvalue { i32, i64 } %i.ak, 0
  %i.am = extractvalue { i32, i64 } %i.ak, 1
  store ptr %i.i, ptr %i.h, align 8, !tbaa !330
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !69
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !68
  %i.aq = icmp ne i32 %i.al, 0                    ; 2 uses
  %spec.select = zext i1 %i.aq to i32
  %spec.select22 = select i1 %i.aq, i64 %i.am, i64 -1688849860263936, !prof !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit, %bb.b
  %.sroa.021.2 = phi i32 [ %i.g, %bb.b ], [ %i.y, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit ], [ %spec.select, %bb.d ]
  %.sroa.5.2 = phi i64 [ -1688849860263936, %bb.b ], [ -1688849860263936, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit ], [ %spec.select22, %bb.d ]
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !328
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.a, align 8, !tbaa !328
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.021.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime25raiseTypeErrorForCallableENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm11Interpreter20getByIdTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !69     ; 2 uses
  %.mask.i.i = and i64 %i.a, -281474976710656
  %i.b = icmp eq i64 %.mask.i.i, -844424930131968
  %i.c = icmp eq i32 %2, 85
  %or.cond.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i, label %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit, label %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit.thread

_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit: ; preds = %bb.a
  %i.d = and i64 %i.a, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !343
  %i.h = and i32 %i.g, 2147483647
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = bitcast double %i.i to i64
  %i.k = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.j, 1
  br label %bb.d

_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit.thread: ; preds = %bb.a
  %i.l = tail call ptr @_ZN6hermes2vm21getPrimitivePrototypeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1) #10 ; 2 uses
  %.not = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes2vm35amendPropAccessErrorMsgWithPropNameERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull @.str, i64 4, i32 %2) #10
  %i.n = insertvalue { i32, i64 } poison, i32 %i.m, 0
  %i.o = insertvalue { i32, i64 } %i.n, i64 -1688849860263936, 1
  br label %bb.d

bb.c:                                             ; preds = %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit.thread
  %i.p = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.l, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, ptr nonnull %1, i32 0, ptr noundef null) #10
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit, %bb.b, %bb.c
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.k, %_ZN6hermes2vm11Interpreter30tryGetPrimitiveOwnPropertyByIdERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE.exit ], [ %i.o, %bb.b ], [ %i.p, %bb.c ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare ptr @_ZN6hermes2vm21getPrimitivePrototypeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm35amendPropAccessErrorMsgWithPropNameERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, i64, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN6hermes2vm11Interpreter21getByValTransientFastERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !69     ; 2 uses
  %.mask.i = and i64 %i.a, -281474976710656
  %i.b = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !61 ; 2 uses
  %i.c = icmp ult i64 %.sroa.0.0.copyload.i.i.i, -1970324836974592
  br i1 %i.c, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.b
  %i.d = bitcast i64 %.sroa.0.0.copyload.i.i.i to double ; 2 uses
  %i.e = fptoui double %i.d to i32                ; 3 uses
  %i.f = uitofp i32 %i.e to double
  %i.g = fcmp oeq double %i.d, %i.f
  %i.h = icmp ne i32 %i.e, -1
  %or.cond.i.i = and i1 %i.h, %i.g
  %i.i = zext i32 %i.e to i64
  %i.j = or disjoint i64 %i.i, 4294967296
  %i.k = trunc nuw nsw i64 %i.j to i40
  %i.l = select i1 %or.cond.i.i, i40 %i.k, i40 0  ; 4 uses
  %.not = icmp samesign ult i40 %i.l, 4294967296
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.04.0.extract.trunc = trunc i40 %i.l to i32
  %i.m = and i64 %i.a, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr                 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !343
  %i.q = and i32 %i.p, 2147483647
  %i.r = icmp ugt i32 %i.q, %.sroa.04.0.extract.trunc
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.n, align 4              ; 4 uses
  %i.t = and i32 %i.s, 16777216
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ugt i32 %i.s, 150994943             ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gm
  %.sroa.0.0.copyload.i2751 = load i64, ptr %i.at, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2751, ptr %i.gn, align 8, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %bb.w
  %i.go = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2
  br label %.backedge.backedge

bb.z:                                             ; preds = %bb.x, %bb.s
  %.sink4085.a = phi i64 [ %i.fs, %bb.s ], [ %i.ge, %bb.x ]
  %.sink = phi i64 [ 3, %bb.s ], [ 2, %bb.x ]
  store i64 %.sink4085.a, ptr %i.o, align 8, !tbaa !69
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.gp = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10 ; 2 uses
  %i.gq = extractvalue { i32, i64 } %i.gp, 0
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.gs = icmp eq i32 %i.gq, 0
  br i1 %i.gs, label %.loopexitthread-pre-split.loopexit4204, label %bb.aa, !prof !65

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 %.sink
  %i.gu = extractvalue { i32, i64 } %i.gp, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !81
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gx
  store i64 %i.gu, ptr %i.gy, align 8, !tbaa !69
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.ab:                                            ; preds = %.backedge
  %i.gz = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.ha = load i32, ptr %i.gz, align 1, !tbaa !81
  %i.hb = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 7
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !81
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !69
  br label %bb.aj

bb.ac:                                            ; preds = %.backedge
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !81
  %i.hj = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 7
  br label %bb.aj

bb.ad:                                            ; preds = %.backedge
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  %i.hl = load ptr, ptr %i.x, align 8, !tbaa !330
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !81
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hl, i64 -56
  %.sroa.0.0.copyload.i2753 = load i64, ptr %i.hp, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2753, ptr %i.hq, align 8, !tbaa !69
  br label %bb.aj

bb.ae:                                            ; preds = %.backedge
  %i.hr = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 5
  %i.hs = load ptr, ptr %i.x, align 8, !tbaa !330 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !81
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 -56
  %.sroa.0.0.copyload.i2754 = load i64, ptr %i.hw, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2754, ptr %i.hx, align 8, !tbaa !69
  %i.hy = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !81
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.hs, i64 -64
  %.sroa.0.0.copyload.i2755 = load i64, ptr %i.ib, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2755, ptr %i.ic, align 8, !tbaa !69
  br label %bb.aj

bb.af:                                            ; preds = %.backedge
  %i.id = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 6
  %i.ie = load ptr, ptr %i.x, align 8, !tbaa !330 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !81
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ie, i64 -56
  %.sroa.0.0.copyload.i2756 = load i64, ptr %i.ii, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2756, ptr %i.ij, align 8, !tbaa !69
  %i.ik = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !81
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.im
  %i.io = getelementptr i8, ptr %i.ie, i64 -64
  %.sroa.0.0.copyload.i2757 = load i64, ptr %i.in, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2757, ptr %i.io, align 8, !tbaa !69
  %i.ip = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 5
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !81
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.ie, i64 -72
  %.sroa.0.0.copyload.i2758 = load i64, ptr %i.is, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2758, ptr %i.it, align 8, !tbaa !69
  br label %bb.aj

bb.ag:                                            ; preds = %.backedge
  %i.iu = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 7
  %i.iv = load ptr, ptr %i.x, align 8, !tbaa !330 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !81
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iv, i64 -56
  %.sroa.0.0.copyload.i2759 = load i64, ptr %i.iz, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2759, ptr %i.ja, align 8, !tbaa !69
  %i.jb = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !81
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.iv, i64 -64
  %.sroa.0.0.copyload.i2760 = load i64, ptr %i.je, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2760, ptr %i.jf, align 8, !tbaa !69
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 5
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !81
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.iv, i64 -72
  %.sroa.0.0.copyload.i2761 = load i64, ptr %i.jj, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2761, ptr %i.jk, align 8, !tbaa !69
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 6
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !81
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.iv, i64 -80
  %.sroa.0.0.copyload.i2762 = load i64, ptr %i.jo, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2762, ptr %i.jp, align 8, !tbaa !69
  br label %bb.aj

bb.ah:                                            ; preds = %.backedge
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !81
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !81
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !69
  br label %bb.aj

bb.ai:                                            ; preds = %.backedge
  %i.jz = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !81
  %i.kb = zext i8 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.02630 = phi i64 [ -1688849860263936, %bb.ai ], [ %i.jy, %bb.ah ], [ -1688849860263936, %bb.ad ], [ -1688849860263936, %bb.ae ], [ -1688849860263936, %bb.af ], [ -1688849860263936, %bb.ag ], [ -1688849860263936, %bb.ac ], [ %i.hg, %bb.ab ]
  %.02629 = phi i32 [ %i.kb, %bb.ai ], [ %i.js, %bb.ah ], [ 1, %bb.ad ], [ 2, %bb.ae ], [ 3, %bb.af ], [ 4, %bb.ag ], [ %i.hi, %bb.ac ], [ %i.ha, %bb.ab ]
  %.12607 = phi ptr [ %i.kc, %bb.ai ], [ %i.jt, %bb.ah ], [ %i.hk, %bb.ad ], [ %i.hr, %bb.ae ], [ %i.id, %bb.af ], [ %i.iu, %bb.ag ], [ %i.hj, %bb.ac ], [ %i.hb, %bb.ab ]
  %i.kd = load ptr, ptr %i.x, align 8, !tbaa !330 ; 6 uses
  %i.ke = getelementptr inbounds i8, ptr %.32602, i64 -8
  %i.kf = add i32 %.02629, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2 ; 3 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ki
  %.sroa.0306.0.copyload = load i64, ptr %i.kj, align 8, !tbaa !61
  %i.kk = ptrtoint ptr %i.ke to i64
  %i.kl = getelementptr inbounds i8, ptr %i.kd, i64 -8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !69
  %i.km = ptrtoint ptr %.sink4084.sink.in to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kd, i64 -16
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !69
  %i.ko = ptrtoint ptr %.4 to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kd, i64 -24
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !69
  %i.kq = zext i32 %i.kf to i64
  %i.kr = or disjoint i64 %i.kq, -1125899906842624
  %i.ks = getelementptr inbounds i8, ptr %i.kd, i64 -32
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !69
  %i.kt = getelementptr inbounds i8, ptr %i.kd, i64 -40
  store i64 %.02630, ptr %i.kt, align 8, !tbaa !69
  %i.ku = getelementptr inbounds i8, ptr %i.kd, i64 -48
  store i64 %.sroa.0306.0.copyload, ptr %i.ku, align 8, !tbaa !69
  %i.kv = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.kw = zext i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.kw
  %.sroa.0302.0.copyload = load i64, ptr %i.kx, align 8, !tbaa !61 ; 2 uses
  %i.ky = icmp ugt i64 %.sroa.0302.0.copyload, -844424930131969
  br i1 %i.ky, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.kz = and i64 %.sroa.0302.0.copyload, 281474976710655
  %i.la = inttoptr i64 %i.kz to ptr               ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = add i32 %i.lb, -1224736768
  %i.ld = icmp ult i32 %i.lc, 67108864
  br i1 %i.ld, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !434
  %i.lg = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = inttoptr i64 %i.lh to ptr
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  br label %.backedge3767.backedge

.backedge3767.backedge:                           ; preds = %bb.al, %bb.av
  %.02594.be = phi ptr [ %.sink4084.sink.in, %bb.al ], [ %i.mx, %bb.av ] ; 2 uses
  %.0.be = phi ptr [ %i.li, %bb.al ], [ %i.mw, %bb.av ]
  br label %.backedge3767

bb.am:                                            ; preds = %bb.ak, %bb.aj
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.lj = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.lk ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.ll, align 8, !tbaa !61 ; 2 uses
  %i.lm = icmp ugt i64 %.sroa.02.0.copyload.i, -844424930131969
  br i1 %i.lm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ln = and i64 %.sroa.02.0.copyload.i, 281474976710655
  %i.lo = inttoptr i64 %i.ln to ptr               ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4            ; 2 uses
  %i.lq = add i32 %i.lp, -1157627904
  %i.lr = icmp ult i32 %i.lq, 67108864
  br i1 %i.lr, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i, label %bb.ao

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %bb.an
  %i.ls = call { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef nonnull %i.lo, ptr noundef nonnull align 8 dereferenceable(9816) %0)
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

bb.ao:                                            ; preds = %bb.an
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.lp, -16777216
  %i.lt = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i.i, 1140850688
  br i1 %i.lt, label %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i, label %bb.ap

_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %bb.ao
  %i.lu = call { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef nonnull %i.lo, ptr noundef nonnull %.sink4084.sink.in, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.lv = call noundef i32 @_ZN6hermes2vm7Runtime25raiseTypeErrorForCallableENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.ll) #10
  %i.lw = insertvalue { i32, i64 } poison, i32 %i.lv, 0
  %i.lx = insertvalue { i32, i64 } %i.lw, i64 -1688849860263936, 1
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i, %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i, %bb.ap
  %.fca.1.insert.merged.i = phi { i32, i64 } [ %i.lx, %bb.ap ], [ %i.lu, %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i ], [ %i.ls, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ly = extractvalue { i32, i64 } %.fca.1.insert.merged.i, 0
  %i.lz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ma = icmp eq i32 %i.ly, 0
  br i1 %i.ma, label %.loopexitthread-pre-split.loopexit4204, label %bb.aq, !prof !65

bb.aq:                                            ; preds = %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit
  %i.mb = extractvalue { i32, i64 } %.fca.1.insert.merged.i, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !81
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.me
  store i64 %i.mb, ptr %i.mf, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.ar:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.mg = load i8, ptr %.sink4084.sink.in, align 1, !tbaa !81
  %i.mh = icmp eq i8 %i.mg, 82
  %i.mi = load ptr, ptr %.4, align 8, !tbaa !398  ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !62 ; 2 uses
  br i1 %i.mh, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.mm = load i16, ptr %i.mj, align 1, !tbaa !81 ; 2 uses
  %i.mn = zext i16 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %i.mp, null
  br i1 %.not.i, label %bb.at, label %bb.av, !prof !65

bb.at:                                            ; preds = %bb.as
  %i.mq = zext i16 %i.mm to i32
  br label %.sink.split

bb.au:                                            ; preds = %bb.ar
  %i.mr = load i32, ptr %i.mj, align 1, !tbaa !81 ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !63 ; 2 uses
  %.not.i2771 = icmp eq ptr %i.mu, null
  br i1 %.not.i2771, label %.sink.split, label %bb.av, !prof !65

.sink.split:                                      ; preds = %bb.au, %bb.at
  %.sink4086.a = phi i32 [ %i.mq, %bb.at ], [ %i.mr, %bb.au ]
  %i.mv = call noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192) %i.mi, i32 noundef %.sink4086.a) #10
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.as, %bb.au
  %i.mw = phi ptr [ %i.mp, %bb.as ], [ %i.mu, %bb.au ], [ %i.mv, %.sink.split ] ; 2 uses
  %i.mx = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.my = load ptr, ptr %i.x, align 8, !tbaa !330 ; 6 uses
  %i.mz = getelementptr inbounds i8, ptr %.32602, i64 -8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !81
  %i.nc = zext i8 %i.nb to i64
  %i.nd = add nuw nsw i64 %i.nc, 4294967295
  %i.ne = ptrtoint ptr %i.mw to i64
  %i.nf = ptrtoint ptr %i.mz to i64
  %i.ng = getelementptr inbounds i8, ptr %i.my, i64 -8
  store i64 %i.nf, ptr %i.ng, align 8, !tbaa !69
  %i.nh = ptrtoint ptr %i.mx to i64
  %i.ni = getelementptr inbounds i8, ptr %i.my, i64 -16
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !69
  %i.nj = ptrtoint ptr %.4 to i64
  %i.nk = getelementptr inbounds i8, ptr %i.my, i64 -24
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !69
  %i.nl = and i64 %i.nd, 4294967295
  %i.nm = or disjoint i64 %i.nl, -1125899906842624
  %i.nn = getelementptr inbounds i8, ptr %i.my, i64 -32
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !69
  %i.no = getelementptr inbounds i8, ptr %i.my, i64 -40
  store i64 -1688849860263936, ptr %i.no, align 8, !tbaa !69
  %i.np = getelementptr inbounds i8, ptr %i.my, i64 -48
  store i64 %i.ne, ptr %i.np, align 8, !tbaa !69
  br label %.backedge3767.backedge

bb.aw:                                            ; preds = %.backedge
  %i.nq = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !81
  %i.ns = zext i8 %i.nr to i64
  %i.nt = load ptr, ptr %i.az, align 8, !tbaa !436
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ns
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !437
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = or i64 %i.nw, -281474976710656
  %i.ny = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !81
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.oa
  store i64 %i.nx, ptr %i.ob, align 8, !tbaa !69
  %i.oc = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  br label %.backedge.backedge

bb.ax:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.od = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !81
  %i.of = zext i8 %i.oe to i32
  %i.og = call noundef i32 @_ZN6hermes2vm11Interpreter15implCallBuiltinERNS0_7RuntimeEPNS0_17PinnedHermesValueEPNS0_9CodeBlockEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef %.4, i32 noundef %i.of) #10
  %i.oh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.oi = icmp eq i32 %i.og, 0
  br i1 %i.oi, label %.loopexitthread-pre-split.loopexit4204, label %bb.ay, !prof !65

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  br label %.backedge.backedge

bb.az:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ok = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 3
  %i.ol = load i32, ptr %i.ok, align 1, !tbaa !81
  %i.om = call noundef i32 @_ZN6hermes2vm11Interpreter15implCallBuiltinERNS0_7RuntimeEPNS0_17PinnedHermesValueEPNS0_9CodeBlockEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef %.4, i32 noundef %i.ol) #10
  %i.on = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.oo = icmp eq i32 %i.om, 0
  br i1 %i.oo, label %.loopexitthread-pre-split.loopexit4204, label %bb.ba, !prof !65

bb.ba:                                            ; preds = %bb.az
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 7
  br label %.backedge.backedge

bb.bb:                                            ; preds = %.backedge
  %.sroa.0.0.copyload.i2781 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.oq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2781, i64 -48
  %.sroa.0.0.copyload.i2782 = load i64, ptr %i.oq, align 8, !tbaa !61
  %i.or = and i64 %.sroa.0.0.copyload.i2782, 281474976710655
  %i.os = inttoptr i64 %i.or to ptr
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  store i32 3, ptr %i.ot, align 4, !tbaa !439
  %i.ou = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1
  br label %.backedge.backedge

bb.bc:                                            ; preds = %.backedge
  %i.ov = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !81
  %i.ox = sext i8 %i.ow to i64
  %i.oy = getelementptr inbounds i8, ptr %.sink4084.sink.in, i64 %i.ox
  call void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %i.oy) #10
  %i.oz = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 2
  br label %.backedge.backedge

bb.bd:                                            ; preds = %.backedge
  %i.pa = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1
  %i.pb = load i32, ptr %i.pa, align 1, !tbaa !81
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds i8, ptr %.sink4084.sink.in, i64 %i.pc
  call void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %i.pd) #10
  %i.pe = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 5
  br label %.backedge.backedge

bb.be:                                            ; preds = %.backedge
  %.sroa.0.0.copyload.i2783 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.pf = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2783, i64 -48
  %.sroa.0.0.copyload.i2784 = load i64, ptr %i.pf, align 8, !tbaa !61
  %i.pg = and i64 %.sroa.0.0.copyload.i2784, 281474976710655
  %i.ph = inttoptr i64 %i.pg to ptr               ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 36 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !439
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !434
  %i.po = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.pp = xor i64 %i.po, %i.pn
  %i.pq = inttoptr i64 %i.pp to ptr
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 52
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !447
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !433
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.evc = getelementptr inbounds i8, ptr %i.euv, i64 %i.evb
  br label %.backedge.backedge

bb.vq:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evd = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 5
  %i.eve = load i8, ptr %i.evd, align 1, !tbaa !81
  %i.evf = zext i8 %i.eve to i64
  %i.evg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.evf
  %i.evh = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 6
  %i.evi = load i8, ptr %i.evh, align 1, !tbaa !81
  %i.evj = zext i8 %i.evi to i64
  %i.evk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.evj
  %i.evl = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.evg, ptr %i.evk) #10 ; 2 uses
  %i.evm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask = and i32 %i.evl, 255
  %i.evn = icmp eq i32 %.mask, 0
  br i1 %i.evn, label %.loopexitthread-pre-split.loopexit4204, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evo = and i32 %i.evl, 256
  %.not3681 = icmp eq i32 %i.evo, 0
  br i1 %.not3681, label %bb.vt, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.evp = getelementptr inbounds nuw i8, ptr %i.evm, i64 7
  br label %.backedge.backedge

bb.vt:                                            ; preds = %bb.vr
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evm, i64 1
  %i.evr = load i32, ptr %i.evq, align 1, !tbaa !81
  %i.evs = sext i32 %i.evr to i64
  %i.evt = getelementptr inbounds i8, ptr %i.evm, i64 %i.evs
  br label %.backedge.backedge

bb.vu:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evu = call noundef i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4084.sink.in) #10
  %i.evv = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.evw = icmp eq i32 %i.evu, 0
  br i1 %i.evw, label %.loopexitthread-pre-split.loopexit4204, label %bb.vv, !prof !65

bb.vv:                                            ; preds = %bb.vu
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evx = getelementptr inbounds nuw i8, ptr %i.evv, i64 5
  br label %.backedge.backedge

bb.vw:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evy = call noundef i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4084.sink.in) #10
  %i.evz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewa = icmp eq i32 %i.evy, 0
  br i1 %i.ewa, label %.loopexitthread-pre-split.loopexit4204, label %bb.vx, !prof !65

bb.vx:                                            ; preds = %bb.vw
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.evz, i64 6
  br label %.backedge.backedge

bb.vy:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewc = call noundef i32 @_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4084.sink.in) #10
  %i.ewd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewe = icmp eq i32 %i.ewc, 0
  br i1 %i.ewe, label %.loopexitthread-pre-split.loopexit4204, label %bb.vz, !prof !65

bb.vz:                                            ; preds = %bb.vy
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewf = getelementptr inbounds nuw i8, ptr %i.ewd, i64 4
  br label %.backedge.backedge

bb.wa:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewg = call noundef i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4084.sink.in) #10
  %i.ewh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewi = icmp eq i32 %i.ewg, 0
  br i1 %i.ewi, label %.loopexitthread-pre-split.loopexit4204, label %bb.wb, !prof !65

bb.wb:                                            ; preds = %bb.wa
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewj = getelementptr inbounds nuw i8, ptr %i.ewh, i64 3
  br label %.backedge.backedge

bb.wc:                                            ; preds = %.backedge
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewk = call noundef i32 @_ZN6hermes2vm11Interpreter16caseIteratorNextERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4084.sink.in) #10
  %i.ewl = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewm = icmp eq i32 %i.ewk, 0
  br i1 %i.ewm, label %.loopexitthread-pre-split.loopexit4204, label %bb.wd, !prof !65

bb.wd:                                            ; preds = %bb.wc
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.ewl, i64 4
  br label %.backedge.backedge

bb.we:                                            ; preds = %.backedge
  %i.ewo = getelementptr inbounds nuw i8, ptr %.sink4084.sink.in, i64 1 ; 2 uses
  %i.ewp = load i8, ptr %i.ewo, align 1, !tbaa !81
  %i.ewq = zext i8 %i.ewp to i64
  %i.ewr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ewq
  %i.ews = load i64, ptr %i.ewr, align 8, !tbaa !69
  %i.ewt = icmp ugt i64 %i.ews, -281474976710657
  br i1 %i.ewt, label %bb.wf, label %bb.wk, !prof !65

bb.wf:                                            ; preds = %bb.we
  store ptr %.sink4084.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewu = load i8, ptr %i.ewo, align 1, !tbaa !81
  %i.ewv = zext i8 %i.ewu to i64
  %i.eww = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ewv
  %i.ewx = call noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eww, ptr nonnull @_ZN6hermes2vm15HandleRootOwner11emptyValue_E) #10
  %i.ewy = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.ewz = icmp eq i32 %i.ewx, 0
  br i1 %i.ewz, label %bb.wg, label %bb.wj, !prof !65

bb.wg:                                            ; preds = %bb.wf
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewy, i64 2
  %i.exb = load i8, ptr %i.exa, align 1, !tbaa !81
  %.not2646 = icmp eq i8 %i.exb, 0
  br i1 %.not2646, label %.loopexitthread-pre-split.loopexit4204, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %.sroa.07.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !61
  %i.exc = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.07.0.copyload) #10
  br i1 %i.exc, label %.loopexitthread-pre-split.loopexit4204, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wf
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.we
  %.21 = phi ptr [ %i.ewy, %bb.wj ], [ %.sink4084.sink.in, %bb.we ]
  %i.exd = getelementptr inbounds nuw i8, ptr %.21, i64 3
  br label %.backedge.backedge

bb.wl:                                            ; preds = %.backedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.18) #11
  unreachable

_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit
  store ptr %.02594, ptr %i.a, align 8, !tbaa !108
  %i.exe = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef 0) #10 ; 0 uses
  br label %bb.wm

bb.wm:                                            ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2736, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit
  %i.exf = getelementptr inbounds i8, ptr %i.bz, i64 -24
  %i.exg = load i64, ptr %i.exf, align 8, !tbaa !69 ; 2 uses
  %i.exh = inttoptr i64 %i.exg to ptr
  %i.exi = load i64, ptr %i.cc, align 8, !tbaa !69
  %i.exj = inttoptr i64 %i.exi to ptr
  store ptr %i.bz, ptr %i.x, align 8, !tbaa !330
  %i.exk = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.exl = load i64, ptr %i.exk, align 8, !tbaa !69
  %i.exm = inttoptr i64 %i.exl to ptr             ; 2 uses
  store ptr %i.exm, ptr %i.y, align 8, !tbaa !68
  %i.exn = getelementptr inbounds nuw i8, ptr %i.exm, i64 8
  %.not = icmp eq i64 %i.exg, 0
  br i1 %.not, label %.loopexit3764, label %.loopexitthread-pre-split

.loopexitthread-pre-split.loopexit4204:           ; preds = %bb.wh, %bb.wg, %bb.z, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit, %bb.ax, %bb.az, %bb.ce, %bb.dc, %bb.de, %bb.ed, %bb.ef, %.critedge2666, %bb.fo, %.critedge2668, %bb.gs, %bb.gv, %bb.gw, %bb.gz, %bb.ha, %bb.hf, %bb.ht, %bb.hx, %bb.ia, %bb.id, %bb.ie, %bb.jd, %bb.jh, %.critedge2673, %bb.jq, %bb.ju, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, %bb.kd, %bb.kh, %bb.kj, %bb.kl, %bb.kn, %bb.kp, %bb.ks, %bb.kv, %bb.lc, %.critedge2675, %bb.lj, %bb.lm, %bb.lr, %bb.lw, %bb.ma, %bb.me, %bb.mf, %bb.mg, %bb.ng, %.critedge2677, %.critedge2679, %.critedge2681, %.critedge2683, %.critedge2685, %.critedge2687, %.critedge2689, %.critedge2691, %.critedge2693, %.critedge2695, %.critedge2697, %.critedge2699, %.critedge2701, %.critedge2703, %.critedge2705, %.critedge2707, %.critedge2709, %.critedge2711, %.critedge2713, %.critedge2715, %.critedge2717, %.critedge2719, %.critedge2721, %.critedge2723, %.critedge2725, %.critedge2727, %.critedge2729, %.critedge2731, %.critedge2733, %bb.ve, %bb.vi, %bb.vm, %bb.vq, %bb.vu, %bb.vw, %bb.vy, %bb.wa, %bb.wc
  %.22.ph4015.ph = phi ptr [ %i.ewh, %bb.wa ], [ %i.ewd, %bb.vy ], [ %i.evz, %bb.vw ], [ %i.evv, %bb.vu ], [ %i.evm, %bb.vq ], [ %i.euv, %bb.vm ], [ %i.eue, %bb.vi ], [ %i.etn, %bb.ve ], [ %i.eqs, %.critedge2733 ], [ %i.epa, %.critedge2731 ], [ %i.eni, %.critedge2729 ], [ %i.elq, %.critedge2727 ], [ %i.ejy, %.critedge2725 ], [ %i.eig, %.critedge2723 ], [ %i.ego, %.critedge2721 ], [ %i.eew, %.critedge2719 ], [ %i.ede, %.critedge2717 ], [ %i.ebm, %.critedge2715 ], [ %i.dzu, %.critedge2713 ], [ %i.dyc, %.critedge2711 ], [ %i.dwk, %.critedge2709 ], [ %i.dus, %.critedge2707 ], [ %i.dta, %.critedge2705 ], [ %i.dri, %.critedge2703 ], [ %i.dpo, %.critedge2701 ], [ %i.doa, %.critedge2699 ], [ %i.dmm, %.critedge2697 ], [ %i.dky, %.critedge2695 ], [ %i.djm, %.critedge2693 ], [ %i.dhk, %.critedge2691 ], [ %i.dfi, %.critedge2689 ], [ %i.ddg, %.critedge2687 ], [ %i.dbf, %.critedge2685 ], [ %i.cze, %.critedge2683 ], [ %i.cxd, %.critedge2681 ], [ %i.cvk, %.critedge2679 ], [ %i.ctr, %.critedge2677 ], [ %i.cry, %bb.ng ], [ %i.ckv, %bb.mg ], [ %i.ckn, %bb.mf ], [ %i.ckj, %bb.me ], [ %i.cjm, %bb.ma ], [ %i.cih, %bb.lw ], [ %i.chk, %bb.lr ], [ %i.cfz, %bb.lm ], [ %i.cez, %bb.lj ], [ %i.cei, %.critedge2675 ], [ %i.cck, %bb.lc ], [ %i.bzj, %bb.kv ], [ %i.byf, %bb.ks ], [ %i.bws, %bb.kp ], [ %i.bwa, %bb.kn ], [ %i.bvj, %bb.kl ], [ %i.bux, %bb.kj ], [ %i.bug, %bb.kh ], [ %i.bsq, %bb.kd ], [ %i.bry, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ], [ %i.bpy, %bb.ju ], [ %i.bow, %bb.jq ], [ %i.bno, %.critedge2673 ], [ %i.blv, %bb.jh ], [ %i.bkv, %bb.jd ], [ %i.bhk, %bb.ie ], [ %i.bhg, %bb.id ], [ %i.bgn, %bb.ia ], [ %i.bga, %bb.hx ], [ %i.bfi, %bb.ht ], [ %i.bbu, %bb.hf ], [ %i.baz, %bb.ha ], [ %i.bav, %bb.gz ], [ %i.azw, %bb.gw ], [ %i.azs, %bb.gv ], [ %i.azb, %bb.gs ], [ %i.ayl, %.critedge2668 ], [ %i.atk, %bb.fo ], [ %i.asy, %.critedge2666 ], [ %i.anc, %bb.ef ], [ %i.amy, %bb.ed ], [ %i.abc, %bb.de ], [ %i.aah, %bb.dc ], [ %i.ut, %bb.ce ], [ %i.on, %bb.az ], [ %i.oh, %bb.ax ], [ %i.lz, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit ], [ %i.gr, %bb.z ], [ %i.ewy, %bb.wg ], [ %i.ewy, %bb.wh ], [ %i.ewl, %bb.wc ]
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit, %.loopexitthread-pre-split.loopexit4204, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977, %bb.lz, %bb.wm
  %.12600.ph = phi ptr [ %.32602, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %.32602, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %.32602, %bb.lz ], [ %.32602, %.loopexitthread-pre-split.loopexit4204 ], [ %i.exn, %bb.wm ], [ %.32602, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %.32602, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.22.ph4015 = phi ptr [ %i.bxl, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %i.ug, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %i.cje, %bb.lz ], [ %.22.ph4015.ph, %.loopexitthread-pre-split.loopexit4204 ], [ %i.exj, %bb.wm ], [ %i.cfq, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %i.bdx, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.2.ph = phi ptr [ %.4, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %.4, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %.4, %bb.lz ], [ %.4, %.loopexitthread-pre-split.loopexit4204 ], [ %i.exh, %bb.wm ], [ %.4, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %.4, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.sroa.03.0.copyload.pr = load i64, ptr %i.ai, align 8, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.by, %bb.bt
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pr, %.loopexitthread-pre-split ], [ %.sroa.0.0.copyload.i2802, %bb.by ], [ %.sroa.0275.0.copyload, %bb.bt ] ; 3 uses
  %.12600 = phi ptr [ %.12600.ph, %.loopexitthread-pre-split ], [ %.32602, %bb.by ], [ %.32602, %bb.bt ] ; 2 uses
  %.22 = phi ptr [ %.22.ph4015, %.loopexitthread-pre-split ], [ %.sink4084.sink.in, %bb.by ], [ %.sink4084.sink.in, %bb.bt ] ; 5 uses
  %.2 = phi ptr [ %.2.ph, %.loopexitthread-pre-split ], [ %.4, %bb.by ], [ %.4, %bb.bt ] ; 3 uses
  %i.exo = icmp ugt i64 %.sroa.03.0.copyload, -844424930131969
  br i1 %i.exo, label %bb.wn, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

bb.wn:                                            ; preds = %.loopexit
  %i.exp = and i64 %.sroa.03.0.copyload, 281474976710655
  %i.exq = inttoptr i64 %i.exp to ptr             ; 3 uses
  %i.exr = load i32, ptr %i.exq, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.exr, -16777216
  %i.exs = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 486539264
  br i1 %i.exs, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.wn
  %i.ext = getelementptr inbounds nuw i8, ptr %i.exq, i64 48
  %i.exu = load i8, ptr %i.ext, align 8, !tbaa !478, !range !428, !noundef !44
  %i.exv = trunc nuw i8 %i.exu to i1              ; 2 uses
  %i.exw = getelementptr inbounds nuw i8, ptr %i.exq, i64 24
  %i.exx = load ptr, ptr %i.exw, align 8, !tbaa !487
  %.not2643 = icmp eq ptr %i.exx, null
  br i1 %.not2643, label %bb.wo, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread

bb.wo:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %.22, ptr %i.a, align 8, !tbaa !108
  %i.exy = or i64 %.sroa.03.0.copyload, -281474976710656 ; 2 uses
  %i.exz = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %i.eya = getelementptr inbounds nuw i8, ptr %i.exz, i64 192 ; 2 uses
  %i.eyb = load ptr, ptr %i.eya, align 8, !tbaa !49 ; 4 uses
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.exz, i64 200
  %i.eyd = load ptr, ptr %i.eyc, align 8, !tbaa !59
  %i.eye = icmp ult ptr %i.eyb, %i.eyd
  br i1 %i.eye, label %bb.wp, label %bb.wq, !prof !60

bb.wp:                                            ; preds = %bb.wo
  %i.eyf = getelementptr inbounds nuw i8, ptr %i.eyb, i64 8
  store ptr %i.eyf, ptr %i.eya, align 8, !tbaa !49
  store i64 %i.exy, ptr %i.eyb, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

bb.wq:                                            ; preds = %bb.wo
  %i.eyg = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.exz, i64 %i.exy) #10
  %.pre3925 = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.wp, %bb.wq
  %i.eyh = phi ptr [ %.22, %bb.wp ], [ %.pre3925, %bb.wq ]
  %.0.i.i.i.i.i.i3067 = phi ptr [ %i.eyb, %bb.wp ], [ %i.eyg, %bb.wq ] ; 2 uses
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  %i.eyi = call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i3067, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext false, ptr noundef %.2, ptr noundef %i.eyh) #10 ; 0 uses
  %i.eyj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload.i3068 = load i64, ptr %.0.i.i.i.i.i.i3067, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i3068, ptr %i.ai, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exv, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread: ; preds = %bb.wn, %.loopexit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exv, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.24.ph = phi ptr [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread ], [ %i.eyj, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ]
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.234021 = phi ptr [ %i.eyj, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ]
  %i.eyk = ptrtoint ptr %.234021 to i64
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wr, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us
  %.22601.us = phi ptr [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eza, %bb.wr ] ; 4 uses
  %.24.us = phi i64 [ %i.eyk, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eyw, %bb.wr ]
  %.3.us = phi ptr [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eyu, %bb.wr ] ; 2 uses
  %i.eyl = getelementptr inbounds nuw i8, ptr %.3.us, i64 16
  %i.eym = load ptr, ptr %i.eyl, align 8, !tbaa !433
  %i.eyn = ptrtoint ptr %i.eym to i64
  %i.eyo = sub i64 %.24.us, %i.eyn
  %i.eyp = trunc i64 %i.eyo to i32
  %i.eyq = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3.us, i32 noundef %i.eyp) #10 ; 0 uses
  %i.eyr = getelementptr inbounds i8, ptr %.22601.us, i64 -8
  %i.eys = getelementptr inbounds i8, ptr %.22601.us, i64 -32
  %i.eyt = load i64, ptr %i.eys, align 8, !tbaa !69 ; 2 uses
  %i.eyu = inttoptr i64 %i.eyt to ptr
  %i.eyv = getelementptr inbounds i8, ptr %.22601.us, i64 -24
  %i.eyw = load i64, ptr %i.eyv, align 8, !tbaa !69
  store ptr %i.eyr, ptr %i.x, align 8, !tbaa !330
  %i.eyx = getelementptr inbounds i8, ptr %.22601.us, i64 -16
  %i.eyy = load i64, ptr %i.eyx, align 8, !tbaa !69
  %i.eyz = inttoptr i64 %i.eyy to ptr             ; 2 uses
  store ptr %i.eyz, ptr %i.y, align 8, !tbaa !68
  %i.eza = getelementptr inbounds nuw i8, ptr %i.eyz, i64 8
  %.not2664.us = icmp eq i64 %i.eyt, 0
  br i1 %.not2664.us, label %.loopexit3764, label %bb.wr, !llvm.loop !488

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, %bb.ws
  %.22601 = phi ptr [ %i.ezs, %bb.ws ], [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %.24 = phi ptr [ %i.ezo, %bb.ws ], [ %.24.ph, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 2 uses
  %.3 = phi ptr [ %i.ezl, %bb.ws ], [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %i.ezb = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ezc = load ptr, ptr %i.ezb, align 8, !tbaa !433
  %i.ezd = ptrtoint ptr %.24 to i64               ; 2 uses
  %i.eze = ptrtoint ptr %i.ezc to i64
  %i.ezf = sub i64 %i.ezd, %i.eze
  %i.ezg = trunc i64 %i.ezf to i32
  %i.ezh = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3, i32 noundef %i.ezg) #10 ; 2 uses
  %.not3859 = icmp eq i32 %i.ezh, -1
  br i1 %.not3859, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.ezi = getelementptr inbounds i8, ptr %.22601, i64 -8
  %i.ezj = getelementptr inbounds i8, ptr %.22601, i64 -32
  %i.ezk = load i64, ptr %i.ezj, align 8, !tbaa !69 ; 2 uses
  %i.ezl = inttoptr i64 %i.ezk to ptr
  %i.ezm = getelementptr inbounds i8, ptr %.22601, i64 -24
  %i.ezn = load i64, ptr %i.ezm, align 8, !tbaa !69
  %i.ezo = inttoptr i64 %i.ezn to ptr
  store ptr %i.ezi, ptr %i.x, align 8, !tbaa !330
  %i.ezp = getelementptr inbounds i8, ptr %.22601, i64 -16
  %i.ezq = load i64, ptr %i.ezp, align 8, !tbaa !69
  %i.ezr = inttoptr i64 %i.ezq to ptr             ; 2 uses
  store ptr %i.ezr, ptr %i.y, align 8, !tbaa !68
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.ezr, i64 8
  %.not2664 = icmp eq i64 %i.ezk, 0
  br i1 %.not2664, label %.loopexit3764, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split, !llvm.loop !488

bb.wt:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.ezt = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ezu = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ezv = load ptr, ptr %i.ezu, align 8, !tbaa !430 ; 2 uses
  %i.ezw = ptrtoint ptr %i.ezv to i64
  %i.ezx = trunc i64 %i.ezw to i1
  %..i.i3069 = select i1 %i.ezx, i64 29, i64 15, !prof !65
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.ezv, i64 %..i.i3069
  %.sroa.0.0.i.i3070 = load i8, ptr %i.ezy, align 1, !tbaa !81
  %i.ezz = sext i32 %i.ezh to i64
  %i.faa = load ptr, ptr %i.ezt, align 8, !tbaa !433
  %i.fab = ptrtoint ptr %i.faa to i64
  %.neg = sub i64 %i.fab, %i.ezd
  %i.fac = getelementptr i8, ptr %.24, i64 %.neg
  %i.fad = getelementptr i8, ptr %i.fac, i64 %i.ezz
  br label %bb.h, !llvm.loop !489

.loopexit3764:                                    ; preds = %bb.wm, %bb.ws, %bb.bv, %bb.wr
  %.sroa.03641.0 = phi i32 [ 1, %bb.bv ], [ 0, %bb.ws ], [ 0, %bb.wr ], [ 0, %bb.wm ]
  %.sroa.6.0 = phi i64 [ %.sroa.0274.0.copyload, %bb.bv ], [ undef, %bb.ws ], [ undef, %bb.wr ], [ undef, %bb.wm ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #10
  br label %bb.wu

bb.wu:                                            ; preds = %.loopexit3764, %bb.b
  %.sroa.03641.1 = phi i32 [ %i.j, %bb.b ], [ %.sroa.03641.0, %.loopexit3764 ]
  %.sroa.6.1 = phi i64 [ undef, %bb.b ], [ %.sroa.6.0, %.loopexit3764 ]
  %i.fae = load i64, ptr %i.d, align 8, !tbaa !328
  %i.faf = add i64 %i.fae, -1
  store i64 %i.faf, ptr %i.d, align 8, !tbaa !328
  store ptr %i.b, ptr %i.a, align 8, !tbaa !108
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03641.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.sink4084.sink.in = phi ptr [ %.12595, %bb.h ], [ %.sink4084.sink.in.be, %.backedge.backedge ] ; 673 uses
  %.sroa.03590.1 = phi i8 [ %.sroa.03590.0, %bb.h ], [ %.sroa.03590.1.be, %.backedge.backedge ] ; 239 uses
  %.12604 = phi i8 [ %.sroa.03590.0, %bb.h ], [ %.12604.be, %.backedge.backedge ] ; 234 uses
  %.32602 = phi ptr [ %.02599, %bb.h ], [ %.32602.be, %.backedge.backedge ] ; 695 uses
  %.4 = phi ptr [ %.1, %bb.h ], [ %.4.be, %.backedge.backedge ] ; 272 uses
  %.sink4084.sink = load i8, ptr %.sink4084.sink.in, align 1, !tbaa !81
  %i.fag = zext i8 %.sink4084.sink to i64
  %i.fah = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateEE14opcodeDispatch, i64 %i.fag
  %i.fai = load ptr, ptr %i.fah, align 8, !tbaa !490
  indirectbr ptr %i.fai, [label %bb.cg, label %bb.kh, label %bb.kj, label %bb.kf, label %bb.kg, label %bb.kn, label %bb.kp, label %bb.kl, label %bb.i, label %bb.j, label %bb.la, label %bb.kz, label %bb.jn, label %bb.le, label %bb.kv, label %bb.kx, label %bb.wl, label %bb.ky, label %bb.pe, label %bb.pi, label %bb.pm, label %bb.pq, label %bb.jj, label %bb.jl, label %bb.nm, label %bb.no, label %bb.nq, label %bb.ns, label %bb.lf, label %bb.ni, label %bb.nk, label %bb.om, label %bb.os, label %bb.oy, label %bb.nu, label %bb.og, label %bb.oa, label %bb.jb, label %bb.jf, label %bb.lj, label %bb.ll, label %bb.dg, label %bb.dr, label %bb.dt, label %bb.dv, label %bb.dx, label %bb.dz, label %bb.ea, label %bb.eb, label %bb.ec, label %bb.dl, label %bb.dh, label %bb.ed, label %bb.ef, label %bb.ej, label %bb.el, label %bb.ei, label %bb.ek, label %bb.eh, label %bb.ft, label %bb.fr, label %bb.fs, label %bb.fq, label %bb.lo, label %bb.lq, label %bb.lp, label %bb.vb, label %bb.uy, label %bb.hd, label %bb.hc, label %bb.vu, label %bb.lu, label %bb.lt, label %bb.gu, label %bb.gy, label %bb.md, label %bb.vw, label %bb.hf, label %bb.hh, label %bb.ai, label %bb.ah, label %bb.ad, label %bb.ar, label %bb.ae, label %bb.af, label %bb.ag, label %bb.ac, label %bb.ab, label %bb.uv, label %bb.ax, label %bb.az, label %bb.aw, label %bb.bv, label %bb.bx, label %bb.vy, label %bb.by, label %bb.bz, label %bb.cb, label %bb.cc, label %bb.cf, label %bb.ch, label %bb.ci, label %bb.cv, label %bb.cw, label %bb.co, label %bb.cp, label %bb.kr, label %bb.ku, label %bb.k, label %bb.n, label %bb.mt, label %bb.mu, label %bb.mv, label %bb.ne, label %bb.nf, label %bb.mw, label %bb.mx, label %bb.my, label %bb.mz, label %bb.na, label %bb.nb, label %bb.nc, label %bb.nd, label %bb.q, label %bb.v, label %bb.hs, label %bb.hw, label %bb.ia, label %bb.ic, label %bb.jw, label %bb.js, label %bb.kb, label %bb.mi, label %bb.mn, label %bb.be, label %bb.bi, label %bb.bb, label %bb.dc, label %bb.de, label %bb.wa, label %bb.wc, label %bb.we, label %bb.ih, label %bb.ii, label %bb.ij, label %bb.im, label %bb.ip, label %bb.is, label %bb.iv, label %bb.iy, label %bb.bc, label %bb.bd, label %bb.pu, label %bb.qc, label %bb.qk, label %bb.qs, label %bb.pw, label %bb.qe, label %bb.qm, label %bb.qu, label %bb.ra, label %bb.ri, label %bb.rq, label %bb.ry, label %bb.rc, label %bb.rk, label %bb.rs, label %bb.sa, label %bb.sg, label %bb.so, label %bb.sw, label %bb.te, label %bb.si, label %bb.sq, label %bb.sy, label %bb.tg, label %bb.tm, label %bb.tu, label %bb.uc, label %bb.uk, label %bb.to, label %bb.tw, label %bb.ue, label %bb.um, label %bb.ve, label %bb.vi, label %bb.vm, label %bb.vq, label %bb.us]
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::InterpreterState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %1, ptr %2, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !414
  %i.b = call { i32, i64 } @_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret { i32, i64 } %i.b
}

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_2
