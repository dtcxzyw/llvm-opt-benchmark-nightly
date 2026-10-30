Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TxnLog?download=true
inline.NumInlined: 1296
inline.NumDeleted: 747
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau4dumpB5cxx11EPNS_15PendingTypePackE:bb.a
  br i1 %i.bs, label %bb.m, label %_ZN4Luau15ToStringOptionsD2Ev.exit, !prof !87

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #23
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

_ZN4Luau15ToStringOptionsD2Ev.exit:               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @_ZN4Luau15ToStringNameMapD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15ToStringOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bt

bb.o:                                             ; preds = %_ZN4Luau15ToStringOptionsD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare void @_ZN4Luau8toStringB5cxx11ERKNS_11TypePackVarERNS_15ToStringOptionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6TxnLogD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.v, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.04.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !104
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void %i.r(ptr noundef nonnull %i.s)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.v = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.v, %i.k
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i, %bb.c
  %i.w = phi ptr [ %.pre.i.i.i, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i.i.i ], [ %i.i, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.w) #23
  br label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EED2Ev.exit, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(40) %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4Luau6TxnLog5emptyEv() local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr @_ZN4LuauL8emptyLogE
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog6concatES0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 4 uses
  %.not.i.i = icmp eq i64 %i.b, 0
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
  br i1 %exitcond.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !3

_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.b, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not44 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100  ; 4 uses
  %.not.i.i16 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i16, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i17
  %.04.i.i18 = phi i64 [ 0, %.lr.ph.i.i17 ], [ %i.t, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.04.i.i18
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.e, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw i64 %.04.i.i18, 1                ; 2 uses
  %exitcond.not.i.i22 = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i.i22, label %._crit_edge49, label %bb.d, !llvm.loop !4

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.d, %._crit_edge
  %.0.lcssa.i.i19 = phi i64 [ 0, %._crit_edge ], [ %.04.i.i18, %bb.d ] ; 2 uses
  %.not4346 = icmp eq i64 %.0.lcssa.i.i19, %i.m
  br i1 %.not4346, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.640.045 = phi i64 [ %.0.lcssa.i.i, %.lr.ph ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.640.045 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !125, !range !126, !noundef !127
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !115
  store ptr null, ptr %i.y, align 8, !tbaa !115
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !115 ; 7 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 376 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  store i8 0, ptr %i.ag, align 8, !tbaa !128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 360 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !129
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i, %bb.g, %bb.f
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !110
  %i.ax = add i64 %.sroa.640.045, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ax) ; 3 uses
  %i.ay = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not71 = icmp eq i64 %.sroa.640.045, %i.ay
  br i1 %exitcond.not71, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !111
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !112
  br label %.lr.ph72

bb.k:                                             ; preds = %.lr.ph72
  %exitcond.not = icmp eq i64 %i.bc, %i.ay
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph72, !llvm.loop !5

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.k
  %i.bb = phi i64 [ %i.bc, %bb.k ], [ %.sroa.640.045, %.lr.ph72.preheader ]
  %i.bc = add i64 %i.bb, 1                        ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !112
  %i.bf = icmp eq ptr %i.be, %i.ba
  br i1 %i.bf, label %bb.k, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge73, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge73: ; preds = %.lr.ph72
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.k, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge73, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %.lcssa.i = phi i64 [ %umax.i, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit ], [ %i.bc, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge73 ], [ %umax.i, %bb.k ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge49:                                    ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !138, !range !126, !noundef !127
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !138, !range !126, !noundef !127
  %i.bk = or i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.bi, align 8, !tbaa !138
  ret void

bb.l:                                             ; preds = %.lr.ph48, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.6.047 = phi i64 [ %.0.lcssa.i.i19, %.lr.ph48 ], [ %.lcssa.i29, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.6.047 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !102
  store ptr null, ptr %i.bn, align 8, !tbaa !102
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !102 ; 4 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !102
  %.not.i.i.i.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i26, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !104
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  invoke void %i.bu(ptr noundef nonnull %i.bv)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i: ; preds = %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i
  %i.by = load i64, ptr %i.l, align 8, !tbaa !100
  %i.bz = add i64 %.sroa.6.047, 1
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bz) ; 3 uses
  %i.ca = add i64 %umax.i28, -1                   ; 2 uses
  %exitcond50.not75 = icmp eq i64 %.sroa.6.047, %i.ca
  br i1 %exitcond50.not75, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !113
  br label %.lr.ph76

bb.o:                                             ; preds = %.lr.ph76
  %exitcond50.not = icmp eq i64 %i.ce, %i.ca
  br i1 %exitcond50.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph76, !llvm.loop !6

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.o
  %i.cd = phi i64 [ %i.ce, %bb.o ], [ %.sroa.6.047, %.lr.ph76.preheader ]
  %i.ce = add i64 %i.cd, 1                        ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !113
  %i.ch = icmp eq ptr %i.cg, %i.cc
  br i1 %i.ch, label %bb.o, label %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge78, !llvm.loop !6

._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge78: ; preds = %.lr.ph76
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !6

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.o, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge78, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit
  %.lcssa.i29 = phi i64 [ %umax.i28, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit ], [ %i.ce, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge78 ], [ %umax.i28, %bb.o ] ; 2 uses
  %.not43 = icmp eq i64 %.lcssa.i29, %i.m
  br i1 %.not43, label %._crit_edge49, label %bb.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !110  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !112    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !110
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSC_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !112    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau6TxnLog13concatAsUnionES0_NS_7NotNullINS_9TypeArenaEEE:bb.a

bb.l:                                             ; preds = %bb.n, %bb.k
  %.pn.i.i = phi i64 [ %i.bi, %bb.k ], [ %i.bo, %bb.n ]
  %.01828.i.i = phi i64 [ 0, %bb.k ], [ %i.bn, %bb.n ]
  %.01929.i.i = and i64 %.pn.i.i, %i.r            ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.01929.i.i ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bb
  br i1 %i.bl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp eq ptr %i.bk, %i.o
  br i1 %i.bm, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.bo = add i64 %i.bn, %.01929.i.i
  %.not.i.i86 = icmp ugt i64 %i.bn, %i.r
  br i1 %.not.i.i86, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %bb.l, !llvm.loop !7

bb.o:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 392 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !125, !range !126, !noundef !127
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread, label %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89

_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89: ; preds = %bb.o
  %i.bu = load i32, ptr %i.bq, align 8, !tbaa !129
  %.not175 = icmp eq i32 %i.bu, 0
  br i1 %.not175, label %bb.p, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

bb.p:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158
  %i.bx = icmp eq ptr %i.bw, %i.aw
  br i1 %i.bx, label %bb.q, label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !289 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !289 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp sgt i32 %i.ca, %i.cb
  br i1 %i.cd, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit:          ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !290
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !290
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, label %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread:   ; preds = %bb.q, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit
  store i8 1, ptr %i.br, align 8, !tbaa !125
  br label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168: ; preds = %bb.r, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit
  store i8 1, ptr %i.at, align 8, !tbaa !125
  br label %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread

_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread: ; preds = %bb.m, %bb.n, %bb.j, %bb.i, %bb.g, %bb.h, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit89, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread, %_ZNK4Luau9TypeLevel8subsumesERKS0_.exit.thread168, %bb.p, %bb.o, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit, %bb.f
  %i.cj = add i64 %.sroa.6157.0183, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.cj) ; 3 uses
  %i.ck = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not249 = icmp eq i64 %.sroa.6157.0183, %i.ck
  br i1 %exitcond.not249, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !112
  br label %.lr.ph250

bb.s:                                             ; preds = %.lr.ph250
  %exitcond.not = icmp eq i64 %i.cn, %i.ck
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph250, !llvm.loop !5

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %bb.s
  %i.cm = phi i64 [ %i.cn, %bb.s ], [ %.sroa.6157.0183, %.lr.ph250.preheader ]
  %i.cn = add i64 %i.cm, 1                        ; 4 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.cq = icmp eq ptr %i.cp, %i.cl
  br i1 %i.cq, label %bb.s, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge251, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge251: ; preds = %.lr.ph250
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.s, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge251, %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread
  %.lcssa.i = phi i64 [ %umax.i, %_ZN4Luau6get_ifINS_8FreeTypeEJNS_9Unifiable5BoundIPKNS_4TypeEEENS2_5ErrorIS6_EES1_NS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.thread ], [ %i.cn, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge251 ], [ %umax.i, %bb.s ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge187:                                   ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit79
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !100 ; 4 uses
  %.not.i.i91 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i91, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %._crit_edge187
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !113
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i92
  %.04.i.i93 = phi i64 [ 0, %.lr.ph.i.i92 ], [ %i.da, %bb.u ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.04.i.i93
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !113
  %i.cz = icmp eq ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.u, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit

bb.u:                                             ; preds = %bb.t
  %i.da = add nuw i64 %.04.i.i93, 1               ; 2 uses
  %exitcond.not.i.i97 = icmp eq i64 %i.da, %i.ct
  br i1 %exitcond.not.i.i97, label %._crit_edge191, label %bb.t, !llvm.loop !4

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.t, %._crit_edge187
  %.0.lcssa.i.i94 = phi i64 [ 0, %._crit_edge187 ], [ %.04.i.i93, %bb.t ] ; 2 uses
  %.not173188 = icmp eq i64 %.0.lcssa.i.i94, %i.ct
  br i1 %.not173188, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.be

bb.v:                                             ; preds = %.lr.ph186, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125
  %.sroa.7.0185 = phi i64 [ %.0.lcssa.i.i75, %.lr.ph186 ], [ %.lcssa.i124, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125 ] ; 4 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !111
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.sroa.7.0185 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 6 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !115
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 392
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !125, !range !126, !noundef !127
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load i64, ptr %i.ab, align 8, !tbaa !139
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !112 ; 3 uses
  %i.dn = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = load i64, ptr %i.ad, align 8, !tbaa !110
  %i.dq = add i64 %i.dp, -1                       ; 2 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = mul i64 %i.dr, -4658895280553007687     ; 2 uses
  %i.dt = lshr i64 %i.ds, 31
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = load ptr, ptr %0, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.pn.i.i100 = phi i64 [ %i.du, %bb.y ], [ %i.eb, %bb.ab ]
  %.01828.i.i101 = phi i64 [ 0, %bb.y ], [ %i.ea, %bb.ab ]
  %.01929.i.i102 = and i64 %.pn.i.i100, %i.dq     ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %.01929.i.i102 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !112 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dm
  br i1 %i.dy, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp eq ptr %i.dx, %i.dn
  br i1 %i.dz, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = add i64 %.01828.i.i101, 1               ; 3 uses
  %i.eb = add i64 %i.ea, %.01929.i.i102
  %.not.i.i103 = icmp ugt i64 %i.ea, %i.dq
  br i1 %.not.i.i103, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.z, !llvm.loop !7

bb.ac:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !115 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 392
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !125, !range !126, !noundef !127
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %i.ed)
  %i.eh = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 %3)
          to label %bb.ae unwind label %bb.ao     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load i8, ptr %i.ae, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.ae, align 8, !tbaa !128
  %i.ek = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ag
  br i1 %i.el, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.em = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.ae
  %i.eo = load i32, ptr %3, align 8, !tbaa !129
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !105
  invoke void %i.er(ptr noundef nonnull %i.ah)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.eu = load ptr, ptr %i.df, align 8, !tbaa !115
  call void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.eu)
  %i.ev = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 %4)
          to label %bb.ah unwind label %bb.ap     ; 2 uses

bb.ah:                                            ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.ew = load i8, ptr %i.ai, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ai, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107

bb.ai:                                            ; preds = %bb.ah
  store i8 0, ptr %i.ai, align 8, !tbaa !128
  %i.ey = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ak
  br i1 %i.ez, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108: ; preds = %bb.ai
  %i.fa = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i108, %bb.ah
  %i.fc = load i32, ptr %4, align 8, !tbaa !129
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !105
  invoke void %i.ff(ptr noundef nonnull %i.al)
          to label %_ZN4Luau4TypeD2Ev.exit110 unwind label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit110:                        ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i107
  %i.fi = call noundef ptr @_ZN4Luau6followEPKNS_4TypeEPKvPFS2_S4_S2_E(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull @"_ZZNK4Luau6TxnLog6followEPKNS_4TypeEEN3$_08__invokeEPKvS3_")
  %i.fj = call noundef ptr @_ZN4Luau6followEPKNS_4TypeEPKvPFS2_S4_S2_E(ptr noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull @"_ZZNK4Luau6TxnLog6followEPKNS_4TypeEEN3$_08__invokeEPKvS3_")
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %_ZN4Luau4TypeD2Ev.exit110
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 2 uses
  %i.fm = load ptr, ptr %i.df, align 8, !tbaa !115
  store ptr null, ptr %i.df, align 8, !tbaa !115
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !115 ; 7 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 376 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !128, !range !126, !noundef !127
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.am, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 344
  store i8 0, ptr %i.fo, align 8, !tbaa !128
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !37 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 360 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !40
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %i.fx = load i32, ptr %i.fn, align 8, !tbaa !129
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !105
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  invoke void %i.ga(ptr noundef nonnull %i.gb)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit

bb.ao:                                            ; preds = %bb.ad
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %3) #23
  br label %bb.az

bb.ap:                                            ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #23
  br label %bb.az

bb.aq:                                            ; preds = %_ZN4Luau4TypeD2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.gg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %bb.ar unwind label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i ; 4 uses

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i: ; preds = %bb.aq
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.aq
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  store ptr %i.eh, ptr %i.gg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.ev, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 13, ptr %5, align 8, !tbaa !129
  store ptr %i.gg, ptr %i.am, align 8, !tbaa !162
  store ptr %i.gi, ptr %i.an, align 8, !tbaa !163
  store ptr %i.gi, ptr %i.ao, align 8, !tbaa !164
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !115 ; 4 uses
  %.not.i111 = icmp eq ptr %i.gk, %5
  br i1 %.not.i111, label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEaSEOSS_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !129
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !105
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  invoke void %i.go(ptr noundef nonnull %i.gp)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gq = load i32, ptr %5, align 8, !tbaa !129   ; 2 uses
  store i32 %i.gq, ptr %i.gk, align 8, !tbaa !129
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !105
  call void %i.gt(ptr noundef nonnull %i.gp, ptr noundef nonnull %i.am) #23, !inline_history !288
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEaSEOSS_.exit

bb.av:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEaSEOSS_.exit: ; preds = %bb.as, %bb.au
  %i.gw = load i32, ptr %5, align 8, !tbaa !129
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !105
  invoke void %i.gz(ptr noundef nonnull %i.am)
          to label %_ZN4Luau9UnionTypeD2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEaSEOSS_.exit
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #25
  unreachable

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEEaSEOSS_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit

bb.ax:                                            ; preds = %bb.ar
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load i32, ptr %5, align 8, !tbaa !129
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !105
  invoke void %i.hg(ptr noundef nonnull %i.am)
          to label %.body unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #25
  unreachable

.body:                                            ; preds = %bb.ax, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %i.gh, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit.i ], [ %i.hc, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ap, %.body, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.ao ], [ %.pn, %.body ], [ %i.gf, %bb.ap ]
  resume { ptr, i32 } %.pn.pn.pn

_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread: ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.ac
  %i.hj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 2 uses
  %i.hk = load ptr, ptr %i.df, align 8, !tbaa !115
  store ptr null, ptr %i.df, align 8, !tbaa !115
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !115 ; 7 uses
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !115
  %.not.i.i.i.i116 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i116, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 376 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117

bb.bb:                                            ; preds = %bb.ba
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 344
  store i8 0, ptr %i.hm, align 8, !tbaa !128
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !37 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 360 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i119: ; preds = %bb.bb
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !40
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i119, %bb.ba
  %i.hv = load i32, ptr %i.hl, align 8, !tbaa !129
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !105
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  invoke void %i.hy(ptr noundef nonnull %i.hz)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i118 unwind label %bb.bc

bb.bc:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i118: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i118, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit106.thread, %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i, %bb.ak, %_ZN4Luau9UnionTypeD2Ev.exit, %bb.v
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !110
  %i.id = add i64 %.sroa.7.0185, 1
  %umax.i123 = call i64 @llvm.umax.i64(i64 %i.ic, i64 %i.id) ; 3 uses
  %i.ie = add i64 %umax.i123, -1                  ; 2 uses
  %exitcond196.not253 = icmp eq i64 %.sroa.7.0185, %i.ie
  br i1 %exitcond196.not253, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %i.if = load ptr, ptr %1, align 8, !tbaa !111
  %i.ig = load ptr, ptr %i.ap, align 8, !tbaa !112
  br label %.lr.ph254

bb.bd:                                            ; preds = %.lr.ph254
  %exitcond196.not = icmp eq i64 %i.ii, %i.ie
  br i1 %exitcond196.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125, label %.lr.ph254, !llvm.loop !5

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %bb.bd
  %i.ih = phi i64 [ %i.ii, %bb.bd ], [ %.sroa.7.0185, %.lr.ph254.preheader ]
  %i.ii = add i64 %i.ih, 1                        ; 4 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !112
  %i.il = icmp eq ptr %i.ik, %i.ig
  br i1 %i.il, label %bb.bd, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125_crit_edge256, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125_crit_edge256: ; preds = %.lr.ph254
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125: ; preds = %bb.bd, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125_crit_edge256, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %.lcssa.i124 = phi i64 [ %umax.i123, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit ], [ %i.ii, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit125_crit_edge256 ], [ %umax.i123, %bb.bd ] ; 2 uses
  %.not172 = icmp eq i64 %.lcssa.i124, %i.b
  br i1 %.not172, label %._crit_edge187, label %bb.v

._crit_edge191:                                   ; preds = %bb.u, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.in = load i8, ptr %i.im, align 8, !tbaa !138, !range !126, !noundef !127
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !138, !range !126, !noundef !127
  %i.iq = or i8 %i.ip, %i.in
  store i8 %i.iq, ptr %i.io, align 8, !tbaa !138
  ret void

bb.be:                                            ; preds = %.lr.ph190, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.6.0189 = phi i64 [ %.0.lcssa.i.i94, %.lr.ph190 ], [ %.lcssa.i130, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.ir = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %.sroa.6.0189 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.is) ; 2 uses
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !102
  store ptr null, ptr %i.it, align 8, !tbaa !102
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !102 ; 4 uses
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !102
  %.not.i.i.i.i127 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i127, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !104
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !105
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  invoke void %i.ja(ptr noundef nonnull %i.jb)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i: ; preds = %bb.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.be, %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i
  %i.je = load i64, ptr %i.cs, align 8, !tbaa !100
  %i.jf = add i64 %.sroa.6.0189, 1
  %umax.i129 = call i64 @llvm.umax.i64(i64 %i.je, i64 %i.jf) ; 3 uses
  %i.jg = add i64 %umax.i129, -1                  ; 2 uses
  %exitcond197.not258 = icmp eq i64 %.sroa.6.0189, %i.jg
  br i1 %exitcond197.not258, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit
  %i.jh = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ji = load ptr, ptr %i.dc, align 8, !tbaa !113
  br label %.lr.ph259

bb.bh:                                            ; preds = %.lr.ph259
  %exitcond197.not = icmp eq i64 %i.jk, %i.jg
  br i1 %exitcond197.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph259, !llvm.loop !6

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.bh
  %i.jj = phi i64 [ %i.jk, %bb.bh ], [ %.sroa.6.0189, %.lr.ph259.preheader ]
  %i.jk = add i64 %i.jj, 1                        ; 4 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !113
  %i.jn = icmp eq ptr %i.jm, %i.ji
  br i1 %i.jn, label %bb.bh, label %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge261, !llvm.loop !6

._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge261: ; preds = %.lr.ph259
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !6

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.bh, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge261, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit
  %.lcssa.i130 = phi i64 [ %umax.i129, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EEaSEOS4_.exit ], [ %i.jk, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge261 ], [ %umax.i129, %bb.bh ] ; 2 uses
  %.not173 = icmp eq i64 %.lcssa.i130, %i.ct
  br i1 %.not173, label %._crit_edge191, label %bb.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load i32, ptr %1, align 8, !tbaa !129    ; 2 uses
  store i32 %i.a, ptr %2, align 8, !tbaa !129
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void %i.d(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #23, !inline_history !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load i8, ptr %i.h, align 8, !tbaa !165, !range !126, !noundef !127
  store i8 %i.i, ptr %i.g, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 4 uses
  store i8 0, ptr %i.m, align 8, !tbaa !128
  %i.n = load i8, ptr %i.l, align 8, !tbaa !128, !range !126, !noundef !127
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_ZN4Luau4TypeC2EOS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !34
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.q, ptr %i.j, align 8, !tbaa !37
  %i.x = load i64, ptr %i.r, align 8, !tbaa !40
  store i64 %i.x, ptr %i.p, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.y = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !38
  store ptr %i.r, ptr %i.k, align 8, !tbaa !37
  store i64 0, ptr %i.z, align 8, !tbaa !38
  store i8 0, ptr %i.r, align 8, !tbaa !40
  store i8 1, ptr %i.m, align 8, !tbaa !128
  br label %_ZN4Luau4TypeC2EOS0_.exit

_ZN4Luau4TypeC2EOS0_.exit:                        ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !166
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !166
  %i.ae = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.af = load i8, ptr %i.m, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.m, align 8, !tbaa !128
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.am = load i32, ptr %2, align 8, !tbaa !129
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !105
  invoke void %i.ap(ptr noundef nonnull %i.e)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.ae

bb.g:                                             ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.as
}

declare void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind writable sret(%"struct.Luau::Type") align 8, ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.a, align 8, !tbaa !128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load i32, ptr %0, align 8, !tbaa !129
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.m(ptr noundef nonnull %i.n)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Luau6TxnLog6followEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeEPKvPFS2_S4_S2_E(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @"_ZZNK4Luau6TxnLog6followEPKNS_4TypeEEN3$_08__invokeEPKvS3_")
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::Variant", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 4 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
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
  br i1 %exitcond.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !3

_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.b, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not161 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not161, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !100  ; 4 uses
  %.not.i.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i19, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i20
  %.04.i.i21 = phi i64 [ 0, %.lr.ph.i.i20 ], [ %i.u, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.04.i.i21
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.e, label %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %.04.i.i21, 1                ; 2 uses
  %exitcond.not.i.i25 = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i.i25, label %._crit_edge166, label %bb.d, !llvm.loop !4

_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit: ; preds = %bb.d, %._crit_edge
  %.0.lcssa.i.i22 = phi i64 [ 0, %._crit_edge ], [ %.04.i.i21, %bb.d ] ; 2 uses
  %.not135163 = icmp eq i64 %.0.lcssa.i.i22, %i.n
  br i1 %.not135163, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.ch

bb.f:                                             ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.6123.0162 = phi i64 [ %.0.lcssa.i.i, %.lr.ph ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.6123.0162 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !125, !range !126, !noundef !127
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN4LuauL6occursERNS_6TxnLogEPKNS_4TypeES4_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !112 ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %_ZN4LuauL10followOnceERNS_6TxnLogEPKNS_4TypeE.exit, %bb.g
  %.018.ph.i = phi ptr [ %.2.i106, %_ZN4LuauL10followOnceERNS_6TxnLogEPKNS_4TypeE.exit ], [ %i.z, %bb.g ] ; 8 uses
  %.017.ph.i = phi ptr [ %.2.i, %_ZN4LuauL10followOnceERNS_6TxnLogEPKNS_4TypeE.exit ], [ %i.z, %bb.g ] ; 8 uses
  %i.ae = icmp eq ptr %.018.ph.i, %i.ad
  br i1 %i.ae, label %_ZN4LuauL6occursERNS_6TxnLogEPKNS_4TypeES4_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.outer.i
  %i.af = ptrtoint ptr %.018.ph.i to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, %.lr.ph.preheader.i
  %.0923.i.i.i.i86 = phi ptr [ %0, %.lr.ph.preheader.i ], [ %i.bf, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0923.i.i.i.i86, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !139
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.0923.i.i.i.i86, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.ao = icmp eq ptr %.018.ph.i, %i.an
  br i1 %i.ao, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0923.i.i.i.i86, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !110
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  %i.as = load ptr, ptr %.0923.i.i.i.i86, align 8, !tbaa !111
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i.i.i.i.i87 = phi i64 [ %i.ai, %bb.j ], [ %i.ay, %bb.m ]
  %.01828.i.i.i.i.i.i88 = phi i64 [ 0, %bb.j ], [ %i.ax, %bb.m ]
  %.01929.i.i.i.i.i.i89 = and i64 %.pn.i.i.i.i.i.i87, %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.01929.i.i.i.i.i.i89 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !112 ; 2 uses
  %i.av = icmp eq ptr %i.au, %.018.ph.i
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq ptr %i.au, %i.an
  br i1 %i.aw, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add i64 %.01828.i.i.i.i.i.i88, 1        ; 3 uses
  %i.ay = add i64 %i.ax, %.01929.i.i.i.i.i.i89
  %.not.i.i.i.i.i.i90 = icmp ugt i64 %i.ax, %i.ar
  br i1 %.not.i.i.i.i.i.i90, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, label %bb.k, !llvm.loop !7

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !115 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 392
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !126, !noundef !127
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91, label %_ZNK4Luau6TxnLog7pendingEPKNS_4TypeE.exit.i.i.i110

_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91: ; preds = %bb.m, %bb.l, %bb.n, %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.0923.i.i.i.i86, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i92, label %bb.o, label %bb.h, !llvm.loop !10

_ZNK4Luau6TxnLog7pendingEPKNS_4TypeE.exit.i.i.i110: ; preds = %bb.n
  %i.bg = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.ba) ; 2 uses
  %.not.i.i.i7.i.i.i111 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i7.i.i.i111, label %.preheader323, label %_ZN4Luau10getMutableINS_9Unifiable5BoundIPKNS_4TypeEEEEEPT_PNS_11PendingTypeE.exit.sink.split.i.i.i94

.preheader323:                                    ; preds = %_ZN4Luau10getMutableINS_9Unifiable5BoundIPKNS_4TypeEEEEEPT_PNS_11PendingTypeE.exit.sink.split.i.i.i94, %bb.o, %_ZNK4Luau6TxnLog7pendingEPKNS_4TypeE.exit.i.i.i110
  br label %bb.q

bb.o:                                             ; preds = %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread.i.i.i.i91
  %i.bh = call noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %.018.ph.i) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4Luau6TxnLog6commitEv:bb.a
  %i.lf = load ptr, ptr %0, align 8, !tbaa !111
  %i.lg = load ptr, ptr %i.k, align 8, !tbaa !112
  br label %.lr.ph309

bb.cg:                                            ; preds = %.lr.ph309
  %exitcond.not = icmp eq i64 %i.li, %i.le
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph309, !llvm.loop !5

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %bb.cg
  %i.lh = phi i64 [ %i.li, %bb.cg ], [ %.sroa.6123.0162, %.lr.ph309.preheader ]
  %i.li = add i64 %i.lh, 1                        ; 4 uses
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !112
  %i.ll = icmp eq ptr %i.lk, %i.lg
  br i1 %i.ll, label %bb.cg, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge310, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge310: ; preds = %.lr.ph309
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.cg, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge310, %_ZN4LuauL6occursERNS_6TxnLogEPKNS_4TypeES4_.exit.thread
  %.lcssa.i = phi i64 [ %umax.i, %_ZN4LuauL6occursERNS_6TxnLogEPKNS_4TypeES4_.exit.thread ], [ %i.li, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge310 ], [ %umax.i, %bb.cg ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge166:                                   ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE5beginEv.exit
  call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 32)
  call void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef 32)
  ret void

bb.ch:                                            ; preds = %.lr.ph165, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.6.0164 = phi i64 [ %.0.lcssa.i.i22, %.lr.ph165 ], [ %.lcssa.i31, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.lm = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %.sroa.6.0164 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !113
  %i.lq = call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.lp)
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !102
  %i.ls = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(88) %i.lq, ptr noundef nonnull align 8 dereferenceable(88) %i.lr) ; 0 uses
  %i.lt = load i64, ptr %i.m, align 8, !tbaa !100
  %i.lu = add i64 %.sroa.6.0164, 1
  %umax.i30 = call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.lu) ; 3 uses
  %i.lv = add i64 %umax.i30, -1                   ; 2 uses
  %exitcond192.not312 = icmp eq i64 %.sroa.6.0164, %i.lv
  br i1 %exitcond192.not312, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %bb.ch
  %i.lw = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.lx = load ptr, ptr %i.v, align 8, !tbaa !113
  br label %.lr.ph314

bb.ci:                                            ; preds = %.lr.ph314
  %exitcond192.not = icmp eq i64 %i.lz, %i.lv
  br i1 %exitcond192.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph314, !llvm.loop !6

.lr.ph314:                                        ; preds = %.lr.ph314.preheader, %bb.ci
  %i.ly = phi i64 [ %i.lz, %bb.ci ], [ %.sroa.6.0164, %.lr.ph314.preheader ]
  %i.lz = add i64 %i.ly, 1                        ; 4 uses
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %i.lz
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !113
  %i.mc = icmp eq ptr %i.mb, %i.lx
  br i1 %i.mc, label %bb.ci, label %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge316, !llvm.loop !6

._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge316: ; preds = %.lr.ph314
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !6

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.ci, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge316, %bb.ch
  %.lcssa.i31 = phi i64 [ %umax.i30, %bb.ch ], [ %i.lz, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge316 ], [ %umax.i30, %bb.ci ] ; 2 uses
  %.not135 = icmp eq i64 %.lcssa.i31, %i.n
  br i1 %.not135, label %._crit_edge166, label %bb.ch
}

declare noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog5clearEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 32)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 32)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog7inverseEv(ptr dead_on_unwind noalias writable sret(%"struct.Luau::TxnLog") align 8 initializes((0, 32), (40, 72), (80, 113), (120, 128)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::TypePackVar", align 8 ; 8 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"struct.Luau::Type", align 8       ; 11 uses
  %5 = alloca %"class.std::unique_ptr.43", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.d, i8 0, i64 33, i1 false)
  store ptr %i.b, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 5 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %.loopexit65, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.04.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %bb.c, label %.loopexit65

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !3

.loopexit65:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not71 = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit65
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %bb.c, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %.loopexit65
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100  ; 4 uses
  %.not.i.i35 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i35, label %.loopexit, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i36
  %.04.i.i37 = phi i64 [ 0, %.lr.ph.i.i36 ], [ %i.ac, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.04.i.i37
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ac = add nuw i64 %.04.i.i37, 1               ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.ac, %i.v
  br i1 %exitcond.not.i.i41, label %._crit_edge77, label %bb.d, !llvm.loop !4

bb.f:                                             ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %i.ad = phi i64 [ %i.g, %.lr.ph ], [ %i.cl, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ]
  %.sroa.761.072 = phi i64 [ %.0.lcssa.i.i, %.lr.ph ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.sroa.761.072 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 392
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !125, !range !126, !noundef !127
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !112
  invoke void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.al)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt11make_uniqueIN4Luau11PendingTypeEJNS0_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %4)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.j unwind label %bb.u       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !115
  store ptr null, ptr %3, align 8, !tbaa !115
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !115 ; 7 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 376 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  store i8 0, ptr %i.ap, align 8, !tbaa !128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !40
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !129
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  invoke void %i.bb(ptr noundef nonnull %i.bc)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i
  %i.bf = load ptr, ptr %3, align 8, !tbaa !115   ; 7 uses
  %.not.i42 = icmp eq ptr %i.bf, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 376 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !128, !range !126, !noundef !127
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.o, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 344
  store i8 0, ptr %i.bg, align 8, !tbaa !128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 360 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.bp = load i32, ptr %i.bf, align 8, !tbaa !129
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i
  %i.bw = load i8, ptr %i.o, align 8, !tbaa !128, !range !126, !noundef !127
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit
  store i8 0, ptr %i.o, align 8, !tbaa !128
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !37  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.q
  br i1 %i.bz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !40
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit
  %i.cc = load i32, ptr %4, align 8, !tbaa !129
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !105
  invoke void %i.cf(ptr noundef nonnull %i.r)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre = load i64, ptr %i.f, align 8, !tbaa !110
  br label %bb.x

bb.s:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn27 = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %i.cj, %bb.t ]
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.v ], [ %i.ci, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.an

bb.x:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit, %bb.f
  %i.cl = phi i64 [ %.pre, %_ZN4Luau4TypeD2Ev.exit ], [ %i.ad, %bb.f ] ; 2 uses
  %i.cm = add i64 %.sroa.761.072, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cm) ; 3 uses
  %i.cn = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not121 = icmp eq i64 %.sroa.761.072, %i.cn
  br i1 %exitcond.not121, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %bb.x
  %i.co = load ptr, ptr %1, align 8, !tbaa !111
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !112
  br label %.lr.ph123

bb.y:                                             ; preds = %.lr.ph123
  %exitcond.not = icmp eq i64 %i.cr, %i.cn
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph123, !llvm.loop !5

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.y
  %i.cq = phi i64 [ %i.cr, %bb.y ], [ %.sroa.761.072, %.lr.ph123.preheader ]
  %i.cr = add i64 %i.cq, 1                        ; 4 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !112
  %i.cu = icmp eq ptr %i.ct, %i.cp
  br i1 %i.cu, label %bb.y, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge124, !llvm.loop !5

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge124: ; preds = %.lr.ph123
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !5

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.y, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge124, %bb.x
  %.lcssa.i = phi i64 [ %umax.i, %bb.x ], [ %i.cr, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge124 ], [ %umax.i, %bb.y ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.g
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit:                                        ; preds = %bb.d, %._crit_edge
  %.0.lcssa.i.i38 = phi i64 [ 0, %._crit_edge ], [ %.04.i.i37, %bb.d ] ; 2 uses
  %.not6473 = icmp eq i64 %.0.lcssa.i.i38, %i.v
  br i1 %.not6473, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.z

._crit_edge77:                                    ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !138, !range !126, !noundef !127
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.cz, ptr %i.da, align 8, !tbaa !138
  ret void

bb.z:                                             ; preds = %.lr.ph76, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.7.074 = phi i64 [ %.0.lcssa.i.i38, %.lr.ph76 ], [ %.lcssa.i50, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.7.074 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !113 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.de = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc unwind label %bb.al    ; 5 uses

.noexc:                                           ; preds = %bb.z
  invoke void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.dd)
          to label %bb.aa unwind label %bb.ad, !noalias !297

bb.aa:                                            ; preds = %.noexc
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !noalias !297
  invoke void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(88) %i.de, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.ab unwind label %bb.ae, !noalias !297

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !noalias !297
  store ptr %i.de, ptr %5, align 8, !tbaa !102, !alias.scope !297
  %i.dh = load i32, ptr %2, align 8, !tbaa !104, !noalias !297
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !105, !noalias !297
  invoke void %i.dk(ptr noundef nonnull %i.cw)
          to label %bb.ag unwind label %bb.ac, !noalias !297

bb.ac:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #25, !noalias !297
  unreachable

bb.ad:                                            ; preds = %.noexc
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau11TypePackVarD2Ev.exit5.i

bb.ae:                                            ; preds = %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load i32, ptr %2, align 8, !tbaa !104, !noalias !297
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105, !noalias !297
  invoke void %i.ds(ptr noundef nonnull %i.cw)
          to label %_ZN4Luau11TypePackVarD2Ev.exit5.i unwind label %bb.af, !noalias !297

bb.af:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #25, !noalias !297
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit5.i:                ; preds = %bb.ae, %bb.ad
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %i.do, %bb.ae ]
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 88) #24, !noalias !297
  br label %.body

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.ah unwind label %bb.am     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !102 ; 4 uses
  store ptr %i.de, ptr %i.dv, align 8, !tbaa !102
  %.not.i.i.i.i46 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i46, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !104
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !105
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  invoke void %i.ea(ptr noundef nonnull %i.eb)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i: ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ah, %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i
  %.pre85 = load i64, ptr %i.u, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ee = add i64 %.sroa.7.074, 1
  %umax.i49 = call i64 @llvm.umax.i64(i64 %.pre85, i64 %i.ee) ; 3 uses
  %i.ef = add i64 %umax.i49, -1                   ; 2 uses
  %exitcond84.not126 = icmp eq i64 %.sroa.7.074, %i.ef
  br i1 %exitcond84.not126, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.eh = load ptr, ptr %i.cx, align 8, !tbaa !113
  br label %.lr.ph127

bb.ak:                                            ; preds = %.lr.ph127
  %exitcond84.not = icmp eq i64 %i.ej, %i.ef
  br i1 %exitcond84.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph127, !llvm.loop !6

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.ak
  %i.ei = phi i64 [ %i.ej, %bb.ak ], [ %.sroa.7.074, %.lr.ph127.preheader ]
  %i.ej = add i64 %i.ei, 1                        ; 4 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !113
  %i.em = icmp eq ptr %i.el, %i.eh
  br i1 %i.em, label %bb.ak, label %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge129, !llvm.loop !6

._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge129: ; preds = %.lr.ph127
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !6

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.ak, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge129, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit
  %.lcssa.i50 = phi i64 [ %umax.i49, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit ], [ %i.ej, %._ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge129 ], [ %umax.i49, %bb.ak ] ; 2 uses
  %.not64 = icmp eq i64 %.lcssa.i50, %i.v
  br i1 %.not64, label %._crit_edge77, label %bb.z

bb.al:                                            ; preds = %bb.z
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ag
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %.body

.body:                                            ; preds = %bb.al, %_ZN4Luau11TypePackVarD2Ev.exit5.i, %bb.am
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.am ], [ %i.en, %bb.al ], [ %.pn.i, %_ZN4Luau11TypePackVarD2Ev.exit5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.an

bb.an:                                            ; preds = %.body, %bb.w
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn27.pn, %bb.w ]
  call void @_ZN4Luau6TxnLogD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #23
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN4Luau11PendingTypeEJNS0_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 14 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26 ; 13 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !129    ; 2 uses
  store i32 %i.b, ptr %2, align 8, !tbaa !129
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void %i.e(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #23, !inline_history !9
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.j = load i8, ptr %i.i, align 8, !tbaa !165, !range !126, !noundef !127
  store i8 %i.j, ptr %i.h, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 4 uses
  store i8 0, ptr %i.n, align 8, !tbaa !128
  %i.o = load i8, ptr %i.m, align 8, !tbaa !128, !range !126, !noundef !127
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_ZN4Luau4TypeC2EOS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !34
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.r, ptr %i.k, align 8, !tbaa !37
  %i.y = load i64, ptr %i.s, align 8, !tbaa !40
  store i64 %i.y, ptr %i.q, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.z = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !38
  store ptr %i.s, ptr %i.l, align 8, !tbaa !37
  store i64 0, ptr %i.aa, align 8, !tbaa !38
  store i8 0, ptr %i.s, align 8, !tbaa !40
  store i8 1, ptr %i.n, align 8, !tbaa !128
  br label %_ZN4Luau4TypeC2EOS0_.exit

_ZN4Luau4TypeC2EOS0_.exit:                        ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !166
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !166
  %i.af = load i32, ptr %2, align 8, !tbaa !129   ; 2 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !129
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void %i.ai(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.f) #23, !inline_history !298
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.al = load i8, ptr %i.h, align 8, !tbaa !165, !range !126, !noundef !127
  store i8 %i.al, ptr %i.ak, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !128
  %i.ao = load i8, ptr %i.n, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.a

bb.d:                                             ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 3 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !34
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !37  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.av = load i64, ptr %i.au, align 8, !tbaa !38 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !37
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !40
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !40
  %.phi.trans.insert1 = getelementptr inbounds nuw i8, ptr %2, i64 352
  %.pre2 = load i64, ptr %.phi.trans.insert1, align 8, !tbaa !38
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.a: ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %3 = load ptr, ptr %i.ac, align 8, !tbaa !166
  store ptr %3, ptr %i.az, align 8, !tbaa !166
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i8 0, ptr %4, align 8, !tbaa !125
  store ptr %i.a, ptr %0, align 8, !tbaa !115
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %5 = phi i64 [ %i.av, %bb.e ], [ %.pre2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i64 %5, ptr %i.ba, align 8, !tbaa !38
  store ptr %i.as, ptr %i.k, align 8, !tbaa !37
  store i64 0, ptr %6, align 8, !tbaa !38
  store i8 0, ptr %i.as, align 8, !tbaa !40
  store i8 1, ptr %i.an, align 8, !tbaa !128
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %8 = load ptr, ptr %i.ac, align 8, !tbaa !166
  store ptr %8, ptr %7, align 8, !tbaa !166
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i8 0, ptr %9, align 8, !tbaa !125
  store ptr %i.a, ptr %0, align 8, !tbaa !115
  store i8 0, ptr %i.n, align 8, !tbaa !128
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.a, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.a
  %10 = load i32, ptr %2, align 8, !tbaa !129
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  invoke void %13(ptr noundef nonnull %i.f)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128, !range !126, !noundef !127
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i8 0, ptr %i.b, align 8, !tbaa !128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.k = load i32, ptr %i.a, align 8, !tbaa !129
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void %i.n(ptr noundef nonnull %i.o)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 400) #24
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau6TxnLog8haveSeenEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.77", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp ugt ptr %1, %2                      ; 2 uses
  %spec.select.i = select i1 %i.a, ptr %1, ptr %2
  %spec.select12.i = select i1 %i.a, ptr %2, ptr %1
  store ptr %spec.select.i, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select12.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.h = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKS5_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %i.g, ptr %i.f, ptr nonnull align 8 dereferenceable(16) %3)
  %i.i = icmp ne ptr %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau6TxnLog8haveSeenEPKvS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.77", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp ugt ptr %1, %2                      ; 2 uses
  %spec.select = select i1 %i.a, ptr %1, ptr %2
  %spec.select12 = select i1 %i.a, ptr %2, ptr %1
  store ptr %spec.select, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.h = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKS5_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %i.g, ptr %i.f, ptr nonnull align 8 dereferenceable(16) %3)
  %i.i = icmp ne ptr %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog8pushSeenEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4Luau6TxnLog8pushSeenEPKvS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog8pushSeenEPKvS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ugt ptr %1, %2                      ; 2 uses
  %. = select i1 %i.a, ptr %2, ptr %1             ; 2 uses
  %.9 = select i1 %i.a, ptr %1, ptr %2            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.9, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %., ptr %.sroa.6.0..sroa_idx, align 8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.d, align 8, !tbaa !171
  br label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !92   ; 5 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #27
  unreachable

_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 576460752303423487)
  %i.s = select i1 %i.q, i64 576460752303423487, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %.9, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %., ptr %.sroa.6.0..sroa_idx4, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !303
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !302

_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIPKvS2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !92
  store ptr %i.y, ptr %i.d, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !93
  br label %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIPKvS2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau6TxnLog7popSeenEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau6TxnLog7popSeenEPKvS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau6TxnLog8haveSeenEPKNS_11TypePackVarES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.77", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp ugt ptr %1, %2                      ; 2 uses
  %spec.select.i = select i1 %i.a, ptr %1, ptr %2
  %spec.select12.i = select i1 %i.a, ptr %2, ptr %1
  store ptr %spec.select.i, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select12.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.h = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKS5_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %i.g, ptr %i.f, ptr nonnull align 8 dereferenceable(16) %3)
  %i.i = icmp ne ptr %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6TxnLog8pushSeenEPKNS_11TypePackVarES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4Luau6TxnLog8pushSeenEPKvS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau6TxnLog7popSeenEPKNS_11TypePackVarES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6TxnLog5queueEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %"struct.Luau::Type", align 8       ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.c = load i8, ptr %i.b, align 8, !tbaa !165, !range !126, !noundef !127
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.e, align 8, !tbaa !138
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.i = load i8, ptr %i.h, align 8, !tbaa !125, !range !126, !noundef !127
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !112
  call void @_ZNK4Luau4Type5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Type") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %i.k)
  invoke void @_ZSt11make_uniqueIN4Luau11PendingTypeEJNS0_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %2, align 8, !tbaa !115
  store ptr null, ptr %2, align 8, !tbaa !115
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !115  ; 7 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !115
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 376 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !128, !range !126, !noundef !127
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  store i8 0, ptr %i.n, align 8, !tbaa !128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 360 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !40
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.w = load i32, ptr %i.m, align 8, !tbaa !129
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void %i.z(ptr noundef nonnull %i.aa)
          to label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 400) #24
  %.pre = load ptr, ptr %2, align 8, !tbaa !115   ; 7 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 376 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !128, !range !126, !noundef !127
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 344
  store i8 0, ptr %i.ad, align 8, !tbaa !128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 360 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.am = load i32, ptr %.pre, align 8, !tbaa !129
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  invoke void %i.ap(ptr noundef nonnull %i.aq)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !128, !range !126, !noundef !127
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 344
  store i8 0, ptr %i.at, align 8, !tbaa !128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit
  %i.bc = load i32, ptr %3, align 8, !tbaa !129
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !105
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void %i.bf(ptr noundef nonnull %i.bg)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !115 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  store ptr null, ptr %i.bk, align 8, !tbaa !304
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bl

bb.p:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit, %bb.d
  %i.bm = phi ptr [ %i.bj, %_ZN4Luau4TypeD2Ev.exit ], [ %i.g, %bb.d ]
  ret ptr %i.bm
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6TxnLog5queueEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::TypePackVar", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !308, !range !126, !noundef !127
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.e, align 8, !tbaa !138
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26, !noalias !309 ; 5 uses
  invoke void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %bb.e unwind label %bb.h, !noalias !309

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !309
  invoke void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.f unwind label %bb.i, !noalias !309

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !309
  %i.n = load i32, ptr %2, align 8, !tbaa !104, !noalias !309
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105, !noalias !309
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void %i.q(ptr noundef nonnull %i.r)
          to label %_ZSt11make_uniqueIN4Luau15PendingTypePackEJRKNS0_11TypePackVarEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.g, !noalias !309

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #25, !noalias !309
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau11TypePackVarD2Ev.exit5.i

bb.i:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i32, ptr %2, align 8, !tbaa !104, !noalias !309
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105, !noalias !309
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void %i.z(ptr noundef nonnull %i.aa)
          to label %_ZN4Luau11TypePackVarD2Ev.exit5.i unwind label %bb.j, !noalias !309

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #25, !noalias !309
  unreachable

_ZN4Luau11TypePackVarD2Ev.exit5.i:                ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.v, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 88) #24, !noalias !309
  resume { ptr, i32 } %.pn.i

_ZSt11make_uniqueIN4Luau15PendingTypePackEJRKNS0_11TypePackVarEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !102 ; 4 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !102
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt11make_uniqueIN4Luau15PendingTypePackEJRKNS0_11TypePackVarEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !104
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void %i.ah(ptr noundef nonnull %i.ai)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 88) #24
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN4Luau15PendingTypePackEJRKNS0_11TypePackVarEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.al = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i ], [ %i.j, %_ZSt11make_uniqueIN4Luau15PendingTypePackEJRKNS0_11TypePackVarEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr null, ptr %i.am, align 8, !tbaa !311
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.an = phi ptr [ %i.al, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit ], [ %i.h, %bb.c ]
  ret ptr %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = mul i64 %i.a, -4658895280553007687       ; 2 uses
  %i.c = lshr i64 %i.b, 31
  %i.d = xor i64 %i.c, %i.b
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread
  %.0923 = phi ptr [ %0, %bb.a ], [ %i.aa, %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0923, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0923, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %_ZNK4Luau12DenseHashMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS5_EENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0923, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !110
  %i.m = add i64 %i.l, -1                         ; 2 uses
  %i.n = load ptr, ptr %.0923, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4Luau15ToStringNameMapD2Ev:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !316 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #24
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !313

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !76
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !317  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i
  %.06.i.i.i.i3 = phi ptr [ %i.v, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i ], [ %i.u, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit ] ; 4 uses
  %i.v = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !316 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 32 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 48) #24
  %.not.i.i.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !314

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !73
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt13unordered_mapIPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !73
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt13unordered_mapIPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !37 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !318
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !318
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.w, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.04.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 376 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !128, !range !126, !noundef !127
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  store i8 0, ptr %i.g, align 8, !tbaa !128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 360 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.p = load i32, ptr %i.f, align 8, !tbaa !129
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void %i.s(ptr noundef nonnull %i.t)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %i.w = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14

_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit: ; preds = %bb.b, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i
  %i.x = phi ptr [ %.pre.i, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit.loopexit.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS6_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS8_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorIS9_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISA_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau15GenericTypePackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZN4Luau15GenericTypePackD2Ev.exit

_ZN4Luau15GenericTypePackD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISB_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau8TypePackD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #24
  br label %_ZN4Luau8TypePackD2Ev.exit

_ZN4Luau8TypePackD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISC_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISD_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnDtorISE_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !164
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit

_ZN4Luau28TypeFunctionInstanceTypePackD2Ev.exit:  ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !128
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS6_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !112
  store i64 %i.a, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS8_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyIS9_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISA_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !39
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !37
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.j, ptr %i.d, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau11GenericTypeC2ERKS0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !40
  store i8 %i.l, ptr %i.k, align 1, !tbaa !40
  br label %_ZN4Luau11GenericTypeC2ERKS0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZN4Luau11GenericTypeC2ERKS0_.exit

_ZN4Luau11GenericTypeC2ERKS0_.exit:               ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !38
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i16, ptr %i.r, align 8
  store i16 %i.s, ptr %i.q, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISB_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISC_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !203    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %call.0.i.i, label %call.1.i.i

call.0.i.i:                                       ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 8, !tbaa !204
  store i8 %i.f, ptr %i.c, align 8, !tbaa !204
  br label %_ZN4Luau13SingletonTypeC2ERKS0_.exit

call.1.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !34
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.j, ptr %i.a, align 8, !tbaa !39
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %call.1.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !37
  %i.m = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.m, ptr %i.g, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %call.1.i.i
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.g, %call.1.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !40
  store i8 %i.o, ptr %i.n, align 1, !tbaa !40
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i

_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !38
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN4Luau13SingletonTypeC2ERKS0_.exit

_ZN4Luau13SingletonTypeC2ERKS0_.exit:             ; preds = %call.0.i.i, %_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISD_EEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !207
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISE_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau20PendingExpansionTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISF_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISG_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnCopyISH_EEvPvPKv(ptr noundef %0, ptr noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !128
end_hunk_3
begin_hunk_4_@_ZN4Luau12FunctionTypeC2ERKS0_:bb.a
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !229
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #24
  br label %.body

bb.s:                                             ; preds = %.noexc25
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !227
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !78 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !77 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i26, label %.noexc30, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775776
  br i1 %i.cy, label %.noexc.i.i28, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !87

.noexc.i.i28:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc29 unwind label %bb.ag

.noexc29:                                         ; preds = %.noexc.i.i28
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #26
          to label %.noexc30 unwind label %bb.ag

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.s
  %i.da = phi ptr [ null, %bb.s ], [ %i.cz, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.da, ptr %i.cq, align 8, !tbaa !77
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !78
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !80
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !231
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !231
  %i.dg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.de, ptr %i.df, ptr noundef %i.da)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %.noexc30
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i27, label %.body31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !80
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #24
  br label %.body31

bb.w:                                             ; preds = %.noexc30
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !81 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !105
  store <2 x ptr> %i.dt, ptr %i.dp, align 8, !tbaa !105
  %.not.i.i.i33 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i33, label %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i34 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !30
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !30
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
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !81 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !105
  store <2 x ptr> %i.eg, ptr %i.ec, align 8, !tbaa !105
  %.not.i.i.i35 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i35, label %_ZNSt10shared_ptrIN4Luau7AstAttr14DeprecatedInfoEEC2ERKS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN4Luau13MagicFunctionEEC2ERKS2_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i36 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !30
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !30
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
  call void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #23
  br label %.body

.body:                                            ; preds = %bb.af, %bb.r, %bb.q, %.body31
  %.pn = phi { ptr, i32 } [ %eh.lpad-body32, %.body31 ], [ %i.eo, %bb.af ], [ %i.ck, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %i.eq = load ptr, ptr %i.av, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.body
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !201
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.ah, %.body, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ae ], [ %.pn, %.body ], [ %.pn, %bb.ah ] ; 2 uses
  %i.ev = load ptr, ptr %i.y, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !164
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #24
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.ai, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.ad ], [ %.pn.pn, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit ], [ %.pn.pn, %bb.ai ]
  call void @_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !233, !range !126, !noundef !127
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  store i8 0, ptr %i.d, align 8, !tbaa !233
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !229
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #24
  br label %_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !224, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !128, !range !126, !noundef !127
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !128
  %i.g = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau18FunctionDefinitionELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalIN4Luau16FunctionArgumentEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.v, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.013 = phi ptr [ %i.u, %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 48 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !233
  %i.d = load i8, ptr %i.b, align 8, !tbaa !233, !range !126, !noundef !127
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.f, ptr %.014, align 8, !tbaa !34
  %i.g = load ptr, ptr %.sroa.08.013, align 8, !tbaa !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.i, ptr %i.a, align 8, !tbaa !39
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  store ptr %i.k, ptr %.014, align 8, !tbaa !37
  %i.l = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.l, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !40
  store i8 %i.n, ptr %i.m, align 1, !tbaa !40
  br label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !38
  %i.q = load ptr, ptr %.014, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !320
  store i8 1, ptr %i.c, align 8, !tbaa !233
  br label %_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit

_ZSt10_ConstructISt8optionalIN4Luau16FunctionArgumentEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %_ZNSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.u, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #27
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
  call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !233, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.a, align 8, !tbaa !233
  %i.d = load ptr, ptr %.05.i, align 8, !tbaa !37 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !15

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalIN4Luau16FunctionArgumentEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !34
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !37 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !39
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !37
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.h, ptr %i.b, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !40
  store i8 %i.j, ptr %i.i, align 1, !tbaa !40
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !38
  %i.m = load ptr, ptr %.014, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #27
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
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !234
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !235
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !236
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !238
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !235  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !240
  %i.k = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %.noexc.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !16

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !242
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !243  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !17

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.g, align 8, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !238
  store i64 %i.q, ptr %i.h, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr %i.k, ptr %i.e, align 8, !tbaa !242
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.a, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !128
  %i.w = load i8, ptr %i.u, align 8, !tbaa !128, !range !126, !noundef !127
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !39
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
end_hunk_4
begin_hunk_5_@_ZN4Luau8PropertyC2ERKS0_:bb.a
  store i8 %i.c, ptr %0, align 8, !tbaa !333
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !34
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.i, ptr %i.b, align 8, !tbaa !39
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !37
  %i.l = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.l, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !40
  store i8 %i.n, ptr %i.m, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !38
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !77   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !87

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #26
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !80
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !231
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !231
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ai, ptr %i.aj, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc10
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !77  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #24
  br label %.body

bb.g:                                             ; preds = %.noexc10
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !128
  %i.au = load i8, ptr %i.as, align 8, !tbaa !128, !range !126, !noundef !127
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !34
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !39
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !37
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc11, %bb.h
  %i.be = phi ptr [ %i.bc, %.noexc11 ], [ %i.ax, %bb.h ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !40
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !40
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !38
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.at, align 8, !tbaa !128
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #23
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.e, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %i.bm, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.e ]
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.f
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !40
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.a, align 8, !tbaa !128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Luau::Property>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Luau::Property>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !34
  %i.d = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !39
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !37
  %i.i = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.i, ptr %i.c, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !38
  %i.n = load ptr, ptr %0, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !234
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !236
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !237
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !238
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !235  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.p, ptr %2, align 8, !tbaa !240
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull %i.w, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i unwind label %bb.r ; 3 uses

.noexc.i.i:                                       ; preds = %bb.d, %.noexc.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !241  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !16

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !242
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.f, label %bb.e, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i.i.i.i, ptr %i.t, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !238
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr %i.x, ptr %i.r, align 8, !tbaa !242
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i, label %.noexc18, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.ao = icmp ugt i64 %i.an, 9223372036854775776
  br i1 %i.ao, label %.noexc.i.i16, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !87

end_hunk_5
begin_hunk_6_@_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2ERKSL_:bb.a
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.l, ptr %i.b, align 8, !tbaa !39
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !37
  %i.o = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.o, ptr %i.i, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !40
  store i8 %i.q, ptr %i.p, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !273  ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = mul i64 %i.w, 48
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  store ptr %i.y, ptr %0, align 8, !tbaa !274
  %i.z = load i64, ptr %i.v, align 8, !tbaa !273
  %.not19 = icmp eq i64 %i.z, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.018 = phi i64 [ %i.at, %bb.h ], [ 0, %bb.e ]  ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !274
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.018 ; 7 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !274
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.018 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !34
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !39
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !37
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.al = phi ptr [ %i.aj, %.noexc ], [ %i.ae, %.lr.ph ] ; 2 uses
  switch i64 %i.ah, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i8, ptr %i.af, align 1, !tbaa !40
  store i8 %i.am, ptr %i.al, align 1, !tbaa !40
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !38
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = add nuw i64 %.018, 1                    ; 3 uses
  store i64 %i.at, ptr %i.c, align 8, !tbaa !273
  %i.au = load i64, ptr %i.v, align 8, !tbaa !273
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %.loopexit, !llvm.loop !339

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !37  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !40
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp24

.loopexit:                                        ; preds = %bb.h, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128, !range !126, !noundef !127
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !126
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
  store ptr %i.h, ptr %0, align 8, !tbaa !34
  %i.i = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.k, ptr %i.a, align 8, !tbaa !39
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !37
  %i.n = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.n, ptr %i.h, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !40
  store i8 %i.p, ptr %i.o, align 1, !tbaa !40
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !38
  %i.s = load ptr, ptr %0, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.b, align 8, !tbaa !128
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 8, !tbaa !128
  %i.u = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !40
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Variant.30", align 8  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 8, !tbaa !104    ; 3 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  switch i32 %i.f, label %default.switch.case.unreachable.i [
    i32 0, label %call.0.i
    i32 1, label %call.1.i
    i32 2, label %call.2.i
    i32 3, label %call.3.i
    i32 4, label %call.4.i
    i32 5, label %call.5.i
    i32 6, label %call.6.i
    i32 7, label %call.7.i
  ], !prof !275

default.switch.case.unreachable.i:                ; preds = %bb.b
  unreachable

call.0.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113
  store i64 %i.h, ptr %i.e, align 8, !tbaa !113
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.1.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.2.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !tbaa.struct !279
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.3.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.e, ptr noundef nonnull align 8 dereferenceable(58) %i.g, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !34
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %call.3.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %call.3.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !37
  %i.s = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.s, ptr %i.k, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.t = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.t, ptr %i.v, align 8, !tbaa !38
  store ptr %i.m, ptr %i.j, align 8, !tbaa !37
  store i64 0, ptr %i.u, align 8, !tbaa !38
  store i8 0, ptr %i.m, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load i16, ptr %i.x, align 8
  store i16 %i.y, ptr %i.w, align 8
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.4.i:                                         ; preds = %bb.b
  %i.z = load <2 x ptr>, ptr %i.g, align 8, !tbaa !208
  store <2 x ptr> %i.z, ptr %i.e, align 8, !tbaa !208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.5.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !280
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.6.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !281
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

call.7.i:                                         ; preds = %bb.b
  %i.af = load i64, ptr %i.g, align 8, !tbaa !283
  store i64 %i.af, ptr %i.e, align 8, !tbaa !283
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !208
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !208
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !200
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !215
  %i.aq = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.ao, i64 1
  %i.as = shufflevector <2 x ptr> %i.ap, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x ptr> %i.ar, <4 x ptr> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.at, ptr %i.aj, align 8, !tbaa !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  br label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit

bb.d:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit: ; preds = %call.0.i, %call.1.i, %call.2.i, %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE6fnMoveISA_EEvPvSH_.exit.i, %call.4.i, %call.5.i, %call.6.i, %call.7.i
  %i.aw = zext nneg i32 %i.f to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105
  invoke void %i.ay(ptr noundef nonnull %i.g)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEED2Ev.exit: ; preds = %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEaSEOSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !104    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  switch i32 %i.b, label %default.switch.case.unreachable [
    i32 0, label %call.0
    i32 1, label %call.1
    i32 2, label %call.2
    i32 3, label %call.3
    i32 4, label %call.4
    i32 5, label %call.5
    i32 6, label %call.6
    i32 7, label %call.7
  ], !prof !275

default.switch.case.unreachable:                  ; preds = %bb.a
  unreachable

call.0:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !113
  store i64 %i.e, ptr %i.c, align 8, !tbaa !113
  br label %.tail
end_hunk_6
begin_hunk_7_@"_ZZNK4Luau6TxnLog6followEPKNS_4TypeEEN3$_08__invokeEPKvS3_":bb.a
  %..i = select i1 %i.ac, ptr %1, ptr %i.ab
  ret ptr %..i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @"_ZZNK4Luau6TxnLog6followEPKNS_11TypePackVarEEN3$_08__invokeEPKvS3_"(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #18 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = mul i64 %i.a, -4658895280553007687       ; 2 uses
  %i.c = lshr i64 %i.b, 31
  %i.d = xor i64 %i.c, %i.b
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %.0824.i.i = phi ptr [ %0, %bb.a ], [ %i.w, %.loopexit.i.i ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0824.i.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.0824.i.i, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0824.i.i, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0824.i.i, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i.i.i = phi i64 [ %i.d, %bb.d ], [ %i.u, %bb.g ]
  %.01828.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.t, %bb.g ]
  %.01929.i.i.i.i = and i64 %.pn.i.i.i.i, %i.n    ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.01929.i.i.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %.01828.i.i.i.i, 1               ; 3 uses
  %i.u = add i64 %i.t, %.01929.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.n
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.e, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.0824.i.i, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !167  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %"_ZZNK4Luau6TxnLog6followEPKNS_11TypePackVarEENK3$_0clEPKvS3_.exit", label %bb.b, !llvm.loop !13

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  br label %"_ZZNK4Luau6TxnLog6followEPKNS_11TypePackVarEENK3$_0clEPKvS3_.exit"

"_ZZNK4Luau6TxnLog6followEPKNS_11TypePackVarEENK3$_0clEPKvS3_.exit": ; preds = %.loopexit.i.i, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %.loopexit.i.i ] ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %..i = select i1 %i.aa, ptr %1, ptr %i.z
  ret ptr %..i
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS6_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS8_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS9_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISA_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau11GenericTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZN4Luau11GenericTypeD2Ev.exit

_ZN4Luau11GenericTypeD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISB_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISC_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !203
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISD_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISE_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau20PendingExpansionTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !164
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZN4Luau20PendingExpansionTypeD2Ev.exit

_ZN4Luau20PendingExpansionTypeD2Ev.exit:          ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISF_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISG_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISH_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4Luau13MetatableTypeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau13MetatableTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZN4Luau13MetatableTypeD2Ev.exit

_ZN4Luau13MetatableTypeD2Ev.exit:                 ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISI_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISJ_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISK_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #24
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISL_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau16IntersectionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #24
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISM_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau8LazyTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 3)
          to label %_ZN4Luau8LazyTypeD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZN4Luau8LazyTypeD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISN_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISO_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISP_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISQ_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISR_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !164
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit

_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit:      ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS1_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS2_EEvPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !84
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !342
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !342
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !84
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !343
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !343
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !40
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !228 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !227 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.bk, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 48 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !233, !range !126, !noundef !127
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.o, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i7
  store i8 0, ptr %i.bc, align 8, !tbaa !233
  %i.bf = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !37 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !40
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #24
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 56 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bk, %i.bb
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !15

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.ay, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bl = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !229
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #24
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !201
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !164
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #24
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !224, !range !126, !noundef !127
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.s, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  store i8 0, ptr %i.cf, align 8, !tbaa !224
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.t, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ci, align 8, !tbaa !128
  %i.cl = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !40
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #24
  br label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit: ; preds = %bb.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !40
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !164
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !128, !range !126, !noundef !127
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.ak, align 8, !tbaa !128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !40
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !128, !range !126, !noundef !127
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.at, align 8, !tbaa !128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7: ; preds = %bb.f, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !235
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !247, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.a, align 8, !tbaa !247
  %i.e = load i32, ptr %i.d, align 8, !tbaa !249
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !84
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !344
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !344
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !40
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !235
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.ba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !40
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS1_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS2_EEvPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !273  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.04.i.i.i.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !345

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i
end_hunk_7
begin_hunk_8_@_ZN4Luau23UserDefinedFunctionDataD2Ev:bb.a
  br i1 %.not.i.i.i.i2, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6
  %.04.i.i.i.i4 = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6 ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.04.i.i.i.i4 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %.lr.ph.i.i.i.i3
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6: ; preds = %.lr.ph.i.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.ac = add nuw i64 %.04.i.i.i.i4, 1            ; 2 uses
  %exitcond.not.i.i.i.i7 = icmp eq i64 %i.ac, %i.v
  br i1 %exitcond.not.i.i.i.i7, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !18

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i6
  %.pre.i.i.i8 = load ptr, ptr %i.s, align 8, !tbaa !271
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i, %bb.d
  %i.ad = phi ptr [ %.pre.i.i.i8, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i ], [ %i.t, %bb.d ]
  tail call void @_ZdlPv(ptr noundef %i.ad) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.e
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !253 ; 4 uses
  %.not.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i12, label %_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !30 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aq = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.g ], [ %i.aq, %bb.h ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.i, label %_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !inline_history !346
  br label %_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 6 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !112 ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.i = icmp ult i64 %spec.select, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.j, align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !284
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.pre.i.i, ptr %i.p, align 8, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !284
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !284
  %i.u = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.u, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.v, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !284
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !347

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !110
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, %bb.a
  %i.y = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge22.thread, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit
  %i.z = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.f

._crit_edge22:                                    ; preds = %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !349   ; 4 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !349
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !39
  %.not.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.b

._crit_edge22.thread:                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !349   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !349
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !39
  %.not.i1147 = icmp eq ptr %i.ab, null
  br i1 %.not.i1147, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i

bb.b:                                             ; preds = %._crit_edge22
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.av, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.04.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !115 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 376 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 344
  store i8 0, ptr %i.af, align 8, !tbaa !128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 360 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ao = load i32, ptr %i.ae, align 8, !tbaa !129
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke void %i.ar(ptr noundef nonnull %i.as)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.cm
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i, %._crit_edge22.thread, %bb.b
  %i.aw = phi ptr [ %i.ab, %._crit_edge22.thread ], [ %i.aa, %bb.b ], [ %i.aa, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #23
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge22.thread, %._crit_edge22, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i
  ret void

bb.f:                                             ; preds = %.lr.ph21, %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit
  %i.ax = phi i64 [ %i.y, %.lr.ph21 ], [ %i.cm, %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit ] ; 2 uses
  %.020 = phi i64 [ 0, %.lr.ph21 ], [ %i.cn, %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit ] ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.020 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !112 ; 6 uses
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = mul i64 %i.bd, -4658895280553007687     ; 2 uses
  %i.bf = lshr i64 %i.be, 31
  %i.bg = xor i64 %i.bf, %i.be
  %.02131.i17 = and i64 %i.bg, %i.z               ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i17 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.f
  br i1 %i.bj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bk = icmp eq ptr %i.bi, %i.ba
  br i1 %i.bk, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph61

._crit_edge:                                      ; preds = %.lr.ph61, %bb.g
  %.lcssa = phi ptr [ %i.bh, %bb.g ], [ %i.bo, %.lr.ph61 ] ; 2 uses
  store ptr %i.ba, ptr %.lcssa, align 8, !tbaa !147
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit

.lr.ph:                                           ; preds = %.lr.ph61
  %i.bl = icmp eq ptr %i.bp, %i.ba
  br i1 %i.bl, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i1860 = phi i64 [ %i.bm, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i1959 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i17, %.lr.ph.preheader ]
  %i.bm = add i64 %.02030.i1860, 1                ; 3 uses
  %i.bn = add i64 %i.bm, %.02131.i1959
  %.not.i13 = icmp ule i64 %i.bm, %i.z
  tail call void @llvm.assume(i1 %.not.i13)
  %.02131.i = and i64 %i.bn, %i.z                 ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !112 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.br = phi ptr [ %.lcssa, %._crit_edge ], [ %i.bh, %.lr.ph.preheader ], [ %i.bo, %.lr.ph ] ; 2 uses
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !147
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !115
  store ptr null, ptr %i.bs, align 8, !tbaa !115
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !115 ; 7 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !115
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 376 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !128, !range !126, !noundef !127
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 344
  store i8 0, ptr %i.bw, align 8, !tbaa !128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 360 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !40
  %i.ce = add i64 %i.cd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.cf = load i32, ptr %i.bv, align 8, !tbaa !129
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  invoke void %i.ci(ptr noundef nonnull %i.cj)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 400) #24
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !110
  br label %_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit

_ZNSt4pairIPKN4Luau4TypeESt10unique_ptrINS0_11PendingTypeESt14default_deleteIS5_EEEaSEOS9_.exit: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit, %bb.f
  %i.cm = phi i64 [ %i.ax, %bb.f ], [ %i.ax, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSC_.exit ], [ %.pre31, %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i.i.i ] ; 4 uses
  %i.cn = add nuw i64 %.020, 1                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.f, label %._crit_edge22, !llvm.loop !348
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 6 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !113 ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.i = icmp ult i64 %spec.select, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !286
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !286
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.pre.i.i, ptr %i.p, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !286
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !286
  %i.u = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !20

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.u, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.v, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !286
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !350

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !100
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit, %bb.a
  %i.y = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge22.thread, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit
  %i.z = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.e

._crit_edge22:                                    ; preds = %_ZNSt4pairIPKN4Luau11TypePackVarESt10unique_ptrINS0_15PendingTypePackESt14default_deleteIS5_EEEaSEOS9_.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !352   ; 4 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !352
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !39
  %.not.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.b

._crit_edge22.thread:                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSC_m.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !352   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !352
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !39
  %.not.i1143 = icmp eq ptr %i.ab, null
  br i1 %.not.i1143, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i

bb.b:                                             ; preds = %._crit_edge22
  %.not.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.am, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.04.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !104
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke void %i.ai(ptr noundef nonnull %i.aj)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.am = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.bu
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i: ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i, %._crit_edge22.thread, %bb.b
  %i.an = phi ptr [ %i.ab, %._crit_edge22.thread ], [ %i.aa, %bb.b ], [ %i.aa, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #23
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge22.thread, %._crit_edge22, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i
  ret void

bb.e:                                             ; preds = %.lr.ph21, %_ZNSt4pairIPKN4Luau11TypePackVarESt10unique_ptrINS0_15PendingTypePackESt14default_deleteIS5_EEEaSEOS9_.exit
  %i.ao = phi i64 [ %i.y, %.lr.ph21 ], [ %i.bu, %_ZNSt4pairIPKN4Luau11TypePackVarESt10unique_ptrINS0_15PendingTypePackESt14default_deleteIS5_EEEaSEOS9_.exit ] ; 2 uses
  %.020 = phi i64 [ 0, %.lr.ph21 ], [ %i.bv, %_ZNSt4pairIPKN4Luau11TypePackVarESt10unique_ptrINS0_15PendingTypePackESt14default_deleteIS5_EEEaSEOS9_.exit ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.020 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 6 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt4pairIPKN4Luau11TypePackVarESt10unique_ptrINS0_15PendingTypePackESt14default_deleteIS5_EEEaSEOS9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
end_hunk_8
begin_hunk_9_@_ZN4Luau10ExternTypeC2EOS0_:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !38
  store ptr %i.av, ptr %i.as, align 8, !tbaa !37
  store i64 0, ptr %i.bc, align 8, !tbaa !38
  store i8 0, ptr %i.av, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !247
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !247, !range !126, !noundef !127
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.f, label %_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !249
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !249
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %storemerge.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !112
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !112
  store i8 1, ptr %i.bi, align 8, !tbaa !247
  br label %_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit

_ZNSt8optionalIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEEC2EOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau23UserDefinedFunctionDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !105
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !105
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !39
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.q, ptr %i.b, align 8, !tbaa !39
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.s, ptr %i.l, align 8, !tbaa !37
  %i.t = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.t, ptr %i.n, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.n, %bb.a ] ; 2 uses
  switch i64 %i.q, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !40
  store i8 %i.v, ptr %i.u, align 1, !tbaa !40
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !38
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !274
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !274
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !39
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !34
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.al, ptr %i.a, align 8, !tbaa !39
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i.i9, label %._crit_edge.i.i.i.i8

.noexc.i.i.i9:                                    ; preds = %bb.d
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.i   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i9
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !37
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %.noexc10, %bb.d
  %i.ap = phi ptr [ %i.an, %.noexc10 ], [ %i.ai, %bb.d ] ; 2 uses
  switch i64 %i.al, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i8
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !40
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i8
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !38
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i9
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_19AstStatTypeFunctionEmESt4hashIS6_ESt8equal_toIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.av, %bb.h ]
  call void @_ZNSt10__weak_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(34) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.f = icmp ugt i64 %i.e, %1
  %i.g = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.aa, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 376 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !128, !range !126, !noundef !127
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  store i8 0, ptr %i.k, align 8, !tbaa !128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 360 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !40
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.t = load i32, ptr %i.j, align 8, !tbaa !129
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void %i.w(ptr noundef nonnull %i.x)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %i.aa = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.e
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit, label %.lr.ph.i.i, !llvm.loop !14

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !111
  tail call void @_ZdlPv(ptr noundef %.pre.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %0, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i
  %.04.i = phi i64 [ %i.au, %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 7 uses
  %.not.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 376 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !128, !range !126, !noundef !127
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 344
  store i8 0, ptr %i.ae, align 8, !tbaa !128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 360 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !40
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !129
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void %i.aq(ptr noundef nonnull %i.ar)
          to label %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #25
  unreachable

_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 400) #24
  br label %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4Luau11PendingTypeEEclEPS1_.exit.i.i, %.lr.ph.i
  %i.au = add nuw i64 %.04.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.e
  br i1 %exitcond.not.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit, label %.lr.ph.i, !llvm.loop !14

_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit: ; preds = %_ZNSt10unique_ptrIN4Luau11PendingTypeESt14default_deleteIS1_EED2Ev.exit.i
  %.pr = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !111   ; 5 uses
  %.not.i2 = icmp eq i64 %.pr, 0
  br i1 %.not.i2, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i3 = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 5 uses
  %xtraiter = and i64 %.pr, 3                     ; 3 uses
  %i.ax = icmp ult i64 %.pr, 4
  br i1 %i.ax, label %.lr.ph.i4.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %.pr, -4
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i.new
  %.07.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.bj, %.lr.ph.i4 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i4 ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.07.i ; 2 uses
  store ptr %.pre.i3, ptr %i.ay, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !284
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.07.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %.pre.i3, ptr %i.bb, align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr null, ptr %i.bc, align 8, !tbaa !284
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.07.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %.pre.i3, ptr %i.be, align 8, !tbaa !112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr null, ptr %i.bf, align 8, !tbaa !284
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.07.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %.pre.i3, ptr %i.bh, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr null, ptr %i.bi, align 8, !tbaa !284
  %i.bj = add nuw i64 %.07.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit.loopexit.unr-lcssa, label %.lr.ph.i4, !llvm.loop !19

_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit, label %.lr.ph.i4.epil.preheader

.lr.ph.i4.epil.preheader:                         ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bj, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i4.epil

.lr.ph.i4.epil:                                   ; preds = %.lr.ph.i4.epil, %.lr.ph.i4.epil.preheader
  %.07.i.epil = phi i64 [ %i.bm, %.lr.ph.i4.epil ], [ %.07.i.epil.init, %.lr.ph.i4.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i4.epil ], [ 0, %.lr.ph.i4.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.07.i.epil ; 2 uses
  store ptr %.pre.i3, ptr %i.bk, align 8, !tbaa !112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !284
  %i.bm = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit, label %.lr.ph.i4.epil, !llvm.loop !365

_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit.loopexit.unr-lcssa, %.lr.ph.i4.epil, %bb.f, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St10unique_ptrINS_11PendingTypeESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit
  store i64 0, ptr %i.a, align 8, !tbaa !139
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_4TypeESt10unique_ptrINS_11PendingTypeESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(34) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !148
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.f = icmp ugt i64 %i.e, %1
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.r, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = load i32, ptr %i.j, align 8, !tbaa !104
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void %i.n(ptr noundef nonnull %i.o)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %i.r = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.e
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_St10unique_ptrINS_15PendingTypePackESt14default_deleteIS7_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit: ; preds = %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !99
  tail call void @_ZdlPv(ptr noundef %.pre.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %0, i8 0, i64 16, i1 false)
  br label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE4fillEPSt4pairIS4_S9_EmRKS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i
  %.04.i = phi i64 [ %i.ac, %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load i32, ptr %i.u, align 8, !tbaa !104
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_11TypePackVarEEENS1_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEE9tableDtorE, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke void %i.y(ptr noundef nonnull %i.z)
          to label %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable

_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 88) #24
  br label %_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4Luau15PendingTypePackESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4Luau15PendingTypePackEEclEPS1_.exit.i.i, %.lr.ph.i
  %i.ac = add nuw i64 %.04.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.e
  br i1 %exitcond.not.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_11TypePackVarESt10unique_ptrINS_15PendingTypePackESt14default_deleteIS6_EEE7destroyEPSt4pairIS4_S9_Em.exit, label %.lr.ph.i, !llvm.loop !2
end_hunk_9
