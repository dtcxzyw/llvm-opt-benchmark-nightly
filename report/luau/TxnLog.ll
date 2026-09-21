Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TxnLog?download=true
inline.NumInlined: 1296
inline.NumDeleted: 747
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_:bb.a
  %.pre = load i64, ptr %i.c, align 8, !tbaa !110
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !112    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !147
  %i.al = load i64, ptr %i.a, align 8, !tbaa !139
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !139
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !113    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !113    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !99    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !113 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !156
  %i.al = load i64, ptr %i.a, align 8, !tbaa !148
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !148
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog13concatAsUnionES0_NS_7NotNullINS_9TypeArenaEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Type", align 8       ; 8 uses
  %4 = alloca %"struct.Luau::Type", align 8       ; 8 uses
  %5 = alloca %"class.Luau::Variant", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 8 uses
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.04.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.c, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i73, label %bb.b, !llvm.loop !3

_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.b, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not182 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i64, ptr %i.k, align 8
  %7 = icmp eq i64 %6, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load ptr, ptr %i.l, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %i.m, align 8
  %10 = add i64 %9, -1                            ; 2 uses
  %11 = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %bb.c, %._crit_edge
  %i.o = load ptr, ptr %1, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i73
  %.04.i.i74 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %i.u, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.04.i.i74
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.e, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %.04.i.i74, 1                ; 2 uses
  %exitcond.not.i.i78 = icmp eq i64 %i.u, %i.b
  br i1 %exitcond.not.i.i78, label %._crit_edge187, label %bb.d, !llvm.loop !3

_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79: ; preds = %bb.d, %._crit_edge
  %.0.lcssa.i.i75 = phi i64 [ 0, %._crit_edge ], [ %.04.i.i74, %bb.d ] ; 2 uses
  %.not172184 = icmp eq i64 %.0.lcssa.i.i75, %i.b
  br i1 %.not172184, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.v

bb.f:                                             ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.6157.0183 = phi i64 [ %.0.lcssa.i.i, %.lr.ph ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.6157.0183 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !115 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 392 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !125, !range !126, !noundef !127
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !112 ; 5 uses
  %.not.i82 = icmp eq ptr %i.aq, null
  br i1 %.not.i82, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit: ; preds = %bb.h
  %i.at = load i32, ptr %i.am, align 8, !tbaa !129
  %.not174 = icmp eq i32 %i.at, 0
  br i1 %.not174, label %bb.i, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

bb.i:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158 ; 7 uses
  %.not.i84 = icmp eq ptr %i.av, null
  br i1 %.not.i84, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !129
  %12 = icmp ne i32 %i.aw, 2
  %brmerge = select i1 %12, i1 true, i1 %7
  %i.ax = icmp eq ptr %i.av, %8
  %or.cond = select i1 %brmerge, i1 true, i1 %i.ax
  br i1 %or.cond, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = mul i64 %i.ay, -4658895280553007687     ; 2 uses
  %i.ba = lshr i64 %i.az, 31
  %i.bb = xor i64 %i.ba, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.pn.i.i = phi i64 [ %i.bb, %bb.k ], [ %i.bh, %bb.n ]
  %.01828.i.i = phi i64 [ 0, %bb.k ], [ %i.bg, %bb.n ]
  %.01929.i.i = and i64 %.pn.i.i, %10             ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.01929.i.i ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !112 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.av
  br i1 %i.be, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp eq ptr %i.bd, %8
  br i1 %i.bf, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.bh = add i64 %i.bg, %.01929.i.i
  %.not.i.i86 = icmp ugt i64 %i.bg, %10
  br i1 %.not.i.i86, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.l, !llvm.loop !7

bb.o:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 392 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !125, !range !126, !noundef !127
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89

_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89: ; preds = %bb.o
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !129
  %.not175 = icmp eq i32 %i.bn, 0
  br i1 %.not175, label %bb.p, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

bb.p:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !158
  %i.bq = icmp eq ptr %i.bp, %i.aq
  br i1 %i.bq, label %bb.q, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !289 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !289 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = icmp sgt i32 %i.bt, %i.bu
  br i1 %i.bw, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit:          ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !290
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !290
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread:   ; preds = %bb.q, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit
  store i8 1, ptr %i.bk, align 8, !tbaa !125
  br label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168: ; preds = %bb.r, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit
  store i8 1, ptr %i.an, align 8, !tbaa !125
  br label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread: ; preds = %bb.m, %bb.n, %bb.j, %bb.i, %bb.g, %bb.h, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168, %bb.p, %bb.o, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit, %bb.f
  %i.cc = add i64 %.sroa.6157.0183, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.cc) ; 3 uses
  %i.cd = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not248 = icmp eq i64 %.sroa.6157.0183, %i.cd
  br i1 %exitcond.not248, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !112
  br label %.lr.ph249

bb.s:                                             ; preds = %.lr.ph249
  %exitcond.not = icmp eq i64 %i.cg, %i.cd
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph249, !llvm.loop !5

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.s
  %i.cf = phi i64 [ %i.cg, %bb.s ], [ %.sroa.6157.0183, %.lr.ph249.preheader ]
  %i.cg = add i64 %i.cf, 1                        ; 4 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !112
  %i.cj = icmp eq ptr %i.ci, %i.ce
  br i1 %i.cj, label %bb.s, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge250, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge250: ; preds = %.lr.ph249
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.s, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge250, %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread
  %.lcssa.i = phi i64 [ %umax.i, %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread ], [ %i.cg, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge250 ], [ %umax.i, %bb.s ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge187:                                   ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !100 ; 4 uses
  %.not.i.i91 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i91, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %._crit_edge187
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !113
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i92
  %.04.i.i93 = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.ct, %bb.u ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.04.i.i93
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !113
  %i.cs = icmp eq ptr %i.cr, %i.cp
  br i1 %i.cs, label %bb.u, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit

bb.u:                                             ; preds = %bb.t
  %i.ct = add nuw i64 %.04.i.i93, 1               ; 2 uses
  %exitcond.not.i.i97 = icmp eq i64 %i.ct, %i.cm
  br i1 %exitcond.not.i.i97, label %._crit_edge191, label %bb.t, !llvm.loop !4

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.t, %._crit_edge187
  %.0.lcssa.i.i94 = phi i64 [ 0, %._crit_edge187 ], [ %.04.i.i93, %bb.t ] ; 2 uses
  %.not173188 = icmp eq i64 %.0.lcssa.i.i94, %i.cm
  br i1 %.not173188, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.be

bb.v:                                             ; preds = %.lr.ph186, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125
  %.sroa.7.0185 = phi i64 [ %.0.lcssa.i.i75, %.lr.ph186 ], [ %.lcssa.i124, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125 ] ; 4 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !111
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.sroa.7.0185 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 6 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !115
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 392
  %i.db = load i8, ptr %i.da, align 8, !tbaa !125, !range !126, !noundef !127
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load i64, ptr %i.v, align 8, !tbaa !139
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 3 uses
  %i.dg = load ptr, ptr %i.w, align 8, !tbaa !112 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = load i64, ptr %i.x, align 8, !tbaa !110
  %i.dj = add i64 %i.di, -1                       ; 2 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = mul i64 %i.dk, -4658895280553007687     ; 2 uses
  %i.dm = lshr i64 %i.dl, 31
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %0, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.pn.i.i100 = phi i64 [ %i.dn, %bb.y ], [ %i.du, %bb.ab ]
  %.01828.i.i101 = phi i64 [ 0, %bb.y ], [ %i.dt, %bb.ab ]
  %.01929.i.i102 = and i64 %.pn.i.i100, %i.dj     ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.01929.i.i102 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !112 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.df
  br i1 %i.dr, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = icmp eq ptr %i.dq, %i.dg
  br i1 %i.ds, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = add i64 %.01828.i.i101, 1               ; 3 uses
  %i.du = add i64 %i.dt, %.01929.i.i102
  %.not.i.i103 = icmp ugt i64 %i.dt, %i.dj
  br i1 %.not.i.i103, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.z, !llvm.loop !7

bb.ac:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !115 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 392
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !125, !range !126, !noundef !127
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %i.dw)
  %i.ea = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 %3)
          to label %bb.ae unwind label %bb.ao     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i8, ptr %i.y, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ec = trunc nuw i8 %i.eb to i1
  store i8 0, ptr %i.y, align 8, !tbaa !128
  br i1 %i.ec, label %bb.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ed = load ptr, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aa
  br i1 %i.ee, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.ef = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.ae
  %i.eh = load i32, ptr %3, align 8, !tbaa !129
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !105
  invoke void %i.ek(ptr noundef nonnull %i.ab)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.en = load ptr, ptr %i.cy, align 8, !tbaa !115
  call void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.en)
  %i.eo = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 %4)
          to label %bb.ah unwind label %bb.ap     ; 2 uses

bb.ah:                                            ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.ep = load i8, ptr %i.ac, align 8, !tbaa !128, !range !126, !noundef !127
  %i.eq = trunc nuw i8 %i.ep to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !128
  br i1 %i.eq, label %bb.ai, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107

bb.ai:                                            ; preds = %bb.ah
  %i.er = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ae
  br i1 %i.es, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108: ; preds = %bb.ai
  %i.et = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108, %bb.ah
  %i.ev = load i32, ptr %4, align 8, !tbaa !129
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !105
  invoke void %i.ey(ptr noundef nonnull %i.af)
          to label %_ZN4Luau4TypeD2Ev.exit110 unwind label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit110:                        ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107
end_hunk_0
