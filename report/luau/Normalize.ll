Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Normalize?download=true
inline.NumInlined: 5126
inline.NumDeleted: 2027
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Luau10Normalizer11isInhabitedEPKNS_4TypeE:bb.a
  br i1 %.not.i.i.i22, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit23

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit23: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit, %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit
  %.2 = phi i32 [ %.118, %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit ], [ %not., %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !202  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !230  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !111  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !230
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !111    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !111 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !256
  %i.al = load i64, ptr %i.a, align 8, !tbaa !202
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !202
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !111 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_bES5_IKS4_bENS0_16ItemInterfaceMapIS4_bEENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

declare noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEE5countERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !202
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !230
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %0, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.j            ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.01929.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i.i, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.d, !llvm.loop !5

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !231, !range !77, !noundef !78
  %i.x = zext nneg i8 %i.w to i64
  br label %_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread

_ZNK4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread: ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.g
  %i.y = phi i64 [ %i.x, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau10Normalizer16useNewLuauSolverEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4, !tbaa !241
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

declare noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau10Normalizer9normalizeEPKNS_4TypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<const Luau::Type *, std::pair<const Luau::Type *const, std::shared_ptr<Luau::NormalizedType>>, std::allocator<std::pair<const Luau::Type *const, std::shared_ptr<Luau::NormalizedType>>>, std::__detail::_Select1st, std::equal_to<const Luau::Type *>, std::hash<const Luau::Type *>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"struct.Luau::NormalizedType", align 8 ; 11 uses
  %7 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %8 = alloca %"class.Luau::Set.176", align 8     ; 6 uses
  %9 = alloca %"class.std::shared_ptr.181", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4) #35
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !83     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !86
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ay

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !197
  %.not.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.06.0.in.i.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.06.0.i.i, %bb.j ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !119 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = icmp eq ptr %2, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %bb.i, !llvm.loop !492

bb.k:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !259  ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !260
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.loopexit58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !119  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ac = icmp eq ptr %2, %i.ab
  br i1 %i.ac, label %_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.ad = icmp eq ptr %2, %i.ag
  br i1 %i.ad, label %_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !493

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.m ], [ %i.z, %bb.l ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !119 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %.loopexit58, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !111 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ai, %i.v
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !493

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.loopexit58, !llvm.loop !493

_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit: ; preds = %bb.m, %bb.j, %bb.l
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.z, %bb.l ], [ %i.ae, %bb.m ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !262 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !47
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN4Luau14NormalizedTypeEEC2IS1_vEERKS_IT_E.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i23 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !39
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !39
  br label %_ZNSt10shared_ptrIKN4Luau14NormalizedTypeEEC2IS1_vEERKS_IT_E.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN4Luau14NormalizedTypeEEC2IS1_vEERKS_IT_E.exit

.loopexit58:                                      ; preds = %.lr.ph.i.i.i.i, %bb.i, %..loopexit_crit_edge21.i.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !126
  call void @_ZN4Luau14NormalizedTypeC2ENS_7NotNullINS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(489) %6, ptr %.sroa.0.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 5 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !189, !range !77, !noundef !78 ; 3 uses
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  br i1 %i.aw, label %bb.r, label %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i

_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i: ; preds = %.loopexit58
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ay = load i32, ptr @_ZN4FInt25LuauNormalizerInitialFuelE, align 8, !tbaa !192
  store i8 1, ptr %i.au, align 4, !tbaa !189
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i, %.loopexit58
  %i.az = invoke noundef i32 @_ZN4Luau10Normalizer17unionNormalWithTyERNS_14NormalizedTypeEPKNS_4TypeERNS_3SetISt4pairIS5_S5_ENS_14TypeIdPairHashEEERNS6_IS5_NS_16DenseHashPointerEEEi(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(489) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef -1)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not17 = icmp eq i32 %i.az, 0
  br i1 %.not17, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.not57.not = icmp eq i8 %i.av, 0
  br i1 %.not57.not, label %bb.u, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.au, align 4, !tbaa !189
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit

bb.v:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau19NormalizerHitLimitsE ; 3 uses
  %.not56.not = icmp eq i8 %i.av, 0
  br i1 %.not56.not, label %bb.w, label %_ZN4Luau15FuelInitializerD2Ev.exit24

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.au, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit24

_ZN4Luau15FuelInitializerD2Ev.exit24:             ; preds = %bb.w, %bb.v
  %.18 = extractvalue { ptr, i32 } %i.ba, 1
  %i.bb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4Luau19NormalizerHitLimitsE) #32
  %i.bc = icmp eq i32 %.18, %i.bb
  br i1 %i.bc, label %bb.x, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39

bb.x:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit24
  %.1 = extractvalue { ptr, i32 } %i.ba, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %.1) #32 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_end_catch()
          to label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit unwind label %bb.ac

.critedge:                                        ; preds = %bb.s
  br i1 %i.aw, label %_ZN4Luau15FuelInitializerD2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %.critedge
  store i8 0, ptr %i.au, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit25

_ZN4Luau15FuelInitializerD2Ev.exit25:             ; preds = %.critedge, %bb.y
  %i.be = invoke noundef zeroext i1 @_ZNK4Luau14NormalizedType9isUnknownEv(ptr noundef nonnull align 8 dereferenceable(489) %6)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit25
  br i1 %i.be, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4Luau10Normalizer11clearNormalERNS_14NormalizedTypeE(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(489) %6)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !263
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !150
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %bb.aa, %_ZN4Luau15FuelInitializerD2Ev.exit25
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39

bb.ad:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.bk = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #36
          to label %bb.ae unwind label %bb.at     ; 9 uses

bb.ae:                                            ; preds = %bb.ad
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  store i32 1, ptr %i.bl, align 8, !tbaa !265, !noalias !497
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 1, ptr %i.bm, align 4, !tbaa !266, !noalias !497
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4Luau14NormalizedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bk, align 8, !tbaa !227, !noalias !497
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  call void @_ZN4Luau14NormalizedTypeC2EOS0_(ptr noundef nonnull align 8 dereferenceable(489) %i.bn, ptr noundef nonnull align 8 dereferenceable(489) %6) #32, !noalias !497
  store ptr %i.bk, ptr %10, align 8, !tbaa !262, !alias.scope !497
  store ptr %i.bn, ptr %9, align 16, !tbaa !229, !alias.scope !497
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 504
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !161, !range !77, !noundef !78
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.af, label %_ZN4Luau15FuelInitializerD2Ev.exit.thread93

bb.af:                                            ; preds = %bb.ae
  %i.br = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !259 ; 2 uses
  %i.bu = urem i64 %i.br, %i.bt                   ; 3 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !260
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i26, label %.loopexit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !119 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111
  %i.cb = icmp eq ptr %2, %i.ca
  br i1 %i.cb, label %.loopexit, label %.lr.ph.i.i.i.i27

bb.ah:                                            ; preds = %bb.ai
  %i.cc = icmp eq ptr %2, %i.cf
  br i1 %i.cc, label %.loopexit, label %.lr.ph.i.i.i.i27, !llvm.loop !493

.lr.ph.i.i.i.i27:                                 ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i28 = phi ptr [ %i.cd, %bb.ah ], [ %i.by, %bb.ag ]
  %i.cd = load ptr, ptr %.020.i.i.i.i28, align 8, !tbaa !119 ; 4 uses
  %.not18.i.i.i.i29 = icmp eq ptr %i.cd, null
  br i1 %.not18.i.i.i.i29, label %.loopexit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !111 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = urem i64 %i.cg, %i.bt
  %.not19.i.i.i.i30 = icmp eq i64 %i.ch, %i.bu
  br i1 %.not19.i.i.i.i30, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i31, !llvm.loop !493

..loopexit_crit_edge21.i.i.i.i31:                 ; preds = %bb.ai
  br label %.loopexit.i.i, !llvm.loop !493

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i27, %..loopexit_crit_edge21.i.i.i.i31, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %1, ptr %3, align 8, !tbaa !498
  %i.ci = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc unwind label %bb.au    ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ci, align 8, !tbaa !119
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %2, ptr %i.ck, align 8, !tbaa !502
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !270
  %i.cm = invoke ptr @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.bu, i64 noundef %i.br, ptr noundef nonnull %i.ci, i64 noundef 1)
          to label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.aj

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.loopexit

bb.aj:                                            ; preds = %.noexc
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body.a

.loopexit:                                        ; preds = %bb.ah, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.ag
  %.pn.i.i = phi ptr [ %i.cm, %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.by, %bb.ag ], [ %i.cd, %bb.ah ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.bn, ptr %.1.i.i, align 8, !tbaa !503
  %i.co = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !262 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bk, %i.cp
  br i1 %.not.i.i.i32, label %_ZN4Luau15FuelInitializerD2Ev.exit.thread93, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i33 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i33, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = load i32, ptr %i.bl, align 8, !tbaa !39
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.bl, align 8, !tbaa !39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ct = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !262
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.am, %bb.al
  %i.cu = phi ptr [ %.pr.pre.i.i.i, %bb.am ], [ %i.cp, %bb.al ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not8.i.i.i, label %_ZN4Luau15FuelInitializerD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.cv, align 8, !tbaa !265
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !266
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !227
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #32, !inline_history !496
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !227
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #32, !inline_history !496
  br label %_ZN4Luau15FuelInitializerD2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i9.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i = phi i32 [ %i.cy, %bb.aq ], [ %i.di, %bb.ar ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.as, label %_ZN4Luau15FuelInitializerD2Ev.exit, !prof !50

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #32
  br label %_ZN4Luau15FuelInitializerD2Ev.exit

bb.at:                                            ; preds = %bb.ad
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %.loopexit.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.a

.body.a:                                          ; preds = %bb.aj, %bb.au
  %eh.lpad-body = phi { ptr, i32 } [ %i.dk, %bb.au ], [ %i.cn, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN4Luau14NormalizedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #32
  br label %bb.av

bb.av:                                            ; preds = %.body.a, %bb.at
  %.pn18.a = phi { ptr, i32 } [ %eh.lpad-body, %.body.a ], [ %11, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39

_ZN4Luau15FuelInitializerD2Ev.exit.thread93:      ; preds = %bb.ae, %.loopexit
  store ptr %i.bn, ptr %0, align 8, !tbaa !253
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.dl, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit

_ZN4Luau15FuelInitializerD2Ev.exit:               ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.as
  store ptr %i.bk, ptr %i.co, align 8, !tbaa !262
  %.pre74.pre = load ptr, ptr %8, align 8, !tbaa !271 ; 2 uses
  %12 = load <2 x ptr>, ptr %9, align 16, !tbaa !47
  store <2 x ptr> %12, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %.not.i.i.i36 = icmp eq ptr %.pre74.pre, null
  br i1 %.not.i.i.i36, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit, label %13

13:                                               ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre74.pre) #32
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit: ; preds = %bb.x, %bb.t, %bb.u, %_ZN4Luau15FuelInitializerD2Ev.exit.thread93, %_ZN4Luau15FuelInitializerD2Ev.exit, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.dm = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i37, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dm) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit: ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN4Luau14NormalizedTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(489) dereferenceable(489) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZNSt10shared_ptrIKN4Luau14NormalizedTypeEEC2IS1_vEERKS_IT_E.exit

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39: ; preds = %bb.av, %bb.ac, %_ZN4Luau15FuelInitializerD2Ev.exit24
  %.merged21 = phi { ptr, i32 } [ %i.ba, %_ZN4Luau15FuelInitializerD2Ev.exit24 ], [ %.pn18.a, %bb.av ], [ %i.bj, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.dn = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i40, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit41, label %bb.ax

bb.ax:                                            ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit41

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit41: ; preds = %bb.ax, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN4Luau14NormalizedTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(489) dereferenceable(489) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ay

_ZNSt10shared_ptrIKN4Luau14NormalizedTypeEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.q, %bb.p, %_ZNSt13unordered_mapIPKN4Luau4TypeESt10shared_ptrINS0_14NormalizedTypeEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit, %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit
  ret void

bb.ay:                                            ; preds = %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.merged = phi { ptr, i32 } [ %.merged21, %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKN4Luau14NormalizedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !265
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !266
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau10Normalizer23isIntersectionInhabitedEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %4 = alloca %"class.Luau::Set.176", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.b, align 8, !tbaa !505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !189, !range !77, !noundef !78 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i

_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load i32, ptr @_ZN4FInt25LuauNormalizerInitialFuelE, align 8, !tbaa !192
  store i8 1, ptr %i.c, align 4, !tbaa !189
  store i32 %i.g, ptr %i.f, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i, %bb.a
  %i.h = invoke noundef i32 @_ZN4Luau10Normalizer23isIntersectionInhabitedEPKNS_4TypeES3_RNS_3SetISt4pairIS3_S3_ENS_14TypeIdPairHashEEERNS4_IS3_NS_16DenseHashPointerEEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZN4Luau15FuelInitializerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau19NormalizerHitLimitsE ; 3 uses
  %.not.not = icmp eq i8 %i.d, 0
  br i1 %.not.not, label %bb.f, label %_ZN4Luau15FuelInitializerD2Ev.exit13

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.c, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit13

_ZN4Luau15FuelInitializerD2Ev.exit13:             ; preds = %bb.f, %bb.e
  %.0 = extractvalue { ptr, i32 } %i.i, 1
  %i.j = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4Luau19NormalizerHitLimitsE) #32
  %i.k = icmp eq i32 %.0, %i.j
  br i1 %i.k, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit13
  %.07 = extractvalue { ptr, i32 } %i.i, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4Luau15FuelInitializerD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN4Luau15FuelInitializerD2Ev.exit:               ; preds = %bb.d, %bb.c, %bb.g
  %.010 = phi i32 [ 2, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.n = load ptr, ptr %4, align 8, !tbaa !271    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.n) #32
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit: ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.o = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i14, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.o) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit: ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %.010

bb.k:                                             ; preds = %bb.h, %_ZN4Luau15FuelInitializerD2Ev.exit13
  %.merged12 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %_ZN4Luau15FuelInitializerD2Ev.exit13 ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !271    ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i15, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.p) #32
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit16

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit16: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.q = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i17, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit16
  call void @_ZdlPv(ptr noundef nonnull %i.q) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit18

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit18: ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_14TypeIdPairHashEED2Ev.exit16, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.merged12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau10Normalizer23isIntersectionInhabitedEPKNS_4TypeES3_RNS_3SetISt4pairIS3_S3_ENS_14TypeIdPairHashEEERNS4_IS3_NS_16DenseHashPointerEEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::NormalizedType", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.8", align 8     ; 7 uses
  %7 = alloca %"struct.std::pair.97", align 8     ; 6 uses
  %8 = alloca %"struct.std::pair.97", align 8     ; 6 uses
  %9 = alloca %"struct.std::pair.97", align 8     ; 6 uses
end_hunk_0
