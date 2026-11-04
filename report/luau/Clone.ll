Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Clone?download=true
inline.NumInlined: 1669
inline.NumDeleted: 942
begin_hunk_0_@_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.n, align 8, !tbaa !54
  %i.o = invoke noundef ptr @_ZN4Luau12_GLOBAL__N_110TypeCloner12shallowCloneEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !58
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.v(ptr noundef nonnull %i.w)
          to label %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i unwind label %bb.d, !inline_history !60

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #20, !inline_history !60
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.i, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.aa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21, !inline_history !60
  br label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit

_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ag

bb.g:                                             ; preds = %bb.a, %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit
  %.0 = phi ptr [ %i.o, %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN4Luau12_GLOBAL__N_110TypeCloner12shallowCloneEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %3 = alloca %"class.Luau::Variant.44", align 8  ; 5 uses
  %4 = alloca %"class.Luau::Variant.80", align 8  ; 8 uses
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %1, i32 noundef 1) ; 11 uses
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !95
  %.not.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = icmp eq ptr %i.b, %i.t
  br i1 %i.u, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.v = icmp eq ptr %i.b, %i.y
  br i1 %i.v, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ]
  %i.w = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.loopexit.i, !llvm.loop !4

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.r, %bb.f ], [ %i.w, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96
  br label %.thread

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !92, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread41

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit: ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %.not.i.not = icmp eq ptr %i.b, %i.ah
  br i1 %.not.i.not, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread41, label %.thread

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread41: ; preds = %.loopexit.i, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !92, !range !29, !noundef !30
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %.not = icmp eq ptr %i.a, %i.am
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread41, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  store i32 %i.ap, ptr %3, align 8, !tbaa !99
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr @_ZZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC1ERKSS_E5table, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void %i.as(ptr noundef nonnull %i.at, ptr noundef nonnull %i.au), !inline_history !5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.av = load i32, ptr %3, align 8, !tbaa !99    ; 2 uses
  store i32 %i.av, ptr %2, align 8, !tbaa !99
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void %i.ay(ptr noundef nonnull %i.az, ptr noundef nonnull %i.at) #19, !inline_history !6
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.ba, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.bc, align 8, !tbaa !101
  %i.bd = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %i.ao, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.k unwind label %.body      ; 8 uses

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %i.bb, align 8, !tbaa !100, !range !29, !noundef !30
  %i.bf = trunc nuw i8 %i.be to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !100
  br i1 %i.bf, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !106
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.bm = load i32, ptr %2, align 8, !tbaa !99
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !59
  invoke void %i.bp(ptr noundef nonnull %i.az)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #20
  unreachable

.body:                                            ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bt = load i32, ptr %3, align 8, !tbaa !99
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59
  invoke void %i.bw(ptr noundef nonnull %i.at)
          to label %common.resume unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bx = load i32, ptr %3, align 8, !tbaa !99
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !59
  invoke void %i.ca(ptr noundef nonnull %i.at)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #20
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.ce = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.bd)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 344
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.cd)
  %i.cg = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.bd) ; 3 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !99
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit, label %bb.r

_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr null, ptr %i.cj, align 8, !tbaa !110
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

bb.q:                                             ; preds = %.body
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #20
  unreachable

bb.r:                                             ; preds = %bb.p, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit
  %i.cm = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.bd) ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !99
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit, label %bb.t

_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr null, ptr %i.cp, align 8, !tbaa !116
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.bd) ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i23, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !99
  %i.cs = icmp eq i32 %i.cr, 9
  br i1 %i.cs, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 104
  store ptr null, ptr %i.ct, align 8, !tbaa !149
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread: ; preds = %bb.t, %bb.u, %_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit, %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !93  ; 3 uses
  %i.cv = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !97 ; 2 uses
  %i.cy = urem i64 %i.cv, %i.cx                   ; 3 uses
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !98
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !73 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !96
  %i.df = icmp eq ptr %i.a, %i.de
  br i1 %i.df, label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %bb.x
  %i.dg = icmp eq ptr %i.a, %i.dj
  br i1 %i.dg, label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.020.i.i.i.i = phi ptr [ %i.dh, %bb.w ], [ %i.dc, %bb.v ]
  %i.dh = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !96 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = urem i64 %i.dk, %i.cx
  %.not19.i.i.i.i = icmp eq i64 %i.dl, %i.cy
  br i1 %.not19.i.i.i.i, label %bb.w, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.x
  br label %.loopexit.i.i, !llvm.loop !4

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread
  %i.dm = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 5 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !73
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.a, ptr %i.dn, align 8, !tbaa !151
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr null, ptr %i.do, align 8, !tbaa !152
  %i.dp = invoke ptr @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 noundef %i.cy, i64 noundef %i.cv, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit unwind label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit25, %.body, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.eg, %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit25 ], [ %i.bs, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 24) #21
  br label %common.resume

_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit: ; preds = %bb.w, %bb.v, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.dp, %.loopexit.i.i ], [ %i.dc, %bb.v ], [ %i.dh, %bb.w ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.bd, ptr %.1.i.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.dr, align 8, !tbaa !96
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !62
  %.not.i.i24 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i24, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit
  store i32 0, ptr %i.dt, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.bd, ptr %i.dw, align 8, !tbaa !59
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.ds, align 8, !tbaa !56
  br label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE9push_backEOS8_.exit

bb.z:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %._ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE9push_backEOS8_.exit_crit_edge unwind label %bb.ab

._ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE9push_backEOS8_.exit_crit_edge: ; preds = %bb.z
end_hunk_0
begin_hunk_1_@_ZN4Luau7TypeFunC2ERKS0_:bb.a
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !325
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !203
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !174 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !174 ; 2 uses
  %.not7.i.i.i.i.i6 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not7.i.i.i.i.i6, label %.loopexit, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %.noexc13, %.lr.ph.i.i.i.i.i7
  %.09.i.i.i.i.i8 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i7 ], [ %i.ac, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i9 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i7 ], [ %i.ag, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i9, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i9, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i8, i64 24 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i.i10, label %.loopexit, label %.lr.ph.i.i.i.i.i7, !llvm.loop !323

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i7, %.noexc13
  %.0.lcssa.i.i.i.i.i11 = phi ptr [ %i.ac, %.noexc13 ], [ %i.aj, %.lr.ph.i.i.i.i.i7 ]
  store ptr %.0.lcssa.i.i.i.i.i11, ptr %i.ad, align 8, !tbaa !325
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %i.al, i64 28, i1 false)
  ret void

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %0, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #21
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.am
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7TypeFunD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !199    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #21
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau5cloneERKNS_7BindingERNS_9TypeArenaERNS_10CloneStateE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::Binding") align 8 initializes((8, 24)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(120) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Luau::(anonymous namespace)::TypeCloner", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.a, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.b, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !205
  store i8 0, ptr %i.k, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !207, !range !29, !noundef !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_.exit unwind label %bb.e

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !208
  %i.u = load ptr, ptr %1, align 8, !tbaa !209
  %i.v = invoke fastcc noundef ptr @_ZN4Luau12_GLOBAL__N_110TypeCloner5cloneEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %i.u)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !209
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i ], [ %i.w, %bb.b ] ; 3 uses
  %i.z = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !58
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.ac(ptr noundef nonnull %i.ad)
          to label %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !60

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #20, !inline_history !60
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.ah = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.w, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #21, !inline_history !60
  br label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit

_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #19
  call void @_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.an
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !106
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau16cloneIncrementalEPKNS_11TypePackVarERNS_9TypeArenaERNS_10CloneStateEPNS_5ScopeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Luau::(anonymous namespace)::FragmentAutocompleteTypeCloner", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.d, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.e, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_130FragmentAutocompleteTypeClonerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %3, ptr %i.l, align 8, !tbaa !211
  %i.m = invoke fastcc noundef ptr @_ZN4Luau12_GLOBAL__N_110TypeCloner5cloneEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !55   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.q = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !58
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.t(ptr noundef nonnull %i.u)
          to label %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i unwind label %bb.d, !inline_history !60

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #20, !inline_history !60
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.y = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #21, !inline_history !60
  br label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit

_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ae

bb.g:                                             ; preds = %bb.a, %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit
  %.0 = phi ptr [ %i.m, %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(84) dereferenceable(84) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load i32, ptr %.05.i.i.i, align 8, !tbaa !58
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21
  br label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau16cloneIncrementalEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEPNS_5ScopeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Luau::(anonymous namespace)::FragmentAutocompleteTypeCloner", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i8, ptr %i.a, align 8, !tbaa !92, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  store ptr %i.p, ptr %.02530, align 8, !tbaa !73
  store ptr %.02530, ptr %i.g, align 8, !tbaa !227
  store ptr %i.g, ptr %i.n, align 8, !tbaa !77
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !73
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !77
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !73
  store ptr %i.s, ptr %.02530, align 8, !tbaa !73
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !77
  store ptr %.02530, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !75
  store ptr %.0.i, ptr %0, align 8, !tbaa !76
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !58
  store i32 %i.r, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %storemerge.i = load ptr, ptr %i.t, align 8, !tbaa !59
  store ptr %storemerge.i, ptr %i.s, align 8, !tbaa !59
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.u = load i32, ptr %.0912.i.i.i, align 8, !tbaa !58, !alias.scope !341 ; 2 uses
  store i32 %i.u, ptr %.013.i.i.i, align 8, !tbaa !58, !alias.scope !340
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8 ; 2 uses
  %storemerge.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !59, !alias.scope !341
  store ptr %storemerge.i.i.i.i.i, ptr %i.v, align 8, !tbaa !59, !alias.scope !340
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59, !noalias !342
  invoke void %i.z(ptr noundef nonnull %i.w)
          to label %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !noalias !340

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #20, !noalias !340
  unreachable

_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21
  %.013.i.i.i18 = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.ae, %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 3 uses
  %.0912.i.i.i19 = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.af = load i32, ptr %.0912.i.i.i19, align 8, !tbaa !58, !alias.scope !344 ; 2 uses
  store i32 %i.af, ptr %.013.i.i.i18, align 8, !tbaa !58, !alias.scope !343
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 8 ; 2 uses
  %storemerge.i.i.i.i.i20 = load ptr, ptr %i.ah, align 8, !tbaa !59, !alias.scope !344
  store ptr %storemerge.i.i.i.i.i20, ptr %i.ag, align 8, !tbaa !59, !alias.scope !343
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59, !noalias !345
  invoke void %i.ak(ptr noundef nonnull %i.ah)
          to label %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 unwind label %bb.d, !noalias !343

bb.d:                                             ; preds = %.lr.ph.i.i.i17
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #20, !noalias !343
  unreachable

_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !7

_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24: ; preds = %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.ae, %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #21
  br label %_ZNSt12_Vector_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !62
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE6fnDtorIS3_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE6fnDtorIS6_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load i32, ptr %0, align 8, !tbaa !99
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.m(ptr noundef nonnull %i.n)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS6_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !96
  store i64 %i.a, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS8_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS9_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISA_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !204
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !205  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4Luau11GenericTypeC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !105
  %i.k = load i64, ptr %i.e, align 8, !tbaa !106
  store i64 %i.k, ptr %i.c, align 8, !tbaa !106
  br label %_ZN4Luau11GenericTypeC2EOS0_.exit

_ZN4Luau11GenericTypeC2EOS0_.exit:                ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !205
  store ptr %i.e, ptr %i.b, align 8, !tbaa !105
  store i64 0, ptr %i.l, align 8, !tbaa !205
  store i8 0, ptr %i.e, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i16, ptr %i.p, align 8
  store i16 %i.q, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISB_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISC_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !229    ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = icmp eq i32 %i.a, 0
  br i1 %i.d, label %call.0.i.i, label %call.1.i.i

call.0.i.i:                                       ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8, !tbaa !219
  store i8 %i.e, ptr %i.b, align 8, !tbaa !219
  br label %_ZN4Luau13SingletonTypeC2EOS0_.exit

call.1.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !204
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %call.1.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !205  ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnMoveIS2_EEvPvS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %call.1.i.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !105
  %i.n = load i64, ptr %i.h, align 8, !tbaa !106
  store i64 %i.n, ptr %i.f, align 8, !tbaa !106
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnMoveIS2_EEvPvS5_.exit.i.i

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnMoveIS2_EEvPvS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !205
  store ptr %i.h, ptr %i.c, align 8, !tbaa !105
  store i64 0, ptr %i.o, align 8, !tbaa !205
  store i8 0, ptr %i.h, align 8, !tbaa !106
  br label %_ZN4Luau13SingletonTypeC2EOS0_.exit

_ZN4Luau13SingletonTypeC2EOS0_.exit:              ; preds = %call.0.i.i, %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnMoveIS2_EEvPvS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISD_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISE_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !217
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216
  store ptr %i.f, ptr %i.d, align 8, !tbaa !216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !225
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !225
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  store ptr %i.l, ptr %i.j, align 8, !tbaa !224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !237
  store i64 %i.o, ptr %i.m, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISF_EEvPvSU_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !239
  %i.c = load i8, ptr %i.a, align 8, !tbaa !239, !range !29, !noundef !30
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4Luau12FunctionTypeC2EOS0_.exit
end_hunk_2
begin_hunk_3_@_ZN4Luau23UserDefinedFunctionDataC2EOS0_:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !106
  store i8 %i.v, ptr %i.u, align 1, !tbaa !106
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !205
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !289
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !289
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !213
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !213
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !204
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !105 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.al, ptr %i.a, align 8, !tbaa !213
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i.i9, label %._crit_edge.i.i.i.i8

.noexc.i.i.i9:                                    ; preds = %bb.d
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.i   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i9
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !105
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %.noexc10, %bb.d
  %i.ap = phi ptr [ %i.an, %.noexc10 ], [ %i.ai, %bb.d ] ; 2 uses
  switch i64 %i.al, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i8
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !106
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !106
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i8
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !213 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !205
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i9
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.av, %bb.h ]
  call void @_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !290    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !291  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %.04.i.i.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !290
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.k) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !106
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !22   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !354
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !106
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS6_EEvPvPKv(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !96
  store i64 %i.a, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS8_EEvPvPKv(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS9_EEvPvPKv(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISA_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !204
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.g, ptr %i.a, align 8, !tbaa !213
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !105
  %i.j = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.j, ptr %i.d, align 8, !tbaa !106
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau11GenericTypeC2ERKS0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !106
  store i8 %i.l, ptr %i.k, align 1, !tbaa !106
  br label %_ZN4Luau11GenericTypeC2ERKS0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZN4Luau11GenericTypeC2ERKS0_.exit

_ZN4Luau11GenericTypeC2ERKS0_.exit:               ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !205
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i16, ptr %i.r, align 8
  store i16 %i.s, ptr %i.q, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISB_EEvPvPKv(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISC_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !229    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %call.0.i.i, label %call.1.i.i

call.0.i.i:                                       ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 8, !tbaa !219
  store i8 %i.f, ptr %i.c, align 8, !tbaa !219
  br label %_ZN4Luau13SingletonTypeC2ERKS0_.exit

call.1.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !204
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.j, ptr %i.a, align 8, !tbaa !213
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %call.1.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !105
  %i.m = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.m, ptr %i.g, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %call.1.i.i
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.g, %call.1.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !106
  store i8 %i.o, ptr %i.n, align 1, !tbaa !106
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !205
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4Luau13SingletonTypeC2ERKS0_.exit

_ZN4Luau13SingletonTypeC2ERKS0_.exit:             ; preds = %call.0.i.i, %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISD_EEvPvPKv(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !230
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISE_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau20PendingExpansionTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISF_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISG_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISH_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !100
end_hunk_3
begin_hunk_4_@_ZN4Luau12FunctionTypeC2ERKS0_:bb.a
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !243
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #21
  br label %.body

bb.s:                                             ; preds = %.noexc25
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !293
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !295 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !296 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i26, label %.noexc30, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775776
  br i1 %i.cy, label %.noexc.i.i28, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !200

.noexc.i.i28:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc29 unwind label %bb.ag

.noexc29:                                         ; preds = %.noexc.i.i28
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #22
          to label %.noexc30 unwind label %bb.ag

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.s
  %i.da = phi ptr [ null, %bb.s ], [ %i.cz, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.da, ptr %i.cq, align 8, !tbaa !296
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !295
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !245
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !244
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !244
  %i.dg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.de, ptr %i.df, ptr noundef %i.da)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %.noexc30
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !296 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i27, label %.body31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !245
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #21
  br label %.body31

bb.w:                                             ; preds = %.noexc30
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !295
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !248 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !59
  store <2 x ptr> %i.dt, ptr %i.dp, align 8, !tbaa !59
  %.not.i.i.i33 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i33, label %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i34 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !22
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !22
  br label %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.dy = atomicrmw volatile add ptr %i.du, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit

_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit: ; preds = %bb.w, %bb.y, %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.eb = load i32, ptr %i.ea, align 8
  store i32 %i.eb, ptr %i.dz, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !248 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !59
  store <2 x ptr> %i.eg, ptr %i.ec, align 8, !tbaa !59
  %.not.i.i.i35 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i35, label %_ZNSt10shared_ptrIN4Luau7AstAttr14DeprecatedInfoEEC2ERKS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i36 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !22
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !22
  br label %_ZNSt10shared_ptrIN4Luau7AstAttr14DeprecatedInfoEEC2ERKS3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.el = atomicrmw volatile add ptr %i.eh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau7AstAttr14DeprecatedInfoEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4Luau7AstAttr14DeprecatedInfoEEC2ERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit, %bb.ab, %bb.ac
  ret void

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i19
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

bb.af:                                            ; preds = %_ZNSt15__new_allocatorISt8optionalIN4Luau16FunctionArgumentEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i28
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body31:                                          ; preds = %bb.u, %bb.v, %bb.ag
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.ep, %bb.ag ], [ %i.dh, %bb.v ], [ %i.dh, %bb.u ]
  call void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #19
  br label %.body

.body:                                            ; preds = %bb.af, %bb.r, %bb.q, %.body31
  %.pn = phi { ptr, i32 } [ %eh.lpad-body32, %.body31 ], [ %i.eo, %bb.af ], [ %i.ck, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %i.eq = load ptr, ptr %i.av, align 8, !tbaa !223 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.body
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !224
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #21
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.ah, %.body, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ae ], [ %.pn, %.body ], [ %.pn, %bb.ah ] ; 2 uses
  %i.ev = load ptr, ptr %i.y, align 8, !tbaa !215 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !216
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #21
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.ai, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.ad ], [ %.pn.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ], [ %.pn.pn, %bb.ai ]
  call void @_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !294    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !298, !range !29, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !298
  br i1 %i.f, label %bb.b, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !105 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !106
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !294
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !243
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21
  br label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !239, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !239
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !100, !range !29, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !100
  br i1 %i.f, label %bb.c, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !106
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalIN4Luau16FunctionArgumentEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.v, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.013 = phi ptr [ %i.u, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 48 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !298
  %i.d = load i8, ptr %i.b, align 8, !tbaa !298, !range !29, !noundef !30
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.f, ptr %.014, align 8, !tbaa !204
  %i.g = load ptr, ptr %.sroa.08.013, align 8, !tbaa !105 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.i, ptr %i.a, align 8, !tbaa !213
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  store ptr %i.k, ptr %.014, align 8, !tbaa !105
  %i.l = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.l, ptr %i.f, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !106
  store i8 %i.n, ptr %i.m, align 1, !tbaa !106
  br label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !205
  %i.q = load ptr, ptr %.014, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !208
  store i8 1, ptr %i.c, align 8, !tbaa !298
  br label %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit

_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.u, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !355

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.v, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !298, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !298
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load ptr, ptr %.05.i, align 8, !tbaa !105 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !106
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !9

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !204
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !105 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.e, ptr %i.a, align 8, !tbaa !213
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !105
  %i.h = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.h, ptr %i.b, align 8, !tbaa !106
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !106
  store i8 %i.j, ptr %i.i, align 1, !tbaa !106
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !205
  %i.m = load ptr, ptr %.014, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !356

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !105 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !106
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !10

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !278
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !282
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !283
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !281
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !277  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8, !tbaa !300
  %i.k = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %.noexc.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !11

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !279
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !302  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !12

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.g, align 8, !tbaa !279
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !281
  store i64 %i.q, ptr %i.h, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr %i.k, ptr %i.e, align 8, !tbaa !279
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.a, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_4
begin_hunk_5_@_ZN4Luau8PropertyC2ERKS0_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !295  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !296  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !200

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #22
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !245
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !244
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !244
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ai, ptr %i.aj, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc10
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !296 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !245
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #21
  br label %.body

bb.g:                                             ; preds = %.noexc10
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !295
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !100
  %i.au = load i8, ptr %i.as, align 8, !tbaa !100, !range !29, !noundef !30
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !204
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !213
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !105
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc11, %bb.h
  %i.be = phi ptr [ %i.bc, %.noexc11 ], [ %i.ax, %bb.h ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !106
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !106
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !213 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !205
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.at, align 8, !tbaa !100
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #19
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.e, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %i.bm, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.e ]
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !105 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.f
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !106
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !296    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !105 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !106
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !106
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !106
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !106
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %.lr.ph.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !106
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.j, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !106
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !204
  %i.d = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.f, ptr %i.b, align 8, !tbaa !213
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !105
  %i.i = load i64, ptr %i.b, align 8, !tbaa !213
  store i64 %i.i, ptr %i.c, align 8, !tbaa !106
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !106
  store i8 %i.k, ptr %i.j, align 1, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !205
  %i.n = load ptr, ptr %0, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !278
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !277
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !281
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !277  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.p, ptr %2, align 8, !tbaa !300
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull %i.w, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i unwind label %bb.r ; 3 uses

.noexc.i.i:                                       ; preds = %bb.d, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !11

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !279
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !302 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.f, label %bb.e, !llvm.loop !12

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i.i.i.i, ptr %i.t, align 8, !tbaa !279
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !281
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr %i.x, ptr %i.r, align 8, !tbaa !279
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !295 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !296 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i, label %.noexc18, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.ao = icmp ugt i64 %i.an, 9223372036854775776
  br i1 %i.ao, label %.noexc.i.i16, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !200

.noexc.i.i16:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc17 unwind label %bb.s

.noexc17:                                         ; preds = %.noexc.i.i16
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #22
          to label %.noexc18 unwind label %bb.s

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
end_hunk_5
begin_hunk_6_@_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2ERKSL_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !204
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !213
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !105
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !106
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.al = phi ptr [ %i.aj, %.noexc ], [ %i.ae, %.lr.ph ] ; 2 uses
  switch i64 %i.ah, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i8, ptr %i.af, align 1, !tbaa !106
  store i8 %i.am, ptr %i.al, align 1, !tbaa !106
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !213 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !205
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = add nuw i64 %.018, 1                    ; 3 uses
  store i64 %i.at, ptr %i.c, align 8, !tbaa !308
  %i.au = load i64, ptr %i.v, align 8, !tbaa !308
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %.loopexit, !llvm.loop !368

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !105 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !106
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp24

.loopexit:                                        ; preds = %bb.h, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS6_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS8_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS9_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISA_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau11GenericTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !106
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZN4Luau11GenericTypeD2Ev.exit

_ZN4Luau11GenericTypeD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISB_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISC_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !229
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISD_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISE_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau20PendingExpansionTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZN4Luau20PendingExpansionTypeD2Ev.exit

_ZN4Luau20PendingExpansionTypeD2Ev.exit:          ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISF_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISG_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISH_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.b, label %_ZN4Luau13MetatableTypeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau13MetatableTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZN4Luau13MetatableTypeD2Ev.exit

_ZN4Luau13MetatableTypeD2Ev.exit:                 ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISI_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISJ_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISK_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #21
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISL_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau16IntersectionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #21
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISM_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau8LazyTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 3)
          to label %_ZN4Luau8LazyTypeD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZN4Luau8LazyTypeD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISN_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISO_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISP_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISQ_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISR_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !224
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit

_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit:      ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS1_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS2_EEvPv(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !106
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #21
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !306
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !307
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !370
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !370
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !200

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !306
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !307
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !371
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !371
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !200

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !296 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !106
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !294 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.bk, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 48 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !298, !range !29, !noundef !30
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !298
  br i1 %i.be, label %bb.o, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i7
  %i.bf = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !105 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !106
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #21
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 56 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bk, %i.bb
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !9

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.ay, align 8, !tbaa !294
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bl = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !243
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #21
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !223 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !224
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #21
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !215 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !216
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #21
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !239, !range !29, !noundef !30
  %i.ch = trunc nuw i8 %i.cg to i1
  store i8 0, ptr %i.cf, align 8, !tbaa !239
  br i1 %i.ch, label %bb.s, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !100, !range !29, !noundef !30
  %i.ck = trunc nuw i8 %i.cj to i1
  store i8 0, ptr %i.ci, align 8, !tbaa !100
  br i1 %i.ck, label %bb.t, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !106
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #21
  br label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit: ; preds = %bb.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !106
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !106
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !224
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #21
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !215 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #21
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !100, !range !29, !noundef !30
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !100
  br i1 %i.am, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !106
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !100, !range !29, !noundef !30
  %i.av = trunc nuw i8 %i.au to i1
  store i8 0, ptr %i.at, align 8, !tbaa !100
  br i1 %i.av, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !106
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7: ; preds = %bb.f, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !277
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #20
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !286, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !286
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load i32, ptr %i.d, align 8, !tbaa !288
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !106
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248  ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !306
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !307
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !372
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !372
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !200

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !296 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !106
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !277
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.ba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #20
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !106
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS1_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS2_EEvPv(ptr noundef %0) #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !308  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.04.i.i.i.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !106
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !373

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !289
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i
end_hunk_6
begin_hunk_7_@_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm:bb.a
          to label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #19 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !226
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !97
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  store ptr %i.w, ptr %3, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !77
  store ptr %3, ptr %i.x, align 8, !tbaa !73
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309
  store ptr %i.z, ptr %3, align 8, !tbaa !73
  store ptr %3, ptr %i.y, align 8, !tbaa !309
  %i.aa = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !97
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !96
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !77
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !95
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !376
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeES6_ELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !200

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeES6_ELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeES6_ELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeES6_ELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !309  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !309
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !73 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !309
  store ptr %i.p, ptr %.02530, align 8, !tbaa !73
  store ptr %.02530, ptr %i.g, align 8, !tbaa !309
  store ptr %i.g, ptr %i.n, align 8, !tbaa !77
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !73
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !77
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !73
  store ptr %i.s, ptr %.02530, align 8, !tbaa !73
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !77
  store ptr %.02530, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !97
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !97
  store ptr %.0.i, ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau12_GLOBAL__N_110TypeCloner3runEv(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 4 uses
  %2 = alloca %"class.Luau::Variant.80", align 8  ; 9 uses
  %3 = alloca %"class.std::optional.217", align 8 ; 6 uses
  %4 = alloca %"class.Luau::Variant.80", align 8  ; 4 uses
  %5 = alloca %"class.Luau::Variant.80", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !381  ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !381  ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit25
  %i.p = phi ptr [ %i.d, %.lr.ph ], [ %i.ge, %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit25 ] ; 3 uses
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.gd, %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit25 ]
  %i.r = load i32, ptr %i.f, align 8, !tbaa !54
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr %i.f, align 8, !tbaa !54
  %i.t = load i32, ptr @_ZN4FInt27LuauTypeCloneIterationLimitE, align 8, !tbaa !155 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit.thread, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit

_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit: ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = add nsw i64 %i.z, %i.v
  %i.ab = sext i32 %i.t to i64
  %.not = icmp ult i64 %i.aa, %i.ab
  br i1 %.not, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit.thread, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit._crit_edge

_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit.thread: ; preds = %bb.b, %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ac = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  store i32 %i.ad, ptr %2, align 8, !tbaa !58
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %storemerge.i = load ptr, ptr %i.ae, align 8, !tbaa !59
  store ptr %storemerge.i, ptr %i.g, align 8, !tbaa !59
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !56
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  invoke void %i.ah(ptr noundef nonnull %i.ae)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit.thread
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #20
  unreachable

bb.d:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner25hasExceededIterationLimitEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ak = load i32, ptr %2, align 8, !tbaa !58    ; 3 uses
  store i32 %i.ak, ptr %4, align 8, !tbaa !58
  %storemerge.i7 = load ptr, ptr %i.g, align 8, !tbaa !59 ; 3 uses
  store ptr %storemerge.i7, ptr %i.h, align 8, !tbaa !59
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  switch i32 %i.ak, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread [
    i32 0, label %bb.e
    i32 1, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.al = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %storemerge.i7, i32 noundef 1)
          to label %.noexc unwind label %bb.w     ; 7 uses

.noexc:                                           ; preds = %bb.e
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !93, !noalias !382 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !95, !noalias !382
  %.not.not.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ap, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !73, !noalias !382 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96, !noalias !382
  %i.as = icmp eq ptr %i.al, %i.ar
  br i1 %i.as, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %bb.g, !llvm.loop !3

bb.i:                                             ; preds = %.noexc
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !97, !noalias !382 ; 2 uses
  %i.aw = urem i64 %i.at, %i.av                   ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !98, !noalias !382
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77, !noalias !382 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73, !noalias !382 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !96, !noalias !382
  %i.bd = icmp eq ptr %i.al, %i.bc
  br i1 %i.bd, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %.lr.ph.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.be = icmp eq ptr %i.al, %i.bh
  br i1 %i.be, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %i.ba, %bb.j ]
  %i.bf = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !73, !noalias !382 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96, !noalias !382 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.av
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.aw
  br i1 %.not19.i.i.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !4

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !92, !range !29, !noalias !382, !noundef !30
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i: ; preds = %.loopexit.i.i
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !52, !noalias !382
  %.not.i.not.i = icmp eq ptr %i.al, %i.bn
  br i1 %.not.i.not.i, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i

bb.m:                                             ; preds = %bb.d
  %i.bo = invoke noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %storemerge.i7)
          to label %.noexc8 unwind label %bb.w    ; 7 uses

.noexc8:                                          ; preds = %bb.m
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !382 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72, !noalias !382
  %.not.not.i.i.i7.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i7.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.noexc8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.sroa.06.0.in.i.i.i22.i = phi ptr [ %i.bs, %bb.n ], [ %.sroa.06.0.i.i.i23.i, %bb.p ]
  %.sroa.06.0.i.i.i23.i = load ptr, ptr %.sroa.06.0.in.i.i.i22.i, align 8, !tbaa !73, !noalias !382 ; 4 uses
  %.not.i.i.i24.i = icmp eq ptr %.sroa.06.0.i.i.i23.i, null
  br i1 %.not.i.i.i24.i, label %.loopexit.i14.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i23.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74, !noalias !382
  %i.bv = icmp eq ptr %i.bo, %i.bu
  br i1 %i.bv, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %bb.o, !llvm.loop !1

bb.q:                                             ; preds = %.noexc8
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !75, !noalias !382 ; 2 uses
  %i.bz = urem i64 %i.bw, %i.by                   ; 2 uses
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !76, !noalias !382
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77, !noalias !382 ; 2 uses
  %.not.i.i.i.i.i8.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i8.i, label %.loopexit.i14.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !73, !noalias !382 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !74, !noalias !382
  %i.cg = icmp eq ptr %i.bo, %i.cf
  br i1 %i.cg, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %.lr.ph.i.i.i.i.i9.i

bb.s:                                             ; preds = %bb.t
  %i.ch = icmp eq ptr %i.bo, %i.ck
  br i1 %i.ch, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, label %.lr.ph.i.i.i.i.i9.i, !llvm.loop !2

.lr.ph.i.i.i.i.i9.i:                              ; preds = %bb.r, %bb.s
  %.020.i.i.i.i.i10.i = phi ptr [ %i.ci, %bb.s ], [ %i.cd, %bb.r ]
  %i.ci = load ptr, ptr %.020.i.i.i.i.i10.i, align 8, !tbaa !73, !noalias !382 ; 4 uses
  %.not18.i.i.i.i.i11.i = icmp eq ptr %i.ci, null
  br i1 %.not18.i.i.i.i.i11.i, label %.loopexit.i14.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i9.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !74, !noalias !382 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = urem i64 %i.cl, %i.by
  %.not19.i.i.i.i.i12.i = icmp eq i64 %i.cm, %i.bz
  br i1 %.not19.i.i.i.i.i12.i, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i.i13.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i13.i:             ; preds = %bb.t
  br label %.loopexit.i14.i, !llvm.loop !2

.loopexit.i14.i:                                  ; preds = %.lr.ph.i.i.i.i.i9.i, %bb.o, %..loopexit_crit_edge21.i.i.i.i.i13.i, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !28, !range !29, !noalias !382, !noundef !30
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i: ; preds = %.loopexit.i14.i
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !382
  %.not.i19.not.i = icmp eq ptr %i.bo, %i.cq
  br i1 %.not.i19.not.i, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread, label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread: ; preds = %bb.d, %.loopexit.i14.i, %.loopexit.i.i, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i
  store i8 0, ptr %i.j, align 8, !tbaa !384
  br label %_ZNSt14_Optional_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEELb0ELb0EED2Ev.exit

_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split: ; preds = %bb.s, %bb.p, %bb.k, %bb.h, %bb.r, %bb.j
  %.sroa.06.1.i.i.i21.i.sink = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.h ], [ %.sroa.06.0.i.i.i23.i, %bb.p ], [ %i.ba, %bb.j ], [ %i.bf, %bb.k ], [ %i.cd, %bb.r ], [ %i.ci, %bb.s ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i21.i.sink, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !59, !noalias !382
  br label %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i

_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i: ; preds = %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i
  %.sink = phi i32 [ 1, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i ], [ 0, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i ], [ %i.ak, %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split ] ; 2 uses
  %.sroa.06.010.i32.i.sink = phi ptr [ %i.bo, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_11TypePackVarE.exit.i ], [ %i.al, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.i ], [ %i.cs, %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i.sink.split ]
  store i32 %.sink, ptr %3, align 8, !tbaa !58, !alias.scope !382
  store ptr %.sroa.06.010.i32.i.sink, ptr %i.l, align 8, !tbaa !59, !alias.scope !382
  store i8 0, ptr %i.j, align 8, !tbaa !384
  %i.ct = sext i32 %.sink to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !59
  invoke void %i.cv(ptr noundef nonnull %i.l)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEELb0ELb0EED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #20
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEELb0ELb0EED2Ev.exit: ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread, %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i
  %6 = phi i1 [ false, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit.thread ], [ true, %_ZNSt8optionalIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSC_.exit.i.i ]
  %i.cy = load i32, ptr %4, align 8, !tbaa !58
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !59
  invoke void %i.db(ptr noundef nonnull %i.h)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEELb0ELb0EED2Ev.exit
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #20
  unreachable

_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %6, label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit24, label %bb.y, !llvm.loop !379

bb.w:                                             ; preds = %bb.m, %bb.e
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load i32, ptr %4, align 8, !tbaa !58
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59
  invoke void %i.di(ptr noundef nonnull %i.h)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit9 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #20
  unreachable

_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit9: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit26

bb.y:                                             ; preds = %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEED2Ev.exit
  %i.dl = load i32, ptr %2, align 8, !tbaa !58    ; 2 uses
  store i32 %i.dl, ptr %5, align 8, !tbaa !58
  %storemerge.i10 = load ptr, ptr %i.g, align 8, !tbaa !59 ; 3 uses
  store ptr %storemerge.i10, ptr %i.o, align 8, !tbaa !59
  switch i32 %i.dl, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit [
    i32 0, label %bb.z
    i32 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8, !tbaa !312
  %i.dm = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %storemerge.i10)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.z
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !99
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr @_ZZN4Luau5visitIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_JNS_9Unifiable5BoundIS5_EENS9_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEDaS7_RNS_7VariantIJDpT0_EEEE10tableVisit, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.dr)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit

bb.aa:                                            ; preds = %bb.y
  %i.ds = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %storemerge.i10)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc17:                                         ; preds = %bb.aa
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 5 uses
  switch i32 %i.dt, label %default.switch.case.unreachable.i.i.i [
    i32 0, label %call.0.i.i.i
    i32 1, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit
    i32 2, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit
    i32 3, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit
    i32 4, label %call.4.i.i.i
    i32 5, label %call.5.i.i.i
    i32 6, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit
    i32 7, label %call.7.i.i.i
  ], !prof !212

default.switch.case.unreachable.i.i.i:            ; preds = %.noexc17
  unreachable

call.0.i.i.i:                                     ; preds = %.noexc17
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !386
  %i.dw = load ptr, ptr %0, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.dv)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc18:                                         ; preds = %call.0.i.i.i
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !386
  br label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit

call.4.i.i.i:                                     ; preds = %.noexc17
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !217 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !217 ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.ec
  br i1 %.not13.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i13

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc19, %call.4.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !198, !range !29, !noundef !30
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ab, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit

.lr.ph.i.i.i.i.i.i13:                             ; preds = %call.4.i.i.i, %.noexc19
  %.sroa.010.014.i.i.i.i.i.i = phi ptr [ %i.el, %.noexc19 ], [ %i.ea, %call.4.i.i.i ] ; 3 uses
  %i.eg = load ptr, ptr %.sroa.010.014.i.i.i.i.i.i, align 8, !tbaa !96
  %i.eh = load ptr, ptr %0, align 8, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.eg)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc19:                                         ; preds = %.lr.ph.i.i.i.i.i.i13
  store ptr %i.ek, ptr %.sroa.010.014.i.i.i.i.i.i, align 8, !tbaa !96
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.el, %i.ec
  br i1 %.not.i.i.i.i.i.i14, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i13

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !74
  %i.eo = load ptr, ptr %0, align 8, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.en)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc20:                                         ; preds = %bb.ab
  store ptr %i.er, ptr %i.em, align 8
  store i8 1, ptr %i.ed, align 8
  br label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit

call.5.i.i.i:                                     ; preds = %.noexc17
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !388
  %i.et = load ptr, ptr %0, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.es)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc21:                                         ; preds = %call.5.i.i.i
  store ptr %i.ew, ptr %i.du, align 8, !tbaa !388
  br label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit

call.7.i.i.i:                                     ; preds = %.noexc17
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !217 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !217 ; 2 uses
  %.not19.i.i.i.i.i.i11 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not19.i.i.i.i.i.i11, label %._crit_edge.i.i.i8.i.i.i, label %.lr.ph.i.i.i6.i.i.i

._crit_edge.i.i.i8.i.i.i:                         ; preds = %.noexc22, %call.7.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !225 ; 2 uses
  %.not1821.i.i.i.i.i.i = icmp eq ptr %i.fc, %i.fe
  br i1 %.not1821.i.i.i.i.i.i, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit, label %.lr.ph24.i.i.i.i.i.i

.lr.ph.i.i.i6.i.i.i:                              ; preds = %call.7.i.i.i, %.noexc22
  %.sroa.015.020.i.i.i.i.i.i = phi ptr [ %i.fk, %.noexc22 ], [ %i.ey, %call.7.i.i.i ] ; 3 uses
  %i.ff = load ptr, ptr %.sroa.015.020.i.i.i.i.i.i, align 8, !tbaa !96
  %i.fg = load ptr, ptr %0, align 8, !tbaa !34
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef ptr %i.fi(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.ff)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc22:                                         ; preds = %.lr.ph.i.i.i6.i.i.i
  store ptr %i.fj, ptr %.sroa.015.020.i.i.i.i.i.i, align 8, !tbaa !96
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i7.i.i.i = icmp eq ptr %i.fk, %i.fa
  br i1 %.not.i.i.i7.i.i.i, label %._crit_edge.i.i.i8.i.i.i, label %.lr.ph.i.i.i6.i.i.i

.lr.ph24.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i8.i.i.i, %.noexc23
  %.sroa.011.022.i.i.i.i.i.i = phi ptr [ %i.fq, %.noexc23 ], [ %i.fc, %._crit_edge.i.i.i8.i.i.i ] ; 3 uses
  %i.fl = load ptr, ptr %.sroa.011.022.i.i.i.i.i.i, align 8, !tbaa !74
  %i.fm = load ptr, ptr %0, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef ptr %i.fo(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.fl)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380

.noexc23:                                         ; preds = %.lr.ph24.i.i.i.i.i.i
  store ptr %i.fp, ptr %.sroa.011.022.i.i.i.i.i.i, align 8, !tbaa !74
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.011.022.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i.i.i12 = icmp eq ptr %i.fq, %i.fe
  br i1 %.not18.i.i.i.i.i.i12, label %_ZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEEE.exit, label %.lr.ph24.i.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_8FreeTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef nonnull %i.b), !inline_history !392
  store ptr %i.f, ptr %i.a, align 8, !tbaa !393
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %.not11.i.i = icmp eq ptr %i.h, null
  br i1 %.not11.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.val, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef nonnull %i.h), !inline_history !392
  store ptr %i.l, ptr %i.g, align 8, !tbaa !394
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i8, ptr @_ZN5FFlag52LuauRemovePrimitiveTypeConstraintAndSubtypingUnifierE, align 8, !tbaa !315, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_8FreeTypeEEEDaS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !177, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_8FreeTypeEEEDaS6_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = load ptr, ptr %.val, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.s), !inline_history !392
  store ptr %i.w, ptr %i.r, align 8
  store i8 1, ptr %i.o, align 8
  br label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_8FreeTypeEEEDaS6_.exit

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_8FreeTypeEEEDaS6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_11GenericTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_13PrimitiveTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_13SingletonTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_11BlockedTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_20PendingExpansionTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_12FunctionTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 2 uses
  %.not23.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !225  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225  ; 2 uses
  %.not2225.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not2225.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_12FunctionTypeEEEDaS6_.exit, label %.lr.ph28.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.019.024.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.019.024.i.i, align 8, !tbaa !96
  %i.j = load ptr, ptr %.val, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.i), !inline_history !395
  store ptr %i.m, ptr %.sroa.019.024.i.i, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.024.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph28.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph28.i.i
  %.sroa.015.026.i.i = phi ptr [ %i.t, %.lr.ph28.i.i ], [ %i.f, %._crit_edge.i.i ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.015.026.i.i, align 8, !tbaa !74
  %i.p = load ptr, ptr %.val, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.o), !inline_history !395
  store ptr %i.s, ptr %.sroa.015.026.i.i, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.026.i.i, i64 8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not22.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_12FunctionTypeEEEDaS6_.exit, label %.lr.ph28.i.i

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_12FunctionTypeEEEDaS6_.exit: ; preds = %.lr.ph28.i.i, %._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !406
  %i.w = load ptr, ptr %.val, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.v), !inline_history !395
  store ptr %i.z, ptr %i.u, align 8, !tbaa !406
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !407
  %i.ac = load ptr, ptr %.val, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.ab), !inline_history !395
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !407
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_9TableTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(address) %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Property", align 8   ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !316, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.f = load ptr, ptr %.val, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.e), !inline_history !408
  store ptr %i.i, ptr %i.d, align 8, !tbaa !318
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !319
  %i.l = load ptr, ptr %.val, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.k), !inline_history !408
  store ptr %i.o, ptr %i.j, align 8, !tbaa !319
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !282  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %_ZN4Luau8PropertyD2Ev.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !217 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !217 ; 2 uses
  %.not3438.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not3438.i.i, label %._crit_edge42.i.i, label %.lr.ph41.i.i

bb.d:                                             ; preds = %_ZN4Luau8PropertyD2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.031.037.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.bd, %_ZN4Luau8PropertyD2Ev.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.031.037.i.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call fastcc void @_ZN4Luau12_GLOBAL__N_110TypeCloner12shallowCloneERKNS_8PropertyE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef nonnull align 8 dereferenceable(176) %i.ae)
  %i.af = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.ae, ptr noundef nonnull align 8 dereferenceable(176) %2) #19 ; 0 uses
  %i.ag = load i8, ptr %i.s, align 8, !tbaa !100, !range !29, !noundef !30
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.s, align 8, !tbaa !100
  br i1 %i.ah, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !106
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !296 ; 3 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.am, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !106
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.au = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.am, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !245
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !105 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.z
  br i1 %i.ba, label %_ZN4Luau8PropertyD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i
  %i.bb = load i64, ptr %i.z, align 8, !tbaa !106
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #21
  br label %_ZN4Luau8PropertyD2Ev.exit.i.i

_ZN4Luau8PropertyD2Ev.exit.i.i:                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.031.037.i.i) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.r
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d

._crit_edge42.i.i:                                ; preds = %.lr.ph41.i.i, %._crit_edge.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !225 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !225 ; 2 uses
  %.not3543.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not3543.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9TableTypeEEEDaS6_.exit, label %.lr.ph46.i.i

.lr.ph41.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph41.i.i
  %.sroa.027.039.i.i = phi ptr [ %i.bn, %.lr.ph41.i.i ], [ %i.ab, %._crit_edge.i.i ] ; 3 uses
  %i.bi = load ptr, ptr %.sroa.027.039.i.i, align 8, !tbaa !96
  %i.bj = load ptr, ptr %.val, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.bi), !inline_history !408
  store ptr %i.bm, ptr %.sroa.027.039.i.i, align 8, !tbaa !96
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.027.039.i.i, i64 8 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.bn, %i.ad
  br i1 %.not34.i.i, label %._crit_edge42.i.i, label %.lr.ph41.i.i

.lr.ph46.i.i:                                     ; preds = %._crit_edge42.i.i, %.lr.ph46.i.i
  %.sroa.023.044.i.i = phi ptr [ %i.bt, %.lr.ph46.i.i ], [ %i.bf, %._crit_edge42.i.i ] ; 3 uses
  %i.bo = load ptr, ptr %.sroa.023.044.i.i, align 8, !tbaa !74
  %i.bp = load ptr, ptr %.val, align 8, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.bo), !inline_history !408
  store ptr %i.bs, ptr %.sroa.023.044.i.i, align 8, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.023.044.i.i, i64 8 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.bt, %i.bh
  br i1 %.not35.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9TableTypeEEEDaS6_.exit, label %.lr.ph46.i.i

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9TableTypeEEEDaS6_.exit: ; preds = %.lr.ph46.i.i, %._crit_edge42.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_13MetatableTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !411
  %i.b = load ptr, ptr %.val, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.a), !inline_history !409
  store ptr %i.e, ptr %1, align 8, !tbaa !411
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !412
  %i.h = load ptr, ptr %.val, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.g), !inline_history !409
  store ptr %i.k, ptr %i.f, align 8, !tbaa !412
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_10ExternTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(address) %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Property", align 8   ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not33.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %_ZN4Luau8PropertyD2Ev.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !177, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.b:                                             ; preds = %_ZN4Luau8PropertyD2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.030.034.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %i.an, %_ZN4Luau8PropertyD2Ev.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call fastcc void @_ZN4Luau12_GLOBAL__N_110TypeCloner12shallowCloneERKNS_8PropertyE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef nonnull align 8 dereferenceable(176) %i.o)
  %i.p = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.o, ptr noundef nonnull align 8 dereferenceable(176) %2) #19 ; 0 uses
  %i.q = load i8, ptr %i.d, align 8, !tbaa !100, !range !29, !noundef !30
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.d, align 8, !tbaa !100
  br i1 %i.r, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.f, align 8, !tbaa !106
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !296  ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !106
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.ae = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.w, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !245
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !105 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZN4Luau8PropertyD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i
  %i.al = load i64, ptr %i.k, align 8, !tbaa !106
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %_ZN4Luau8PropertyD2Ev.exit.i.i

_ZN4Luau8PropertyD2Ev.exit.i.i:                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.an = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.030.034.i.i) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.c
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96
  %i.aq = load ptr, ptr %.val, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.ap), !inline_history !413
  store ptr %i.at, ptr %i.ao, align 8
  store i8 1, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !177, !range !29, !noundef !30
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96
  %i.az = load ptr, ptr %.val, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.ay), !inline_history !413
  store ptr %i.bc, ptr %i.ax, align 8
  store i8 1, ptr %i.au, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !316, !range !29, !noundef !30
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !318
  %i.bi = load ptr, ptr %.val, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.bh), !inline_history !413
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !318
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !319
  %i.bo = load ptr, ptr %.val, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.bn), !inline_history !413
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !319
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !315, !range !29, !noundef !30
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_10ExternTypeEEEDaS6_.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !286, !range !29, !noundef !30
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_10ExternTypeEEEDaS6_.exit

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.bz = load ptr, ptr %.val, align 8, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.by), !inline_history !414
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !96
  br label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_10ExternTypeEEEDaS6_.exit

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_10ExternTypeEEEDaS6_.exit: ; preds = %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_7AnyTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_9UnionTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 2 uses
  %.val2 = load ptr, ptr %1, align 8, !tbaa !217  ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !217 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val2, %.val3
  br i1 %.not4.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9UnionTypeEEEDaS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.val2, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !96
  %i.c = load ptr, ptr %.val, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.b), !inline_history !415
  store ptr %i.f, ptr %.sroa.01.05.i.i, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %.val3
  br i1 %.not.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9UnionTypeEEEDaS6_.exit, label %.lr.ph.i.i

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_9UnionTypeEEEDaS6_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4LuauL8fnVisitVIZNS_12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEEUlOT_E_NS_16IntersectionTypeEEEvRS6_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !312   ; 2 uses
  %.val2 = load ptr, ptr %1, align 8, !tbaa !217  ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !217 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val2, %.val3
  br i1 %.not4.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_16IntersectionTypeEEEDaS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.val2, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !96
  %i.c = load ptr, ptr %.val, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(84) %.val, ptr noundef %i.b), !inline_history !416
  store ptr %i.f, ptr %.sroa.01.05.i.i, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %.val3
  br i1 %.not.i.i, label %_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_16IntersectionTypeEEEDaS6_.exit, label %.lr.ph.i.i

_ZZN4Luau12_GLOBAL__N_110TypeCloner13cloneChildrenEPKNS_4TypeEENKUlOT_E_clIRNS_16IntersectionTypeEEEDaS6_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
end_hunk_8
begin_hunk_9_@_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_:bb.a
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !106
  store i8 %i.j, ptr %i.i, align 1, !tbaa !106
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !205
  %i.m = load ptr, ptr %.016, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !425

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !29
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !105    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !105    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !205  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !200

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !106
  store i8 %i.p, ptr %i.g, align 1, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !205  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !205
  %i.s = load ptr, ptr %0, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !106
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !205
  store i64 %i.w, ptr %i.u, align 8, !tbaa !205
  %i.x = load i64, ptr %i.k, align 8, !tbaa !106
  store i64 %i.x, ptr %i.h, align 8, !tbaa !106
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !106
  store ptr %i.j, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !205
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !205
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !106
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !105
  store i64 %i.y, ptr %i.k, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !205
  store i8 0, ptr %i.ad, align 1, !tbaa !106
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !204
  %i.ag = load ptr, ptr %1, align 8, !tbaa !105   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !105
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !106
  store i64 %i.an, ptr %i.af, align 8, !tbaa !106
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !205
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !205
  store ptr %i.ah, ptr %1, align 8, !tbaa !105
  store i64 0, ptr %i.ao, align 8, !tbaa !205
  store i8 0, ptr %i.ah, align 8, !tbaa !106
  store i8 1, ptr %i.a, align 8, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !100
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !106
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #21
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100, !range !29, !noundef !30
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !29
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !204
  %i.i = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !205  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.k, ptr %i.a, align 8, !tbaa !213
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !105
  %i.n = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.n, ptr %i.h, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !106
  store i8 %i.p, ptr %i.o, align 1, !tbaa !106
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !205
  %i.s = load ptr, ptr %0, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.b, align 8, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !100
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !106
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4Luau12_GLOBAL__N_130FragmentAutocompleteTypeClonerD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_110TypeClonerE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !58
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i unwind label %bb.b, !inline_history !60

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20, !inline_history !60
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21, !inline_history !60
  br label %_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit

_ZN4Luau12_GLOBAL__N_110TypeClonerD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN4Luau12_GLOBAL__N_130FragmentAutocompleteTypeCloner12shallowCloneEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.Luau::Variant.44", align 8  ; 5 uses
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %1, i32 noundef 1) ; 11 uses
  %i.c = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeENS_12FollowOptionE(ptr noundef %i.b, i32 noundef 1) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95
  %.not.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96
  %i.v = icmp eq ptr %i.c, %i.u
  br i1 %i.v, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %i.c, %i.z
  br i1 %i.w, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.loopexit.i, !llvm.loop !4

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96
  br label %.thread

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !92, !range !29, !noundef !30
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread31

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit: ; preds = %.loopexit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %.not.i.not = icmp eq ptr %i.c, %i.ai
  br i1 %.not.i.not, label %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread31, label %.thread

_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread31: ; preds = %.loopexit.i, %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !92, !range !29, !noundef !30
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, %i.an
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK4Luau12_GLOBAL__N_110TypeCloner4findEPKNS_4TypeE.exit.thread31, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  store i32 %i.aq, ptr %3, align 8, !tbaa !99
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC1ERKSS_E5table, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.av), !inline_history !5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aw = load i32, ptr %3, align 8, !tbaa !99    ; 2 uses
  store i32 %i.aw, ptr %2, align 8, !tbaa !99
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void %i.az(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.au) #19, !inline_history !6
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.bb, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.bd, align 8, !tbaa !101
  %i.be = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.k unwind label %.body      ; 8 uses

bb.k:                                             ; preds = %bb.j
  %i.bf = load i8, ptr %i.bc, align 8, !tbaa !100, !range !29, !noundef !30
  %i.bg = trunc nuw i8 %i.bf to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !100
  br i1 %i.bg, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !106
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.bn = load i32, ptr %2, align 8, !tbaa !99
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !59
  invoke void %i.bq(ptr noundef nonnull %i.ba)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #20
  unreachable

.body:                                            ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bu = load i32, ptr %3, align 8, !tbaa !99
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !59
  invoke void %i.bx(ptr noundef nonnull %i.au)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit18 unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.by = load i32, ptr %3, align 8, !tbaa !99
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !59
  invoke void %i.cb(ptr noundef nonnull %i.au)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #20
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %bb.n
  store ptr %i.be, ptr %i.a, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.cf = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.be)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 344
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.ce)
  %i.ch = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.be) ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !99
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit, label %bb.r

_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr null, ptr %i.ck, align 8, !tbaa !110
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

bb.q:                                             ; preds = %.body
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #20
  unreachable

common.resume:                                    ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit18
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit18 ], [ %i.dv, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit18: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %common.resume

bb.r:                                             ; preds = %bb.p, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit
  %i.cn = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.be) ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i19, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !99
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit, label %bb.t

_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !211
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !116
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.be) ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i20, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !99
  %i.cv = icmp eq i32 %i.cu, 9
  br i1 %i.cv, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit, label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit: ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !211
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !149
  br label %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread

_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread: ; preds = %bb.t, %bb.u, %_ZN4Luau10getMutableINS_8FreeTypeEEEPT_PKNS_4TypeE.exit, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit, %_ZN4Luau10getMutableINS_11GenericTypeEEEPT_PKNS_4TypeE.exit
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !93  ; 3 uses
  %i.da = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !97 ; 2 uses
  %i.dd = urem i64 %i.da, %i.dc                   ; 3 uses
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !98
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !73 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !96
  %i.dk = icmp eq ptr %i.b, %i.dj
  br i1 %i.dk, label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %bb.x
  %i.dl = icmp eq ptr %i.b, %i.do
  br i1 %i.dl, label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.020.i.i.i.i = phi ptr [ %i.dm, %bb.w ], [ %i.dh, %bb.v ]
  %i.dm = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !96 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = urem i64 %i.dp, %i.dc
  %.not19.i.i.i.i = icmp eq i64 %i.dq, %i.dd
  br i1 %.not19.i.i.i.i, label %bb.w, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.x
  br label %.loopexit.i.i, !llvm.loop !4

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN4Luau10getMutableINS_9TableTypeEEEPT_PKNS_4TypeE.exit.thread
  %i.dr = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 5 uses
  store ptr null, ptr %i.dr, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.b, ptr %i.ds, align 8, !tbaa !151
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr null, ptr %i.dt, align 8, !tbaa !152
  %i.du = invoke ptr @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, i64 noundef %i.dd, i64 noundef %i.da, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit unwind label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 24) #21
  br label %common.resume

_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit: ; preds = %bb.w, %bb.v, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.du, %.loopexit.i.i ], [ %i.dh, %bb.v ], [ %i.dm, %bb.w ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.be, ptr %.1.i.i, align 8, !tbaa !96
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !56 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !62
  %.not.i21 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i21, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit
  store i32 0, ptr %i.dx, align 8, !tbaa !58
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.be, ptr %i.ea, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !56
  br label %_ZNSt6vectorIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEEEESaIS8_EE12emplace_backIJRS4_EEERS8_DpOT_.exit

bb.z:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixERS9_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_9
