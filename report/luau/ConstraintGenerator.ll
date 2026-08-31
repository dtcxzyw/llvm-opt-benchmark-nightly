Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintGenerator?download=true
inline.NumInlined: 10936
inline.NumDeleted: 4256
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4Luau12DenseHashMapIPNS_8AstLocalESt10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS4_EENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_:bb.a
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !906

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !903
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSB_.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSB_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !904    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !905   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !904 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !904 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSB_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSB_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSB_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSB_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !907
  %i.al = load i64, ptr %i.a, align 8, !tbaa !902
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !902
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSB_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSB_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !904 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_St10unique_ptrINS_15ClassDeclRecordESt14default_deleteIS6_EEES4_IKS3_S9_ENS0_16ItemInterfaceMapIS3_S9_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSB_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4Luau15ClassDeclRecordESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !828    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN4Luau15ClassDeclRecordEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #31
  br label %_ZNKSt14default_deleteIN4Luau15ClassDeclRecordEEclEPS1_.exit

_ZNKSt14default_deleteIN4Luau15ClassDeclRecordEEclEPS1_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #33
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4Luau15ClassDeclRecordEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashMapIPKNS_19AstStatTypeFunctionESt10shared_ptrINS_5ScopeEENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !915  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !916  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !833    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !833  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !917
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !833  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !918

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !916
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !833    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !917   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !833 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !833 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !919
  %i.al = load i64, ptr %i.a, align 8, !tbaa !915
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !915
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !833 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_19AstStatTypeFunctionESt4pairIS4_St10shared_ptrINS_5ScopeEEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN4Luau19ConstraintGenerator24prototypeTypeDefinitionsERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockEENK3$_2clERNS_23UserDefinedFunctionDataES3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TypeFunEm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 %4, i64 noundef %5) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional.1044", align 8 ; 12 uses
  %7 = alloca %"struct.Luau::Binding", align 8    ; 15 uses
  %8 = alloca %"struct.Luau::Symbol", align 8     ; 6 uses
  %9 = alloca %"class.std::unique_ptr.1057", align 8 ; 5 uses
  %10 = alloca %"struct.Luau::Binding", align 8   ; 16 uses
  %.sroa.0 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.5 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %11 = alloca %"struct.Luau::Symbol", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !838    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !680
  %i.d = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.c) ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !370
  %i.f = icmp eq i32 %i.e, 20
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.f, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !921
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !833
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !922
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !854
  %i.q = mul i64 %i.p, 3
  %i.r = lshr i64 %i.q, 2
  %.not.i.i37 = icmp ult i64 %i.n, %i.r
  br i1 %.not.i.i37, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not2.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i, label %bb.f, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
  br label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.t = tail call noundef ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.l, ptr %i.u, align 8, !tbaa !923
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %5, ptr %i.v, align 8, !tbaa !868
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !924, !nonnull !243, !align !550
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_19AstStatTypeFunctionEPKNS_24TypeFunctionInstanceTypeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.g, ptr %i.y, align 8, !tbaa !836
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !915
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !833 ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !833 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !916
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !917
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i = phi i64 [ %i.an, %bb.h ], [ %i.au, %bb.k ]
  %.01828.i.i = phi i64 [ 0, %bb.h ], [ %i.at, %bb.k ]
  %.01929.i.i = and i64 %.pn.i.i, %i.aj           ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.01929.i.i ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !833 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ae
  br i1 %i.ar, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq ptr %i.aq, %i.af
  br i1 %i.as, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.au = add i64 %i.at, %.01929.i.i
  %.not.i.i38 = icmp ugt i64 %i.at, %i.aj
  br i1 %.not.i.i38, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.i, !llvm.loop !918

bb.l:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !217
  call void @_ZNK4Luau5Scope22linearSearchForBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1044") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1040) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !925, !range !242, !noundef !243
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ba = load ptr, ptr %6, align 8, !tbaa !476
  store ptr %i.ba, ptr %7, align 8, !tbaa !476
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !921 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !259
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !478
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 10 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 6 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !56
  store i8 0, ptr %i.bg, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !339
  %i.bk = load ptr, ptr %2, align 8, !tbaa !217
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr null, ptr %8, align 8, !tbaa !789
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !428
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !428
  %i.bp = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt8__detail9_Map_baseIN4Luau6SymbolESt4pairIKS2_NS1_7BindingEESaIS6_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit unwind label %bb.u ; 8 uses

_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 25, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 4 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !53 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, %i.bg                ; 2 uses
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit
  br i1 %i.bv, label %bb.n, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit
  br i1 %i.bv, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bw = load i64, ptr %i.bh, align 8, !tbaa !56 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %.not21.i.i = icmp eq ptr %7, %i.bp
  br i1 %.not21.i.i, label %_ZN4Luau7BindingaSEOS0_.exit, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  switch i64 %i.bw, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !38
  store i8 %i.by, ptr %i.br, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bu, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.bz = load i64, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !56
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !38
  %.pre.i.i = load ptr, ptr %i.bf, align 8, !tbaa !53
  br label %_ZN4Luau7BindingaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !53
  %i.ce = load i64, ptr %i.bh, align 8, !tbaa !56
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !56
  %i.cf = load i64, ptr %i.bg, align 8, !tbaa !38
  store i64 %i.cf, ptr %i.bs, align 8, !tbaa !38
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cg = load i64, ptr %i.bs, align 8, !tbaa !38
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !53
  %i.ch = load i64, ptr %i.bh, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@"_ZZN4Luau19ConstraintGenerator24prototypeTypeDefinitionsERKSt10shared_ptrINS_5ScopeEEPNS_12AstStatBlockEENK3$_2clERNS_23UserDefinedFunctionDataES3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TypeFunEm":bb.a
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !422
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  %i.em = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.en = lshr i64 %i.em, 4
  %i.eo = lshr i64 %i.em, 9
  %i.ep = xor i64 %i.en, %i.eo
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !425
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.pn.i.i46 = phi i64 [ %i.ep, %bb.ab ], [ %i.ew, %bb.ae ]
  %.01832.i.i = phi i64 [ 0, %bb.ab ], [ %i.ev, %bb.ae ]
  %.01933.i.i = and i64 %.pn.i.i46, %i.el         ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.01933.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !426 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dz
  br i1 %i.et, label %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = icmp eq ptr %i.es, %i.eh
  br i1 %i.eu, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.ew = add i64 %i.ev, %.01933.i.i
  %.not.i.i47 = icmp ugt i64 %i.ev, %i.el
  br i1 %.not.i.i47, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44, label %bb.ac, !llvm.loop !932

_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit: ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !32 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 776 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.ez = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !933 ; 4 uses
  invoke void @_ZN4Luau7TypeFunC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(76) %i.ez, ptr noundef nonnull align 8 dereferenceable(76) %4)
          to label %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.af, !noalias !933

common.resume:                                    ; preds = %bb.u, %bb.at, %bb.as, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.fa, %bb.af ], [ %i.cx, %bb.u ], [ %i.iw, %bb.at ], [ %i.iv, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 80) #33, !noalias !933
  br label %common.resume

_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNK4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit
  store ptr %i.ez, ptr %9, align 8, !tbaa !870, !alias.scope !933
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 784 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !936 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 792 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !939
  %.not.i.i49 = icmp eq ptr %i.fc, %i.fe
  %i.ff = ptrtoint ptr %i.ez to i64               ; 2 uses
  br i1 %.not.i.i49, label %bb.ag, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !870
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !936
  br label %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %_ZSt11make_uniqueIN4Luau7TypeFunEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !940 ; 10 uses
  %i.fi = ptrtoint ptr %i.fc to i64               ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #34
          to label %.noexc75 unwind label %bb.as

.noexc75:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i74 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i74)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #35
          to label %.noexc76 unwind label %bb.as  ; 10 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i64 %i.ff, ptr %i.ft, align 8, !tbaa !870
  %.not10.i.i.i.i = icmp eq ptr %i.fh, %i.fc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc76
  %i.fu = add i64 %i.fi, -8
  %i.fv = sub i64 %i.fu, %i.fj                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fv, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader153, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.fy = add i64 %i.fi, -8
  %i.fz = sub i64 %i.fy, %i.fj
  %i.ga = and i64 %i.fz, -8
  %i.gb = add i64 %i.ga, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fs, i64 %i.gb
  %scevgep149 = getelementptr i8, ptr %i.fh, i64 %i.gb
  %bound0 = icmp ult ptr %i.fs, %scevgep149
  %bound1 = icmp ult ptr %i.fh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader153, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fx, 4611686018427387900     ; 3 uses
  %i.gc = shl i64 %n.vec, 3                       ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fs, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fh, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.gf ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.fh, i64 %i.gf ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.gg = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep150, align 8, !tbaa !870, !alias.scope !946, !noalias !941
  %wide.load151 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !870, !alias.scope !946, !noalias !941
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !870, !alias.scope !949, !noalias !946
  store <2 x i64> %wide.load151, ptr %i.gh, align 8, !tbaa !870, !alias.scope !949, !noalias !946
  %i.gi = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep150, align 8, !tbaa !870, !alias.scope !946, !noalias !941
  store <2 x ptr> splat (ptr null), ptr %i.gi, align 8, !tbaa !870, !alias.scope !946, !noalias !941
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader153

.lr.ph.i.i.i.i.preheader153:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fs, %vector.memcheck ], [ %i.fs, %.lr.ph.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader153, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader153 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.gk = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !870, !alias.scope !944, !noalias !941
  store i64 %i.gk, ptr %.012.i.i.i.i, align 8, !tbaa !870, !alias.scope !941, !noalias !944
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !870, !alias.scope !944, !noalias !941
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gl, %i.fc
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !952

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc76
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fs, %.noexc76 ], [ %i.gd, %middle.block ], [ %i.gm, %.lr.ph.i.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.go = load ptr, ptr %i.fd, align 8, !tbaa !939
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.gq) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.ai
  store ptr %i.fs, ptr %i.ey, align 8, !tbaa !940
  store ptr %i.gn, ptr %i.fb, align 8, !tbaa !936
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.gr, ptr %i.fd, align 8, !tbaa !939
  br label %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.gs = load ptr, ptr %i.du, align 8, !tbaa !32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 784
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !953
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !870
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !863
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !860
  %i.hb = mul i64 %i.ha, 3
  %i.hc = lshr i64 %i.hb, 2
  %.not.i.i53 = icmp ult i64 %i.gy, %i.hc
  br i1 %.not.i.i53, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit
  %i.hd = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.not2.i.i54 = icmp eq ptr %i.hd, null
  br i1 %.not2.i.i54, label %bb.ak, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds)
  br label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a: ; preds = %_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev.exit, %bb.aj, %bb.ak
  %12 = tail call noundef ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSD_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.gw, ptr %13, align 8, !tbaa !871
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %5, ptr %14, align 8, !tbaa !865
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %16 = load ptr, ptr %15, align 8, !tbaa !321
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %18 = load ptr, ptr %17, align 8, !tbaa !954
  store ptr %18, ptr %10, align 8, !tbaa !476
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %.sroa.0, align 8
  store i64 0, ptr %.sroa.5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %22 = load i8, ptr %21, align 8, !tbaa !679, !range !242, !noundef !243
  %23 = trunc nuw i8 %22 to i1                    ; 2 uses
  %spec.select.i = select i1 %23, ptr %20, ptr %.sroa.0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 64
  %spec.select.i.sroa.sel = select i1 %23, ptr %.sroa.gep, ptr %.sroa.5
  %.sroa.3.0.i = load i64, ptr %spec.select.i.sroa.sel, align 8
  %.sroa.0.0.i = load i64, ptr %spec.select.i, align 8
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %.sroa.3.0.i, ptr %24, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.he, align 8, !tbaa !478
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 10 uses
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !50
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 6 uses
  store i64 0, ptr %i.hh, align 8, !tbaa !56
  store i8 0, ptr %i.hg, align 8, !tbaa !38
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  store i8 0, ptr %i.hj, align 8, !tbaa !339
  %i.hk = load ptr, ptr %2, align 8, !tbaa !217
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr null, ptr %11, align 8, !tbaa !789
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.em, ptr %i.hm, align 8, !tbaa !428
  %i.hn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt8__detail9_Map_baseIN4Luau6SymbolESt4pairIKS2_NS1_7BindingEESaIS6_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58 unwind label %bb.at ; 8 uses

_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hn, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 25, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !53 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 48 ; 4 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  %i.hs = load ptr, ptr %i.hf, align 8, !tbaa !53 ; 6 uses
  %i.ht = icmp eq ptr %i.hs, %i.hg                ; 2 uses
  br i1 %i.hr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58
  br i1 %i.ht, label %bb.al, label %.thread.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59: ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit58
  br i1 %i.ht, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i60

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.hu = load i64, ptr %i.hh, align 8, !tbaa !56 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  %.not21.i.i62 = icmp eq ptr %10, %i.hn
  br i1 %.not21.i.i62, label %_ZN4Luau7BindingaSEOS0_.exit67, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  switch i64 %i.hu, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !38
  store i8 %i.hw, ptr %i.hp, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hs, i64 %i.hu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63: ; preds = %bb.ao, %bb.an, %bb.am
  %i.hx = load i64, ptr %i.hh, align 8, !tbaa !56 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !56
  %i.hz = load ptr, ptr %i.ho, align 8, !tbaa !53
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx
  store i8 0, ptr %i.ia, align 1, !tbaa !38
  %.pre.i.i64 = load ptr, ptr %i.hf, align 8, !tbaa !53
  br label %_ZN4Luau7BindingaSEOS0_.exit67

.thread.i.i66:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !53
  %i.ic = load i64, ptr %i.hh, align 8, !tbaa !56
  store i64 %i.ic, ptr %i.ib, align 8, !tbaa !56
  %i.id = load i64, ptr %i.hg, align 8, !tbaa !38
  store i64 %i.id, ptr %i.hq, align 8, !tbaa !38
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59
  %i.ie = load i64, ptr %i.hq, align 8, !tbaa !38
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !53
  %i.if = load i64, ptr %i.hh, align 8, !tbaa !56
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !56
  %i.ih = load i64, ptr %i.hg, align 8, !tbaa !38
  store i64 %i.ih, ptr %i.hq, align 8, !tbaa !38
  %.not.i.i61 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i61, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i60
  store ptr %i.hp, ptr %i.hf, align 8, !tbaa !53
  store i64 %i.ie, ptr %i.hg, align 8, !tbaa !38
  br label %_ZN4Luau7BindingaSEOS0_.exit67

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i60, %.thread.i.i66
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !53
  br label %_ZN4Luau7BindingaSEOS0_.exit67

_ZN4Luau7BindingaSEOS0_.exit67:                   ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63, %bb.ap, %bb.aq
  %i.ii = phi ptr [ %.pre.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i63 ], [ %i.hp, %bb.ap ], [ %i.hg, %bb.aq ], [ %i.hs, %bb.al ]
  store i64 0, ptr %i.hh, align 8, !tbaa !56
  store i8 0, ptr %i.ii, align 1, !tbaa !38
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ij, ptr noundef nonnull align 8 dereferenceable(40) %i.hi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.ik = load i8, ptr %i.hj, align 8, !tbaa !339, !range !242, !noundef !243
  %i.il = trunc nuw i8 %i.ik to i1
  store i8 0, ptr %i.hj, align 8, !tbaa !339
  br i1 %i.il, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68

bb.ar:                                            ; preds = %_ZN4Luau7BindingaSEOS0_.exit67
  %i.im = load ptr, ptr %i.hi, align 8, !tbaa !53 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i71: ; preds = %bb.ar
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !38
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i71, %_ZN4Luau7BindingaSEOS0_.exit67
  %i.ir = load ptr, ptr %i.hf, align 8, !tbaa !53 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.hg
  br i1 %i.is, label %_ZN4Luau7BindingD2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68
  %i.it = load i64, ptr %i.hg, align 8, !tbaa !38
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #33
  br label %_ZN4Luau7BindingD2Ev.exit73

_ZN4Luau7BindingD2Ev.exit73:                      ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44

bb.as:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.ah
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4Luau7TypeFunESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %common.resume

bb.at:                                            ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.a
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @_ZN4Luau7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit44: ; preds = %bb.j, %bb.k, %bb.ae, %bb.ad, %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit, %bb.g, %bb.z, %bb.aa, %bb.x, %_ZN4Luau7BindingD2Ev.exit73, %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit, %bb.y, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7TypeFunC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !702  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !703    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i, !prof !21

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !703
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !702
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !701
  %i.n = load ptr, ptr %1, align 8, !tbaa !725    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !725  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !845

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !702
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !711  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !719  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i5, label %.noexc13, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i12, label %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i, !prof !21

.noexc.i.i12:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #35
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit
  %i.ac = phi ptr [ null, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit ], [ %i.ab, %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !719
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !711
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !718
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !726 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !726 ; 2 uses
  %.not7.i.i.i.i.i6 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not7.i.i.i.i.i6, label %.loopexit, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %.noexc13, %.lr.ph.i.i.i.i.i7
  %.09.i.i.i.i.i8 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i7 ], [ %i.ac, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i9 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i7 ], [ %i.ag, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i9, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i9, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i8, i64 24 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i.i10, label %.loopexit, label %.lr.ph.i.i.i.i.i7, !llvm.loop !846

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i7, %.noexc13
  %.0.lcssa.i.i.i.i.i11 = phi ptr [ %i.ac, %.noexc13 ], [ %i.aj, %.lr.ph.i.i.i.i.i7 ]
  store ptr %.0.lcssa.i.i.i.i.i11, ptr %i.ad, align 8, !tbaa !711
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %i.al, i64 28, i1 false)
  ret void

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %0, align 8, !tbaa !703   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !701
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #33
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.am
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4Luau12_GLOBAL__N_119GlobalNameCollectorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_119GlobalNameCollectorE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #31
  br label %_ZN4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau19ConstraintGenerator20reportCodeTooComplexENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::Location", align 8   ; 3 uses
  %4 = alloca %"struct.Luau::CodeTooComplex", align 1 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.f = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14CodeTooComplexEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !254
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -184
  call void @_ZN4Luau9DcrLogger22captureGenerationErrorERKNS_9TypeErrorE(ptr noundef nonnull align 8 dereferenceable(944) %i.h, ptr noundef nonnull align 8 dereferenceable(184) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.l, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau19ConstraintGenerator5visitERKSt10shared_ptrINS_5ScopeEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Location", align 16  ; 4 uses
  %4 = alloca %"struct.Luau::CodeTooComplex", align 1 ; 3 uses
  %5 = alloca %"struct.Luau::RecursionCounter", align 8 ; 6 uses
  %6 = alloca %"class.std::optional.812", align 8 ; 6 uses
  %7 = alloca %"struct.Luau::InferencePack", align 8 ; 3 uses
  %8 = alloca %"class.std::vector.822", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
end_hunk_1
begin_hunk_2_@_ZN4Luau19ConstraintGenerator16resolveTypePack_ERKSt10shared_ptrINS_5ScopeEEPNS_11AstTypePackEbb:bb.a

bb.am:                                            ; preds = %bb.al
  %i.em = load i32, ptr %i.el, align 8, !tbaa !386
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit, label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit: ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 65 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !1490
  %i.eq = and i8 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.es = load i8, ptr %i.er, align 8, !tbaa !228
  %i.et = or i8 %i.es, %i.eq
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !1490
  br label %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit.thread: ; preds = %bb.al, %bb.am, %_ZN4Luau10getMutableINS_15GenericTypePackEEEPT_PKNS_11TypePackVarE.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 616
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11AstTypePackEPKNS_11TypePackVarENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store ptr %.3, ptr %i.ex, align 8, !tbaa !347
  ret ptr %.3
}

declare noundef i64 @_ZN4Luau4sizeEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4Luau6finiteEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #9

declare { ptr, i8 } @_ZN4Luau5firstEPKNS_11TypePackVarEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_20PendingExpansionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 18 uses
  %3 = alloca %"class.Luau::Variant.563", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 7, ptr %3, align 8, !tbaa !370
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load <2 x ptr>, ptr %i.c, align 8, !tbaa !249
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load <2 x ptr>, ptr %i.g, align 8, !tbaa !359
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.r = load i64, ptr %i.j, align 8, !tbaa !1492 ; 2 uses
  store i64 %i.r, ptr %i.i, align 8, !tbaa !1492
  store i32 7, ptr %2, align 8, !tbaa !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !249
  store ptr %i.e, ptr %i.o, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !359
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.n, ptr %i.s, align 8, !tbaa !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.r, ptr %i.t, align 8, !tbaa !1492
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.u, align 8, !tbaa !407
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.v, align 8, !tbaa !339
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.w, align 8, !tbaa !413
  %i.x = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.v, align 8, !tbaa !339, !range !242, !noundef !243
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.v, align 8, !tbaa !339
  br i1 %i.z, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.ag = load i32, ptr %2, align 8, !tbaa !370
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17
  invoke void %i.aj(ptr noundef nonnull %i.k)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.am = load i32, ptr %3, align 8, !tbaa !370
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  invoke void %i.ap(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.x

bb.f:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #31
  %i.at = load i32, ptr %3, align 8, !tbaa !370
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  invoke void %i.aw(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #32
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.as
}

declare void @_ZN4Luau20PendingExpansionTypeC1ESt8optionalINS_7AstNameEES2_St6vectorIPKNS_4TypeESaIS7_EES4_IPKNS_11TypePackVarESaISC_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i8, ptr, ptr noundef align 8, ptr noundef align 8) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau20PendingExpansionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !358
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !230  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau19ConstraintGenerator16resolveTableTypeERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEPNS_12AstTypeTableEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 zeroext %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::map", align 8          ; 12 uses
  %8 = alloca %"class.std::optional.653", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.0122 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.5 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %12 = alloca %"class.Luau::Variant.669", align 8 ; 7 uses
  %13 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.Luau::TableType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !623
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !622
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !587
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !592
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !625
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !593
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !228   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1494 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1497 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not155 = icmp eq i64 %i.n, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1498 ; 9 uses
  %.not65 = icmp eq ptr %i.s, null
  br i1 %.not65, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.z

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.0156 = phi ptr [ %i.l, %.lr.ph ], [ %i.bq, %bb.y ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.t = load ptr, ptr %.0156, align 8, !tbaa !1500 ; 4 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !50
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.137) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.v, ptr %i.b, align 8, !tbaa !57
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %.loopexit ; 2 uses

.noexc81:                                         ; preds = %.noexc.i
  store ptr %i.x, ptr %9, align 8, !tbaa !53
  %i.y = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.y, ptr %i.p, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc81, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc81 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !38
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !38
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !56
  %i.ac = load ptr, ptr %9, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ae = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.h unwind label %bb.p       ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !38
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.0156, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1502
  switch i32 %i.ak, label %bb.m [
    i32 1, label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
    i32 2, label %bb.i
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  switch i8 %i.j, label %bb.k [
    i8 1, label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
    i8 2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.k:                                             ; preds = %bb.i
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit

_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i = phi i8 [ 4, %bb.m ], [ 3, %bb.l ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %bb.k ], [ 1, %bb.j ], [ 2, %bb.i ]
  store i8 %.0.i, ptr %i.i, align 8, !tbaa !228
  %i.al = getelementptr inbounds nuw i8, ptr %.0156, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1503
  %i.an = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.am, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.q       ; 2 uses

bb.n:                                             ; preds = %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.0156, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !679, !range !242, !noundef !243
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  br i1 %i.as, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.aq, align 4, !tbaa !679
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.n, %bb.o
  %i.at = load i32, ptr %i.aj, align 8, !tbaa !1502 ; 2 uses
  switch i32 %i.at, label %bb.t [
    i32 3, label %bb.r
    i32 1, label %bb.y
    i32 2, label %bb.s
  ]

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.p:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.p
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.p
  %i.ax = load i64, ptr %i.p, align 8, !tbaa !38
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.p, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %.pn74 = phi { ptr, i32 } [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ba

bb.q:                                             ; preds = %_ZN4Luau12_GLOBAL__N_116polarityOfAccessENS_14AstTableAccessENS_8PolarityE.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.r:                                             ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store ptr %i.an, ptr %i.ba, align 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  store i8 1, ptr %.sroa.4141.0..sroa_idx, align 8
  br label %bb.y

bb.s:                                             ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  br label %bb.y

bb.t:                                             ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef %i.at) #31
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %10) #34
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.x:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.x
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !38
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.w
  %.pn76 = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.be, %bb.x ]
  %i.bk = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !38
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ba

bb.y:                                             ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, %bb.s, %bb.r
  %.sink179 = phi i64 [ 160, %bb.s ], [ 160, %bb.r ], [ 144, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit ]
  %.sink = phi i64 [ 168, %bb.s ], [ 168, %bb.r ], [ 152, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink179
  store ptr %i.an, ptr %i.bp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0156, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b

bb.z:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1504 ; 2 uses
  switch i32 %i.bs, label %bb.ap [
    i32 1, label %bb.aa
    i32 2, label %.noexc.i92
    i32 3, label %bb.al
  ]

bb.aa:                                            ; preds = %bb.z
  store i8 %i.j, ptr %i.i, align 8, !tbaa !228
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !1154
  %i.bu = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bt, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1157
  %i.bx = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bw, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bu, ptr %8, align 8, !tbaa !349
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bx, ptr %.sroa.6125.0..sroa_idx, align 8, !tbaa !349
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %.sroa.7128.0..sroa_idx, align 8, !tbaa !348
  store i8 1, ptr %i.h, align 8, !tbaa !593
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.noexc.i92:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0122)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %.sroa.0122, align 8
  store i64 0, ptr %.sroa.5, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %18 = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %19 = load i8, ptr %18, align 4, !tbaa !679, !range !242, !noundef !243
  %20 = trunc nuw i8 %19 to i1                    ; 2 uses
  %spec.select.i = select i1 %20, ptr %17, ptr %.sroa.0122
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %spec.select.i.sroa.sel = select i1 %20, ptr %.sroa.gep, ptr %.sroa.5
  %.sroa.3.0.i = load i64, ptr %spec.select.i.sroa.sel, align 4
  %.sroa.0.0.i = load i64, ptr %spec.select.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 11 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 29, ptr %i.a, align 8, !tbaa !57
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %bb.ai  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i92
  store ptr %i.ca, ptr %13, align 8, !tbaa !53
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ca, ptr noundef nonnull align 1 dereferenceable(29) @.str.111, i64 29, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !56
  %i.cd = load ptr, ptr %13, align 8, !tbaa !53
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store i32 18, ptr %12, align 8, !tbaa !639
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !50
  %i.ch = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bz
  br i1 %i.ci, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ae:                                            ; preds = %.noexc93
  %i.cj = load i64, ptr %i.cc, align 8, !tbaa !56 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.cl, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc93
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !53
  %i.cm = load i64, ptr %i.bz, align 8, !tbaa !38
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !38
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !56
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cn = phi i64 [ %i.cj, %bb.ae ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !56
  store ptr %i.bz, ptr %13, align 8, !tbaa !53
  store i64 0, ptr %i.cc, align 8, !tbaa !56
  store i8 0, ptr %i.bz, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.i, ptr %6, align 8
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.3.0.i, ptr %21, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(136) %12)
          to label %.noexc95 unwind label %bb.aj  ; 0 uses

.noexc95:                                         ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc95
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !254
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -184
  invoke void @_ZN4Luau9DcrLogger22captureGenerationErrorERKNS_9TypeErrorE(ptr noundef nonnull align 8 dereferenceable(944) %i.cv, ptr noundef nonnull align 8 dereferenceable(184) %i.cy)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc95, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cz = load i32, ptr %12, align 8, !tbaa !639
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17
  invoke void %i.dc(ptr noundef nonnull %i.cf)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern98 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern98: ; preds = %bb.ag
  %i.df = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bz
  br i1 %i.dg, label %_ZN4Luau12GenericErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern98
  %i.dh = load i64, ptr %i.bz, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #33
  br label %_ZN4Luau12GenericErrorD2Ev.exit

_ZN4Luau12GenericErrorD2Ev.exit:                  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0122)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.ai:                                            ; preds = %.noexc.i92
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit104

bb.aj:                                            ; preds = %bb.af, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load i32, ptr %12, align 8, !tbaa !639
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !17
  invoke void %i.do(ptr noundef nonnull %i.cf)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter101 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter101: ; preds = %bb.aj
  %i.dr = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bz
  br i1 %i.ds, label %_ZN4Luau12GenericErrorD2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter101
  %i.dt = load i64, ptr %i.bz, align 8, !tbaa !38
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #33
  br label %_ZN4Luau12GenericErrorD2Ev.exit104

_ZN4Luau12GenericErrorD2Ev.exit104:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102, %bb.ai
  %.pn67 = phi { ptr, i32 } [ %i.dj, %bb.ai ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102 ], [ %i.dk, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0122)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ba

bb.al:                                            ; preds = %bb.z
  store i8 3, ptr %i.i, align 8, !tbaa !228
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !1154
  %i.dw = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.dv, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1157
  %i.dz = invoke noundef ptr @_ZN4Luau19ConstraintGenerator12resolveType_ERKSt10shared_ptrINS_5ScopeEEPNS_7AstTypeEbb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.dy, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr %i.dw, ptr %8, align 8, !tbaa !349
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !349
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !348
  store i8 1, ptr %i.h, align 8, !tbaa !593
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ap:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i32 noundef %i.bs) #31
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %14) #34
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.at:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.at
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !38
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.as ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.ee, %bb.at ]
  %i.ek = load ptr, ptr %15, align 8, !tbaa !53   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.en = load i64, ptr %i.el, align 8, !tbaa !38
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.ba

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.an, %bb.ac, %_ZN4Luau12GenericErrorD2Ev.exit, %._crit_edge
  store i8 %i.j, ptr %i.i, align 8, !tbaa !228
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !96
  %i.er = load ptr, ptr %1, align 8, !tbaa !217   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  %.sroa.0.0.copyload = load i64, ptr %i.es, align 8
  invoke void @_ZN4Luau9TableTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelEPNS_5ScopeENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) %16, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %.sroa.0.0.copyload, ptr noundef nonnull %i.er, i32 noundef 0)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.et = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_9TableTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.eq, ptr noundef nonnull align 8 %16)
          to label %bb.av unwind label %bb.ay     ; 2 uses

bb.av:                                            ; preds = %bb.au
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %16) #31
  %i.eu = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.et)
          to label %.noexc112 unwind label %bb.az ; 3 uses

.noexc112:                                        ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 240
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.noexc112
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !622
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.fb)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret ptr %i.et

bb.ax:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %16) #31
  br label %bb.ba

bb.az:                                            ; preds = %.noexc112, %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.ax, %bb.ay, %bb.az, %bb.ad, %_ZN4Luau12GenericErrorD2Ev.exit104, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.fe, %bb.ax ], [ %i.az, %bb.q ], [ %i.by, %bb.ad ], [ %.pn67, %_ZN4Luau12GenericErrorD2Ev.exit104 ], [ %i.ea, %bb.ao ], [ %i.fg, %bb.az ], [ %i.ff, %bb.ay ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %.pn76.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1252", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.1239", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !622  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !627 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !628

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !58, !alias.scope !1505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !53
  %i.k = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.k, ptr %i.c, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !56
  store ptr %i.e, ptr %i.b, align 8, !tbaa !53
  store i64 0, ptr %i.m, align 8, !tbaa !56
  store i8 0, ptr %i.e, align 8, !tbaa !38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.030.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i = phi i32 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i32 %.030.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = icmp ult i32 %.02329.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.030.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %.02329.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.030.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i32 %.02329.i, 10000
  %i.j = add i32 %.030.i, 4                       ; 2 uses
  %i.k = icmp ult i32 %.02329.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i, !llvm.loop !1508

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ] ; 2 uses
  %.lobit = lshr i32 %1, 31                       ; 2 uses
  %i.l = add i32 %.022.i, %.lobit
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8, !tbaa !50
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.o = zext nneg i32 %.lobit to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 4 uses
  %i.r = icmp ugt i32 %i.a, 99
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.s = add i32 %.022.i, -1
end_hunk_2
