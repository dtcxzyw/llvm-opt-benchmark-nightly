inline.NumInlined: 1150
inline.NumDeleted: 672
begin_hunk_0_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  %.sroa.516.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.59.021.i.i.i.i.i63 = phi i32 [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.07.020.i.i.i.i.i64 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %i.cx = zext nneg i32 %.sroa.516.023.i.i.i.i.i to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = zext nneg i32 %.sroa.59.021.i.i.i.i.i63 to i64
  %i.da = shl nuw i64 1, %i.cz                    ; 2 uses
  %i.db = load i64, ptr %.sroa.013.022.i.i.i.i.i, align 8, !tbaa !135
  %i.dc = and i64 %i.db, %i.cy
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = load i64, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !135
  %i.de = or i64 %i.dd, %i.da
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.df = xor i64 %i.da, -1
  %i.dg = load i64, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !135
  %i.dh = and i64 %i.dg, %i.df
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.de, %bb.r ], [ %i.dh, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !135
  %i.di = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.dj = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i68 = select i1 %i.dj, i64 8, i64 0
  %spec.select.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i68
  %spec.select19.i.i.i.i.i70 = select i1 %i.dj, i32 0, i32 %i.di
  %i.dk = add i32 %.sroa.59.021.i.i.i.i.i63, 1
  %i.dl = icmp eq i32 %.sroa.59.021.i.i.i.i.i63, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dl, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i64, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %.sroa.59.1.i.i.i.i.i73 = select i1 %i.dl, i32 0, i32 %i.dk ; 2 uses
  %i.dm = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dn = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !141

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.07.0.lcssa.i.i.i.i.i58 = phi ptr [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.59.0.lcssa.i.i.i.i.i59 = phi i32 [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.do = ashr exact i64 %i.aw, 3
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.aw) #21
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dr = lshr i64 %i.bf, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dr
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !22
  store ptr %i.bi, ptr %0, align 8
  %.sroa.588.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.588.0..sroa_idx89, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i58, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i59, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !142
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !142
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !108 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 120) #21
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i, !llvm.loop !143

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.164, align 8            ; 6 uses
  %7 = alloca %class.anon.165, align 8            ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %8 = alloca %class.anon.164, align 8            ; 6 uses
  %9 = alloca %class.anon.165, align 8            ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %10 = alloca %class.anon.157, align 8           ; 11 uses
  %i.d = alloca i64, align 8                      ; 33 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 19 uses
  %12 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.f = alloca ptr, align 8                      ; 19 uses
  %13 = alloca %"class.std::shared_ptr.84", align 8 ; 7 uses
  %14 = alloca %"class.std::vector.99", align 8   ; 22 uses
  %i.g = alloca i32, align 4                      ; 14 uses
  %15 = alloca %"class.folly::Range", align 8     ; 6 uses
  %16 = alloca %"class.folly::Range", align 8     ; 6 uses
  %17 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = load ptr, ptr %2, align 8, !tbaa !147
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  store i64 %i.n, ptr %i.d, align 8, !tbaa !135
  %i.o = load ptr, ptr %4, align 8, !tbaa !148    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !185
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.r)
  %i.s = load ptr, ptr %5, align 8, !tbaa !186    ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(94) %i.s, ptr noundef nonnull align 8 dereferenceable(38) %1)
  %i.w = load ptr, ptr %5, align 8, !tbaa !186
  %i.x = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.w, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #19 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !202, !noalias !199
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !217, !noalias !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  tail call void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.ab, i32 noundef %i.z, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.af), !noalias !199
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !218, !noalias !199, !nonnull !68, !noundef !68 ; 2 uses
  store ptr %i.ag, ptr %11, align 8, !tbaa !218, !alias.scope !199
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !199 ; 0 uses
  %.pre = load ptr, ptr %11, align 8, !tbaa !218  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !219
  %i.al = and i8 %i.ak, 2
  %.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.i, label %bb.b, label %bb.a, !prof !80

bb.a:                                             ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #23
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224
  store ptr %i.an, ptr %i.e, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !202, !noalias !227
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !217, !noalias !227
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.ap, i32 noundef %i.ao, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.as)
          to label %.noexc56 unwind label %bb.ab

.noexc56:                                         ; preds = %bb.b
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !218, !noalias !227, !nonnull !68, !noundef !68 ; 2 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !218, !alias.scope !227
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = atomicrmw add ptr %i.au, i32 1 acq_rel, align 4, !noalias !227 ; 0 uses
  %.pre443 = load ptr, ptr %12, align 8, !tbaa !218 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre443, i64 44
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !219
  %i.ay = and i8 %i.ax, 2
  %.not.i57 = icmp eq i8 %i.ay, 0
  br i1 %.not.i57, label %bb.d, label %bb.c, !prof !80

bb.c:                                             ; preds = %.noexc56
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #23
          to label %.noexc58 unwind label %bb.ac

.noexc58:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc56
  %i.az = getelementptr inbounds nuw i8, ptr %.pre443, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !224
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !186 ; 3 uses
  store ptr %i.bc, ptr %13, align 8, !tbaa !186
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre444 = load ptr, ptr %13, align 8, !tbaa !186
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.bl = phi ptr [ %i.bc, %bb.d ], [ %i.bc, %bb.f ], [ %.pre444, %bb.g ] ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !202 ; 25 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !230
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !230
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !231, !range !67, !noundef !68
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.i

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.h
  %.0.in.pre.i.i = load i8, ptr %i.br, align 4, !tbaa !56, !range !67
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !232
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.y, align 8, !tbaa !189 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !233
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %1, align 8, !tbaa !234   ; 2 uses
  %.not.i.i.i61 = icmp sgt i32 %i.by, 0
  br i1 %.not.i.i.i61, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cd = and i32 %i.by, 2147483584               ; 3 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %.not37.i.i.not.i.i616.not = icmp eq i32 %i.cd, 0
  br i1 %.not37.i.i.not.i.i616.not, label %.critedge.i.i.i.i, label %.lr.ph619.a

bb.m:                                             ; preds = %.lr.ph619.a
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i617, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ce
  br i1 %.not37.i.i.not.i.i, label %.lr.ph619.a, label %.critedge.i.i.i.i, !llvm.loop !235

.lr.ph619.a:                                      ; preds = %bb.l, %bb.m
  %indvars.iv.i.i617 = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.cf = lshr exact i64 %indvars.iv.i.i617, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !135
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !235

.critedge.i.i.i.i:                                ; preds = %bb.m, %bb.l
  %.not38.i.i.i.i = icmp eq i32 %i.by, %i.cd
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i.i
  %i.cj = lshr i32 %i.by, 6
  %i.ck = and i32 %i.by, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.cl
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !135
  %.demorgan.i.i = or i64 %i.co, %notmask.i40.i.i.i.i
  %i.cp = icmp eq i64 %.demorgan.i.i, -1
  %i.cq = zext i1 %i.cp to i16
  %i.cr = or disjoint i16 %i.cq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph619.a, %bb.n, %.critedge.i.i.i.i, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.j ], [ 256, %bb.i ], [ 257, %bb.k ], [ 257, %.critedge.i.i.i.i ], [ %i.cr, %bb.n ], [ 256, %.lr.ph619.a ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
.lr.ph.i85:                                       ; preds = %bb.aq
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.lj = sext i32 %i.lg to i64
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !135
  %i.lk = load ptr, ptr %i.e, align 8, !tbaa !225
  %i.ll = load ptr, ptr %i.f, align 8, !tbaa !225
  %.pre14.i.i = trunc i64 %.pre.i to i32          ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i, %.lr.ph.i85
  %i.lm = phi ptr [ %.promoted, %.lr.ph.i85 ], [ %i.ml, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ] ; 5 uses
  %i.ln = phi ptr [ %.pre13.i, %.lr.ph.i85 ], [ %i.mm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ] ; 3 uses
  %i.lo = phi ptr [ %.promoted, %.lr.ph.i85 ], [ %i.mn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ] ; 5 uses
  %indvars.iv.i86 = phi i64 [ %i.lj, %.lr.ph.i85 ], [ %indvars.iv.next.i88, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ] ; 5 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %indvars.iv.i86
  store i32 %.pre14.i.i, ptr %i.lp, align 4, !tbaa !3
  %i.lq = load i32, ptr %i.g, align 4, !tbaa !3   ; 4 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %indvars.iv.i86
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !3
  %.not.i.i.i.i87 = icmp eq ptr %i.lo, %i.ln
  br i1 %.not.i.i.i.i87, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ls = trunc nsw i64 %indvars.iv.i86 to i32
  store i32 %i.ls, ptr %i.lo, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.lq, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12 ; 2 uses
  store ptr %i.lt, ptr %i.li, align 8, !tbaa !253
  %.pre449.a = load i32, ptr %i.g, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.lu = ptrtoint ptr %i.ln to i64
  %i.lv = ptrtoint ptr %i.lm to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 6 uses
  %i.lx = icmp eq i64 %i.lw, 9223372036854775800
  br i1 %i.lx, label %.invoke, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

.invoke:                                          ; preds = %bb.bf, %bb.bk, %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.at
  %i.ly = sdiv exact i64 %i.lw, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ly, i64 1)
  %i.lz = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ly ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %i.mb = tail call i64 @llvm.umin.i64(i64 %i.lz, i64 768614336404564650)
  %i.mc = select i1 %i.ma, i64 768614336404564650, i64 %i.mb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.mc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.md = mul nuw nsw i64 %i.mc, 12
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #20
          to label %.noexc101 unwind label %.loopexit ; 5 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.lw ; 4 uses
  %i.mg = trunc nsw i64 %indvars.iv.i86 to i32
  store i32 %i.mg, ptr %i.mf, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 %i.lq, ptr %.sroa.5.0..sroa_idx4.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i.i, align 4, !tbaa !3
  %i.mh = icmp sgt i64 %i.lw, 0
  br i1 %i.mh, label %bb.au, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.au:                                            ; preds = %.noexc101
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.me, ptr align 4 %i.lm, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.au, %.noexc101
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 12 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lw) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.av, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.me, ptr %14, align 8, !tbaa !250
  store ptr %i.mi, ptr %i.li, align 8, !tbaa !253
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mc ; 2 uses
  store ptr %i.mj, ptr %i.jz, align 8, !tbaa !254
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.as
  %i.mk = phi i32 [ %.pre449.a, %bb.as ], [ %i.lq, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.ml = phi ptr [ %i.lm, %bb.as ], [ %i.me, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.mm = phi ptr [ %i.ln, %bb.as ], [ %i.mj, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.mn = phi ptr [ %i.lt, %bb.as ], [ %i.mi, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.mo = add i32 %i.mk, %.pre14.i.i
  store i32 %i.mo, ptr %i.g, align 4, !tbaa !3
  %indvars.iv.next.i88 = add nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i88 to i32
  %exitcond.not.i89 = icmp eq i32 %i.jw, %lftr.wideiv.i
  br i1 %exitcond.not.i89, label %.loopexit389, label %bb.ar, !llvm.loop !255

bb.aw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i66
  %i.mp = load ptr, ptr %1, align 8, !tbaa !234   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !232 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.e, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.d, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.f, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.g, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %14, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.mp, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i4.i = icmp slt i32 %i.mr, %i.jw
  br i1 %.not.i.i.i4.i, label %bb.ax, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ms = add i32 %i.mr, 63                       ; 2 uses
  %i.mt = srem i32 %i.ms, 64
  %i.mu = sub nsw i32 %i.ms, %i.mt                ; 6 uses
  %i.mv = and i32 %i.jw, 2147483584               ; 4 uses
  %i.mw = icmp slt i32 %i.mv, %i.mu
  br i1 %i.mw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mx = and i32 %i.jw, 63
  %i.my = zext nneg i32 %i.mx to i64
  %notmask.i.i.i.i.i83 = shl nsw i64 -1, %i.my
  %i.mz = xor i64 %notmask.i.i.i.i.i83, -1
  %i.na = sub nsw i32 %i.mu, %i.mr                ; 2 uses
  %i.nb = zext nneg i32 %i.na to i64
  %notmask.i.i.i.i.i.i84 = shl nsw i64 -1, %i.nb
  %i.nc = xor i64 %notmask.i.i.i.i.i.i84, -1
  %i.nd = sub nsw i32 64, %i.na
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl i64 %i.nc, %i.ne
  %i.ng = and i64 %i.nf, %i.mz
  br label %.invoke567

.invoke567:                                       ; preds = %bb.bn, %bb.ay
  %i.nh = phi i64 [ %i.ng, %bb.ay ], [ %i.qv, %bb.bn ]
  %i.ni = lshr i32 %i.jw, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(56) %10, i32 noundef %i.ni, i64 noundef %i.nh)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  %.not32.i.i.i.i73 = icmp eq i32 %i.mr, %i.mu
  br i1 %.not32.i.i.i.i73, label %.noexc103, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nj = sdiv i32 %i.mr, 64
  %i.nk = sub nsw i32 %i.mu, %i.mr                ; 2 uses
  %i.nl = zext nneg i32 %i.nk to i64
  %notmask.i.i35.i.i.i.i74 = shl nsw i64 -1, %i.nl
  %i.nm = xor i64 %notmask.i.i35.i.i.i.i74, -1
  %i.nn = sub nsw i32 64, %i.nk
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = shl i64 %i.nm, %i.no
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(56) %10, i32 noundef %i.nj, i64 noundef %i.np)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.ba, %bb.az
  %i.nq = add nsw i32 %i.mu, 64                   ; 2 uses
  %.not3338.i.i.i.i = icmp sgt i32 %i.nq, %i.mv
  br i1 %.not3338.i.i.i.i, label %._crit_edge.i.i.i.i77, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %.noexc103
  %i.nr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  br label %bb.bb

._crit_edge.i.i.i.i77:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %.noexc103
  %.not34.i.i.i.i78 = icmp eq i32 %i.jw, %i.mv
  br i1 %.not34.i.i.i.i78, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i, label %bb.bn

bb.bb:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i75
  %i.ns = phi i32 [ %i.nq, %.lr.ph.i.i.i.i75 ], [ %i.qs, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.039.i.i.i.i = phi i32 [ %i.mu, %.lr.ph.i.i.i.i75 ], [ %i.ns, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.nt = sdiv i32 %.039.i.i.i.i, 64              ; 3 uses
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !135 ; 2 uses
  switch i64 %i.nw, label %.lr.ph.i.i.i.i.i81 [
    i64 -1, label %bb.bc
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i81:                               ; preds = %bb.bb
  %i.nx = shl nsw i32 %i.nt, 6
  %.pre43.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !135
  %.pre44.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !253
  %.pre45.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !254
  br label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.ny = shl nsw i32 %i.nt, 6                    ; 2 uses
  %i.nz = add i32 %i.ny, 64
  %i.oa = sext i32 %i.nz to i64
  %.0.off.i.i.i.i79 = add i32 %.039.i.i.i.i, 127
  %.not41.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i79, 64
  br i1 %.not41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph40.i.i.i.i.i

.lr.ph40.i.i.i.i.i:                               ; preds = %bb.bc
  %i.ob = sext i32 %i.ny to i64
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !135
  %.pre41.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !253
  %.pre42.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !254
  br label %bb.bd

bb.bd:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i, %.lr.ph40.i.i.i.i.i
  %i.oc = phi ptr [ %.pre42.i.i.i.i, %.lr.ph40.i.i.i.i.i ], [ %i.pb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.od = phi ptr [ %.pre41.i.i.i.i, %.lr.ph40.i.i.i.i.i ], [ %i.pc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 5 uses
  %18 = phi i64 [ %.pre.i.i.i.i, %.lr.ph40.i.i.i.i.i ], [ %i.pd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.039.i.i.i.i.i.a = phi i64 [ %i.ob, %.lr.ph40.i.i.i.i.i ], [ %i.pg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %19 = trunc i64 %.039.i.i.i.i.i.a to i32        ; 2 uses
  %i.oe = trunc i64 %18 to i32                    ; 3 uses
  %20 = load ptr, ptr %i.e, align 8, !tbaa !225
  %sext.i.i.i.i.i80 = shl i64 %.039.i.i.i.i.i.a, 32
  %i.of = ashr exact i64 %sext.i.i.i.i.i80, 32    ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %20, i64 %i.of
  store i32 %i.oe, ptr %i.og, align 4, !tbaa !3
  %i.oh = load i32, ptr %i.g, align 4, !tbaa !3   ; 3 uses
  %21 = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.oi = getelementptr inbounds [4 x i8], ptr %21, i64 %i.of
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !3
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.od, %i.oc
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %19, ptr %i.od, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  store i32 %i.oh, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 12 ; 2 uses
  store ptr %i.oj, ptr %i.nr, align 8, !tbaa !253
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ok = load ptr, ptr %14, align 8, !tbaa !250  ; 4 uses
  %i.ol = ptrtoint ptr %i.oc to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 6 uses
  %i.oo = icmp eq i64 %i.on, 9223372036854775800
  br i1 %i.oo, label %.invoke, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.op = sdiv exact i64 %i.on, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.op, i64 1)
  %i.oq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.op ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.op
  %i.os = call i64 @llvm.umin.i64(i64 %i.oq, i64 768614336404564650)
  %i.ot = select i1 %i.or, i64 768614336404564650, i64 %i.os ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ot, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ou = mul nuw nsw i64 %i.ot, 12
  %i.ov = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #20
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 %i.on ; 4 uses
  store i32 %19, ptr %i.ow, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.oh, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ox = icmp sgt i64 %i.on, 0
  br i1 %i.ox, label %bb.bg, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ov, ptr align 4 %i.ok, i64 %i.on, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %.noexc105
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 12 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.on) #21
  %.pre8.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.pre14.i.i.i.i.i.i = trunc i64 %.pre8.pre.i.i.i.i.i.i to i32
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i
  %i.oz = phi i64 [ %.pre8.pre.i.i.i.i.i.i, %bb.bh ], [ %18, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i ]
  %.pre13.pre-phi.i.i.i.i.i.i = phi i32 [ %.pre14.i.i.i.i.i.i, %bb.bh ], [ %i.oe, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i.i ]
  store ptr %i.ov, ptr %14, align 8, !tbaa !250
  store ptr %i.oy, ptr %i.nr, align 8, !tbaa !253
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.ot ; 2 uses
  store ptr %i.pa, ptr %i.jz, align 8, !tbaa !254
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.be
  %i.pb = phi ptr [ %i.oc, %bb.be ], [ %i.pa, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.pc = phi ptr [ %i.oj, %bb.be ], [ %i.oy, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.pd = phi i64 [ %18, %bb.be ], [ %i.oz, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.oe, %bb.be ], [ %.pre13.pre-phi.i.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.pe = load i32, ptr %i.g, align 4, !tbaa !3
  %i.pf = add i32 %i.pe, %.pre-phi.i.i.i.i.i.i
  store i32 %i.pf, ptr %i.g, align 4, !tbaa !3
  %i.pg = add nuw i64 %.039.i.i.i.i.i.a, 1        ; 2 uses
  %i.ph = icmp ult i64 %i.pg, %i.oa
  br i1 %i.ph, label %bb.bd, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !256

bb.bi:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i, %.lr.ph.i.i.i.i.i81
  %i.pi = phi ptr [ %.pre45.i.i.i.i, %.lr.ph.i.i.i.i.i81 ], [ %i.ql, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i ] ; 3 uses
  %i.pj = phi ptr [ %.pre44.i.i.i.i, %.lr.ph.i.i.i.i.i81 ], [ %i.qm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i ] ; 5 uses
  %i.pk = phi i64 [ %.pre43.i.i.i.i, %.lr.ph.i.i.i.i.i81 ], [ %i.qn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i ] ; 3 uses
  %.01538.i.i.i.i.i = phi i64 [ %i.nw, %.lr.ph.i.i.i.i.i81 ], [ %i.qr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i ] ; 3 uses
  %i.pl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01538.i.i.i.i.i, i1 true)
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = or disjoint i32 %i.nx, %i.pm            ; 3 uses
  %i.po = trunc i64 %i.pk to i32                  ; 3 uses
  %22 = load ptr, ptr %i.e, align 8, !tbaa !225
  %i.pp = sext i32 %i.pn to i64                   ; 2 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %22, i64 %i.pp
  store i32 %i.po, ptr %i.pq, align 4, !tbaa !3
  %i.pr = load i32, ptr %i.g, align 4, !tbaa !3   ; 3 uses
  %23 = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.ps = getelementptr inbounds [4 x i8], ptr %23, i64 %i.pp
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !3
  %.not.i.i.i17.i.i.i.i.i = icmp eq ptr %i.pj, %i.pi
  br i1 %.not.i.i.i17.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.pn, ptr %i.pj, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i32 %i.pr, ptr %.sroa.5.0..sroa_idx.i18.i.i.i.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i19.i.i.i.i.i, align 4, !tbaa !3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 12 ; 2 uses
  store ptr %i.pt, ptr %i.nr, align 8, !tbaa !253
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.pu = load ptr, ptr %14, align 8, !tbaa !250  ; 4 uses
  %i.pv = ptrtoint ptr %i.pi to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw                    ; 6 uses
  %i.py = icmp eq i64 %i.px, 9223372036854775800
  br i1 %i.py, label %.invoke, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i21.i.i.i.i.i

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i21.i.i.i.i.i: ; preds = %bb.bk
  %i.pz = sdiv exact i64 %i.px, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i22.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pz, i64 1)
  %i.qa = add nsw i64 %.sroa.speculated.i.i.i.i.i22.i.i.i.i.i, %i.pz ; 2 uses
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %i.qc = call i64 @llvm.umin.i64(i64 %i.qa, i64 768614336404564650)
  %i.qd = select i1 %i.qb, i64 768614336404564650, i64 %i.qc ; 3 uses
  %.not.i.i.i.i.i23.i.i.i.i.i = icmp ne i64 %i.qd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i23.i.i.i.i.i)
  %i.qe = mul nuw nsw i64 %i.qd, 12
  %i.qf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qe) #20
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i21.i.i.i.i.i
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 %i.px ; 4 uses
  store i32 %i.pn, ptr %i.qg, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx4.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  store i32 %i.pr, ptr %.sroa.5.0..sroa_idx4.i24.i.i.i.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx6.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i25.i.i.i.i.i, align 4, !tbaa !3
  %i.qh = icmp sgt i64 %i.px, 0
  br i1 %i.qh, label %bb.bl, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i

bb.bl:                                            ; preds = %.noexc107
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qf, ptr align 4 %i.pu, i64 %i.px, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i: ; preds = %bb.bl, %.noexc107
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 12 ; 2 uses
  %.not.i17.i.i.i.i27.i.i.i.i.i = icmp eq ptr %i.pu, null
  br i1 %.not.i17.i.i.i.i27.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.px) #21
  %.pre8.pre.i29.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.pre14.i31.i.i.i.i.i = trunc i64 %.pre8.pre.i29.i.i.i.i.i to i32
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i: ; preds = %bb.bm, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i
  %i.qj = phi i64 [ %.pre8.pre.i29.i.i.i.i.i, %bb.bm ], [ %i.pk, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i ]
  %.pre13.pre-phi.i33.i.i.i.i.i = phi i32 [ %.pre14.i31.i.i.i.i.i, %bb.bm ], [ %i.po, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i26.i.i.i.i.i ]
  store ptr %i.qf, ptr %14, align 8, !tbaa !250
  store ptr %i.qi, ptr %i.nr, align 8, !tbaa !253
  %i.qk = getelementptr inbounds nuw [12 x i8], ptr %i.qf, i64 %i.qd ; 2 uses
  store ptr %i.qk, ptr %i.jz, align 8, !tbaa !254
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i, %bb.bj
  %i.ql = phi ptr [ %i.pi, %bb.bj ], [ %i.qk, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i ]
  %i.qm = phi ptr [ %i.pt, %bb.bj ], [ %i.qi, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i ]
  %i.qn = phi i64 [ %i.pk, %bb.bj ], [ %i.qj, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i ]
  %.pre-phi.i20.i.i.i.i.i = phi i32 [ %i.po, %bb.bj ], [ %.pre13.pre-phi.i33.i.i.i.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i32.i.i.i.i.i ]
  %i.qo = load i32, ptr %i.g, align 4, !tbaa !3
  %i.qp = add i32 %i.qo, %.pre-phi.i20.i.i.i.i.i
  store i32 %i.qp, ptr %i.g, align 4, !tbaa !3
  %i.qq = add i64 %.01538.i.i.i.i.i, -1
  %i.qr = and i64 %i.qq, %.01538.i.i.i.i.i        ; 2 uses
  %.not.i.i.i.i.i82 = icmp eq i64 %i.qr, 0
  br i1 %.not.i.i.i.i.i82, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.bi, !llvm.loop !257

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit35.i.i.i.i.i, %bb.bc, %bb.bb
  %i.qs = add nsw i32 %i.ns, 64                   ; 2 uses
  %.not33.i.i.i.i76 = icmp sgt i32 %i.qs, %i.mv
  br i1 %.not33.i.i.i.i76, label %._crit_edge.i.i.i.i77, label %bb.bb, !llvm.loop !258

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i77
  %i.qt = and i32 %i.jw, 63
  %i.qu = zext nneg i32 %i.qt to i64
  %notmask.i36.i.i.i.i = shl nsw i64 -1, %i.qu
  %i.qv = xor i64 %notmask.i36.i.i.i.i, -1
  br label %.invoke567

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i: ; preds = %.invoke567, %._crit_edge.i.i.i.i77, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre450.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !253
  br label %.loopexit389

.loopexit389:                                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i, %bb.aq, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i
  %i.qw = phi ptr [ %.pre450.a, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiiT_.exit.i ], [ %.promoted, %bb.aq ], [ %i.mn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ]
  %i.qx = load ptr, ptr %2, align 8, !tbaa !147
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.qz = load ptr, ptr %14, align 8, !tbaa !250  ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.rb = ptrtoint ptr %i.qw to i64
  %i.rc = ptrtoint ptr %i.qz to i64
  %i.rd = sub i64 %i.rb, %i.rc
  store ptr %i.qz, ptr %15, align 8, !tbaa !259
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rd
  store ptr %i.rf, ptr %i.re, align 8, !tbaa !261
  %i.rg = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 216
  %i.ri = load ptr, ptr %i.rh, align 8
  invoke void %i.ri(ptr noundef nonnull align 8 dereferenceable(94) %i.bl, ptr noundef %i.qy, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %.loopexit389
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.rj = load i64, ptr %i.d, align 8, !tbaa !135
  %i.rk = icmp ugt i64 %i.rj, 1
  br i1 %i.rk, label %.lr.ph418, label %._crit_edge419

.lr.ph418:                                        ; preds = %bb.bo
  %i.rl = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.bs

._crit_edge419:                                   ; preds = %bb.bt, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.rm = load ptr, ptr %14, align 8, !tbaa !250  ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge419
  %i.rn = load ptr, ptr %i.jz, align 8, !tbaa !254
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rq) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit: ; preds = %._crit_edge419, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_M_allocateEm.exit.i, %bb.aj
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i21.i.i.i.i.i
  %lpad.loopexit390 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke567, %.invoke, %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.br:                                            ; preds = %.loopexit389
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.loopexit.split-lp

bb.bs:                                            ; preds = %.lr.ph418, %bb.bt
  %indvars.iv440 = phi i64 [ 1, %.lr.ph418 ], [ %indvars.iv.next441, %bb.bt ] ; 2 uses
  %i.rt = load ptr, ptr %14, align 8, !tbaa !262  ; 5 uses
  %i.ru = load ptr, ptr %i.ra, align 8, !tbaa !262 ; 3 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %._crit_edge415, label %.lr.ph414

.lr.ph414:                                        ; preds = %bb.bs, %.lr.ph414
  %.sroa.0275.0412 = phi ptr [ %i.rz, %.lr.ph414 ], [ %i.rt, %bb.bs ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0275.0412, i64 4 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !263
  %i.ry = add nsw i32 %i.rx, 1
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !263
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0275.0412, i64 12 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.ru
  br i1 %i.sa, label %._crit_edge415, label %.lr.ph414

._crit_edge415:                                   ; preds = %.lr.ph414, %bb.bs
  %i.sb = load ptr, ptr %2, align 8, !tbaa !147
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.sb, i64 %indvars.iv440
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.se = ptrtoint ptr %i.ru to i64
  %i.sf = ptrtoint ptr %i.rt to i64
  %i.sg = sub i64 %i.se, %i.sf
  store ptr %i.rt, ptr %16, align 8, !tbaa !259
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.sg
  store ptr %i.sh, ptr %i.rl, align 8, !tbaa !261
  %i.si = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 216
  %i.sk = load ptr, ptr %i.sj, align 8
  invoke void %i.sk(ptr noundef nonnull align 8 dereferenceable(94) %i.bl, ptr noundef %i.sd, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %._crit_edge415
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %i.sl = load i64, ptr %i.d, align 8, !tbaa !135
  %i.sm = icmp ugt i64 %i.sl, %indvars.iv.next441
  br i1 %i.sm, label %bb.bs, label %._crit_edge419, !llvm.loop !265

bb.bu:                                            ; preds = %._crit_edge415
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bu, %bb.br
  %.pn47 = phi { ptr, i32 } [ %i.sn, %bb.bu ], [ %i.rs, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit390, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit393, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp, %bb.bq
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %.loopexit.split-lp ], [ %i.rr, %bb.bq ]
  %i.so = load ptr, ptr %14, align 8, !tbaa !250  ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit111, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !254
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.st) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit111

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit111: ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.eo

bb.bx:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.su = load i32, ptr %i.bm, align 8, !tbaa !202 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %17, i64 37 ; 15 uses
  store i8 0, ptr %i.sv, align 1, !tbaa !231
  %i.sw = sext i32 %i.su to i64                   ; 2 uses
  %i.sx = add nsw i64 %i.sw, 63
  %i.sy = lshr i64 %i.sx, 6                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %17, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !135
  %.not.i112 = icmp eq i64 %i.sy, 0
  br i1 %.not.i112, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %17, ptr null, i64 noundef %i.sy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %._crit_edge445 unwind label %bb.bz

._crit_edge445:                                   ; preds = %bb.by
  %.pre446 = load i32, ptr %i.bm, align 8, !tbaa !202 ; 2 uses
end_hunk_1
