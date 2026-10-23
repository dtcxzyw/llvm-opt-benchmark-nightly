Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Subtyping?download=true
inline.NumInlined: 5964
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_13MetatableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE:bb.a
  %i.m = load i32, ptr %4, align 8, !tbaa !300, !noalias !725
  %i.n = icmp eq i32 %i.m, 7
  br i1 %i.n, label %bb.c, label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit.thread

bb.c:                                             ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit.i
  store i8 1, ptr %0, align 8, !tbaa !145, !alias.scope !725
  br label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit.thread

common.resume:                                    ; preds = %bb.f, %bb.d
  %.sink = phi ptr [ %i.t, %bb.f ], [ %i.j, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.o, %bb.d ]
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink) #31
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %i.p = load ptr, ptr %.tr2730, align 8, !tbaa !439
  %i.q = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.p) ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i.i20, label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit, label %_ZN4Luau3getINS_13MetatableTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_13MetatableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.e
  %i.r = load i32, ptr %i.q, align 8, !tbaa !269
  %i.s = icmp eq i32 %i.r, 10
  br i1 %i.s, label %tailrecurse, label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit

_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit: ; preds = %tailrecurse, %_ZN4Luau3getINS_13MetatableTypeEEEPKT_PKNS_4TypeE.exit, %bb.e, %bb.a
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.u, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit unwind label %bb.f

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit: ; preds = %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  br label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit.thread

bb.f:                                             ; preds = %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit.thread: ; preds = %bb.c, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit.i, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 initializes((0, 4), (8, 56)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(256) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(180) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.b, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit unwind label %bb.c

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = load i32, ptr %4, align 8, !tbaa !300
  %i.e = icmp eq i32 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  store i8 1, ptr %0, align 8, !tbaa !145
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #31
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4Luau10isSubclassEPKNS_10ExternTypeES2_(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !212  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !180    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !180  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !210
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !180  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !212
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !180    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !210   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !180 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !233
  %i.al = load i64, ptr %i.a, align 8, !tbaa !211
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !211
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !180 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

declare noundef ptr @_ZN4Luau20lookupExternTypePropEPKNS_10ExternTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_12FunctionTypeES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 initializes((0, 4), (8, 56)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %6 = alloca [1 x %"struct.Luau::SubtypingEnvironment::GenericBounds"], align 8 ; 13 uses
  %7 = alloca %"class.std::vector.23", align 8    ; 9 uses
  %8 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %9 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %10 = alloca %"class.Luau::Variant.53", align 8 ; 5 uses
  %11 = alloca %"struct.std::pair.253", align 8   ; 13 uses
  %12 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %13 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %14 = alloca %"struct.Luau::TypePack", align 8  ; 8 uses
  %15 = alloca %"class.Luau::Variant.53", align 8 ; 5 uses
  %16 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %17 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %18 = alloca %"class.Luau::Variant.53", align 8 ; 5 uses
  %19 = alloca %"struct.Luau::SubtypingResult", align 8 ; 7 uses
  %20 = alloca %"struct.Luau::TypeError", align 8 ; 8 uses
  %21 = alloca %"class.Luau::Variant.57", align 8 ; 7 uses
  %22 = alloca %"struct.Luau::SubtypingResult", align 8 ; 7 uses
  %23 = alloca %"struct.Luau::TypeError", align 8 ; 8 uses
  %24 = alloca %"class.Luau::Variant.57", align 8 ; 7 uses
  %25 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.d, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau15SubtypingResultC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn124, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #31
  br label %common.resume

_ZN4Luau15SubtypingResultC2Ev.exit:               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !346  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !346  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.loopexit244, label %.preheader243

.preheader243:                                    ; preds = %_ZN4Luau15SubtypingResultC2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.preheader243, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %.sroa.0217.0246 = phi ptr [ %i.h, %.preheader243 ], [ %i.bm, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.v = load ptr, ptr %.sroa.0217.0246, align 8, !tbaa !180 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !180
  %i.w = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.v)
          to label %bb.d unwind label %bb.n       ; 6 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %i.a, align 8, !tbaa !180
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.w, align 8, !tbaa !269
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.e
  %i.z = load i64, ptr %i.m, align 8, !tbaa !236
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit242, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !180 ; 2 uses
  %i.ac = icmp eq ptr %i.w, %i.ab
  br i1 %i.ac, label %.loopexit242, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !237
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !238
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.ap, %bb.j ]
  %.01828.i.i = phi i64 [ 0, %bb.g ], [ %i.ao, %bb.j ]
  %.01929.i.i = and i64 %.pn.i.i, %i.ae           ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %.01929.i.i ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !180 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.w
  br i1 %i.am, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq ptr %i.al, %i.ab
  br i1 %i.an, label %.loopexit242, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.ap = add i64 %i.ao, %.01929.i.i
  %.not.i.i126 = icmp ugt i64 %i.ao, %i.ae
  br i1 %.not.i.i126, label %.loopexit242, label %bb.h, !llvm.loop !15

bb.k:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !458 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !459
  %.not.i127 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i127, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, i8 0, i64 144, i1 false)
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !458
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !458
  br label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  invoke void @_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr %i.ar)
          to label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit242:                                     ; preds = %bb.j, %bb.i, %bb.f, %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i64 144, i1 false)
  %i.ay = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %.loopexit242
  invoke void @_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull %6, ptr noundef nonnull %i.p)
          to label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader unwind label %bb.t

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader: ; preds = %bb.o
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !344
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EEaSESt16initializer_listIS2_E.exit.preheader
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i

_ZN4Luau7TypeIdsD2Ev.exit.i:                      ; preds = %bb.q, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i, label %bb.r

bb.r:                                             ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !344
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i: ; preds = %bb.r, %_ZN4Luau7TypeIdsD2Ev.exit.i
  %i.bk = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau20SubtypingEnvironment13GenericBoundsD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #31
  br label %_ZN4Luau20SubtypingEnvironment13GenericBoundsD2Ev.exit

_ZN4Luau20SubtypingEnvironment13GenericBoundsD2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.t:                                             ; preds = %bb.o, %.loopexit242
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau20SubtypingEnvironment13GenericBoundsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.u

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.m, %bb.d, %bb.e, %bb.l, %_ZN4Luau20SubtypingEnvironment13GenericBoundsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0217.0246, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.j
  br i1 %.not, label %.loopexit244, label %bb.c

bb.u:                                             ; preds = %bb.n, %bb.t
  %.pn92.pn = phi { ptr, i32 } [ %i.bl, %bb.t ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit.split-lp

.loopexit244:                                     ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %_ZN4Luau15SubtypingResultC2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !111 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %.loopexit244
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.w, label %_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #34
          to label %.noexc129 unwind label %27

.noexc129:                                        ; preds = %bb.w
  unreachable

_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #35
          to label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit unwind label %27 ; 6 uses

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !448
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !447
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 3 uses
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !449
  %.pre.a = load ptr, ptr %i.bn, align 8, !tbaa !111 ; 2 uses
  %.pre268.a = load ptr, ptr %i.bp, align 8, !tbaa !111 ; 2 uses
  %.not233254 = icmp eq ptr %.pre.a, %.pre268.a
  br i1 %.not233254, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit
  %i.ca = phi ptr [ %i.bz, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ], [ %i.da, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 2 uses
  %i.cb = phi ptr [ %i.bx, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ], [ %i.dc, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 48
  invoke void @_ZN4Luau24MappedGenericEnvironment9pushFrameERKSt6vectorIPKNS_11TypePackVarESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit unwind label %27

27:                                               ; preds = %_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i, %bb.w, %._crit_edge
  %28 = phi ptr [ null, %_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.w ], [ %i.ca, %._crit_edge ]
  %29 = phi ptr [ null, %_ZNSt12_Vector_baseIPKN4Luau11TypePackVarESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.w ], [ %i.cb, %._crit_edge ]
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %31

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.cd = phi ptr [ %i.dc, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %i.bx, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ] ; 8 uses
  %.sroa.0213.0255 = phi ptr [ %i.db, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %i.bx, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ] ; 8 uses
  %i.ce = phi ptr [ %i.da, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %i.bz, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ] ; 5 uses
  %i.cf = phi ptr [ %i.dd, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %.pre.a, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE7reserveEm.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !91
  %i.ch = invoke noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %i.cg)
          to label %bb.x unwind label %.loopexit237 ; 4 uses

bb.x:                                             ; preds = %.lr.ph
  %.not.i.i131 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i131, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !123
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.y
  %.not.i132 = icmp eq ptr %.sroa.0213.0255, %i.ce
  br i1 %.not.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit
  store ptr %i.ch, ptr %.sroa.0213.0255, align 8, !tbaa !91
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0213.0255, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.by, align 8, !tbaa !447
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.aa:                                            ; preds = %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.cl = ptrtoint ptr %.sroa.0213.0255 to i64
  %i.cm = ptrtoint ptr %i.cd to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.ab, label %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #34
          to label %.noexc133 unwind label %.loopexit.split-lp238

.noexc133:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ct, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #35
          to label %.noexc134 unwind label %.loopexit237 ; 5 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store ptr %i.ch, ptr %i.cw, align 8, !tbaa !91
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.ac, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

bb.ac:                                            ; preds = %.noexc134
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %i.cd, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ac, %.noexc134
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cn) #33
  store ptr %i.cv, ptr %7, align 8, !tbaa !448
  store ptr %i.cy, ptr %i.by, align 8, !tbaa !447
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  store ptr %i.cz, ptr %i.bw, align 8, !tbaa !449
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

.loopexit237:                                     ; preds = %.lr.ph, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.lcssa258 = phi ptr [ %i.ce, %.lr.ph ], [ %.sroa.0213.0255, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %31

.loopexit.split-lp238:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %31

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.x, %bb.y, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.z
  %i.da = phi ptr [ %i.ce, %bb.z ], [ %i.cz, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ce, %bb.y ], [ %i.ce, %bb.x ] ; 2 uses
  %i.db = phi ptr [ %i.ck, %bb.z ], [ %i.cy, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0213.0255, %bb.y ], [ %.sroa.0213.0255, %bb.x ]
  %i.dc = phi ptr [ %i.cd, %bb.z ], [ %i.cv, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.cd, %bb.y ], [ %i.cd, %bb.x ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %.not233 = icmp eq ptr %i.dd, %.pre268.a
  br i1 %.not233, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %._crit_edge
  %i.de = ptrtoint ptr %i.ca to i64
  %i.df = ptrtoint ptr %i.cb to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.dg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ae

31:                                               ; preds = %.loopexit237, %.loopexit.split-lp238, %27
  %32 = phi ptr [ %28, %27 ], [ %.lcssa258, %.loopexit237 ], [ %.sroa.0213.0255, %.loopexit.split-lp238 ]
  %33 = phi ptr [ %29, %27 ], [ %i.cd, %.loopexit237 ], [ %i.cd, %.loopexit.split-lp238 ] ; 3 uses
  %.pn96 = phi { ptr, i32 } [ %30, %27 ], [ %lpad.loopexit239, %.loopexit237 ], [ %lpad.loopexit.split-lp240, %.loopexit.split-lp238 ]
  %.not.i.i.i136 = icmp eq ptr %33, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137, label %bb.ad

bb.ad:                                            ; preds = %31
  %i.dh = ptrtoint ptr %32 to i64
  %i.di = ptrtoint ptr %33 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %33, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137: ; preds = %31, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %.loopexit244
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !736
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !736
  invoke void @_ZN4Luau9Subtyping19isContravariantWithIPKNS_11TypePackVarES4_EENS_15SubtypingResultERNS_20SubtypingEnvironmentET_T0_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %9, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %i.dl, ptr noundef %i.dn, ptr %5)
          to label %bb.af unwind label %bb.ba

bb.af:                                            ; preds = %bb.ae
  store i32 3, ptr %10, align 8, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.do, align 8, !tbaa !178
  %i.dp = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult17withBothComponentENS_7VariantIJNS_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEE(ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef nonnull align 8 %10)
          to label %bb.ag unwind label %bb.bb     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4Luau15SubtypingResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(168) %9)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  %i.dq = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult6orElseES0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 %8)
          to label %bb.ai unwind label %bb.bc     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %8) #31
  %i.dr = load i32, ptr %10, align 8, !tbaa !61
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !62
  invoke void %i.du(ptr noundef nonnull %i.do)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit: ; preds = %bb.ai
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.dx = load i8, ptr %0, align 8, !tbaa !145, !range !76, !noundef !77
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.br, label %bb.ak

bb.ak:                                            ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.dz = load ptr, ptr %i.dm, align 8, !tbaa !736
  invoke void @_ZN4Luau7flattenEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.253") align 8 %11, ptr noundef %i.dz)
          to label %bb.al unwind label %bb.bg

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.08.0.copyload = load ptr, ptr %i.ea, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8
  %i.eb = trunc nuw i8 %.sroa.2.0.copyload to i1
  %.not.i.i.i138 = icmp ne ptr %.sroa.08.0.copyload, null
  %or.cond.not.i = select i1 %i.eb, i1 %.not.i.i.i138, i1 false
  br i1 %or.cond.not.i, label %bb.am, label %_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ec = load i32, ptr %.sroa.08.0.copyload, align 8, !tbaa !123
  %i.ed = icmp eq i32 %i.ec, 5
  br i1 %i.ed, label %_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit, label %_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit.thread

_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit: ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !434, !range !76, !noundef !77
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.an, label %_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit.thread

bb.an:                                            ; preds = %_ZN4Luau3getINS_16VariadicTypePackEPKNS_11TypePackVarEEEPKT_St8optionalIT0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.eh = load ptr, ptr %i.dk, align 8, !tbaa !736
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !435
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !359 ; 2 uses
  %i.em = load ptr, ptr %11, align 8, !tbaa !343  ; 3 uses
  %i.en = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i139 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i.i.i.i139, label %.noexc141, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = icmp ugt i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.ao
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc140 unwind label %bb.bh

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ao
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #35
          to label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge: ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i
  %.pre271.a = load ptr, ptr %11, align 8, !tbaa !346 ; 2 uses
  %.pre272.a = load ptr, ptr %i.ek, align 8, !tbaa !346
  %.pre275 = ptrtoint ptr %.pre272.a to i64
  %.pre276 = ptrtoint ptr %.pre271.a to i64
  br label %.noexc141

.noexc141:                                        ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge, %bb.an
  %.pre-phi277 = phi i64 [ %.pre276, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ], [ %i.eo, %bb.an ]
  %.pre-phi = phi i64 [ %.pre275, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ], [ %i.en, %bb.an ]
  %i.es = phi ptr [ %.pre271.a, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ], [ %i.em, %bb.an ] ; 2 uses
  %i.et = phi ptr [ %i.er, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i..noexc141_crit_edge ], [ null, %bb.an ] ; 6 uses
  store ptr %i.et, ptr %14, align 8, !tbaa !343
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !359
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !344
  %i.ex = sub i64 %.pre-phi, %.pre-phi277         ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 8
  br i1 %i.ey, label %bb.ap, label %bb.aq, !prof !437

bb.ap:                                            ; preds = %.noexc141
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.et, ptr align 8 %i.es, i64 %i.ex, i1 false)
  br label %bb.as

bb.aq:                                            ; preds = %.noexc141
  %i.ez = icmp eq i64 %i.ex, 8
  br i1 %i.ez, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !180
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !180
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fb = getelementptr inbounds i8, ptr %i.et, i64 %i.ex
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !359
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 0, ptr %i.fc, align 8, !tbaa !94
  %i.fd = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, ptr noundef nonnull align 8 %14)
          to label %bb.at unwind label %bb.bi

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4Luau9Subtyping19isContravariantWithIPKNS_11TypePackVarES4_EENS_15SubtypingResultERNS_20SubtypingEnvironmentET_T0_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %13, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %i.eh, ptr noundef %i.fd, ptr %5)
          to label %bb.au unwind label %bb.bi

bb.au:                                            ; preds = %bb.at
  store i32 3, ptr %15, align 8, !tbaa !61
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i32 0, ptr %i.fe, align 8, !tbaa !178
  %i.ff = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult17withBothComponentENS_7VariantIJNS_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEE(ptr noundef nonnull align 8 dereferenceable(168) %13, ptr noundef nonnull align 8 %15)
          to label %bb.av unwind label %bb.bj     ; 0 uses

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4Luau15SubtypingResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %12, ptr noundef nonnull align 8 dereferenceable(168) %13)
          to label %bb.aw unwind label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.fg = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult6orElseES0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 %12)
          to label %bb.ax unwind label %bb.bk     ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %12) #31
  %i.fh = load i32, ptr %15, align 8, !tbaa !61
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !62
  invoke void %i.fk(ptr noundef nonnull %i.fe)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit142 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit142: ; preds = %bb.ax
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %13) #31
  %i.fn = load ptr, ptr %14, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i143, label %_ZN4Luau8TypePackD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit142
  %i.fo = load ptr, ptr %i.ew, align 8, !tbaa !344
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fr) #33
  br label %_ZN4Luau8TypePackD2Ev.exit

_ZN4Luau8TypePackD2Ev.exit:                       ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit142, %bb.az
end_hunk_0
begin_hunk_1_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_12FunctionTypeES5_NS_7NotNullINS_5ScopeEEE:bb.a

bb.dd:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191, %bb.db
  %.pn116.pn = phi { ptr, i32 } [ %i.oa, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191 ], [ %i.nz, %bb.db ]
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %22) #31
  br label %.loopexit.split-lp

bb.de:                                            ; preds = %bb.cs, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter189, %bb.bz, %bb.bx
  %i.oh = load ptr, ptr %i.g, align 8, !tbaa !346 ; 2 uses
  %i.oi = load ptr, ptr %i.i, align 8, !tbaa !346 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %.loopexit235, label %.preheader

.preheader:                                       ; preds = %bb.de
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %26, i64 8
  br label %bb.df

bb.df:                                            ; preds = %.preheader, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit
  %.sroa.0202.0257 = phi ptr [ %i.oh, %.preheader ], [ %i.qo, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit ] ; 2 uses
  %i.op = load ptr, ptr %.sroa.0202.0257, align 8, !tbaa !180
  %i.oq = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.op)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.dg:                                            ; preds = %bb.df
  %.not.i.i192 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i192, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !269
  %i.os = icmp eq i32 %i.or, 3
  br i1 %i.os, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit

_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193: ; preds = %bb.dh
  %i.ot = load i64, ptr %i.ol, align 8, !tbaa !236
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193
  %i.ov = load ptr, ptr %i.om, align 8, !tbaa !180 ; 2 uses
  %i.ow = icmp eq ptr %i.oq, %i.ov
  br i1 %i.ow, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ox = load i64, ptr %i.on, align 8, !tbaa !237
  %i.oy = add i64 %i.ox, -1                       ; 2 uses
  %i.oz = ptrtoint ptr %i.oq to i64
  %i.pa = mul i64 %i.oz, -4658895280553007687     ; 2 uses
  %i.pb = lshr i64 %i.pa, 31
  %i.pc = xor i64 %i.pb, %i.pa
  %i.pd = load ptr, ptr %i.ok, align 8, !tbaa !238
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  %.pn.i.i194 = phi i64 [ %i.pc, %bb.dj ], [ %i.pj, %bb.dm ]
  %.01828.i.i195 = phi i64 [ 0, %bb.dj ], [ %i.pi, %bb.dm ]
  %.01929.i.i196 = and i64 %.pn.i.i194, %i.oy     ; 2 uses
  %i.pe = getelementptr inbounds nuw [32 x i8], ptr %i.pd, i64 %.01929.i.i196 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !180 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oq
  br i1 %i.pg, label %.loopexit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ph = icmp eq ptr %i.pf, %i.ov
  br i1 %i.ph, label %.loopexit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pi = add i64 %.01828.i.i195, 1               ; 3 uses
  %i.pj = add i64 %i.pi, %.01929.i.i196
  %.not.i.i197 = icmp ugt i64 %i.pi, %i.oy
  br i1 %.not.i.i197, label %.loopexit, label %bb.dk, !llvm.loop !15

.loopexit:                                        ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di, %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193
  %.4.i.i198 = phi ptr [ null, %bb.di ], [ null, %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193 ], [ null, %bb.dm ], [ null, %bb.dl ], [ %i.pe, %bb.dk ] ; 2 uses
  %.not.i199 = icmp eq ptr %.4.i.i198, null
  %i.pk = getelementptr inbounds nuw i8, ptr %.4.i.i198, i64 8
  %i.pl = select i1 %.not.i199, ptr null, ptr %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 3 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !240
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -144
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !168
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !169
  store i64 %i.ps, ptr %26, align 8
  store ptr %i.pq, ptr %i.oo, align 8
  invoke void @_ZN4Luau9Subtyping18checkGenericBoundsERKNS_20SubtypingEnvironment13GenericBoundsERS1_NS_7NotNullINS_5ScopeEEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %25, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(144) %i.po, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr %5, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %26)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %.loopexit
  %i.pt = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult7andAlsoES0_NS_26SubtypingSuppressionPolicyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 %25, i32 noundef 0)
          to label %bb.do unwind label %bb.dt     ; 0 uses

bb.do:                                            ; preds = %bb.dn
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %25) #31
  %i.pu = load ptr, ptr %i.pm, align 8, !tbaa !458 ; 6 uses
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -144 ; 2 uses
  store ptr %i.pv, ptr %i.pm, align 8, !tbaa !458
  %i.pw = getelementptr inbounds i8, ptr %i.pu, i64 -72
  %i.px = getelementptr inbounds i8, ptr %i.pu, i64 -32
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pz = getelementptr inbounds i8, ptr %i.pu, i64 -16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !344
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = ptrtoint ptr %i.py to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.qd) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.dp, %bb.do
  %i.qe = load ptr, ptr %i.pw, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i.i201 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i.i201, label %_ZN4Luau7TypeIdsD2Ev.exit.i.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qe) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i.i

_ZN4Luau7TypeIdsD2Ev.exit.i.i:                    ; preds = %bb.dq, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i
  %i.qf = getelementptr inbounds i8, ptr %i.pu, i64 -104
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i.i
  %i.qh = getelementptr inbounds i8, ptr %i.pu, i64 -88
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !344
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qg to i64
  %i.ql = sub i64 %i.qj, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.ql) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i: ; preds = %bb.dr, %_ZN4Luau7TypeIdsD2Ev.exit.i.i
  %i.qm = load ptr, ptr %i.pv, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qm) #31
  br label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.df, %.loopexit, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit151, %bb.by
  %lpad.loopexit.split-lp458 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dt:                                            ; preds = %bb.dn
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %25) #31
  br label %.loopexit.split-lp

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit: ; preds = %bb.dg, %bb.dh, %bb.ds, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0202.0257, i64 8 ; 2 uses
  %.not234 = icmp eq ptr %i.qo, %i.oi
  br i1 %.not234, label %.loopexit235, label %bb.df

.loopexit235:                                     ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, %bb.de
  %i.qp = load ptr, ptr %i.bn, align 8, !tbaa !111
  %i.qq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %.loopexit235
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !115, !range !76, !noundef !77
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.dv, label %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit

bb.dv:                                            ; preds = %bb.du
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !85
  %i.qy = load ptr, ptr %i.qv, align 8, !tbaa !89
  %i.qz = getelementptr inbounds nuw [96 x i8], ptr %i.qy, i64 %i.qx ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  %.sroa.02.0.copyload.i = load i64, ptr %i.ra, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  %.sroa.43.0.copyload.i = load i8, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.rb = trunc nuw i8 %.sroa.43.0.copyload.i to i1
  %.0.i.i = select i1 %i.rb, i64 %.sroa.02.0.copyload.i, i64 0
  store i64 %.0.i.i, ptr %i.qw, align 8
  store i8 1, ptr %i.qs, align 8
  br label %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit

_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit: ; preds = %bb.dv, %bb.du
  store i8 0, ptr %i.b, align 2, !tbaa !150
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit235, %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dt, %bb.dd, %bb.da, %bb.cr, %bb.co, %bb.cn, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit150, %bb.bf, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137, %bb.u
  %.pn124 = phi { ptr, i32 } [ %i.qn, %bb.dt ], [ %.pn92.pn, %bb.u ], [ %.pn116.pn, %bb.dd ], [ %i.ny, %bb.da ], [ %.pn112.pn, %bb.cr ], [ %i.kx, %bb.co ], [ %.pn108.pn, %bb.cn ], [ %.pn102.pn.pn.pn.pn, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit150 ], [ %.pn98.pn, %bb.bf ], [ %.pn96, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137 ], [ %lpad.loopexit.split-lp458, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9Subtyping19isContravariantWithIPKNS_11TypePackVarES4_EENS_15SubtypingResultERNS_20SubtypingEnvironmentET_T0_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %3, ptr noundef %4, ptr %5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::SubtypingReasoning", align 8 ; 19 uses
  tail call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_11TypePackVarES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %4, ptr noundef %3, ptr %5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !154
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau8TypePath6kEmptyE, i64 8), align 8, !tbaa !59 ; 3 uses
  %i.f = load ptr, ptr @_ZN4Luau8TypePath6kEmptyE, align 8, !tbaa !58 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = icmp ugt i64 %i.j, 192153584101141162
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !65

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #35
          to label %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge unwind label %bb.q

_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre68 = load ptr, ptr @_ZN4Luau8TypePath6kEmptyE, align 8, !tbaa !66
  %.pre69 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau8TypePath6kEmptyE, i64 8), align 8, !tbaa !66
  br label %.noexc28

.noexc28:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge, %bb.b
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre69, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ]
  %i.n = phi ptr [ %i.f, %bb.b ], [ %.pre68, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ]
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ] ; 4 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !64
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7VariantIJNS2_8TypePath8PropertyENS4_5IndexENS4_9TypeFieldENS4_9PackFieldENS4_9PackSliceENS4_9ReductionENS4_18GenericPackMappingEEEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %i.n, ptr %i.m, ptr noundef %i.o)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc28
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #33
  br label %.body

bb.f:                                             ; preds = %.noexc28
  store ptr %i.s, ptr %i.p, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau8TypePath6kEmptyE, i64 8), align 8, !tbaa !59 ; 3 uses
  %i.ab = load ptr, ptr @_ZN4Luau8TypePath6kEmptyE, align 8, !tbaa !58 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i29 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i29, label %.noexc35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sdiv exact i64 %i.ae, 48
  %i.ag = icmp ugt i64 %i.af, 192153584101141162
  br i1 %i.ag, label %.noexc.i.i.i33, label %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30, !prof !65

.noexc.i.i.i33:                                   ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc34 unwind label %bb.r

.noexc34:                                         ; preds = %.noexc.i.i.i33
  unreachable

_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35
          to label %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge unwind label %bb.r

_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30
  %.pre70 = load ptr, ptr @_ZN4Luau8TypePath6kEmptyE, align 8, !tbaa !66
  %.pre71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Luau8TypePath6kEmptyE, i64 8), align 8, !tbaa !66
  br label %.noexc35

.noexc35:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge, %bb.f
  %i.ai = phi ptr [ %i.aa, %bb.f ], [ %.pre71, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge ]
  %i.aj = phi ptr [ %i.ab, %bb.f ], [ %.pre70, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge ]
  %i.ak = phi ptr [ null, %bb.f ], [ %i.ah, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i30..noexc35_crit_edge ] ; 4 uses
  store ptr %i.ak, ptr %i.z, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !64
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7VariantIJNS2_8TypePath8PropertyENS4_5IndexENS4_9TypeFieldENS4_9PackFieldENS4_9PackSliceENS4_9ReductionENS4_18GenericPackMappingEEEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %i.aj, ptr %i.ai, ptr noundef %i.ak)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc35
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !58  ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i31, label %.body36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #33
  br label %.body36

bb.j:                                             ; preds = %.noexc35
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 2, ptr %i.av, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i8 0, ptr %i.aw, align 4, !tbaa !75
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !154
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !147
  %i.ba = mul i64 %i.az, 3
  %i.bb = lshr i64 %i.ba, 2
  %.not.i.i = icmp ult i64 %i.ax, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(53) %6)
          to label %.noexc39 unwind label %bb.s

.noexc39:                                         ; preds = %bb.k
  %.not2.i.i = icmp eq ptr %i.bc, null
  br i1 %.not2.i.i, label %bb.l, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i

bb.l:                                             ; preds = %.noexc39
  invoke void @_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i unwind label %bb.s

_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i: ; preds = %bb.l, %.noexc39, %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(53) ptr @_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE13insert_unsafeERKS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(53) %6)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit unwind label %bb.s ; 0 uses

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !58  ; 3 uses
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i.i ], [ %i.be, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit ] ; 3 uses
  %i.bg = load i32, ptr %.05.i.i.i.i.i, align 8, !tbaa !61
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  invoke void %i.bj(ptr noundef nonnull %i.bk)
          to label %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #32
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bn, %i.bf
  br i1 %.not.i.i.i.i.i42, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit
  %i.bo = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.be, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE6insertERKS1_.exit ] ; 3 uses
end_hunk_1
