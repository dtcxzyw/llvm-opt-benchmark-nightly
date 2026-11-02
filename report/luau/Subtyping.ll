Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Subtyping?download=true
inline.NumInlined: 5964
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4Luau24MappedGenericEnvironment9pushFrameERKSt6vectorIPKNS_11TypePackVarESaIS4_EE:bb.a
  invoke void @_ZN4Luau6detail14DenseHashTableImmmNS0_16ItemInterfaceSetImEESt4hashImESt8equal_toImEE14rehash_if_fullERKm(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !101
  %i.ap = add i64 %i.ao, -1                       ; 3 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !85  ; 4 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !102 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %.02136.i5.i = and i64 %i.aq, %i.ap             ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02136.i5.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.at
  br i1 %i.aw, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %.noexc7
  %.02136.i.lcssa4.i = phi i64 [ %.02136.i5.i, %.noexc7 ], [ %.02136.i.i, %bb.f ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02136.i.lcssa4.i
  store i64 %i.aq, ptr %i.ax, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !116
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !116
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !85
  br label %_ZN4Luau12DenseHashSetImSt4hashImESt8equal_toImEE6insertERKm.exit

.lr.ph.i:                                         ; preds = %.noexc7, %bb.f
  %i.bb = phi i64 [ %i.bg, %bb.f ], [ %i.av, %.noexc7 ]
  %.02136.i7.i = phi i64 [ %.02136.i.i, %bb.f ], [ %.02136.i5.i, %.noexc7 ]
  %.02035.i6.i = phi i64 [ %i.bd, %bb.f ], [ 0, %.noexc7 ]
  %i.bc = icmp eq i64 %i.bb, %i.aq
  br i1 %i.bc, label %_ZN4Luau12DenseHashSetImSt4hashImESt8equal_toImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bd = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.be = add i64 %i.bd, %.02136.i7.i
  %.not.i.i = icmp ule i64 %i.bd, %i.ap
  call void @llvm.assume(i1 %.not.i.i)
  %.02136.i.i = and i64 %i.be, %i.ap              ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02136.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !85 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.at
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.j

_ZN4Luau12DenseHashSetImSt4hashImESt8equal_toImEE6insertERKm.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %_ZNSt6vectorIN4Luau24MappedGenericEnvironment18MappedGenericFrameESaIS2_EE12emplace_backIJNS0_12DenseHashMapIPKNS0_11TypePackVarESt8optionalIS9_ENS0_16DenseHashPointerESt8equal_toIS9_EEERSA_ImEEEERS2_DpOT_.exit
  %i.bk = phi i64 [ %i.ag, %_ZNSt6vectorIN4Luau24MappedGenericEnvironment18MappedGenericFrameESaIS2_EE12emplace_backIJNS0_12DenseHashMapIPKNS0_11TypePackVarESt8optionalIS9_ENS0_16DenseHashPointerESt8equal_toIS9_EEERSA_ImEEEERS2_DpOT_.exit ], [ %.pre17, %._crit_edge.i ], [ %i.aq, %.lr.ph.i ]
  store i64 %i.bk, ptr %i.g, align 8
  store i8 1, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bl = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i8, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashSetImSt4hashImESt8equal_toImEE6insertERKm.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #31
  br label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashSetImSt4hashImESt8equal_toImEE6insertERKm.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.bj, %bb.h ], [ %i.bi, %bb.g ]
  %i.bm = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i9, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #31
  br label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit10

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit10: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92   ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !91     ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !92
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS9_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS9_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !121
  %i.al = load i64, ptr %i.a, align 8, !tbaa !90
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !90
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS9_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS9_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St8optionalIS4_EES5_IKS4_S7_ENS0_16ItemInterfaceMapIS4_S7_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS9_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau24MappedGenericEnvironment8popFrameEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85
  %i.f = load ptr, ptr %0, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.02.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = trunc nuw i8 %.sroa.43.0.copyload to i1
  %.0.i = select i1 %i.i, i64 %.sroa.02.0.copyload, i64 0
  store i64 %.0.i, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau24MappedGenericEnvironment11bindGenericEPKNS_11TypePackVarES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.Luau::Variant", align 8     ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 8, !tbaa !123
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.d, label %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZNK4Luau24MappedGenericEnvironment17lookupGenericPackEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"class.Luau::Variant") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
  %i.e = load i32, ptr %3, align 8, !tbaa !96     ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !628
  %i.i = load ptr, ptr %0, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.h
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt8optionalIS3_ENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.pre = load i32, ptr %3, align 8, !tbaa !96
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i32, ptr %3, align 8, !tbaa !96
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEE9tableDtorE, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  invoke void %i.p(ptr noundef nonnull %i.g)
          to label %_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit11 unwind label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.q = phi i32 [ %i.e, %bb.d ], [ %.pre, %bb.f ]
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEE9tableDtorE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  invoke void %i.t(ptr noundef nonnull %i.g)
          to label %_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #32
  unreachable

_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit11: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.l

_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit
  %.1 = phi i1 [ true, %bb.a ], [ %i.f, %_ZN4Luau7VariantIJPKNS_11TypePackVarENS_24MappedGenericEnvironment8UnmappedENS4_11NotBindableEEED2Ev.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult7andAlsoES0_NS_26SubtypingSuppressionPolicyE(ptr noundef nonnull returned align 8 dereferenceable(168) %0, ptr noundef align 8 %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Luau::DenseHashSet.34", align 8 ; 12 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !145, !range !76, !noundef !77
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !145, !range !76, !noundef !77
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  tail call void @_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE7destroyEPS2_m(ptr noundef nonnull %i.g, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !146
  tail call void @_ZdlPv(ptr noundef %i.j) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !146
  store ptr %i.k, ptr %i.e, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !85
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(53) %i.p, ptr noundef nonnull align 8 dereferenceable(53) %i.o) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 8 dereferenceable(5) %i.v, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i8 0, i64 24, i1 false)
  br label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEaSEOS5_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_ZN4LuauL15mergeReasoningsERKNS_12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEES7_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.w)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %.not10.i.i12 = icmp eq ptr %i.x, null
  br i1 %.not10.i.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !147
  call void @_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE7destroyEPS2_m(ptr noundef nonnull %i.x, i64 noundef %i.z)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !146
  call void @_ZdlPv(ptr noundef %i.aa) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !146
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !85
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(53) %i.ag, ptr noundef nonnull align 8 dereferenceable(53) %i.af)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ak = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.al, ptr noundef nonnull align 8 dereferenceable(5) %i.am, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 24, i1 false)
  call void @_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(88) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEaSEOS5_.exit

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(88) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.an

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEaSEOS5_.exit: ; preds = %bb.f, %bb.c, %bb.j, %bb.a
  %i.ao = load i8, ptr %1, align 8, !tbaa !145, !range !76, !noundef !77
  %i.ap = load i8, ptr %0, align 8, !tbaa !145, !range !76, !noundef !77
  %i.aq = and i8 %i.ap, %i.ao
  store i8 %i.aq, ptr %0, align 8, !tbaa !145
  %i.ar = icmp eq i32 %2, 1
end_hunk_0
begin_hunk_1_@_ZNK4Luau9Subtyping11bindGenericERNS_20SubtypingEnvironmentEPKNS_4TypeES5_:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.al:                                            ; preds = %bb.ai
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %6, align 8, !tbaa !168   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !108
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ak
  %.pn43 = phi { ptr, i32 } [ %i.gh, %bb.ak ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gi, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit: ; preds = %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i, %.thread92, %bb.z
  %i.go = load i64, ptr %i.e, align 8, !tbaa !236
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %tailrecurse.i62.preheader, label %bb.am

bb.am:                                            ; preds = %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !180 ; 2 uses
  %i.gs = icmp eq ptr %i.b, %i.gr
  br i1 %i.gs, label %tailrecurse.i62.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !237
  %i.gv = add i64 %i.gu, -1                       ; 2 uses
  %i.gw = ptrtoint ptr %i.b to i64
  %i.gx = mul i64 %i.gw, -4658895280553007687     ; 2 uses
  %i.gy = lshr i64 %i.gx, 31
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !238
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.pn.i.i55 = phi i64 [ %i.gz, %bb.an ], [ %i.hg, %bb.aq ]
  %.01828.i.i56 = phi i64 [ 0, %bb.an ], [ %i.hf, %bb.aq ]
  %.01929.i.i57 = and i64 %.pn.i.i55, %i.gv       ; 2 uses
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %.01929.i.i57 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !180 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.b
  br i1 %i.hd, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = icmp eq ptr %i.hc, %i.gr
  br i1 %i.he, label %tailrecurse.i62.preheader, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hf = add i64 %.01828.i.i56, 1                ; 3 uses
  %i.hg = add i64 %i.hf, %.01929.i.i57
  %.not.i.i58 = icmp ugt i64 %i.hf, %i.gv
  br i1 %.not.i.i58, label %tailrecurse.i62.preheader, label %bb.ao, !llvm.loop !15

bb.ar:                                            ; preds = %bb.ao
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !240
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %i.hl = icmp eq ptr %i.hi, %i.hk
  br i1 %i.hl, label %tailrecurse.i62.preheader, label %bb.as

tailrecurse.i62.preheader:                        ; preds = %bb.ap, %bb.aq, %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit, %bb.am, %bb.ar
  br label %tailrecurse.i62

bb.as:                                            ; preds = %bb.ar
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -144 ; 2 uses
  %i.hn = load i8, ptr %i.c, align 8, !tbaa !375, !range !76, !noundef !77
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 72
  invoke void @_ZN4Luau9Subtyping17maybeUpdateBoundsEPKNS_4TypeES3_RNS_7TypeIdsERKS4_S7_(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.hm, ptr noundef nonnull align 8 dereferenceable(72) %i.hp, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  invoke void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.hm, ptr noundef %i.a)
          to label %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %tailrecurse.i62, %tailrecurse.i, %.thread92, %bb.z, %bb.at, %bb.au
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

tailrecurse.i62:                                  ; preds = %tailrecurse.i62.preheader, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69
  %.tr.i63 = phi ptr [ %i.ir, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69 ], [ %1, %tailrecurse.i62.preheader ] ; 5 uses
  %.tr12.i64 = phi ptr [ %i.hq, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69 ], [ %i.b, %tailrecurse.i62.preheader ]
  %i.hq = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.tr12.i64)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !380 ; 4 uses

.noexc72:                                         ; preds = %tailrecurse.i62
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr.i63, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr.i63, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !236
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, label %bb.av

bb.av:                                            ; preds = %.noexc72
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr.i63, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !180 ; 2 uses
  %i.hx = icmp eq ptr %i.hq, %i.hw
  br i1 %i.hx, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr.i63, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !237
  %i.ia = add i64 %i.hz, -1                       ; 2 uses
  %i.ib = ptrtoint ptr %i.hq to i64
  %i.ic = mul i64 %i.ib, -4658895280553007687     ; 2 uses
  %i.id = lshr i64 %i.ic, 31
  %i.ie = xor i64 %i.id, %i.ic
  %i.if = load ptr, ptr %i.hr, align 8, !tbaa !238
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.pn.i.i.i65 = phi i64 [ %i.ie, %bb.aw ], [ %i.il, %bb.az ]
  %.01828.i.i.i66 = phi i64 [ 0, %bb.aw ], [ %i.ik, %bb.az ]
  %.01929.i.i.i67 = and i64 %.pn.i.i.i65, %i.ia   ; 2 uses
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %.01929.i.i.i67 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !180 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hq
  br i1 %i.ii, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ij = icmp eq ptr %i.ih, %i.hw
  br i1 %i.ij, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = add i64 %.01828.i.i.i66, 1              ; 3 uses
  %i.il = add i64 %i.ik, %.01929.i.i.i67
  %.not.i.i.i68 = icmp ugt i64 %i.ik, %i.ia
  br i1 %.not.i.i.i68, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, label %bb.ax, !llvm.loop !15

bb.ba:                                            ; preds = %bb.ax
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !240
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !240
  %i.iq = icmp eq ptr %i.in, %i.ip
  br i1 %i.iq, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, label %bb.bb

_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69: ; preds = %bb.az, %bb.ay, %bb.ba, %bb.av, %.noexc72
  %i.ir = load ptr, ptr %.tr.i63, align 8, !tbaa !231 ; 2 uses
  %.not7.i70 = icmp eq ptr %i.ir, null
  br i1 %.not7.i70, label %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73, label %tailrecurse.i62

bb.bb:                                            ; preds = %bb.ba
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %8) #34
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.bf:                                            ; preds = %bb.bc
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %8, align 8, !tbaa !168   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.bf
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !108
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.be
  %.pn40 = phi { ptr, i32 } [ %i.iu, %bb.be ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.iv, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73: ; preds = %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt6vectorINS_20SubtypingEnvironment13GenericBoundsESaIS6_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i69, %bb.au, %bb.at
  %i.jb = load i8, ptr %i.c, align 8, !tbaa !375, !range !76, !noundef !77
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bg, label %_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev.exit

bb.bg:                                            ; preds = %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73
  store i8 0, ptr %i.c, align 8, !tbaa !375
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !344
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %i.jl = load ptr, ptr %i.jd, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jl) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i.i

_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i.i:              ; preds = %bb.bi, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !344
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.js) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i.i: ; preds = %bb.bj, %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i.i
  %i.jt = load ptr, ptr %4, align 8, !tbaa !349   ; 2 uses
  %.not.i.i.i3.i.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i3.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jt) #31
  br label %_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev.exit: ; preds = %_ZNK4Luau20SubtypingEnvironment18containsMappedTypeEPKNS_4TypeE.exit73, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret i1 true

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn43.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9UnionTypeES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %3, ptr noundef %4, ptr %5) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.255", align 8 ; 7 uses
  %7 = alloca %"class.Luau::TypeIds", align 8     ; 13 uses
  %8 = alloca %"struct.Luau::TypeIterator", align 8 ; 6 uses
  %9 = alloca %"struct.Luau::TypeIterator", align 8 ; 6 uses
  %10 = alloca %"struct.Luau::TypeIterator", align 8 ; 18 uses
  %11 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %12 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %13 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %14 = alloca %"class.Luau::Variant.53", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #35, !noalias !671 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i8 0, i64 168, i1 false), !noalias !671
  store i8 1, ptr %i.b, align 2, !tbaa !150, !noalias !671
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !noalias !671
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.d, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %bb.b unwind label %.body.i, !noalias !671

common.resume:                                    ; preds = %bb.av, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %.body.i ], [ %.pn43.pn.pn.pn.pn, %bb.av ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #31, !noalias !671
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #33, !noalias !671
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !671
  store ptr %i.a, ptr %6, align 8, !tbaa !361, !alias.scope !671
  store i8 1, ptr %i.a, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !359
  %i.j = load ptr, ptr %4, align 8, !tbaa !343
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  invoke void @_ZN4Luau7TypeIds7reserveEm(ptr noundef nonnull align 8 dereferenceable(72) %7, i64 noundef %i.n)
          to label %bb.c unwind label %bb.ar

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %8, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.ar

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %9, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4Luau7TypeIds6insertINS_12TypeIteratorINS_9UnionTypeEEEEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.p) #31
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %bb.f, %bb.g
  %i.q = load ptr, ptr %9, align 8, !tbaa !388
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !389
  %i.t = shl i64 %i.s, 4
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i52, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit53, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.v) #31
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit53

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit53: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.h
  %i.w = load ptr, ptr %8, align 8, !tbaa !388
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !389
  %i.z = shl i64 %i.y, 4
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #33
  %i.aa = invoke ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.i unwind label %bb.ar      ; 0 uses

bb.i:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit53
  %i.ab = invoke ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %.preheader.preheader unwind label %bb.ar ; 0 uses

.preheader.preheader:                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %10, ptr noundef %3)
          to label %bb.m unwind label %bb.o

bb.j:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #31
  br label %bb.av

bb.m:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %11, ptr noundef %3)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.p

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
end_hunk_1
begin_hunk_2_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEE:bb.a
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit256 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rt = landingpad { ptr, i32 }
          catch ptr null
  %i.ru = extractvalue { ptr, i32 } %i.rt, 0
  call void @__clang_call_terminate(ptr %i.ru) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit256: ; preds = %bb.dx
  %i.rv = load ptr, ptr %39, align 8, !tbaa !168  ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.cv
  br i1 %i.rw, label %_ZN4Luau8TypePath8PropertyD2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257: ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit256
  %i.rx = load i64, ptr %i.cv, align 8, !tbaa !108
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #33
  br label %_ZN4Luau8TypePath8PropertyD2Ev.exit259

_ZN4Luau8TypePath8PropertyD2Ev.exit259:           ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i257
  %i.rz = load ptr, ptr %40, align 8, !tbaa !168  ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.cr
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZN4Luau8TypePath8PropertyD2Ev.exit259
  %i.sb = load i64, ptr %i.cr, align 8, !tbaa !108
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZN4Luau8TypePath8PropertyD2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  %i.sd = load i32, ptr %37, align 8, !tbaa !61
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.se
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !62
  invoke void %i.sg(ptr noundef nonnull %i.cq)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit263 unwind label %bb.dz

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %i.sh = landingpad { ptr, i32 }
          catch ptr null
  %i.si = extractvalue { ptr, i32 } %i.sh, 0
  call void @__clang_call_terminate(ptr %i.si) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %36) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %bb.gh

bb.ea:                                            ; preds = %bb.dn
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.eb:                                            ; preds = %bb.do
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ec:                                            ; preds = %.noexc.i251
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

bb.ed:                                            ; preds = %bb.ds
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau8TypePath8PropertyD2Ev.exit267

bb.ee:                                            ; preds = %bb.dv, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEC2IS2_EEOT_PNSt9enable_ifIXgecl9getTypeIdISB_EELi0EEvE4typeE.exit255
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.dw
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %35) #31
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn136 = phi { ptr, i32 } [ %i.so, %bb.ef ], [ %i.sn, %bb.ee ] ; 2 uses
  %i.sp = load i32, ptr %38, align 8, !tbaa !61
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !62
  invoke void %i.ss(ptr noundef nonnull %i.ct)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit264 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.st = landingpad { ptr, i32 }
          catch ptr null
  %i.su = extractvalue { ptr, i32 } %i.st, 0
  call void @__clang_call_terminate(ptr %i.su) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit264: ; preds = %bb.eg
  %i.sv = load ptr, ptr %39, align 8, !tbaa !168  ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.cv
  br i1 %i.sw, label %_ZN4Luau8TypePath8PropertyD2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i265: ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit264
  %i.sx = load i64, ptr %i.cv, align 8, !tbaa !108
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #33
  br label %_ZN4Luau8TypePath8PropertyD2Ev.exit267

_ZN4Luau8TypePath8PropertyD2Ev.exit267:           ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i265, %bb.ed
  %.pn136.pn = phi { ptr, i32 } [ %i.sm, %bb.ed ], [ %.pn136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i265 ], [ %.pn136, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit264 ] ; 2 uses
  %i.sz = load ptr, ptr %40, align 8, !tbaa !168  ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.cr
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %_ZN4Luau8TypePath8PropertyD2Ev.exit267
  %i.tb = load i64, ptr %i.cr, align 8, !tbaa !108
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %_ZN4Luau8TypePath8PropertyD2Ev.exit267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268, %bb.ec
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.sl, %bb.ec ], [ %.pn136.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268 ], [ %.pn136.pn, %_ZN4Luau8TypePath8PropertyD2Ev.exit267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %bb.eb
  %.pn136.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ], [ %i.sk, %bb.eb ]
  %i.td = load i32, ptr %37, align 8, !tbaa !61
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.te
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !62
  invoke void %i.tg(ptr noundef nonnull %i.cq)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit271 unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit271: ; preds = %bb.ei
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %36) #31
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit271, %bb.ea
  %.pn136.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit271 ], [ %i.sj, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %.body321

.critedge.thread:                                 ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, %.critedge
  %i.tj = load i8, ptr @_ZN5FFlag35LuauSubtypingMissingPropertiesAsNilE, align 8, !tbaa !295, !range !76, !noundef !77
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.el, label %bb.gf

bb.el:                                            ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %41, align 8, !tbaa !266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.ap, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %bb.en unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #31
  br label %.body

bb.en:                                            ; preds = %bb.el
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  %i.tm = load i8, ptr @_ZN5FFlag36LuauImproveUniqueTableWidthSubtypingE, align 8, !tbaa !295, !range !76, !noundef !77
  %i.tn = trunc nuw i8 %i.tm to i1
  br i1 %i.tn, label %bb.eo, label %bb.fm

bb.eo:                                            ; preds = %bb.en
  br i1 %5, label %bb.ep, label %bb.fb

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  %i.to = load ptr, ptr %1, align 8, !tbaa !277
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !695
  invoke void @_ZN4Luau8Property2rwEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Property") align 8 %43, ptr noundef %i.tq)
          to label %bb.eq unwind label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_8PropertyES5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %42, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull align 8 dereferenceable(176) %43, ptr noundef nonnull align 8 dereferenceable(176) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i1 noundef zeroext true, i64 %6)
          to label %bb.er unwind label %bb.ex

bb.er:                                            ; preds = %bb.eq
  %i.tr = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(168) %41, ptr noundef nonnull align 8 dereferenceable(168) %42)
          to label %bb.es unwind label %bb.ey     ; 0 uses

bb.es:                                            ; preds = %bb.er
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %42) #31
  %i.ts = load i8, ptr %i.bh, align 8, !tbaa !428, !range !76, !noundef !77
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.et, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.et:                                            ; preds = %bb.es
  store i8 0, ptr %i.bh, align 8, !tbaa !428
  %i.tu = load ptr, ptr %i.bi, align 8, !tbaa !168 ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.bj
  br i1 %i.tv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.et
  %i.tw = load i64, ptr %i.bj, align 8, !tbaa !108
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.es
  %i.ty = load ptr, ptr %i.bk, align 8, !tbaa !429 ; 3 uses
  %i.tz = load ptr, ptr %i.bl, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ty, %i.tz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.uf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ty, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.ua = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.uc = icmp eq ptr %i.ua, %i.ub
  br i1 %i.uc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !108
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ue) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.uf, %i.tz
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bk, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ug = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ty, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.eu

bb.eu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.uh = load ptr, ptr %i.bm, align 8, !tbaa !431
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.ug to i64
  %i.uk = sub i64 %i.ui, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.uk) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.eu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ul = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.bo
  br i1 %i.um, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.un = load i64, ptr %i.bo, align 8, !tbaa !108
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #33
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.fx

bb.ev:                                            ; preds = %.lr.ph.i.i.i311
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body313

bb.ew:                                            ; preds = %bb.ep
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ex:                                            ; preds = %bb.eq
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.er
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %42) #31
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn124 = phi { ptr, i32 } [ %i.us, %bb.ey ], [ %i.ur, %bb.ex ]
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %43) #31
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ew
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.ez ], [ %i.uq, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %.body313

bb.fb:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.ut = load ptr, ptr %1, align 8, !tbaa !277
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !695
  invoke void @_ZN4Luau8Property8readonlyEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Property") align 8 %45, ptr noundef %i.uv)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_8PropertyES5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %44, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull align 8 dereferenceable(176) %45, ptr noundef nonnull align 8 dereferenceable(176) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i1 noundef zeroext false, i64 %6)
          to label %bb.fd unwind label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  %i.uw = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(168) %41, ptr noundef nonnull align 8 dereferenceable(168) %44)
          to label %bb.fe unwind label %bb.fj     ; 0 uses

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %44) #31
  %i.ux = load i8, ptr %i.az, align 8, !tbaa !428, !range !76, !noundef !77
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.ff, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274

bb.ff:                                            ; preds = %bb.fe
  store i8 0, ptr %i.az, align 8, !tbaa !428
  %i.uz = load ptr, ptr %i.ba, align 8, !tbaa !168 ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.bb
  br i1 %i.va, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i289: ; preds = %bb.ff
  %i.vb = load i64, ptr %i.bb, align 8, !tbaa !108
  %i.vc = add i64 %i.vb, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vc) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i289, %bb.fe
  %i.vd = load ptr, ptr %i.bc, align 8, !tbaa !429 ; 3 uses
  %i.ve = load ptr, ptr %i.bd, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i.i275 = icmp eq ptr %i.vd, %i.ve
  br i1 %.not4.i.i.i.i275, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i283, label %.lr.ph.i.i.i.i276

.lr.ph.i.i.i.i276:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279
  %.05.i.i.i.i277 = phi ptr [ %i.vk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279 ], [ %i.vd, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274 ] ; 3 uses
  %i.vf = load ptr, ptr %.05.i.i.i.i277, align 8, !tbaa !168 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i277, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i278: ; preds = %.lr.ph.i.i.i.i276
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !108
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279: ; preds = %.lr.ph.i.i.i.i276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i278
  %i.vk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i277, i64 32 ; 2 uses
  %.not.i.i.i.i280 = icmp eq ptr %i.vk, %i.ve
  br i1 %.not.i.i.i.i280, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i281, label %.lr.ph.i.i.i.i276, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i281: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i279
  %.pr.i.i282 = load ptr, ptr %i.bc, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i283

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i283: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i281, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274
  %i.vl = phi ptr [ %.pr.i.i282, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i281 ], [ %i.vd, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i274 ] ; 3 uses
  %.not.i.i1.i.i284 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i1.i.i284, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i285, label %bb.fg

bb.fg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i283
  %i.vm = load ptr, ptr %i.be, align 8, !tbaa !431
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = ptrtoint ptr %i.vl to i64
  %i.vp = sub i64 %i.vn, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vp) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i285

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i285: ; preds = %bb.fg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i283
  %i.vq = load ptr, ptr %i.bf, align 8, !tbaa !168 ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.bg
  br i1 %i.vr, label %_ZN4Luau8PropertyD2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i285
  %i.vs = load i64, ptr %i.bg, align 8, !tbaa !108
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #33
  br label %_ZN4Luau8PropertyD2Ev.exit291

_ZN4Luau8PropertyD2Ev.exit291:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %bb.fx

bb.fh:                                            ; preds = %bb.fb
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fc
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fd
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %44) #31
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.pn121 = phi { ptr, i32 } [ %i.vw, %bb.fj ], [ %i.vv, %bb.fi ]
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %45) #31
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fh
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %bb.fk ], [ %i.vu, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %.body313

bb.fm:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  %i.vx = load ptr, ptr %1, align 8, !tbaa !277
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !695
  invoke void @_ZN4Luau8Property8readonlyEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Property") align 8 %47, ptr noundef %i.vz)
          to label %bb.fn unwind label %bb.fs

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_8PropertyES5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %46, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull align 8 dereferenceable(176) %47, ptr noundef nonnull align 8 dereferenceable(176) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i1 noundef zeroext %5, i64 %6)
          to label %bb.fo unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.wa = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(168) %41, ptr noundef nonnull align 8 dereferenceable(168) %46)
          to label %bb.fp unwind label %bb.fu     ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %46) #31
  %i.wb = load i8, ptr %i.ar, align 8, !tbaa !428, !range !76, !noundef !77
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %bb.fq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292

bb.fq:                                            ; preds = %bb.fp
  store i8 0, ptr %i.ar, align 8, !tbaa !428
  %i.wd = load ptr, ptr %i.as, align 8, !tbaa !168 ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.at
  br i1 %i.we, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307: ; preds = %bb.fq
  %i.wf = load i64, ptr %i.at, align 8, !tbaa !108
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i307, %bb.fp
  %i.wh = load ptr, ptr %i.au, align 8, !tbaa !429 ; 3 uses
  %i.wi = load ptr, ptr %i.av, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i.i293 = icmp eq ptr %i.wh, %i.wi
  br i1 %.not4.i.i.i.i293, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i301, label %.lr.ph.i.i.i.i294

.lr.ph.i.i.i.i294:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297
  %.05.i.i.i.i295 = phi ptr [ %i.wo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297 ], [ %i.wh, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292 ] ; 3 uses
  %i.wj = load ptr, ptr %.05.i.i.i.i295, align 8, !tbaa !168 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i295, i64 16 ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i296: ; preds = %.lr.ph.i.i.i.i294
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !108
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297: ; preds = %.lr.ph.i.i.i.i294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i296
  %i.wo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i295, i64 32 ; 2 uses
  %.not.i.i.i.i298 = icmp eq ptr %i.wo, %i.wi
  br i1 %.not.i.i.i.i298, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i299, label %.lr.ph.i.i.i.i294, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i299: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i297
  %.pr.i.i300 = load ptr, ptr %i.au, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i301

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i301: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i299, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292
  %i.wp = phi ptr [ %.pr.i.i300, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i299 ], [ %i.wh, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i292 ] ; 3 uses
  %.not.i.i1.i.i302 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i1.i.i302, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i303, label %bb.fr

bb.fr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i301
  %i.wq = load ptr, ptr %i.aw, align 8, !tbaa !431
  %i.wr = ptrtoint ptr %i.wq to i64
  %i.ws = ptrtoint ptr %i.wp to i64
  %i.wt = sub i64 %i.wr, %i.ws
  call void @_ZdlPvm(ptr noundef nonnull %i.wp, i64 noundef %i.wt) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i303

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i303: ; preds = %bb.fr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i301
  %i.wu = load ptr, ptr %i.ax, align 8, !tbaa !168 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.ay
  br i1 %i.wv, label %_ZN4Luau8PropertyD2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i303
  %i.ww = load i64, ptr %i.ay, align 8, !tbaa !108
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #33
  br label %_ZN4Luau8PropertyD2Ev.exit309

_ZN4Luau8PropertyD2Ev.exit309:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fm
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fn
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fo
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %46) #31
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.pn = phi { ptr, i32 } [ %i.xa, %bb.fu ], [ %i.wz, %bb.ft ]
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %47) #31
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fs
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.fv ], [ %i.wy, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  br label %.body313

bb.fx:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZN4Luau8PropertyD2Ev.exit291, %_ZN4Luau8PropertyD2Ev.exit309
  %i.xb = load i64, ptr %i.bq, align 8, !tbaa !154
  %i.xc = icmp eq i64 %i.xb, 0
  %.pre521 = load ptr, ptr %i.bp, align 8, !tbaa !146 ; 2 uses
  %.pre523 = load i64, ptr %i.br, align 8, !tbaa !147 ; 3 uses
  br i1 %i.xc, label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE5clearEv.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xd = icmp ugt i64 %.pre523, 32
  call void @_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE7destroyEPS2_m(ptr noundef %.pre521, i64 noundef %.pre523)
  %i.xe = load ptr, ptr %i.bp, align 8, !tbaa !146 ; 3 uses
  br i1 %i.xd, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void @_ZdlPv(ptr noundef %i.xe) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bp, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i

bb.ga:                                            ; preds = %bb.fy
  %i.xf = load i64, ptr %i.br, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i310 = icmp eq i64 %i.xf, 0
  br i1 %.not.i.i.i310, label %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i, label %.lr.ph.i.i.i311

.lr.ph.i.i.i311:                                  ; preds = %bb.ga, %.noexc312
  %.05.i.i.i = phi i64 [ %i.xh, %.noexc312 ], [ 0, %bb.ga ] ; 2 uses
  %i.xg = getelementptr inbounds nuw [56 x i8], ptr %i.xe, i64 %.05.i.i.i
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.xg, ptr noundef nonnull align 8 dereferenceable(53) %i.ap)
          to label %.noexc312 unwind label %bb.ev

.noexc312:                                        ; preds = %.lr.ph.i.i.i311
  %i.xh = add nuw i64 %.05.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.xh, %i.xf
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i.loopexit, label %.lr.ph.i.i.i311, !llvm.loop !7

_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i.loopexit: ; preds = %.noexc312
  %.pre.pre = load ptr, ptr %i.bp, align 8, !tbaa !146
  %.pre522.pre = load i64, ptr %i.br, align 8, !tbaa !147
  br label %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i

_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i.loopexit, %bb.ga, %bb.fz
  %.pre522 = phi i64 [ %.pre522.pre, %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i.loopexit ], [ 0, %bb.ga ], [ 0, %bb.fz ]
  %.pre = phi ptr [ %.pre.pre, %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i.loopexit ], [ %i.xe, %bb.ga ], [ null, %bb.fz ]
  store i64 0, ptr %i.bq, align 8, !tbaa !154
  br label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE5clearEv.exit

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE5clearEv.exit: ; preds = %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i, %bb.fx
  %i.xi = phi i64 [ %.pre522, %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i ], [ %.pre523, %bb.fx ]
  %i.xj = phi ptr [ %.pre, %_ZN4Luau6detail16ItemInterfaceSetINS_18SubtypingReasoningEE4fillEPS2_mRKS2_.exit.i.i ], [ %.pre521, %bb.fx ]
  %i.xk = load i32, ptr %41, align 8
  store i32 %i.xk, ptr %48, align 8
  %i.xl = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !151
  store <2 x ptr> %i.xl, ptr %i.bs, align 8, !tbaa !151
  %i.xm = load ptr, ptr %i.bu, align 8, !tbaa !182
  store ptr %i.xm, ptr %i.bt, align 8, !tbaa !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr %i.xj, ptr %i.bv, align 8, !tbaa !146
  store i64 %i.xi, ptr %i.bw, align 8, !tbaa !147
  store i64 0, ptr %i.bx, align 8, !tbaa !154
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.by, ptr noundef nonnull align 8 dereferenceable(53) %i.ap)
          to label %bb.gc unwind label %bb.gb

bb.gb:                                            ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE5clearEv.exit
  %i.xn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #31
  br label %.body313

bb.gc:                                            ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EE5clearEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bp, i8 0, i64 24, i1 false)
  %i.xo = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !153
  store <2 x ptr> %i.xo, ptr %i.bz, align 8, !tbaa !153
  %i.xp = load ptr, ptr %i.cb, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.xq = load ptr, ptr %i.cc, align 8, !tbaa !341
  %i.xr = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !152
  %i.xs = insertelement <4 x ptr> poison, ptr %i.xp, i64 0
  %i.xt = insertelement <4 x ptr> %i.xs, ptr %i.xq, i64 1
  %i.xu = shufflevector <2 x ptr> %i.xr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xv = shufflevector <4 x ptr> %i.xt, <4 x ptr> %i.xu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.xv, ptr %i.ca, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEEENK3$_0clENS_15SubtypingResultE"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef align 8 %48)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %48) #31
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.gh

bb.ge:                                            ; preds = %bb.gc
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %48) #31
  br label %.body313

.body313:                                         ; preds = %bb.ev, %bb.gb, %bb.ge, %bb.fw, %bb.fl, %bb.fa
  %.pn127 = phi { ptr, i32 } [ %i.xw, %bb.ge ], [ %.pn.pn, %bb.fw ], [ %.pn124.pn, %bb.fa ], [ %.pn121.pn, %bb.fl ], [ %i.up, %bb.ev ], [ %i.xn, %bb.gb ]
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %41) #31
  br label %.body

.body:                                            ; preds = %bb.em, %.body313
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %.body313 ], [ %i.tl, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %.body321

end_hunk_2
begin_hunk_3_@_ZN4Luau9Subtyping15isInvariantWithIPKNS_4TypeES4_EENS_15SubtypingResultERNS_20SubtypingEnvironmentET_T0_NS_7NotNullINS_5ScopeEEE:bb.a
  %.pr.i.i7.i = load ptr, ptr %7, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i8.i

_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i8.i: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i6.i, %_ZN4Luau8TypePath4PathD2Ev.exit.i
  %i.ce = phi ptr [ %.pr.i.i7.i, %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i6.i ], [ %i.bu, %_ZN4Luau8TypePath4PathD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i9.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i9.i, label %_ZN4Luau18SubtypingReasoningD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i8.i
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #33
  br label %_ZN4Luau18SubtypingReasoningD2Ev.exit

_ZN4Luau18SubtypingReasoningD2Ev.exit:            ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i8.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit54

bb.s:                                             ; preds = %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %6) #31
  br label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i.i.i28, %.noexc.i.i.i31
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.j, %bb.k, %bb.u
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.aq, %bb.k ], [ %i.aq, %bb.j ]
  call void @_ZN4Luau8TypePath4PathD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  br label %.body

bb.v:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit.i, %bb.n, %bb.m
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau18SubtypingReasoningD2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %7) #31
  br label %.body

.body:                                            ; preds = %bb.t, %bb.g, %bb.f, %bb.v, %.body34
  %.pn22 = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %eh.lpad-body35, %.body34 ], [ %i.ck, %bb.t ], [ %i.u, %bb.g ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %.not.i.i41 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i41, label %.loopexit54, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dg, %bb.aa ] ; 6 uses
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %i.ct, i64 %.04.i.i ; 4 uses
  %i.cv = invoke noundef zeroext i1 @_ZNK4Luau8TypePath4PatheqERKS1_(ptr noundef nonnull align 8 dereferenceable(53) %i.cu, ptr noundef nonnull align 8 dereferenceable(53) %i.cp)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  br i1 %i.cv, label %bb.y, label %.loopexit58

bb.y:                                             ; preds = %.noexc42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cx = invoke noundef zeroext i1 @_ZNK4Luau8TypePath4PatheqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.y
  br i1 %i.cx, label %bb.z, label %.loopexit58

bb.z:                                             ; preds = %.noexc43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !74
  %i.da = load i32, ptr %i.cr, align 8, !tbaa !74
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i.i, label %.loopexit58

_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i.i: ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !75, !range !76, !noundef !77
  %i.de = load i8, ptr %i.cs, align 4, !tbaa !75, !range !76, !noundef !77
  %i.df = icmp eq i8 %i.dd, %i.de
  br i1 %i.df, label %bb.aa, label %.loopexit58

bb.aa:                                            ; preds = %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i.i
  %i.dg = add nuw i64 %.04.i.i, 1                 ; 3 uses
  %i.dh = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.x, label %.loopexit58, !llvm.loop !9

.loopexit58:                                      ; preds = %.noexc42, %.noexc43, %bb.z, %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i.i, %bb.aa
  %.0.lcssa.i.i.ph = phi i64 [ %.04.i.i, %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i.i ], [ %i.dg, %bb.aa ], [ %.04.i.i, %bb.z ], [ %.04.i.i, %.noexc43 ], [ %.04.i.i, %.noexc42 ] ; 2 uses
  %.pre = load i64, ptr %i.cn, align 8, !tbaa !147 ; 2 uses
  %.not60 = icmp eq i64 %.0.lcssa.i.i.ph, %.pre
  br i1 %.not60, label %.loopexit54, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit58
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.ab

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %.lr.ph96, %bb.x, %bb.y, %.loopexit54, %bb.a
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit
  %.sroa.8.061 = phi i64 [ %.0.lcssa.i.i.ph, %.lr.ph ], [ %.lcssa, %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit ] ; 2 uses
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %.sroa.8.061
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store i32 3, ptr %i.dp, align 8, !tbaa !74
  %i.dq = load i64, ptr %i.cn, align 8, !tbaa !147 ; 2 uses
  %i.dr = add i64 %.sroa.8.061, 1                 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  br i1 %i.ds, label %.lr.ph96, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit

bb.ac:                                            ; preds = %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i
  %i.dt = add i64 %i.dv, 1                        ; 3 uses
  %i.du = icmp ult i64 %i.dt, %i.dq
  br i1 %i.du, label %.lr.ph96, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit, !llvm.loop !10

.lr.ph96:                                         ; preds = %bb.ab, %bb.ac
  %i.dv = phi i64 [ %i.dt, %bb.ac ], [ %i.dr, %bb.ab ] ; 6 uses
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.dx = getelementptr inbounds nuw [56 x i8], ptr %i.dw, i64 %i.dv ; 4 uses
  %i.dy = invoke noundef zeroext i1 @_ZNK4Luau8TypePath4PatheqERKS1_(ptr noundef nonnull align 8 dereferenceable(53) %i.dx, ptr noundef nonnull align 8 dereferenceable(53) %i.dj)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %.lr.ph96
  br i1 %i.dy, label %bb.ad, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit

bb.ad:                                            ; preds = %.noexc46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ea = invoke noundef zeroext i1 @_ZNK4Luau8TypePath4PatheqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ad
  br i1 %i.ea, label %bb.ae, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit

bb.ae:                                            ; preds = %.noexc47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !74
  %i.ed = load i32, ptr %i.dl, align 8, !tbaa !74
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i, label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit

_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i: ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !75, !range !76, !noundef !77
  %i.eh = load i8, ptr %i.dm, align 4, !tbaa !75, !range !76, !noundef !77
  %i.ei = icmp eq i8 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ac, label %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i._ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge, !llvm.loop !10

_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i._ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge: ; preds = %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i
  br label %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit, !llvm.loop !10

_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit: ; preds = %bb.ae, %.noexc47, %.noexc46, %bb.ac, %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i._ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge, %bb.ab
  %.lcssa = phi i64 [ %i.dr, %bb.ab ], [ %i.dv, %_ZNKSt8equal_toIN4Luau18SubtypingReasoningEEclERKS1_S4_.exit.i._ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge ], [ %i.dv, %bb.ae ], [ %i.dv, %.noexc47 ], [ %i.dv, %.noexc46 ], [ %i.dt, %bb.ac ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, %.pre
  br i1 %.not, label %.loopexit54, label %bb.ab

.loopexit54:                                      ; preds = %_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EE8iteratorppEv.exit, %bb.w, %.loopexit58, %_ZN4Luau18SubtypingReasoningD2Ev.exit
  invoke fastcc void @_ZN4LuauL20assertReasoningValidIPKNS_4TypeEEEvT_S4_RKNS_15SubtypingResultENS_7NotNullINS_12BuiltinTypesEEENS8_INS_9TypeArenaEEE(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.loopexit54
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %.pn22, %.body ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #31
  resume { ptr, i32 } %.pn24
}

declare void @_ZN4Luau8TypePath8Property5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePath::Property") align 8, ptr noundef align 8) local_unnamed_addr #7

declare void @_ZN4Luau8Property2rwEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"struct.Luau::Property") align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !429  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %.lr.ph.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !108
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.j, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !108
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN4Luau8Property8readonlyEPKNS_4TypeE(ptr dead_on_unwind writable sret(%"struct.Luau::Property") align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_12TableIndexerES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %4, ptr %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::SubtypingResult", align 8 ; 21 uses
  %7 = alloca %"class.Luau::Variant.53", align 8  ; 5 uses
  %8 = alloca %"struct.Luau::SubtypingResult", align 8 ; 12 uses
  %9 = alloca %"class.Luau::Variant.53", align 8  ; 5 uses
  %10 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %11 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %12 = alloca %"class.Luau::Variant.53", align 8 ; 5 uses
  %13 = alloca %"struct.Luau::SubtypingResult", align 8 ; 4 uses
  %14 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %15 = alloca %"class.Luau::Variant.53", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %6, align 8, !tbaa !266
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.c, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit unwind label %bb.g

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.g = load i8, ptr %i.f, align 8, !tbaa !425, !range !76, !noundef !77
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !425, !range !76, !noundef !77
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %7, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 5, ptr %i.l, align 8, !tbaa !176
  %i.m = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult17withBothComponentENS_7VariantIJNS_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEE(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4Luau15SubtypingResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %7, align 8, !tbaa !61
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  invoke void %i.q(ptr noundef nonnull %i.l)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #31
  br label %bb.ar

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i32, ptr %7, align 8, !tbaa !61
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  invoke void %i.y(ptr noundef nonnull %i.l)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit34 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

bb.j:                                             ; preds = %bb.b, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ab = load ptr, ptr %3, align 8, !tbaa !424
  %i.ac = load ptr, ptr %4, align 8, !tbaa !424
  invoke void @_ZN4Luau9Subtyping15isInvariantWithIPKNS_4TypeES4_EENS_15SubtypingResultERNS_20SubtypingEnvironmentET_T0_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %8, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %i.ab, ptr noundef %i.ac, ptr %5)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %9, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 4, ptr %i.ad, align 8, !tbaa !176
  %i.ae = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult17withBothComponentENS_7VariantIJNS_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEE(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 %9)
          to label %bb.l unwind label %bb.u       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %8, align 8
  store i32 %i.af, ptr %6, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc unwind label %bb.u     ; 0 uses

.noexc:                                           ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aj = invoke noundef nonnull align 8 dereferenceable(82) ptr @_ZN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.noexc35 unwind label %bb.u   ; 0 uses

.noexc35:                                         ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESaISN_EEaSERKSP_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.noexc36 unwind label %bb.u   ; 0 uses

.noexc36:                                         ; preds = %.noexc35
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.an = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau21GenericBoundsMismatchESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN4Luau15SubtypingResultaSERKS0_.exit unwind label %bb.u ; 0 uses

_ZN4Luau15SubtypingResultaSERKS0_.exit:           ; preds = %.noexc36
  %i.ao = load i32, ptr %9, align 8, !tbaa !61
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.ap
end_hunk_3
begin_hunk_4_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_13MetatableTypeEPKNS_9TableTypeENS_7NotNullINS_5ScopeEEE:bb.a
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !169 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 7)
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !168
  %i.af = call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.ag = sub i64 7, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit37, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0           ; 2 uses
  %spec.select.i.i = select i1 %i.ah, ptr %i.q, ptr %.19.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = ptrtoint ptr %5 to i64
  call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull %i.e, ptr noundef %4, i1 noundef zeroext false, i64 %i.ai), !inline_history !722
  br label %bb.ab

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 216
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !427, !range !76, !noundef !77
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = ptrtoint ptr %5 to i64
  call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull %i.e, ptr noundef %4, i1 noundef zeroext false, i64 %i.am), !inline_history !722
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !180
  %i.ap = call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ao) ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !269
  %i.ar = icmp eq i32 %i.aq, 9
  br i1 %i.ar, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = ptrtoint ptr %5 to i64
  call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull %i.e, ptr noundef %4, i1 noundef zeroext false, i64 %i.as), !inline_history !722
  br label %bb.ab

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit44: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef nonnull align 8 dereferenceable(328) %i.e)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !419 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.not122 = icmp eq ptr %i.au, %i.av
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit44
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %.critedge, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit44
  %i.bg = ptrtoint ptr %5 to i64
  invoke void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeES5_bNS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull %7, ptr noundef %4, i1 noundef zeroext false, i64 %i.bg)
          to label %bb.w unwind label %bb.x

bb.l:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.078.0123 = phi ptr [ %i.au, %.lr.ph ], [ %i.dh, %.critedge ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.078.0123, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.078.0123, i64 208
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.078.0123, i64 216
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !427, !range !76, !noundef !77
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !420 ; 2 uses
  %.not10.i.i.i46 = icmp eq ptr %i.bm, null
  br i1 %.not10.i.i.i46, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.078.0123, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !169 ; 4 uses
  %i.bp = load ptr, ptr %i.bh, align 8            ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53, %.lr.ph.i.i.i47
  %.012.i.i.i48 = phi ptr [ %i.bm, %.lr.ph.i.i.i47 ], [ %.1.i.i.i58, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53 ] ; 6 uses
  %.0811.i.i.i49 = phi ptr [ %i.ax, %.lr.ph.i.i.i47 ], [ %.19.i.i.i55, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !169 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i50 = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.br) ; 2 uses
  %i.bs = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i50, 0
  br i1 %i.bs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i71, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i51

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i51: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !168
  %i.bv = call i32 @memcmp(ptr noundef %i.bu, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i.i.i50) #31 ; 2 uses
  %.not.i.i.i.i.i.i52 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i52, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i71, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i71: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i51, %bb.n
  %i.bw = sub i64 %i.br, %i.bo
  %spec.select7.i.i.i.i.i.i.i72 = call i64 @llvm.smax.i64(i64 %i.bw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i73 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i72, i64 2147483647)
  %.0.i6.i.i.i.i.i.i74 = trunc nsw i64 %.08.i.i.i.i.i.i.i73 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i71, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i51
  %.0.i.i.i.i.i.i54 = phi i32 [ %i.bv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i51 ], [ %.0.i6.i.i.i.i.i.i74, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i71 ]
  %i.bx = icmp slt i32 %.0.i.i.i.i.i.i54, 0       ; 4 uses
  %.19.i.i.i55 = select i1 %i.bx, ptr %.0811.i.i.i49, ptr %.012.i.i.i48 ; 2 uses
  %.1.in.v.i.i.i56 = select i1 %i.bx, i64 24, i64 16
  %.1.in.i.i.i57 = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 %.1.in.v.i.i.i56
  %.1.i.i.i58 = load ptr, ptr %.1.in.i.i.i57, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %.1.i.i.i58, null
  br i1 %.not.i.i.i59, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.n, !llvm.loop !26

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i53
  %i.by = icmp eq ptr %.19.i.i.i55, %i.ax
  br i1 %i.by, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bx, ptr %.0811.i.i.i49, ptr %.012.i.i.i48
  %.19.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.bz = load i64, ptr %.19.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !169 ; 2 uses
  %.sroa.speculated.i.i.i.i.i60 = call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bo) ; 2 uses
  %i.ca = icmp eq i64 %.sroa.speculated.i.i.i.i.i60, 0
  br i1 %i.ca, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i67, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61: ; preds = %bb.o
  %.19.i.i.i55.sroa.sel83.v.sroa.sel.v.sroa.sel.v = select i1 %i.bx, ptr %.0811.i.i.i49, ptr %.012.i.i.i48
  %.19.i.i.i55.sroa.sel83.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i55.sroa.sel83.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cb = load ptr, ptr %.19.i.i.i55.sroa.sel83.v.sroa.sel.v.sroa.sel, align 8, !tbaa !168
  %i.cc = call i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.cb, i64 noundef %.sroa.speculated.i.i.i.i.i60) #31 ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i62, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i67, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i67: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61, %bb.o
  %i.cd = sub i64 %i.bo, %i.bz
  %spec.select7.i.i.i.i.i.i68 = call i64 @llvm.smax.i64(i64 %i.cd, i64 -2147483648)
  %.08.i.i.i.i.i.i69 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i68, i64 2147483647)
  %.0.i6.i.i.i.i.i70 = trunc nsw i64 %.08.i.i.i.i.i.i69 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i67
  %.0.i.i.i.i.i64 = phi i32 [ %i.cc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61 ], [ %.0.i6.i.i.i.i.i70, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i67 ]
  %i.ce = icmp slt i32 %.0.i.i.i.i.i64, 0
  br i1 %i.ce, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.critedge

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.m, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !180
  invoke void @_ZN4Luau8Property8readonlyEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Property") align 8 %8, ptr noundef %i.cf)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.cg = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ch = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.cg, ptr noundef nonnull align 8 dereferenceable(176) %8) #31 ; 0 uses
  %i.ci = load i8, ptr %i.ay, align 8, !tbaa !428, !range !76, !noundef !77
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.r, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ay, align 8, !tbaa !428
  %i.ck = load ptr, ptr %i.az, align 8, !tbaa !168 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ba
  br i1 %i.cl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.cm = load i64, ptr %i.ba, align 8, !tbaa !108
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.q
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !429 ; 3 uses
  %i.cp = load ptr, ptr %i.bc, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.co, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !108
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, %i.cp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bb, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.cw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.co, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cx = load ptr, ptr %i.bd, align 8, !tbaa !431
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.s, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !168 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bf
  br i1 %i.dc, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.dd = load i64, ptr %i.bf, align 8, !tbaa !108
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #33
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.critedge

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %8) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn30 = phi { ptr, i32 } [ %i.dg, %bb.u ], [ %i.df, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.y

.critedge:                                        ; preds = %bb.l, %_ZN4Luau8PropertyD2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.078.0123) #37 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.av
  br i1 %.not, label %._crit_edge, label %bb.l

bb.w:                                             ; preds = %._crit_edge
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ab

bb.x:                                             ; preds = %._crit_edge
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %.pn30, %bb.v ]
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ac

bb.z:                                             ; preds = %bb.b, %bb.a
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.dk, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit unwind label %bb.aa

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit: ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dj) #31
  br label %bb.ac

bb.ab:                                            ; preds = %bb.d, %bb.k, %bb.w, %bb.h, %bb.f, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  ret void

bb.ac:                                            ; preds = %bb.y, %bb.aa
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.aa ], [ %.pn30.pn.pn, %bb.y ]
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !441
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !420
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !419
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !442
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !417
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !420  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !444
  %i.k = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %.noexc.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !27

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !421
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !446  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !28

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.g, align 8, !tbaa !421
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !417
  store i64 %i.q, ptr %i.h, align 8, !tbaa !417
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr %i.k, ptr %i.e, align 8, !tbaa !421
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.a, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !428
  %i.w = load i8, ptr %i.u, align 8, !tbaa !428, !range !76, !noundef !77
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4Luau8PropertyaSEOS0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !169  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !169
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !108
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.b, align 8, !tbaa !168
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169
  store i64 %i.t, ptr %i.r, align 8, !tbaa !169
  %i.u = load i64, ptr %i.h, align 8, !tbaa !108
  store i64 %i.u, ptr %i.e, align 8, !tbaa !108
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !108
  store ptr %i.g, ptr %i.b, align 8, !tbaa !168
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !169
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !169
  %i.z = load i64, ptr %i.h, align 8, !tbaa !108
  store i64 %i.z, ptr %i.e, align 8, !tbaa !108
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !168
  store i64 %i.v, ptr %i.h, align 8, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.aa = phi ptr [ %i.d, %bb.f ], [ %i.h, %bb.g ], [ %i.g, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !tbaa !169
  store i8 0, ptr %i.aa, align 1, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !429 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !430 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !431
  %i.al = load <2 x ptr>, ptr %i.af, align 8, !tbaa !450
  store <2 x ptr> %i.al, ptr %i.ae, align 8, !tbaa !450
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !431
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !431
  %.not4.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !108
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.au = ptrtoint ptr %i.ak to i64
  %i.av = ptrtoint ptr %i.ag to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aw) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !431
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !168  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !108
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !449
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !344
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !428, !range !76, !noundef !77
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.ak, align 8, !tbaa !428
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !108
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !428, !range !76, !noundef !77
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.at, align 8, !tbaa !428
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !168 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !108
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7: ; preds = %bb.f, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !420
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_13MetatableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !300
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %.lr.ph, label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit

tailrecurse:                                      ; preds = %_ZN4Luau3getINS_13MetatableTypeEEEPKT_PKNS_4TypeE.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.d = load i32, ptr %4, align 8, !tbaa !300
  %i.e = icmp eq i32 %i.d, 7
  br i1 %i.e, label %.lr.ph, label %_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_9TableTypeEPKNS_13PrimitiveTypeENS_7NotNullINS_5ScopeEEE.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr2730 = phi ptr [ %i.c, %tailrecurse ], [ %3, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.tr2730, align 8, !tbaa !439
  %i.g = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.f) ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.g, align 8, !tbaa !269
  %i.i = icmp eq i32 %i.h, 9
  br i1 %i.i, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %bb.e

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266, !alias.scope !725
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !alias.scope !725
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.k, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit.i unwind label %bb.d

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit.i: ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !alias.scope !725
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
end_hunk_5
begin_hunk_6_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_12FunctionTypeES5_NS_7NotNullINS_5ScopeEEE:bb.a
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lx) #31
  br label %.loopexit.split-lp

bb.dc:                                            ; preds = %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit163
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.body174:                                         ; preds = %bb.cy
  %i.oe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TypeErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %23) #31
  %i.of = load i32, ptr %24, align 8, !tbaa !185
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !62
  invoke void %i.oi(ptr noundef nonnull %i.mc)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191 unwind label %bb.dd

bb.dd:                                            ; preds = %.body174
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191: ; preds = %.body174
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.de

bb.de:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191, %bb.dc
  %.pn116.pn = phi { ptr, i32 } [ %i.oe, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter191 ], [ %i.od, %bb.dc ]
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %22) #31
  br label %.loopexit.split-lp

bb.df:                                            ; preds = %bb.ct, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter189, %bb.ca, %bb.by
  %i.ol = load ptr, ptr %i.g, align 8, !tbaa !346 ; 2 uses
  %i.om = load ptr, ptr %i.i, align 8, !tbaa !346 ; 2 uses
  %i.on = icmp eq ptr %i.ol, %i.om
  br i1 %i.on, label %.loopexit235, label %.preheader

.preheader:                                       ; preds = %bb.df
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %26, i64 8
  br label %bb.dg

bb.dg:                                            ; preds = %.preheader, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit
  %.sroa.0202.0257 = phi ptr [ %i.ol, %.preheader ], [ %i.qs, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit ] ; 2 uses
  %i.ot = load ptr, ptr %.sroa.0202.0257, align 8, !tbaa !180
  %i.ou = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ot)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.dh:                                            ; preds = %bb.dg
  %.not.i.i192 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i192, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !269
  %i.ow = icmp eq i32 %i.ov, 3
  br i1 %i.ow, label %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit

_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193: ; preds = %bb.di
  %i.ox = load i64, ptr %i.op, align 8, !tbaa !236
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193
  %i.oz = load ptr, ptr %i.oq, align 8, !tbaa !180 ; 2 uses
  %i.pa = icmp eq ptr %i.ou, %i.oz
  br i1 %i.pa, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pb = load i64, ptr %i.or, align 8, !tbaa !237
  %i.pc = add i64 %i.pb, -1                       ; 2 uses
  %i.pd = ptrtoint ptr %i.ou to i64
  %i.pe = mul i64 %i.pd, -4658895280553007687     ; 2 uses
  %i.pf = lshr i64 %i.pe, 31
  %i.pg = xor i64 %i.pf, %i.pe
  %i.ph = load ptr, ptr %i.oo, align 8, !tbaa !238
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %.pn.i.i194 = phi i64 [ %i.pg, %bb.dk ], [ %i.pn, %bb.dn ]
  %.01828.i.i195 = phi i64 [ 0, %bb.dk ], [ %i.pm, %bb.dn ]
  %.01929.i.i196 = and i64 %.pn.i.i194, %i.pc     ; 2 uses
  %i.pi = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.01929.i.i196 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !180 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ou
  br i1 %i.pk, label %.loopexit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pl = icmp eq ptr %i.pj, %i.oz
  br i1 %i.pl, label %.loopexit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pm = add i64 %.01828.i.i195, 1               ; 3 uses
  %i.pn = add i64 %i.pm, %.01929.i.i196
  %.not.i.i197 = icmp ugt i64 %i.pm, %i.pc
  br i1 %.not.i.i197, label %.loopexit, label %bb.dl, !llvm.loop !15

.loopexit:                                        ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj, %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193
  %.4.i.i198 = phi ptr [ null, %bb.dj ], [ null, %_ZN4Luau3getINS_11GenericTypeEEEPKT_PKNS_4TypeE.exit193 ], [ null, %bb.dn ], [ null, %bb.dm ], [ %i.pi, %bb.dl ] ; 2 uses
  %.not.i199 = icmp eq ptr %.4.i.i198, null
  %i.po = getelementptr inbounds nuw i8, ptr %.4.i.i198, i64 8
  %i.pp = select i1 %.not.i199, ptr null, ptr %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 3 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !240
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 -144
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !168
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !169
  store i64 %i.pw, ptr %26, align 8
  store ptr %i.pu, ptr %i.os, align 8
  invoke void @_ZN4Luau9Subtyping18checkGenericBoundsERKNS_20SubtypingEnvironment13GenericBoundsERS1_NS_7NotNullINS_5ScopeEEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %25, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(144) %i.ps, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr %5, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %26)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %.loopexit
  %i.px = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult7andAlsoES0_NS_26SubtypingSuppressionPolicyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 %25, i32 noundef 0)
          to label %bb.dp unwind label %bb.du     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %25) #31
  %i.py = load ptr, ptr %i.pq, align 8, !tbaa !458 ; 6 uses
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -144 ; 2 uses
  store ptr %i.pz, ptr %i.pq, align 8, !tbaa !458
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 -72
  %i.qb = getelementptr inbounds i8, ptr %i.py, i64 -32
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qd = getelementptr inbounds i8, ptr %i.py, i64 -16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !344
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qc to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef %i.qh) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.dq, %bb.dp
  %i.qi = load ptr, ptr %i.qa, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i.i201 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i.i201, label %_ZN4Luau7TypeIdsD2Ev.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qi) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i.i

_ZN4Luau7TypeIdsD2Ev.exit.i.i:                    ; preds = %bb.dr, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i
  %i.qj = getelementptr inbounds i8, ptr %i.py, i64 -104
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i.i
  %i.ql = getelementptr inbounds i8, ptr %i.py, i64 -88
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !344
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qp) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i: ; preds = %bb.ds, %_ZN4Luau7TypeIdsD2Ev.exit.i.i
  %i.qq = load ptr, ptr %i.pz, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qq) #31
  br label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dg, %.loopexit, %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit151, %bb.bz
  %lpad.loopexit.split-lp458 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.du:                                            ; preds = %bb.do
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %25) #31
  br label %.loopexit.split-lp

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit: ; preds = %bb.dh, %bb.di, %bb.dt, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0202.0257, i64 8 ; 2 uses
  %.not234 = icmp eq ptr %i.qs, %i.om
  br i1 %.not234, label %.loopexit235, label %bb.dg

.loopexit235:                                     ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE8pop_backEv.exit, %bb.df
  %i.qt = load ptr, ptr %i.bn, align 8, !tbaa !111
  %i.qu = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %.loopexit235
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !115, !range !76, !noundef !77
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.dw, label %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit

bb.dw:                                            ; preds = %bb.dv
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !85
  %i.rc = load ptr, ptr %i.qz, align 8, !tbaa !89
  %i.rd = getelementptr inbounds nuw [96 x i8], ptr %i.rc, i64 %i.rb ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 40
  %.sroa.02.0.copyload.i = load i64, ptr %i.re, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  %.sroa.43.0.copyload.i = load i8, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.rf = trunc nuw i8 %.sroa.43.0.copyload.i to i1
  %.0.i.i = select i1 %i.rf, i64 %.sroa.02.0.copyload.i, i64 0
  store i64 %.0.i.i, ptr %i.ra, align 8
  br label %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit

_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit: ; preds = %bb.dw, %bb.dv
  store i8 0, ptr %i.b, align 2, !tbaa !150
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit235, %_ZN4Luau24MappedGenericEnvironment8popFrameEv.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.du, %bb.de, %bb.db, %bb.cs, %bb.cp, %bb.co, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit150, %bb.bg, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137, %bb.u
  %.pn124 = phi { ptr, i32 } [ %i.qr, %bb.du ], [ %.pn92.pn, %bb.u ], [ %.pn116.pn, %bb.de ], [ %i.oc, %bb.db ], [ %.pn112.pn, %bb.cs ], [ %i.lb, %bb.cp ], [ %.pn108.pn, %bb.co ], [ %.pn102.pn.pn.pn.pn, %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit150 ], [ %.pn98.pn, %bb.bg ], [ %lpad.phi241, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit137 ], [ %lpad.loopexit.split-lp458, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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

end_hunk_6
begin_hunk_7_@_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_22NormalizedFunctionTypeES5_NS_7NotNullINS_5ScopeEEE:bb.a
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.f = load i8, ptr %4, align 8, !tbaa !475, !range !76, !noundef !77
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %0, align 8, !tbaa !266
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau18SubtypingReasoningC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.i, ptr noundef nonnull align 8 dereferenceable(53) @_ZN4Luau15kEmptyReasoningE)
          to label %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit10 unwind label %bb.f

_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit10: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentERKNS_7TypeIdsES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr %5)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit10, %_ZN4Luau12DenseHashSetINS_18SubtypingReasoningENS_22SubtypingReasoningHashESt8equal_toIS1_EEC2IS1_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS1_m.exit
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c
  %.sink = phi ptr [ %i.h, %bb.f ], [ %i.b, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.e, %bb.c ]
  tail call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink) #31
  resume { ptr, i32 } %.pn
}

declare ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

declare ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4Luau9isSubtypeERKNS_20NormalizedStringTypeES2_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4Luau20NormalizedStringType7isNeverEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4Luau22NormalizedFunctionType7isNeverEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_16VariadicTypePackES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::SubtypingResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::SubtypingResult", align 8 ; 8 uses
  %7 = alloca %"class.Luau::Variant.53", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = load ptr, ptr %3, align 8, !tbaa !433
  %i.b = load ptr, ptr %4, align 8, !tbaa !433
  call void @_ZN4Luau9Subtyping15isCovariantWithERNS_20SubtypingEnvironmentEPKNS_4TypeES5_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef %i.a, ptr noundef %i.b, ptr %5)
  store i32 2, ptr %7, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 7, ptr %i.c, align 8, !tbaa !176
  %i.d = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN4Luau15SubtypingResult17withBothComponentENS_7VariantIJNS_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEE(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 %7)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Luau15SubtypingResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %7, align 8, !tbaa !61
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  invoke void %i.h(ptr noundef nonnull %i.c)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit: ; preds = %bb.c
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i32, ptr %7, align 8, !tbaa !61
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  invoke void %i.o(ptr noundef nonnull %i.c)
          to label %_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit6 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEED2Ev.exit6: ; preds = %bb.e
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping17maybeUpdateBoundsEPKNS_4TypeES3_RNS_7TypeIdsERKS4_S7_(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %3) ; 2 uses
  %i.c = tail call ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %3) ; 3 uses
  %.not3941 = icmp eq ptr %i.b, %i.c
  br i1 %.not3941, label %.thread, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.b, %.thread58
  %.043.ph = phi i1 [ true, %.thread58 ], [ false, %bb.b ]
  %.sroa.030.042.ph = phi ptr [ %i.f, %.thread58 ], [ %i.b, %bb.b ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.c
  %.sroa.030.042 = phi ptr [ %i.e, %bb.c ], [ %.sroa.030.042.ph, %.lr.ph.outer ] ; 3 uses
  %i.d = load ptr, ptr %.sroa.030.042, align 8, !tbaa !180 ; 2 uses
  %.not = icmp eq ptr %i.d, %0
  br i1 %.not, label %bb.c, label %.thread58

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.e, %i.c
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.thread58:                                        ; preds = %.lr.ph
  tail call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not3960 = icmp eq ptr %i.f, %i.c
  br i1 %.not3960, label %.thread35, label %.lr.ph.outer

._crit_edge:                                      ; preds = %bb.c
  br i1 %.043.ph, label %.thread35, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %._crit_edge
  %i.g = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.h = tail call ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %4) ; 2 uses
  %i.i = tail call ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %4) ; 2 uses
  %.not4044 = icmp eq ptr %i.h, %i.i
  br i1 %.not4044, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.d, %bb.f
  %.346 = phi i1 [ %.4, %bb.f ], [ false, %bb.d ]
  %.sroa.026.045 = phi ptr [ %i.k, %bb.f ], [ %i.h, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.026.045, align 8, !tbaa !180 ; 2 uses
  %.not24 = icmp eq ptr %i.j, %0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48
  tail call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.j)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph48
  %.4 = phi i1 [ true, %bb.e ], [ %.346, %.lr.ph48 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.026.045, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.k, %i.i
  br i1 %.not40, label %.loopexit, label %.lr.ph48

.loopexit:                                        ; preds = %bb.f, %bb.d, %.thread
  %.5 = phi i1 [ false, %.thread ], [ false, %bb.d ], [ %.4, %bb.f ]
  %.not25 = icmp eq ptr %0, %1
  %or.cond = or i1 %.not25, %.5
  br i1 %or.cond, label %.thread35, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %1)
  br label %.thread35

.thread35:                                        ; preds = %.thread58, %._crit_edge, %bb.g, %.loopexit
  ret void
}

declare void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !375, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !375
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !349  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i

_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i:                ; preds = %bb.d, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !344
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i: ; preds = %bb.e, %_ZN4Luau7TypeIdsD2Ev.exit.i.i.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !349    ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i.i.i.i, label %_ZNSt17_Optional_payloadIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt17_Optional_payloadIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau20SubtypingEnvironment13GenericBoundsELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau9Subtyping33handleTypeFunctionReductionResultEPKNS_24TypeFunctionInstanceTypeENS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.568") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %2, ptr %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::TypeFunctionContext", align 8 ; 16 uses
  %5 = alloca %"struct.Luau::TypeFunctionInstanceType", align 8 ; 8 uses
  %6 = alloca %"struct.Luau::FunctionGraphReductionResult", align 8 ; 12 uses
  %7 = alloca %"class.std::vector.29", align 8    ; 13 uses
  %8 = alloca %"struct.Luau::Location", align 4   ; 5 uses
  %9 = alloca %"struct.Luau::UninhabitedTypeFunction", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.05.0.copyload, ptr %4, align 8, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.04.0.copyload, ptr %i.e, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !771
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load <2 x ptr>, ptr %i.b, align 8, !tbaa !62
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.d, ptr %i.j, align 8, !tbaa !773
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %1, ptr %i.k, align 8, !tbaa !775
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i8 0, ptr %i.m, align 8, !tbaa !776
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  invoke void @_ZN4Luau24TypeFunctionInstanceTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(228) %5, ptr noundef nonnull align 8 dereferenceable(228) %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_24TypeFunctionInstanceTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.05.0.copyload, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %bb.m       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.p) #31
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !449
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !344
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN4Luau19reduceTypeFunctionsEPKNS_4TypeENS_8LocationENS_7NotNullINS_19TypeFunctionContextEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::FunctionGraphReductionResult") align 8 %6, ptr noundef %i.o, i64 0, i64 0, ptr nonnull %4, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !415
  %.not = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ah = load i64, ptr %i.ag, align 8
  %.not13 = icmp eq i64 %i.ah, 0
  %or.cond = select i1 %.not, i1 %.not13, i1 false
  br i1 %or.cond, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr %i.o, ptr %9, align 8, !tbaa !778
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr null, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit unwind label %bb.o

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit: ; preds = %bb.h
  %.pre52 = load ptr, ptr %7, align 8, !tbaa !186 ; 3 uses
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.aj = load ptr, ptr %1, align 8, !tbaa !277
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !180
  store ptr %i.al, ptr %0, align 8, !tbaa !780
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = ptrtoint ptr %.pre to i64
  %i.ao = ptrtoint ptr %.pre52 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.pre, %.pre52
  br i1 %.not.i.i.i.i.i, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit
  %i.aq = sdiv exact i64 %i.ap, 184
  %i.ar = icmp ugt i64 %i.aq, 50127021939428129
  br i1 %i.ar, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i, !prof !65

.noexc.i.i.i:                                     ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc20 unwind label %bb.v

.noexc20:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #35
          to label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge unwind label %bb.v

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre53 = load ptr, ptr %7, align 8, !tbaa !151
  %.pre54 = load ptr, ptr %i.ai, align 8, !tbaa !151
  br label %.noexc21

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit
  %i.at = phi ptr [ %.pre, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit ], [ %.pre54, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge ]
  %i.au = phi ptr [ %.pre52, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit ], [ %.pre53, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge ]
  %i.av = phi ptr [ null, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEERS1_DpOT_.exit ], [ %i.as, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE8allocateEmPKv.exit.i.i.i.i.i..noexc21_crit_edge ] ; 6 uses
  store ptr %i.av, ptr %i.am, align 8, !tbaa !186
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !181
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
end_hunk_7
begin_hunk_8_@_ZN4Luau9Subtyping33handleTypeFunctionReductionResultEPKNS_24TypeFunctionInstanceTypeENS_7NotNullINS_5ScopeEEE:bb.a

_ZN4Luau19TypeFunctionContextD2Ev.exit:           ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

.body:                                            ; preds = %bb.v, %bb.k, %bb.j, %bb.o
  %.pn15 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.ba, %bb.j ], [ %i.ba, %bb.k ], [ %i.ci, %bb.v ]
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN4Luau28FunctionGraphReductionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %6) #31
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.n
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %.body ], [ %i.bd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.m, %bb.l
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.aa ], [ %i.bc, %bb.m ], [ %i.bb, %bb.l ]
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i42, label %_ZN4Luau19TypeFunctionContextD2Ev.exit43, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !344
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #33
  br label %_ZN4Luau19TypeFunctionContextD2Ev.exit43

_ZN4Luau19TypeFunctionContextD2Ev.exit43:         ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPKN4Luau4TypeESt6vectorINS0_9TypeErrorESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !185
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  invoke void %i.i(ptr noundef nonnull %i.j)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.q = load i64, ptr %i.o, align 8, !tbaa !108
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i:  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !186
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !182
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_24TypeFunctionInstanceTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %3 = alloca %"class.Luau::Variant.601", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 20, ptr %3, align 8, !tbaa !269
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !479
  store i64 %i.b, ptr %i.a, align 8, !tbaa !479
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !346
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !346
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !448
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !111
  %i.n = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.o = insertelement <4 x ptr> %i.n, ptr %i.l, i64 1
  %i.p = shufflevector <2 x ptr> %i.m, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x ptr> %i.o, <4 x ptr> %i.p, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.q, ptr %i.f, align 8, !tbaa !782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN4Luau23UserDefinedFunctionDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(152) %i.u)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC2ISR_EEOT_PNSt9enable_ifIXgecl9getTypeIdISU_EELi0EEvE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !449
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i8.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i8.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !344
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #33
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i, %bb.d, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 ], [ %i.v, %bb.d ], [ %i.v, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC2ISR_EEOT_PNSt9enable_ifIXgecl9getTypeIdISU_EELi0EEvE4typeE.exit: ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !500
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !500
  %i.ak = load i32, ptr %3, align 8, !tbaa !269   ; 2 uses
  store i32 %i.ak, ptr %2, align 8, !tbaa !269
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void %i.an(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a) #31, !inline_history !781
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.ap, align 8, !tbaa !502
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !428
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.ar, align 8, !tbaa !783
  %i.as = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC2ISR_EEOT_PNSt9enable_ifIXgecl9getTypeIdISU_EELi0EEvE4typeE.exit
  %i.at = load i8, ptr %i.aq, align 8, !tbaa !428, !range !76, !noundef !77
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i8 0, ptr %i.aq, align 8, !tbaa !428
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !108
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.bb = load i32, ptr %2, align 8, !tbaa !269
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62
  invoke void %i.be(ptr noundef nonnull %i.ao)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #32
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bh = load i32, ptr %3, align 8, !tbaa !269
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  invoke void %i.bk(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.as

bb.i:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEC2ISR_EEOT_PNSt9enable_ifIXgecl9getTypeIdISU_EELi0EEvE4typeE.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #31
  %i.bo = load i32, ptr %3, align 8, !tbaa !269
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  invoke void %i.br(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau24TypeFunctionInstanceTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(228) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !479
  store i64 %i.a, ptr %0, align 8, !tbaa !479
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !343  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !343
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !359
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !344
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !346  ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !346
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.d, label %bb.e, !prof !437

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !180
  store ptr %i.w, ptr %i.l, align 8, !tbaa !180
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !359
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !447 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !448 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i10, label %.noexc12, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i11, label %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i11:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i11
  unreachable

_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35
          to label %.noexc12 unwind label %bb.q

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIPKN4Luau11TypePackVarEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !448
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !447
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !449
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !111 ; 3 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 8
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !437

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.am, i64 %i.aq, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc12
  %i.as = icmp eq i64 %i.aq, 8
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !91
  store ptr %i.at, ptr %i.ai, align 8, !tbaa !91
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 %i.aq
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !447
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !503 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !62
  store <2 x ptr> %i.bb, ptr %i.ax, align 8, !tbaa !62
  %.not.i.i.i.i13 = icmp eq ptr %i.ba, null
end_hunk_8
begin_hunk_9_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISO_EEvPv:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !108
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit

_ZN4Luau17DeprecatedApiUsedD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISP_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !429    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !108
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !431
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit

_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISQ_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !431
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit

_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISR_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau14IllegalRequireD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !108
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZN4Luau14IllegalRequireD2Ev.exit

_ZN4Luau14IllegalRequireD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISS_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIST_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit

_ZN4Luau25DuplicateGenericParameterD2Ev.exit:     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISU_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau19CannotAssignToNeverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZN4Luau19CannotAssignToNeverD2Ev.exit

_ZN4Luau19CannotAssignToNeverD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISV_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

_ZN4Luau26CannotInferBinaryOperationD2Ev.exit:    ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISW_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau17MissingPropertiesD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !431
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZN4Luau17MissingPropertiesD2Ev.exit

_ZN4Luau17MissingPropertiesD2Ev.exit:             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISX_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit

_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISY_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISZ_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau20MissingUnionPropertyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZN4Luau20MissingUnionPropertyD2Ev.exit

_ZN4Luau20MissingUnionPropertyD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS10_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS11_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS12_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau16TypePackMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZN4Luau16TypePackMismatchD2Ev.exit

_ZN4Luau16TypePackMismatchD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS13_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS14_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS15_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS16_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS17_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS18_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit

_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_9
begin_hunk_10_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1E_EEvPv:bb.a
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !108
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !539
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !540
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit

_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1F_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit

_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit:  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1G_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !571
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #32
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !168  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !108
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit

_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit:      ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1H_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau18ReservedIdentifierD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau18ReservedIdentifierD2Ev.exit

_ZN4Luau18ReservedIdentifierD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1I_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1J_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1K_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1L_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1M_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1N_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1O_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit

_ZN4Luau21GenericBoundsMismatchD2Ev.exit:         ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1P_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1Q_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1R_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.d = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !108
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1S_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !429    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !108
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !431
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.d = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !108
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnDtorIS1_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnDtorIS2_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnDtorIS3_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau12RuntimeErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau12RuntimeErrorD2Ev.exit

_ZN4Luau12RuntimeErrorD2Ev.exit:                  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnDtorIS4_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau15FailedToCompileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !108
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZN4Luau15FailedToCompileD2Ev.exit

_ZN4Luau15FailedToCompileD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnDtorIS5_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau19TypeFunctionMissingD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau19TypeFunctionMissingD2Ev.exit

_ZN4Luau19TypeFunctionMissingD2Ev.exit:           ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau21GenericBoundsMismatchD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit2

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit2:    ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnMoveIS1_EEvPvS1V_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 20, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !166
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !169  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4Luau12TypeMismatchC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !168
  %i.k = load i64, ptr %i.e, align 8, !tbaa !108
  store i64 %i.k, ptr %i.c, align 8, !tbaa !108
  br label %_ZN4Luau12TypeMismatchC2EOS0_.exit

_ZN4Luau12TypeMismatchC2EOS0_.exit:               ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !169
  store ptr %i.e, ptr %i.b, align 8, !tbaa !168
  store i64 0, ptr %i.l, align 8, !tbaa !169
  store i8 0, ptr %i.e, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.q, align 8, !tbaa !369
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !62
  store ptr null, ptr %i.r, align 8, !tbaa !369
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !62
  store ptr null, ptr %i.p, align 8, !tbaa !849
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnMoveIS2_EEvPvS1V_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !166
  %i.b = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4Luau13UnknownSymbolC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !168
  %i.i = load i64, ptr %i.c, align 8, !tbaa !108
end_hunk_10
begin_hunk_11_@_ZN4Luau8PropertyC2ERKS0_:bb.a
  store i8 %i.c, ptr %0, align 8, !tbaa !457
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !166
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.i, ptr %i.b, align 8, !tbaa !85
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !168
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.l, ptr %i.f, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !108
  store i8 %i.n, ptr %i.m, align 1, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !169
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !430  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !429  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #35
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !429
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !430
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !431
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !450
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !450
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ai, ptr %i.aj, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc10
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !429 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !431
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #33
  br label %.body

bb.g:                                             ; preds = %.noexc10
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !430
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !428
  %i.au = load i8, ptr %i.as, align 8, !tbaa !428, !range !76, !noundef !77
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !166
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !168 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !85
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !168
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc11, %bb.h
  %i.be = phi ptr [ %i.bc, %.noexc11 ], [ %i.ax, %bb.h ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !108
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !108
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !169
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !168
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.at, align 8, !tbaa !428
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #31
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.e, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %i.bm, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.e ]
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !168 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.f
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !108
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !429  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !108
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !108
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #33
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !108
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !76
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !168    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !169  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !108
  store i8 %i.p, ptr %i.g, align 1, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !169  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !169
  %i.s = load ptr, ptr %0, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !108
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !168
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !169
  store i64 %i.w, ptr %i.u, align 8, !tbaa !169
  %i.x = load i64, ptr %i.k, align 8, !tbaa !108
  store i64 %i.x, ptr %i.h, align 8, !tbaa !108
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !108
  store ptr %i.j, ptr %0, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !169
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !169
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !108
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !108
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !168
  store i64 %i.y, ptr %i.k, align 8, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !169
  store i8 0, ptr %i.ad, align 1, !tbaa !108
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !166
  %i.ag = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !169 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !168
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !108
  store i64 %i.an, ptr %i.af, align 8, !tbaa !108
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !169
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !169
  store ptr %i.ah, ptr %1, align 8, !tbaa !168
  store i64 0, ptr %i.ao, align 8, !tbaa !169
  store i8 0, ptr %i.ah, align 8, !tbaa !108
  store i8 1, ptr %i.a, align 8, !tbaa !428
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.ar = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !108
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7TypeIdsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !600
  store i64 %i.d, ptr %i.b, align 8, !tbaa !600
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376
  store ptr %i.g, ptr %i.e, align 8, !tbaa !376
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !601  ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.i, 4
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36
  store ptr %i.k, ptr %0, align 8, !tbaa !349
  %i.l = load i64, ptr %i.h, align 8, !tbaa !601
  %.not13.i.i = icmp eq i64 %i.l, 0
  br i1 %.not13.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !349
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.012.i.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !349
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.012.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = add nuw i64 %.012.i.i, 1                 ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !601
  %i.r = load i64, ptr %i.h, align 8, !tbaa !601
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit, !llvm.loop !39

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !359  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !343  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #35
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit
  %i.ad = phi ptr [ null, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS7_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !343
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !359
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !344
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !346 ; 3 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !346
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp sgt i64 %i.al, 8
  br i1 %i.am, label %bb.d, label %bb.e, !prof !437

bb.d:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.ah, i64 %i.al, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc5
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !180
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !180
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 %i.al
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !359
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !379
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !379
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau4TypeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %0, align 8, !tbaa !349   ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.au, null
  br i1 %.not.i.i6, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #31
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !602    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !603  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %.04.i.i.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !602
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.k) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !108
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !503  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
end_hunk_11
begin_hunk_12_@_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv:bb.a
bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, %bb.d
  %i.ax = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.z
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.d, !llvm.loop !1003

._crit_edge27.thread:                             ; preds = %bb.f
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !1004
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !85
  br label %bb.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !505    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #34
  unreachable

_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 64051194700380387)
  %i.l = select i1 %i.j, i64 64051194700380387, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 144
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %.0911.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.r = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !349, !alias.scope !1013
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !349, !alias.scope !1012
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !85, !alias.scope !1013
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !85, !alias.scope !1012
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !376, !alias.scope !1013
  store ptr %i.x, ptr %i.v, align 8, !tbaa !376, !alias.scope !1012
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1013
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !346, !alias.scope !1013
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !346, !alias.scope !1012
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !344, !alias.scope !1013
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !344, !alias.scope !1012
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !1013
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !379, !alias.scope !1013
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !379, !alias.scope !1012
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !349, !alias.scope !1013
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !349, !alias.scope !1012
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !85, !alias.scope !1013
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !85, !alias.scope !1012
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !376, !alias.scope !1013
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !376, !alias.scope !1012
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i8 0, i64 24, i1 false), !alias.scope !1013
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !346, !alias.scope !1013
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !346, !alias.scope !1012
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !344, !alias.scope !1013
  store ptr %i.av, ptr %i.at, align 8, !tbaa !344, !alias.scope !1012
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !alias.scope !1013
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !379, !alias.scope !1013
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !379, !alias.scope !1012
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1008

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 144 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i26
  %.012.i.i.i27 = phi ptr [ %i.cl, %.lr.ph.i.i.i26 ], [ %i.bb, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 13 uses
  %.0911.i.i.i28 = phi ptr [ %i.ck, %.lr.ph.i.i.i26 ], [ %1, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.bc = load ptr, ptr %.0911.i.i.i28, align 8, !tbaa !349, !alias.scope !1015
  store ptr %i.bc, ptr %.012.i.i.i27, align 8, !tbaa !349, !alias.scope !1014
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !tbaa !85, !alias.scope !1015
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !85, !alias.scope !1014
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !376, !alias.scope !1015
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !376, !alias.scope !1014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i28, i8 0, i64 24, i1 false), !alias.scope !1015
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !346, !alias.scope !1015
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !346, !alias.scope !1014
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !344, !alias.scope !1015
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !344, !alias.scope !1014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !alias.scope !1015
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !379, !alias.scope !1015
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !379, !alias.scope !1014
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 72 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !349, !alias.scope !1015
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !349, !alias.scope !1014
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 80
  %i.bx = load <2 x i64>, ptr %i.bw, align 8, !tbaa !85, !alias.scope !1015
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !85, !alias.scope !1014
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !376, !alias.scope !1015
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !376, !alias.scope !1014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bt, i8 0, i64 24, i1 false), !alias.scope !1015
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 112 ; 2 uses
  %i.cd = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !346, !alias.scope !1015
  store <2 x ptr> %i.cd, ptr %i.cb, align 8, !tbaa !346, !alias.scope !1014
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !344, !alias.scope !1015
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !344, !alias.scope !1014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false), !alias.scope !1015
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 136
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 136
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !379, !alias.scope !1015
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !379, !alias.scope !1014
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 144 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 144 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ck, %i.b
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26, !llvm.loop !1008

_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31: ; preds = %.lr.ph.i.i.i26, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i30 = phi ptr [ %i.bb, %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cl, %.lr.ph.i.i.i26 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !459
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cp) #33
  br label %_ZNSt12_Vector_baseIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau20SubtypingEnvironment13GenericBoundsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !505
  store ptr %.0.lcssa.i.i.i30, ptr %i.a, align 8, !tbaa !458
  %i.cq = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !459
  ret void
}

declare noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load i32, ptr %0, align 8, !tbaa !269
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.m(ptr noundef nonnull %i.n)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau23UserDefinedFunctionDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !62
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !62
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !85
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !166
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !168  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !169  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.q, ptr %i.b, align 8, !tbaa !85
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.s, ptr %i.l, align 8, !tbaa !168
  %i.t = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.t, ptr %i.n, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.n, %bb.a ] ; 2 uses
  switch i64 %i.q, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !108
  store i8 %i.v, ptr %i.u, align 1, !tbaa !108
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !169
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !605
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !85
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !166
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !168 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.al, ptr %i.a, align 8, !tbaa !85
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i.i9, label %._crit_edge.i.i.i.i8

.noexc.i.i.i9:                                    ; preds = %bb.d
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.i   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i9
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !168
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %.noexc10, %bb.d
  %i.ap = phi ptr [ %i.an, %.noexc10 ], [ %i.ai, %bb.d ] ; 2 uses
  switch i64 %i.al, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i8
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !108
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !108
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i8
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !169
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !168
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i9
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.av, %bb.h ]
  call void @_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS6_EEvPvSU_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !180
  store i64 %i.a, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS8_EEvPvSU_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveIS9_EEvPvSU_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnMoveISA_EEvPvSU_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !166
end_hunk_12
begin_hunk_13_@_ZN4Luau10ExternTypeC2EOS0_:bb.a
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !450
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !431
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.ao, align 8, !tbaa !369
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !62
  store ptr null, ptr %i.ap, align 8, !tbaa !369
  store <2 x ptr> %i.aq, ptr %i.am, align 8, !tbaa !62
  store ptr null, ptr %i.an, align 8, !tbaa !1032
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !166
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !168 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !168
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !108
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !169
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !169
  store ptr %i.av, ptr %i.as, align 8, !tbaa !168
  store i64 0, ptr %i.bc, align 8, !tbaa !169
  store i8 0, ptr %i.av, align 8, !tbaa !108
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !622
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !622, !range !76, !noundef !77
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.f, label %_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !624
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !624
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %storemerge.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !180
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !180
  store i8 1, ptr %i.bi, align 8, !tbaa !622
  br label %_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit

_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS6_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS8_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS9_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISA_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau11GenericTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !108
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZN4Luau11GenericTypeD2Ev.exit

_ZN4Luau11GenericTypeD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISB_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISC_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !411
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISD_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISE_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !449
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau20PendingExpansionTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZN4Luau20PendingExpansionTypeD2Ev.exit

_ZN4Luau20PendingExpansionTypeD2Ev.exit:          ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISF_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISG_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISH_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !428, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4Luau13MetatableTypeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !428
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau13MetatableTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !108
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZN4Luau13MetatableTypeD2Ev.exit

_ZN4Luau13MetatableTypeD2Ev.exit:                 ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISI_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISJ_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISK_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !343    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #33
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISL_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !343    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau16IntersectionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #33
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISM_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !620  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau8LazyTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 3)
          to label %_ZN4Luau8LazyTypeD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZN4Luau8LazyTypeD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISN_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISO_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISP_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISQ_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISR_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !449
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !343  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !344
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit

_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit:      ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS1_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS2_EEvPv(ptr noundef %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !108
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !371
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !372
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1033
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1033
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !369  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !372
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1034
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1034
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !429 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !108
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !431
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1036 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1037 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.bk, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 48 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !1039, !range !76, !noundef !77
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.o, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i7
  store i8 0, ptr %i.bc, align 8, !tbaa !1039
  %i.bf = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !108
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #33
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 56 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bk, %i.bb
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !1035

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.ay, align 8, !tbaa !1036
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bl = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !618
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #33
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !448 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !449
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !343 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !344
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !617, !range !76, !noundef !77
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.s, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  store i8 0, ptr %i.cf, align 8, !tbaa !617
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !428, !range !76, !noundef !77
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.t, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ci, align 8, !tbaa !428
  %i.cl = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !108
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
  br label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit: ; preds = %bb.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !622, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.a, align 8, !tbaa !622
  %i.e = load i32, ptr %i.d, align 8, !tbaa !624
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !108
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !369  ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !372
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1040
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !1040
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !429 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !168 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !108
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !429
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !431
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !420
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.ba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !108
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS1_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS2_EEvPv(ptr noundef %0) #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJNS0_8LocationENS0_23UninhabitedTypeFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !186    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JNS0_8LocationENS0_23UninhabitedTypeFunctionEEEEvPT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #34
  unreachable

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JNS0_8LocationENS0_23UninhabitedTypeFunctionEEEEvPT_DpOT0_.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !166
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
end_hunk_13
