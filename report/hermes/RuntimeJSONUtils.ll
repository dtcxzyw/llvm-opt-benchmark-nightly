Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RuntimeJSONUtils?download=true
inline.NumInlined: 1616
inline.NumDeleted: 784
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser13operationWalkENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE:bb.a
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !49
  br label %.critedge42

.critedge44:                                      ; preds = %bb.q, %..critedge44_crit_edge
  %.pre-phi = phi i64 [ %.pre129, %..critedge44_crit_edge ], [ %i.bz, %bb.q ]
  %i.gc = phi ptr [ %.pre128, %..critedge44_crit_edge ], [ %i.ce, %bb.q ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.pre-phi
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !102
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !81
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !50
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !49
  br label %.critedge42

.critedge42:                                      ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %.critedge42.critedge, %.critedge44
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !24
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !104
  %i.gh = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.gi = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gh, ptr nonnull %.0.i.i.i.i.i.i) #10 ; 2 uses
  %.not = icmp eq ptr %i.gi, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %.critedge, label %bb.ag, !prof !68

bb.ag:                                            ; preds = %.critedge42
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = or i64 %i.gj, -844424930131968          ; 2 uses
  store i64 %i.gk, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !104
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.07.0.copyload = load ptr, ptr %i.gl, align 8
  %i.gm = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %.sroa.0.0.copyload.i.i.i68 = load i64, ptr %.0.i.i.i.i.i.i46, align 8, !tbaa !24
  %i.gn = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.gm, ptr %1, i64 %i.gk, i64 %.sroa.0.0.copyload.i.i.i68, i1 noundef zeroext false) #10 ; 2 uses
  %i.go = extractvalue { i32, i64 } %i.gn, 0
  %i.gp = extractvalue { i32, i64 } %i.gn, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.k, %bb.c, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit, %bb.s, %.critedge42, %bb.ag, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, %bb.b
  %.sroa.0114.5 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ 0, %bb.s ], [ 0, %bb.k ], [ 0, %.critedge42 ], [ 0, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.go, %bb.ag ], [ 0, %bb.p ]
  %.sroa.10.4 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %.critedge42 ], [ undef, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.gp, %bb.ag ], [ undef, %bb.p ]
  store i32 %i.n, ptr %i.m, align 8, !tbaa !7
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0114.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser6filterENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 !guid !199 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_117RuntimeJSONParser13operationWalkENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr %1, ptr %2) ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.h, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !49
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #10 ; 2 uses
  %.pre = load i64, ptr %i.n, align 8, !tbaa !104
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  %.mask.i = and i64 %i.o, -140737488355328
  %i.p = icmp eq i64 %.mask.i, -1688849860263936
  %i.q = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.r = tail call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %i.q, ptr %2, i32 0) #10
  %.mask19 = and i32 %i.r, 255
  %i.s = icmp eq i32 %.mask19, 0
  br i1 %i.s, label %bb.h, label %bb.g, !prof !68

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.t = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %i.q, ptr %2, i32 319, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #10
  %.mask = and i32 %i.t, 255
  %i.u = icmp eq i32 %.mask, 0
  br i1 %i.u, label %bb.h, label %bb.g, !prof !68

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 !guid !200 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %2, ptr %i.a, align 8, !tbaa !24
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #10 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !130
  %i.f = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.f, ptr %i.b, align 8, !tbaa !111
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !111
  store i8 %i.h, ptr %i.g, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !202
  %i.j = load ptr, ptr %0, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 512) i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %1) unnamed_addr #0 align 2 !guid !203 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  store i64 %1, ptr %i.i, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.j, align 8 ; 2 uses
  %.sroa.059.0.copyload = load ptr, ptr %i.h, align 8
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.sroa.060.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, ptr %.sroa.059.0.copyload, ptr %.sroa.060.0.copyload) #10 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = extractvalue { i32, i64 } %i.k, 1        ; 3 uses
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  store i64 %i.m, ptr %i.p, align 8, !tbaa !104
  %i.q = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !49
  store i64 %i.m, ptr %i.u, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %i.m) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i69 = load i64, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.0.0.copyload.i.i.i69, -844424930131969
  br i1 %i.ab, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit, label %thread-pre-split

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i69, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i32, ptr %i.ad, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %i.ae, -16777216
  %i.af = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1291845632
  br i1 %i.af, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.ah = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ag, ptr %.0.i.i.i.i.i.i) #10 ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.f, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { i32, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ak, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !104
  br label %bb.g

thread-pre-split:                                 ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pr, %thread-pre-split ], [ %i.ak, %bb.f ] ; 2 uses
  %i.al = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.al, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.g
  %i.am = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, -436207616
  %i.aq = icmp ult i32 %i.ap, 855638016
  %spec.select.i = select i1 %i.aq, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.g, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.g ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ar = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !104 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, -844424930131969
  %i.at = and i64 %i.ar, 281474976710655
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i1 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %.sroa.042.0.copyload = load ptr, ptr %i.o, align 8
  %i.ax = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.aw, i32 287, ptr %.sroa.042.0.copyload, i32 0, ptr noundef null) #10 ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 0
  %i.az = extractvalue { i32, i64 } %i.ax, 1      ; 3 uses
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.i, !prof !68

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !51

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !49
  store i64 %i.az, ptr %i.bf, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.az) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i72.pr = load i64, ptr %i.bk, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.sroa.0.0.copyload.i.i72 = phi i64 [ %i.az, %bb.j ], [ %.sroa.0.0.copyload.i.i72.pr, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bf, %bb.j ], [ %i.bk, %bb.k ]
  %i.bl = icmp ugt i64 %.sroa.0.0.copyload.i.i72, -844424930131969
  br i1 %i.bl, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bm = and i64 %.sroa.0.0.copyload.i.i72, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1140850688
  %i.bq = icmp ult i32 %i.bp, 150994944
  %spec.select.i74 = select i1 %i.bq, ptr %.0.i.i.i.i.i.i71, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i73 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i74, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.br = load i64, ptr %.sroa.0.0.i73, align 8, !tbaa !104 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, -844424930131969
  %i.bt = and i64 %i.br, 281474976710655
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = and i1 %i.bs, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !104 ; 2 uses
  %.mask.i = and i64 %i.bx, -281474976710656
  %i.by = icmp eq i64 %.mask.i, -844424930131968
  %.pre173 = load ptr, ptr %0, align 8, !tbaa !96 ; 2 uses
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %.pre173, ptr nonnull %i.bw) #10
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = or i64 %i.ca, -844424930131968          ; 2 uses
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !102
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !104
  %.pre = load ptr, ptr %0, align 8, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload.i.i.i75 = phi i64 [ %i.cb, %bb.m ], [ %i.bx, %bb.l ]
  %i.cd = phi ptr [ %.pre, %bb.m ], [ %.pre173, %bb.l ]
  %.sroa.038.0.copyload = load ptr, ptr %i.o, align 8
  %i.ce = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i73, ptr noundef nonnull align 8 dereferenceable(9816) %i.cd, ptr %.sroa.038.0.copyload, i64 %.sroa.0.0.copyload.i.i.i75, i1 noundef zeroext false) #10 ; 2 uses
  %i.cf = extractvalue { i32, i64 } %i.ce, 0
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.o, !prof !68

bb.o:                                             ; preds = %bb.n
  %i.ch = extractvalue { i32, i64 } %i.ce, 1
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !102
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !104
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %bb.o, %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !104 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -844424930131969
  %i.cn = and i64 %i.cl, 281474976710655
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = and i1 %i.cm, %i.co
  br i1 %i.cp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !104 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE:bb.a
  %i.ef = zext i32 %.sroa.0.0.copyload.i.i.i89 to i64
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = or i64 %i.eg, -562949953421312
  %i.ei = select i1 %.not.i.i.i.i.i, i64 -562949953421312, i64 %i.eh
  store i64 %i.ei, ptr %i.dg, align 8, !tbaa !104
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit, %bb.t, %bb.x, %bb.v, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit
  %i.ej = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8            ; 8 uses
  %.mask.i90 = and i64 %i.ek, -140737488355328
  %i.el = bitcast i64 %i.ek to double
  switch i64 %.mask.i90, label %bb.ac [
    i64 -1548112371908608, label %bb.y
    i64 -1407374883553280, label %bb.z
  ]

bb.y:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.em = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 9240
  %i.eo = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.en, ptr noundef nonnull align 8 dereferenceable(9816) %i.em, i32 19) #10
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.z:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.eq = trunc i64 %i.ek to i1
  %i.er = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 9240 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eu = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.es, ptr noundef nonnull align 8 dereferenceable(9816) %i.er, i32 36) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.et) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ab:                                            ; preds = %bb.z
  %i.ev = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.es, ptr noundef nonnull align 8 dereferenceable(9816) %i.er, i32 37) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.et) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ac:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %.mask.i92 = and i64 %i.ek, -281474976710656
  %i.ew = icmp eq i64 %.mask.i92, -844424930131968
  br i1 %i.ew, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.ey = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ex, ptr nonnull %i.ej) #10 ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 4 uses
  %i.fa = extractvalue { ptr, i64 } %i.ey, 1      ; 4 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.fa to i32 ; 3 uses
  %.sroa.7.8.extract.shift.i = lshr i64 %i.fa, 32 ; 2 uses
  %i.fb = icmp slt i32 %.sroa.3.8.extract.trunc.i, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.fb, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.fd = and i32 %.sroa.3.8.extract.trunc.i, 1073741824
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ez, align 8, !tbaa !24
  %i.fe = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.ff = inttoptr i64 %i.fe to ptr               ; 5 uses
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp ugt i32 %i.fg, 150994943
  br i1 %i.fh, label %bb.ag, label %bb.ah, !prof !68

bb.ag:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !130
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.fg, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ak [
    i32 134217728, label %bb.ai
    i32 67108864, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.fm, align 8, !tbaa !24
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !130
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %.0.i.sink.i.i = phi ptr [ %i.ez, %bb.ae ], [ %i.fj, %bb.ag ], [ %i.fk, %bb.ai ], [ %i.fl, %bb.aj ], [ %i.fq, %bb.ak ]
  %i.fr = and i64 %i.fa, 1073741823
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.fr
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr %i.fs, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.al:                                            ; preds = %bb.ad
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ez, align 8, !tbaa !24
  %i.ft = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.fu = inttoptr i64 %i.ft to ptr               ; 5 uses
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = icmp ugt i32 %i.fv, 150994943
  br i1 %i.fw, label %bb.an, label %bb.ao, !prof !68

bb.an:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !71
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.fv, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.ar [
    i32 117440512, label %bb.ap
    i32 50331648, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.gb, align 8, !tbaa !24
  %i.gc = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !71
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.0.i.sink.i4.i = phi ptr [ %i.ez, %bb.al ], [ %i.fy, %bb.an ], [ %i.fz, %bb.ap ], [ %i.ga, %bb.aq ], [ %i.gf, %bb.ar ]
  %i.gg = and i64 %i.fa, 1073741823
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.gg
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr %i.gh, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.as:                                            ; preds = %bb.ac
  %i.gi = icmp ult i64 %i.ek, -1970324836974592
  br i1 %i.gi, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gj = tail call double @llvm.fabs.f64(double %i.el)
  %i.gk = fcmp ueq double %i.gj, +inf
  br i1 %i.gk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.gm = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gl, ptr nonnull %i.ej) #10
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.av:                                            ; preds = %bb.at
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 19)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.aw:                                            ; preds = %bb.as
  %i.go = icmp samesign ugt i64 %i.ek, -844424930131969
  br i1 %i.go, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95: ; preds = %bb.aw
  %i.gp = and i64 %i.ek, 281474976710655
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  %.mask.i.i.i.i.i.i.i94 = and i32 %i.gr, -16777216
  %i.gs = icmp eq i32 %.mask.i.i.i.i.i.i.i94, 1291845632
  br i1 %i.gs, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.gt = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.gu, align 8, !tbaa !108
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 37, ptr %i.gv, align 8, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.gw, align 8, !tbaa !110
  store ptr @.str.7, ptr %2, align 8, !tbaa !111
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.gx, align 8, !tbaa !112
  %i.gy = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.gt, ptr noundef nonnull align 8 dereferenceable(48) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.gz = add i32 %i.gr, -1140850688
  %or.cond = icmp ult i32 %i.gz, -704643072
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.ha = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer16pushValueToStackENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %i.ek) ; 2 uses
  %.mask = and i32 %i.ha, 255
  %i.hb = icmp eq i32 %.mask, 0
  br i1 %i.hb, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not170 = icmp samesign ult i32 %i.ha, 256
  br i1 %.not170, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit100, label %bb.az, !prof !68

_ZN6hermes2vm11TwineChar16C2EPKc.exit100:         ; preds = %bb.ay
  %i.hc = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.hd, align 8, !tbaa !108
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.he, align 8, !tbaa !109
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.hf, align 8, !tbaa !110
  store ptr @.str.8, ptr %3, align 8, !tbaa !111
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.hg, align 8, !tbaa !112
  %i.hh = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.az:                                            ; preds = %bb.ay
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.hj = zext i32 %i.g to i64
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !102
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.hp = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %i.hq = load ptr, ptr %i.o, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.hq, align 8, !tbaa !24
  %i.hr = and i64 %.sroa.0.0.copyload.i.i.i103, 281474976710655
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = tail call i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816) %i.hp, ptr noundef %i.hs) #10 ; 2 uses
  %.mask171 = and i32 %i.ht, 255
  %i.hu = icmp eq i32 %.mask171, 0
  br i1 %i.hu, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ba, !prof !68

bb.ba:                                            ; preds = %bb.az
  %i.hv = and i32 %i.ht, 256
  %.not172 = icmp eq i32 %i.hv, 0
  br i1 %.not172, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJAEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hx = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hy = phi i32 [ %i.hw, %bb.bb ], [ %i.hx, %bb.bc ]
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer17popValueFromStackEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %4 = icmp ne i32 %i.hy, 0
  %spec.select = zext i1 %4 to i32
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit: ; preds = %bb.bd, %bb.aw, %bb.w, %bb.u, %bb.r, %bb.e, %bb.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.ab, %bb.aa, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, %bb.av, %bb.au, %bb.az, %bb.ax, %_ZN6hermes2vm11TwineChar16C2EPKc.exit100, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, %bb.n, %bb.h, %bb.a
  %.sroa.0140.sroa.0.14 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ 1, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ 0, %bb.e ], [ 0, %bb.r ], [ 1, %bb.y ], [ 0, %bb.u ], [ 1, %bb.aa ], [ 1, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ], [ %i.gy, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select, %bb.bd ], [ 1, %bb.au ], [ 1, %bb.ab ], [ 1, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ 1, %bb.av ], [ %i.hh, %_ZN6hermes2vm11TwineChar16C2EPKc.exit100 ], [ 0, %bb.ax ], [ 1, %bb.aw ], [ 0, %bb.az ], [ 0, %bb.w ], [ 0, %bb.n ]
  %.sroa.0140.sroa.25.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ 0, %bb.e ], [ 0, %bb.r ], [ 256, %bb.y ], [ 0, %bb.u ], [ 256, %bb.aa ], [ 256, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 256, %bb.bd ], [ 256, %bb.au ], [ 256, %bb.ab ], [ 256, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ 256, %bb.av ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit100 ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.az ], [ 0, %bb.w ], [ 0, %bb.n ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ia = zext i32 %i.g to i64
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !102
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %.sroa.0140.sroa.0.0.insert.ext167 = and i32 %.sroa.0140.sroa.0.14, 255
  %.sroa.0140.sroa.0.0.insert.insert169 = or disjoint i32 %.sroa.0140.sroa.25.3, %.sroa.0140.sroa.0.0.insert.ext167
  ret i32 %.sroa.0140.sroa.0.0.insert.insert169
}

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 %1) unnamed_addr #0 align 2 !guid !207 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #10
  ret void
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer16pushValueToStackENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %1) unnamed_addr #0 align 2 !guid !209 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %.not.a = icmp eq i32 %i.f, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !96    ; 2 uses
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = ptrtoint ptr %.pre to i64
  %i.i = and i64 %1, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !208

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.l = zext i32 %.sroa.0.0.copyload.i to i64
  %i.m = add i64 %i.h, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i, ptr null, ptr %i.n
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102
  store i64 %1, ptr %i.r, align 8, !tbaa !104
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %.pre, ptr %.sroa.0.0.copyload)
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i32 0, i32 257
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.sroa.010.1 = phi i32 [ %i.u, %._crit_edge ], [ 1, %bb.c ]
  ret i32 %.sroa.010.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJAEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !guid !211 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !95   ; 3 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i32 %i.j, 511
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 noundef 3) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.h, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 23 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.d, !prof !51

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  store i16 91, ptr %i.v, align 1
  %i.w = load i32, ptr %i.n, align 8, !tbaa !21
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.n, align 8, !tbaa !21
  %i.y = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = add i32 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = zext i32 %.sroa.0.0.copyload.i to i64
  %i.al = add i64 %i.ak, %i.aj
  %i.am = or i64 %i.al, -281474976710656
  %i.an = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !49
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.aw = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ap, i64 %i.an) #10
  %.pre = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi ptr [ %i.y, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  %i.ay = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.ax, i32 85, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.az = extractvalue { i32, i64 } %i.ay, 0
  %i.ba = extractvalue { i32, i64 } %i.ay, 1      ; 2 uses
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %.critedge, label %bb.g, !prof !68

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !49
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !24
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.ba) #10
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit

_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.bk, %bb.i ]
  %i.bl = tail call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ax, ptr %.0.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.bm = extractvalue { i32, i64 } %i.bl, 0
  %i.bn = extractvalue { i32, i64 } %i.bl, 1      ; 2 uses
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %.critedge, label %bb.j, !prof !105

bb.j:                                             ; preds = %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.critedge19.thread, label %bb.k

.critedge19.thread:                               ; preds = %bb.j
  store i32 %i.i, ptr %i.h, align 8, !tbaa !95
end_hunk_1
