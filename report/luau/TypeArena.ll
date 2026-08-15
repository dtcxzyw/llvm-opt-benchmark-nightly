inline.NumInlined: 845
inline.NumDeleted: 470
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau14TypedAllocatorINS_11TypePackVarEE5clearEv:bb.a
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !27, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %.not7.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i, label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8unfreezeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !35
  tail call void @_ZN4Luau13pagedUnfreezeEPvm(ptr noundef %i.g, i64 noundef 32768)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i, label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8unfreezeEv.exit, label %.lr.ph.i

_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8unfreezeEv.exit: ; preds = %.lr.ph.i, %bb.b
  store i8 0, ptr %0, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8unfreezeEv.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not13.i = icmp eq ptr %i.j, %i.l
  br i1 %.not13.i, label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE4freeEv.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

._crit_edge17.i:                                  ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %.pre19.i = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.n = icmp eq ptr %.pre19.i, %.pre.i
  br i1 %i.n, label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE4freeEv.exit, label %_ZSt8_DestroyIPPN4Luau11TypePackVarES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN4Luau11TypePackVarES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge17.i
  store ptr %.pre.i, ptr %i.k, align 8, !tbaa !38
  br label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE4freeEv.exit

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph16.i
  %.sroa.09.014.i = phi ptr [ %i.j, %.lr.ph16.i ], [ %i.v, %._crit_edge.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !35 ; 3 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %.not18.i = icmp eq i64 %i.t, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.u = phi i64 [ %i.t, %bb.e ], [ 372, %bb.d ]
  br label %.lr.ph.i1

._crit_edge.i:                                    ; preds = %_ZN4Luau11TypePackVarD2Ev.exit.i, %bb.e
  tail call void @_ZN4Luau15pagedDeallocateEPvm(ptr noundef %i.o, i64 noundef 32768)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i2 = icmp eq ptr %i.v, %i.l
  br i1 %.not.i2, label %._crit_edge17.i, label %bb.d

.lr.ph.i1:                                        ; preds = %_ZN4Luau11TypePackVarD2Ev.exit.i, %.lr.ph.preheader.i
  %.012.i = phi i64 [ %i.ae, %_ZN4Luau11TypePackVarD2Ev.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.012.i ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !40
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void %i.aa(ptr noundef nonnull %i.ab)
          to label %_ZN4Luau11TypePackVarD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i1
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #20
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit.i:                 ; preds = %.lr.ph.i1
  %i.ae = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i1, !llvm.loop !43

_ZN4Luau14TypedAllocatorINS_11TypePackVarEE4freeEv.exit: ; preds = %bb.c, %._crit_edge17.i, %_ZSt8_DestroyIPPN4Luau11TypePackVarES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 372, ptr %i.af, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 82
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_4TypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw [392 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !45     ; 2 uses
  store i32 %i.j, ptr %i.i, align 8, !tbaa !45
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #21, !inline_history !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.r = load i8, ptr %i.q, align 8, !tbaa !48, !range !21, !noundef !22
  store i8 %i.r, ptr %i.p, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 344 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 376 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !56
  %i.w = load i8, ptr %i.u, align 8, !tbaa !56, !range !21, !noundef !22
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJS1_EEEPS1_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 360 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !57
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.z, ptr %i.s, align 8, !tbaa !60
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !63
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !62
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !60
  store i64 0, ptr %i.ah, align 8, !tbaa !62
  store i8 0, ptr %i.aa, align 8, !tbaa !63
  store i8 1, ptr %i.v, align 8, !tbaa !56
  br label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJS1_EEEPS1_DpOT_.exit

_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJS1_EEEPS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !64
  %i.an = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !26
  %i.ap = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  store ptr %0, ptr %i.aq, align 8, !tbaa !64
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena9freshTypeENS_7NotNullINS_12BuiltinTypesEEENS_9TypeLevelE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3.i.sroa.0 = alloca <76 x i8>, align 128 ; 4 uses
  %3 = alloca %"struct.Luau::FreeType", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  call void @_ZN4Luau8FreeTypeC1ENS_9TypeLevelEPKNS_4TypeES4_(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 %2, ptr noundef %i.b, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 82
  br i1 %i.g, label %bb.b, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4Luau14TypedAllocatorINS_4TypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw [392 x i8], ptr %i.l, i64 %i.h ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %.sroa.3.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.3.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !45
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  store i8 0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  store i8 0, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  store ptr null, ptr %i.q, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %i.r = load i64, ptr %i.e, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  store ptr %0, ptr %i.u, align 8, !tbaa !64
  ret ptr %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4Luau8FreeTypeC1ENS_9TypeLevelEPKNS_4TypeES4_(ptr noundef nonnull align 8 dereferenceable(72), i64, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena9freshTypeENS_7NotNullINS_12BuiltinTypesEEEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3.i.sroa.0 = alloca <76 x i8>, align 128 ; 4 uses
  %3 = alloca %"struct.Luau::FreeType", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  call void @_ZN4Luau8FreeTypeC1EPNS_5ScopeEPKNS_4TypeES5_NS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.d, i8 noundef zeroext 4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 82
  br i1 %i.g, label %bb.b, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4Luau14TypedAllocatorINS_4TypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw [392 x i8], ptr %i.l, i64 %i.h ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %.sroa.3.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.3.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !45
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  store i8 0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  store i8 0, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  store ptr null, ptr %i.q, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %i.r = load i64, ptr %i.e, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  store ptr %0, ptr %i.u, align 8, !tbaa !64
  ret ptr %i.m
}

declare void @_ZN4Luau8FreeTypeC1EPNS_5ScopeEPKNS_4TypeES5_NS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena9freshTypeENS_7NotNullINS_12BuiltinTypesEEEPNS_5ScopeENS_9TypeLevelE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree readonly captures(none) %1, ptr noundef %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3.i.sroa.0 = alloca <76 x i8>, align 128 ; 4 uses
  %4 = alloca %"struct.Luau::FreeType", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  call void @_ZN4Luau8FreeTypeC1EPNS_5ScopeENS_9TypeLevelEPKNS_4TypeES6_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %2, i64 %3, ptr noundef %i.b, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 82
  br i1 %i.g, label %bb.b, label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4Luau14TypedAllocatorINS_4TypeEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !26
  br label %_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit

_ZN4Luau14TypedAllocatorINS_4TypeEE8allocateIJNS_8FreeTypeEEEEPS1_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw [392 x i8], ptr %i.l, i64 %i.h ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %.sroa.3.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.3.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 72, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !45
  %5 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 4 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  store i8 0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  store i8 0, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  store ptr null, ptr %i.q, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  %i.r = load i64, ptr %i.e, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.t = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  store ptr %0, ptr %i.u, align 8, !tbaa !64
  ret ptr %i.m
}

declare void @_ZN4Luau8FreeTypeC1EPNS_5ScopeENS_9TypeLevelEPKNS_4TypeES6_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena13freshTypePackEPNS_5ScopeENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Luau::Variant.29", align 8  ; 8 uses
  %4 = alloca %"struct.Luau::FreeTypePack", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN4Luau12FreeTypePackC1EPNS_5ScopeENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef %1, i8 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 371
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4Luau14TypedAllocatorINS_11TypePackVarEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %i.e ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 2, ptr %3, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !81
  invoke void @_ZN4Luau11TypePackVarC1EONS_7VariantIJNS_9Unifiable5BoundIPKS0_EENS2_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %3, align 8, !tbaa !40
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  invoke void %i.o(ptr noundef nonnull %i.k)
          to label %_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8allocateIJNS_12FreeTypePackEEEEPS1_DpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i32, ptr %3, align 8, !tbaa !40
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void %i.v(ptr noundef nonnull %i.k)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit6.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #20
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit6.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.r

_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8allocateIJNS_12FreeTypePackEEEEPS1_DpOT_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.y = load i64, ptr %i.a, align 8, !tbaa !39
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aa = call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store ptr %0, ptr %i.ab, align 8, !tbaa !86
  ret ptr %i.j
}

declare void @_ZN4Luau12FreeTypePackC1EPNS_5ScopeENS_8PolarityE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, i8 noundef zeroext) unnamed_addr #3

declare noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9TypeArena11addTypePackESt16initializer_listIPKNS_4TypeEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::TypePack", align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.idx.i = shl nuw nsw i64 %2, 3                 ; 4 uses
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  br label %bb.d

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #22 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !88
  %.not.i = icmp eq i64 %2, 1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !91

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 8 %1, i64 %.idx.i, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.f, ptr %i.c, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.thread.i.i
  %i.g = phi ptr [ %i.d, %bb.b ], [ %i.a, %.thread.i.i ], [ %i.d, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.j, align 8, !tbaa !93
  %i.k = invoke noundef ptr @_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8allocateIJNS_8TypePackEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %3, align 8, !tbaa !90     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau8TypePackD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #23
  br label %_ZN4Luau8TypePackD2Ev.exit

_ZN4Luau8TypePackD2Ev.exit:                       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.k)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr %0, ptr %i.s, align 8, !tbaa !86
  ret ptr %i.k

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !90     ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i8, label %_ZN4Luau8TypePackD2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #23
  br label %_ZN4Luau8TypePackD2Ev.exit9

_ZN4Luau8TypePackD2Ev.exit9:                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau14TypedAllocatorINS_11TypePackVarEE8allocateIJNS_8TypePackEEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Variant.29", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 371
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau14TypedAllocatorINS_11TypePackVarEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
end_hunk_0
