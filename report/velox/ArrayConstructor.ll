Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayConstructor?download=true
inline.NumInlined: 1155
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.db = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.de = shl nuw i64 1, %i.dd                    ; 2 uses
  %i.df = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !129
  %i.dg = and i64 %i.df, %i.dc
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !129
  %i.di = or i64 %i.dh, %i.de
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = xor i64 %i.de, -1
  %i.dk = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !129
  %i.dl = and i64 %i.dk, %i.dj
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.di, %bb.r ], [ %i.dl, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !129
  %i.dm = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dn = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dn, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dn, i32 0, i32 %i.dm
  %i.do = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dp = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dp, i32 0, i32 %i.do ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dp, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dq = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dr = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !240

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.bj, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !66  ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.bl                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dw
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.du) #21
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dy = lshr i64 %i.bf, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dy
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !66
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !guid !243 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !242
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !80   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !80
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !242
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !245 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !119 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !72
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !72
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 120) #21
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i, !llvm.loop !244

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !61
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !guid !246 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_116ArrayConstructorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 !guid !247 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !282 {
_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.164, align 8            ; 6 uses
  %7 = alloca %class.anon.165, align 8            ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %8 = alloca %class.anon.164, align 8            ; 6 uses
  %9 = alloca %class.anon.165, align 8            ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.84", align 8 ; 8 uses
  %13 = alloca %"class.folly::Range", align 8     ; 6 uses
  %14 = alloca %"class.folly::Range", align 8     ; 6 uses
  %15 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 32 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.f = load ptr, ptr %2, align 8, !tbaa !286
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4                   ; 5 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !301    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !322
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !323
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.n)
  %i.o = load ptr, ptr %5, align 8, !tbaa !326    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(94) %i.o, ptr noundef nonnull align 8 dereferenceable(38) %1)
  %i.s = load ptr, ptr %5, align 8, !tbaa !326
  %i.t = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.s, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #19 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 15 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !337, !noalias !327
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !338, !noalias !327
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  tail call void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.x, i32 noundef %i.v, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab), !noalias !327
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !146, !noalias !327, !nonnull !95, !noundef !95 ; 2 uses
  store ptr %i.ac, ptr %10, align 8, !tbaa !146, !alias.scope !327
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !327 ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !146  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !339
  %i.ah = and i8 %i.ag, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.b, label %bb.a, !prof !105

bb.a:                                             ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #23
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !340 ; 27 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.al = load i32, ptr %i.u, align 8, !tbaa !140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.am = load i32, ptr %i.w, align 8, !tbaa !337, !noalias !341
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !338, !noalias !341
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.am, i32 noundef %i.al, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.ap)
          to label %.noexc56 unwind label %bb.ab

.noexc56:                                         ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !146, !noalias !341, !nonnull !95, !noundef !95 ; 2 uses
  store ptr %i.aq, ptr %11, align 8, !tbaa !146, !alias.scope !341
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !341 ; 0 uses
  %.pre661 = load ptr, ptr %11, align 8, !tbaa !146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre661, i64 44
  %i.au = load i8, ptr %i.at, align 4, !tbaa !339
  %i.av = and i8 %i.au, 2
  %.not.i57 = icmp eq i8 %i.av, 0
  br i1 %.not.i57, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %.noexc56
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #23
          to label %.noexc58 unwind label %bb.ac

.noexc58:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc56
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre661, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !340 ; 27 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !326 ; 3 uses
  store ptr %i.ba, ptr %12, align 8, !tbaa !326
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !80
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  %.pre662 = load ptr, ptr %12, align 8, !tbaa !326
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.bj = phi ptr [ %i.ba, %bb.d ], [ %i.ba, %bb.f ], [ %.pre662, %bb.g ] ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !337 ; 29 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !342
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !342
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !151, !range !94, !noundef !95
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.i

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.h
  %.0.in.pre.i.i = load i8, ptr %i.bp, align 4, !tbaa !90, !range !94
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !152
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !140 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !153
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %1, align 8, !tbaa !154   ; 2 uses
  %.not.i.i.i61 = icmp sgt i32 %i.bw, 0
  br i1 %.not.i.i.i61, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cb = and i32 %i.bw, 2147483584               ; 3 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %.not37.i.i.not.i.i894.not = icmp eq i32 %i.cb, 0
  br i1 %.not37.i.i.not.i.i894.not, label %.critedge.i.i.i.i, label %.lr.ph897

bb.m:                                             ; preds = %.lr.ph897
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i895, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cc
  br i1 %.not37.i.i.not.i.i, label %.lr.ph897, label %.critedge.i.i.i.i, !llvm.loop !252

.lr.ph897:                                        ; preds = %bb.l, %bb.m
  %indvars.iv.i.i895 = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.cd = lshr exact i64 %indvars.iv.i.i895, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !129
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !252

.critedge.i.i.i.i:                                ; preds = %bb.m, %bb.l
  %.not38.i.i.i.i = icmp eq i32 %i.bw, %i.cb
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i.i
  %i.ch = lshr i32 %i.bw, 6
  %i.ci = and i32 %i.bw, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.cj
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %.demorgan.i.i = or i64 %i.cm, %notmask.i40.i.i.i.i
  %i.cn = icmp eq i64 %.demorgan.i.i, -1
  %i.co = zext i1 %i.cn to i16
  %i.cp = or disjoint i16 %i.co, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph897, %bb.n, %.critedge.i.i.i.i, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.j ], [ 256, %bb.i ], [ 257, %bb.k ], [ 257, %.critedge.i.i.i.i ], [ %i.cp, %bb.n ], [ 256, %.lr.ph897 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bp, align 4
  %i.cq = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.cq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !152 ; 8 uses
  br i1 %.0.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ct = load i32, ptr %i.u, align 8, !tbaa !140 ; 2 uses
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %iter.check922, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit

iter.check922:                                    ; preds = %bb.o
  %i.cv = sext i32 %i.cs to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.ct to i64      ; 4 uses
  %i.cw = sub nsw i64 %wide.trip.count.i, %i.cv   ; 7 uses
  %min.iters.check908 = icmp ult i64 %i.cw, 8
  %i.cx = sub i64 %i.ak, %i.ay
  %diff.check910 = icmp ugt i64 %i.cx, -128
  %or.cond = select i1 %min.iters.check908, i1 true, i1 %diff.check910
  br i1 %or.cond, label %vec.epilog.scalar.ph924.preheader, label %vector.main.loop.iter.check911

vector.main.loop.iter.check911:                   ; preds = %iter.check922
  %min.iters.check912 = icmp ult i64 %i.cw, 32
  br i1 %min.iters.check912, label %vec.epilog.ph926, label %vector.ph913

vector.ph913:                                     ; preds = %vector.main.loop.iter.check911
  %i.cy = and i64 %i.cw, 24
  %n.vec914 = and i64 %i.cw, -32                  ; 4 uses
  %i.cz = add nsw i64 %n.vec914, %i.cv
  %broadcast.splatinsert915 = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat916 = shufflevector <8 x i32> %broadcast.splatinsert915, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body917

vector.body917:                                   ; preds = %vector.ph913, %vector.body917
  %index918 = phi i64 [ 0, %vector.ph913 ], [ %index.next919, %vector.body917 ] ; 2 uses
  %i.da = add i64 %index918, %i.cv                ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.da ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store <8 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !80
  store <8 x i32> zeroinitializer, ptr %i.dc, align 4, !tbaa !80
  store <8 x i32> zeroinitializer, ptr %i.dd, align 4, !tbaa !80
  store <8 x i32> zeroinitializer, ptr %i.de, align 4, !tbaa !80
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.da ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <8 x i32> %broadcast.splat916, ptr %i.df, align 4, !tbaa !80
  store <8 x i32> %broadcast.splat916, ptr %i.dg, align 4, !tbaa !80
  store <8 x i32> %broadcast.splat916, ptr %i.dh, align 4, !tbaa !80
  store <8 x i32> %broadcast.splat916, ptr %i.di, align 4, !tbaa !80
  %index.next919 = add nuw i64 %index918, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next919, %n.vec914
  br i1 %i.dj, label %middle.block920, label %vector.body917, !llvm.loop !253

middle.block920:                                  ; preds = %vector.body917
  %cmp.n921 = icmp eq i64 %i.cw, %n.vec914
  br i1 %cmp.n921, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %vec.epilog.iter.check923

vec.epilog.iter.check923:                         ; preds = %middle.block920
  %min.epilog.iters.check925 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check925, label %vec.epilog.scalar.ph924.preheader, label %vec.epilog.ph926, !prof !343

vec.epilog.ph926:                                 ; preds = %vector.main.loop.iter.check911, %vec.epilog.iter.check923
  %vec.epilog.resume.val927 = phi i64 [ %n.vec914, %vec.epilog.iter.check923 ], [ 0, %vector.main.loop.iter.check911 ]
  %n.vec928 = and i64 %i.cw, -8                   ; 3 uses
  %i.dk = add nsw i64 %n.vec928, %i.cv
  %broadcast.splatinsert929 = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat930 = shufflevector <8 x i32> %broadcast.splatinsert929, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body931

vec.epilog.vector.body931:                        ; preds = %vec.epilog.vector.body931, %vec.epilog.ph926
  %index932 = phi i64 [ %vec.epilog.resume.val927, %vec.epilog.ph926 ], [ %index.next933, %vec.epilog.vector.body931 ] ; 2 uses
  %i.dl = add i64 %index932, %i.cv                ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.dl
  store <8 x i32> zeroinitializer, ptr %i.dm, align 4, !tbaa !80
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.dl
  store <8 x i32> %broadcast.splat930, ptr %i.dn, align 4, !tbaa !80
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next933, %n.vec928
  br i1 %i.do, label %vec.epilog.middle.block934, label %vec.epilog.vector.body931, !llvm.loop !254

vec.epilog.middle.block934:                       ; preds = %vec.epilog.vector.body931
  %cmp.n935 = icmp eq i64 %i.cw, %n.vec928
  br i1 %cmp.n935, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %vec.epilog.scalar.ph924.preheader

vec.epilog.scalar.ph924.preheader:                ; preds = %iter.check922, %vec.epilog.iter.check923, %vec.epilog.middle.block934
  %indvars.iv.i.ph = phi i64 [ %i.cv, %iter.check922 ], [ %i.cz, %vec.epilog.iter.check923 ], [ %i.dk, %vec.epilog.middle.block934 ] ; 4 uses
  %i.dp = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.dp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph924.prol.loopexit, label %vec.epilog.scalar.ph924.prol

vec.epilog.scalar.ph924.prol:                     ; preds = %vec.epilog.scalar.ph924.preheader, %vec.epilog.scalar.ph924.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph924.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph924.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph924.prol ], [ 0, %vec.epilog.scalar.ph924.preheader ]
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.i.prol
  store i32 0, ptr %i.dq, align 4, !tbaa !80
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv.i.prol
  store i32 %i.bl, ptr %i.dr, align 4, !tbaa !80
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph924.prol.loopexit, label %vec.epilog.scalar.ph924.prol, !llvm.loop !255

vec.epilog.scalar.ph924.prol.loopexit:            ; preds = %vec.epilog.scalar.ph924.prol, %vec.epilog.scalar.ph924.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph924.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph924.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %vec.epilog.scalar.ph924

vec.epilog.scalar.ph924:                          ; preds = %vec.epilog.scalar.ph924.prol.loopexit, %vec.epilog.scalar.ph924
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph924 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph924.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  store i32 0, ptr %i.du, align 4, !tbaa !80
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  store i32 %i.bl, ptr %i.dv, align 4, !tbaa !80
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  store i32 %i.iv, ptr %i.qr, align 4, !tbaa !80
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.qq
  store i32 %.7, ptr %i.qs, align 4, !tbaa !80
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qm, %i.ql
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.qp, ptr %i.qm, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  store i32 %.7, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !80
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.qt = ptrtoint ptr %i.ql to i64
  %i.qu = ptrtoint ptr %.sroa.0.14 to i64         ; 2 uses
  %i.qv = sub i64 %i.qt, %i.qu                    ; 5 uses
  %i.qw = icmp eq i64 %i.qv, 9223372036854775800
  br i1 %i.qw, label %bb.bx, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.bx
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  %i.qx = sdiv exact i64 %i.qv, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.qx, i64 1)
  %i.qy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.qx ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.qx
  %i.ra = tail call i64 @llvm.umin.i64(i64 %i.qy, i64 768614336404564650)
  %i.rb = select i1 %i.qz, i64 768614336404564650, i64 %i.ra ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.rb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.rc = mul nuw nsw i64 %i.rb, 12
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rc) #20
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 %i.qv ; 4 uses
  store i32 %i.qp, ptr %i.re, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 %.7, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i, align 4, !tbaa !80
  %.sroa.6.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i.i.i.i.i, align 4, !tbaa !80
  %i.rf = icmp sgt i64 %i.qv, 0
  br i1 %i.rf, label %bb.by, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %.noexc127
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rd, ptr align 4 %.sroa.0.14, i64 %i.qv, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.by, %.noexc127
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.14, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i
  %i.rg = ptrtoint ptr %.sroa.48.14 to i64
  %i.rh = sub i64 %i.rg, %i.qu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.14, i64 noundef %i.rh) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw [12 x i8], ptr %i.rd, i64 %i.rb ; 2 uses
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.bv
  %.sroa.0.15 = phi ptr [ %i.rd, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.14, %bb.bv ] ; 2 uses
  %.pn529 = phi ptr [ %i.re, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.qm, %bb.bv ]
  %.sroa.48.15 = phi ptr [ %i.ri, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.48.14, %bb.bv ] ; 2 uses
  %i.rj = phi ptr [ %i.ri, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.ql, %bb.bv ]
  %.sroa.24.8 = getelementptr inbounds nuw i8, ptr %.pn529, i64 12 ; 2 uses
  %i.rk = add i32 %.7, %i.iv                      ; 2 uses
  %i.rl = add i64 %.01519.i.i.i.i.i95, -1
  %i.rm = and i64 %i.rl, %.01519.i.i.i.i.i95      ; 2 uses
  %.not.i41.i.i.i.i96 = icmp eq i64 %i.rm, 0
  br i1 %.not.i41.i.i.i.i96, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.bu, !llvm.loop !266

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit22.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i, %bb.bn, %.lr.ph.i.i.i.i80
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i.i80 ], [ %.2, %bb.bn ], [ %i.rk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i ], [ %i.qi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit22.i.i.i ] ; 2 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %.lr.ph.i.i.i.i80 ], [ %.sroa.0.7, %bb.bn ], [ %.sroa.0.15, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i ], [ %.sroa.0.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit22.i.i.i ] ; 2 uses
  %.sroa.24.4 = phi ptr [ %.sroa.24.3, %.lr.ph.i.i.i.i80 ], [ %.sroa.24.3, %bb.bn ], [ %.sroa.24.8, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i ], [ %.sroa.24.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit22.i.i.i ] ; 2 uses
  %.sroa.48.8 = phi ptr [ %.sroa.48.7, %.lr.ph.i.i.i.i80 ], [ %.sroa.48.7, %bb.bn ], [ %.sroa.48.15, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i.i ], [ %.sroa.48.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit22.i.i.i ] ; 2 uses
  %i.rn = add nsw i32 %i.pb, 64                   ; 2 uses
  %.not33.i.i.i.i82 = icmp sgt i32 %i.rn, %i.lt
  br i1 %.not33.i.i.i.i82, label %._crit_edge.i.i.i.i83, label %.lr.ph.i.i.i.i80, !llvm.loop !267

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i83
  %i.ro = ashr i32 %i.lp, 6
  %i.rp = and i32 %i.lp, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %notmask.i42.i.i.i.i85 = shl nsw i64 -1, %i.rq
  %i.rr = xor i64 %notmask.i42.i.i.i.i85, -1
  %i.rs = sext i32 %i.ro to i64
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.rs
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !129
  %i.rv = and i64 %i.ru, %i.rr                    ; 2 uses
  %.not.i43.i.i.i.i86 = icmp eq i64 %i.rv, 0
  br i1 %.not.i43.i.i.i.i86, label %.loopexit536, label %.preheader.i44.i.i.i.i87

.preheader.i44.i.i.i.i87:                         ; preds = %bb.ca, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i
  %.5 = phi i32 [ %i.sv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %.4, %bb.ca ] ; 4 uses
  %.sroa.0.10 = phi ptr [ %.sroa.0.11, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %.sroa.0.9, %bb.ca ] ; 7 uses
  %.sroa.48.10 = phi ptr [ %.sroa.48.11, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %.sroa.48.9, %bb.ca ] ; 4 uses
  %i.rw = phi ptr [ %i.su, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %.sroa.48.9, %bb.ca ] ; 3 uses
  %i.rx = phi ptr [ %.sroa.24.6, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %.sroa.24.5, %bb.ca ] ; 5 uses
  %.011.i45.i.i.i.i88 = phi i64 [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ], [ %i.rv, %bb.ca ] ; 3 uses
  %i.ry = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i88, i1 true)
  %i.rz = trunc nuw nsw i64 %i.ry to i32
  %i.sa = or disjoint i32 %i.lt, %i.rz            ; 3 uses
  %i.sb = sext i32 %i.sa to i64                   ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.sb
  store i32 %i.iv, ptr %i.sc, align 4, !tbaa !80
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.sb
  store i32 %.5, ptr %i.sd, align 4, !tbaa !80
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.rx, %i.rw
  br i1 %.not.i.i.i.i.i5.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i44.i.i.i.i87
  store i32 %i.sa, ptr %i.rx, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store i32 %.5, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !tbaa !80
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !tbaa !80
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i

bb.cc:                                            ; preds = %.preheader.i44.i.i.i.i87
  %i.se = ptrtoint ptr %i.rw to i64
  %i.sf = ptrtoint ptr %.sroa.0.10 to i64         ; 2 uses
  %i.sg = sub i64 %i.se, %i.sf                    ; 5 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775800
  br i1 %i.sh, label %bb.cd, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128:                                        ; preds = %bb.cd
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.cc
  %i.si = sdiv exact i64 %i.sg, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %i.sj = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.si ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.si
  %i.sl = tail call i64 @llvm.umin.i64(i64 %i.sj, i64 768614336404564650)
  %i.sm = select i1 %i.sk, i64 768614336404564650, i64 %i.sl ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.sm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.sn = mul nuw nsw i64 %i.sm, 12
  %i.so = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sn) #20
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 %i.sg ; 4 uses
  store i32 %i.sa, ptr %i.sp, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i32 %.5, ptr %.sroa.5.0..sroa_idx4.i.i.i.i, align 4, !tbaa !80
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 4, !tbaa !80
  %i.sq = icmp sgt i64 %i.sg, 0
  br i1 %i.sq, label %bb.ce, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.noexc129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.so, ptr align 4 %.sroa.0.10, i64 %i.sg, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i: ; preds = %bb.ce, %.noexc129
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.10, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i
  %i.sr = ptrtoint ptr %.sroa.48.10 to i64
  %i.ss = sub i64 %i.sr, %i.sf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.10, i64 noundef %i.ss) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.cf, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i.i.i
  %i.st = getelementptr inbounds nuw [12 x i8], ptr %i.so, i64 %i.sm ; 2 uses
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, %bb.cb
  %.sroa.0.11 = phi ptr [ %i.so, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.0.10, %bb.cb ] ; 2 uses
  %.pn530 = phi ptr [ %i.sp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.rx, %bb.cb ]
  %.sroa.48.11 = phi ptr [ %i.st, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.48.10, %bb.cb ] ; 2 uses
  %i.su = phi ptr [ %i.st, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.rw, %bb.cb ]
  %.sroa.24.6 = getelementptr inbounds nuw i8, ptr %.pn530, i64 12 ; 2 uses
  %i.sv = add i32 %.5, %i.iv
  %i.sw = add nuw i64 %.011.i45.i.i.i.i88, 9223372036854775807
  %i.sx = and i64 %i.sw, %.011.i45.i.i.i.i88      ; 2 uses
  %.not10.i46.i.i.i.i89 = icmp eq i64 %i.sx, 0
  br i1 %.not10.i46.i.i.i.i89, label %.loopexit536, label %.preheader.i44.i.i.i.i87, !llvm.loop !264

.loopexit536:                                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit56.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i, %bb.aq, %bb.ax, %bb.az, %._crit_edge.i.i.i.i83, %bb.ca
  %.sroa.0.20 = phi ptr [ %.sroa.0.3, %bb.ax ], [ %.sroa.0.3, %bb.aq ], [ %.sroa.0.3, %bb.az ], [ %.sroa.0.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit56.i.i.i ], [ %.sroa.0.9, %._crit_edge.i.i.i.i83 ], [ %.sroa.0.9, %bb.ca ], [ %.sroa.0.19, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ], [ %.sroa.0.11, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ] ; 10 uses
  %.sroa.24.11 = phi ptr [ %.sroa.0.3, %bb.ax ], [ %.sroa.0.3, %bb.aq ], [ %.sroa.0.3, %bb.az ], [ %.sroa.24.9, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit56.i.i.i ], [ %.sroa.24.5, %._crit_edge.i.i.i.i83 ], [ %.sroa.24.5, %bb.ca ], [ %.sroa.24.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ], [ %.sroa.24.6, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ] ; 3 uses
  %.sroa.48.20 = phi ptr [ %.sroa.48.3, %bb.ax ], [ %.sroa.48.3, %bb.aq ], [ %.sroa.48.3, %bb.az ], [ %.sroa.48.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit56.i.i.i ], [ %.sroa.48.9, %._crit_edge.i.i.i.i83 ], [ %.sroa.48.9, %bb.ca ], [ %.sroa.48.19, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i ], [ %.sroa.48.11, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArrayConstructor5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE0_clEi.exit.i.i.i ] ; 3 uses
  %16 = load ptr, ptr %12, align 8, !tbaa !326    ; 4 uses
  %i.sy = load ptr, ptr %2, align 8, !tbaa !286
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ta = ptrtoint ptr %.sroa.24.11 to i64
  %i.tb = ptrtoint ptr %.sroa.0.20 to i64         ; 2 uses
  %i.tc = sub i64 %i.ta, %i.tb
  store ptr %.sroa.0.20, ptr %13, align 8, !tbaa !347
  %i.td = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.20, i64 %i.tc ; 2 uses
  store ptr %i.te, ptr %i.td, align 8, !tbaa !348
  %i.tf = load ptr, ptr %16, align 8, !tbaa !86
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 216
  %i.th = load ptr, ptr %i.tg, align 8
  invoke void %i.th(ptr noundef nonnull align 8 dereferenceable(94) %16, ptr noundef %i.sz, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %.loopexit536
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ti = icmp ugt i64 %i.j, 1
  br i1 %i.ti, label %.preheader.lr.ph, label %._crit_edge605

.preheader.lr.ph:                                 ; preds = %bb.cg
  %i.tj = icmp eq ptr %.sroa.0.20, %.sroa.24.11
  %i.tk = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.cj
  %indvars.iv657 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next658, %bb.cj ] ; 2 uses
  br i1 %i.tj, label %._crit_edge603, label %.lr.ph602

._crit_edge605:                                   ; preds = %bb.cj, %bb.cg
  %.not.i.i.i130 = icmp eq ptr %.sroa.0.20, null
  br i1 %.not.i.i.i130, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge605
  %i.tl = ptrtoint ptr %.sroa.48.20 to i64
  %i.tm = sub i64 %i.tl, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.20, i64 noundef %i.tm) #21
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvT_.exit

.thread:                                          ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ai, %_ZNSt12_Vector_baseIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_M_allocateEm.exit.i
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit132

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i44.i.i.i
  %lpad.loopexit537 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit541 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit544 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i10.i.i.i
  %lpad.loopexit547 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i27.i.i.i
  %lpad.loopexit550 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cd, %bb.bx, %bb.br, %bb.bk, %bb.bc, %bb.au
  %.sroa.0.0.ph.ph.ph.ph.ph.ph = phi ptr [ %.sroa.0.18, %bb.au ], [ %.sroa.0.10, %bb.cd ], [ %.sroa.0.4, %bb.bk ], [ %.sroa.0.14, %bb.bx ], [ %.sroa.0.16, %bb.bc ], [ %.sroa.0.12, %bb.br ]
  %.sroa.48.0.ph.ph.ph.ph.ph.ph = phi ptr [ %.sroa.48.18, %bb.au ], [ %.sroa.48.10, %bb.cd ], [ %.sroa.48.4, %bb.bk ], [ %.sroa.48.14, %bb.bx ], [ %.sroa.48.16, %bb.bc ], [ %.sroa.48.12, %bb.br ]
  %lpad.loopexit.split-lp551 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ci:                                            ; preds = %.loopexit536
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.loopexit.split-lp

.lr.ph602:                                        ; preds = %.preheader, %.lr.ph602
  %.sroa.0295.0601 = phi ptr [ %i.ts, %.lr.ph602 ], [ %.sroa.0.20, %.preheader ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0295.0601, i64 4 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !350
  %i.tr = add nsw i32 %i.tq, 1
  store i32 %i.tr, ptr %i.tp, align 4, !tbaa !350
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0295.0601, i64 12 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %.sroa.24.11
  br i1 %i.tt, label %._crit_edge603, label %.lr.ph602

._crit_edge603:                                   ; preds = %.lr.ph602, %.preheader
  %i.tu = load ptr, ptr %2, align 8, !tbaa !286
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.tu, i64 %indvars.iv657
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %.sroa.0.20, ptr %14, align 8, !tbaa !347
  store ptr %i.te, ptr %i.tk, align 8, !tbaa !348
  %i.tx = load ptr, ptr %16, align 8, !tbaa !86
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 216
  %i.tz = load ptr, ptr %i.ty, align 8
  invoke void %i.tz(ptr noundef nonnull align 8 dereferenceable(94) %16, ptr noundef %i.tw, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %._crit_edge603
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %indvars.iv.next658 = add nuw i64 %indvars.iv657, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next658, %i.j
  br i1 %exitcond660.not, label %._crit_edge605, label %.preheader, !llvm.loop !268

bb.ck:                                            ; preds = %._crit_edge603
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.ci, %bb.ck
  %.sroa.0.2 = phi ptr [ %.sroa.0.20, %bb.ci ], [ %.sroa.0.20, %bb.ck ], [ %.sroa.0.18, %.loopexit ], [ %.sroa.0.16, %.loopexit.split-lp.loopexit ], [ %.sroa.0.10, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.12, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.0.ph.ph.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.48.2 = phi ptr [ %.sroa.48.20, %bb.ci ], [ %.sroa.48.20, %bb.ck ], [ %.sroa.48.18, %.loopexit ], [ %.sroa.48.16, %.loopexit.split-lp.loopexit ], [ %.sroa.48.10, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.48.14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.48.12, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.48.4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.48.0.ph.ph.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn47.pn = phi { ptr, i32 } [ %i.to, %bb.ci ], [ %i.ua, %bb.ck ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit537, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit541, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit544, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit547, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit550, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp551, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit132, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.split-lp
  %i.ub = ptrtoint ptr %.sroa.48.2 to i64
  %i.uc = ptrtoint ptr %.sroa.0.2 to i64
  %i.ud = sub i64 %i.ub, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.ud) #21
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EED2Ev.exit132

bb.cm:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ue = load i32, ptr %i.bk, align 8, !tbaa !337 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %15, i64 37 ; 15 uses
  store i8 0, ptr %i.uf, align 1, !tbaa !151
  %i.ug = sext i32 %i.ue to i64
  %i.uh = add nsw i64 %i.ug, 63
  %i.ui = lshr i64 %i.uh, 6                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %15, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !129
  %.not.i133 = icmp eq i64 %i.ui, 0
  br i1 %.not.i133, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %15, ptr null, i64 noundef %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.uk = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i.i134, label %.body, label %.body.sink.split

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.ul = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 6 uses
  %i.um = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 6 uses
  %i.un = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  store i32 %i.ue, ptr %i.un, align 8, !tbaa !153
  store i32 0, ptr %i.um, align 4, !tbaa !152
  store i32 0, ptr %i.ul, align 8, !tbaa !140
  store i16 256, ptr %i.uo, align 4
  %i.up = load i32, ptr %i.bk, align 8, !tbaa !337 ; 3 uses
  %i.uq = sext i32 %i.up to i64                   ; 3 uses
  %i.ur = icmp slt i32 %i.up, 0
  br i1 %i.ur, label %bb.cq, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc136 unwind label %bb.do

.noexc136:                                        ; preds = %bb.cq
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.cp
  %.not.i.i.i.i135 = icmp eq i32 %i.up, 0
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.us = shl nuw nsw i64 %i.uq, 2
  %i.ut = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.us) #20
          to label %.noexc137 unwind label %bb.do ; 5 uses

.noexc137:                                        ; preds = %bb.cr
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.uq ; 2 uses
  store i32 0, ptr %i.ut, align 4, !tbaa !80
  %i.uv = add nsw i64 %i.uq, -1                   ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 0
  br i1 %i.uw, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc137
  %i.ux = getelementptr i8, ptr %i.ut, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.uv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ux, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !80
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc137, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0453.0 = phi ptr [ %i.ut, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ut, %.noexc137 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 20 uses
  %.sroa.23.0 = phi ptr [ %i.uu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.uu, %.noexc137 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !151, !range !94, !noundef !95
  %i.vb = trunc nuw i8 %i.va to i1
  br i1 %i.vb, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i183, label %bb.cs

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i183: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.0.in.pre.i.i184 = load i8, ptr %i.uy, align 4, !tbaa !90, !range !94
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i140

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !152
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.ct, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138

bb.ct:                                            ; preds = %bb.cs
  %i.vf = load i32, ptr %i.u, align 8, !tbaa !140 ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !153
  %i.vi = icmp eq i32 %i.vf, %i.vh
  br i1 %i.vi, label %bb.cu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138

bb.cu:                                            ; preds = %bb.ct
  %i.vj = load ptr, ptr %1, align 8, !tbaa !154   ; 2 uses
  %.not.i.i.i175 = icmp sgt i32 %i.vf, 0
  br i1 %.not.i.i.i175, label %bb.cv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138

bb.cv:                                            ; preds = %bb.cu
  %i.vk = and i32 %i.vf, 2147483584               ; 3 uses
  %i.vl = zext nneg i32 %i.vk to i64
  %.not37.i.i.not.i.i177874.not = icmp eq i32 %i.vk, 0
  br i1 %.not37.i.i.not.i.i177874.not, label %.critedge.i.i.i.i178, label %.lr.ph877

bb.cw:                                            ; preds = %.lr.ph877
  %indvars.iv.next.i.i182 = add nuw nsw i64 %indvars.iv.i.i176875, 64 ; 2 uses
  %.not37.i.i.not.i.i177 = icmp samesign ult i64 %indvars.iv.next.i.i182, %i.vl
  br i1 %.not37.i.i.not.i.i177, label %.lr.ph877, label %.critedge.i.i.i.i178, !llvm.loop !252

.lr.ph877:                                        ; preds = %bb.cv, %bb.cw
  %indvars.iv.i.i176875 = phi i64 [ %indvars.iv.next.i.i182, %bb.cw ], [ 0, %bb.cv ] ; 2 uses
  %i.vm = lshr exact i64 %indvars.iv.i.i176875, 3
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vm
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !129
  %i.vp = icmp eq i64 %i.vo, -1
  br i1 %i.vp, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138, !llvm.loop !252

.critedge.i.i.i.i178:                             ; preds = %bb.cw, %bb.cv
  %.not38.i.i.i.i179 = icmp eq i32 %i.vf, %i.vk
  br i1 %.not38.i.i.i.i179, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138, label %bb.cx

bb.cx:                                            ; preds = %.critedge.i.i.i.i178
  %i.vq = lshr i32 %i.vf, 6
  %i.vr = and i32 %i.vf, 63
  %i.vs = zext nneg i32 %i.vr to i64
  %notmask.i40.i.i.i.i180 = shl nsw i64 -1, %i.vs
  %i.vt = zext nneg i32 %i.vq to i64
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vt
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !129
  %.demorgan.i.i181 = or i64 %i.vv, %notmask.i40.i.i.i.i180
  %i.vw = icmp eq i64 %.demorgan.i.i181, -1
  %i.vx = zext i1 %i.vw to i16
  %i.vy = or disjoint i16 %i.vx, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138: ; preds = %.lr.ph877, %bb.cx, %.critedge.i.i.i.i178, %bb.cu, %bb.ct, %bb.cs
  %.sroa.0.0.insert.ext.i.i139 = phi i16 [ 256, %bb.ct ], [ 256, %bb.cs ], [ 257, %bb.cu ], [ 257, %.critedge.i.i.i.i178 ], [ %i.vy, %bb.cx ], [ 256, %.lr.ph877 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i139, ptr %i.uy, align 4
  %i.vz = trunc i16 %.sroa.0.0.insert.ext.i.i139 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i140

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i140: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i183
  %.0.in.i.i141 = phi i8 [ %.0.in.pre.i.i184, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i183 ], [ %i.vz, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i138 ]
  %.0.i.i142 = trunc nuw i8 %.0.in.i.i141 to i1
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !152 ; 8 uses
  br i1 %.0.i.i142, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i140
  %i.wc = load i32, ptr %i.u, align 8, !tbaa !140 ; 2 uses
  %i.wd = icmp slt i32 %i.wb, %i.wc
  br i1 %i.wd, label %.lr.ph.i169, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116ArrayConstructor5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE1_EEvT_.exit

.lr.ph.i169:                                      ; preds = %bb.cy
  %i.we = sext i32 %i.wb to i64
  %wide.trip.count.i170 = sext i32 %i.wc to i64
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.lr.ph.i169
  %.9512 = phi i32 [ %i.bl, %.lr.ph.i169 ], [ %i.ws, %bb.cz ] ; 4 uses
  %indvars.iv.i172 = phi i64 [ %i.we, %.lr.ph.i169 ], [ %indvars.iv.next.i173, %bb.cz ] ; 4 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.i172
  store i32 %i.iv, ptr %i.wf, align 4, !tbaa !80
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv.i172
  store i32 %.9512, ptr %i.wg, align 4, !tbaa !80
  %i.wh = load ptr, ptr %15, align 8, !tbaa !154
  %i.wi = sext i32 %.9512 to i64                  ; 2 uses
  %i.wj = lshr i64 %i.wi, 3
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wj ; 2 uses
end_hunk_1
