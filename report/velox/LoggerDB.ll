begin_hunk_0
inline.NumInlined: 3344
inline.NumDeleted: 1627
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly18initializeLoggerDBERNS_8LoggerDBE:bb.a
  %14 = alloca %"struct.std::hash", align 1       ; 4 uses
  %15 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator.107", align 1 ; 4 uses
  %17 = alloca %"class.std::unordered_map.90", align 8 ; 12 uses
  %18 = alloca [1 x %"struct.std::pair.111"], align 8 ; 13 uses
  %19 = alloca %"struct.std::hash", align 1       ; 4 uses
  %20 = alloca %"struct.std::equal_to", align 1   ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5folly18initializeLoggerDBERNS_8LoggerDBE:bb.a
  %i.dk = load ptr, ptr %17, align 8, !tbaa !2912 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !2912
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2914 ; 2 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !2914
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2915 ; 3 uses
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !2881
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 80
end_hunk_2
begin_hunk_3_@_ZN5folly18initializeLoggerDBERNS_8LoggerDBE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !2904
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 5 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !2917
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 5 uses
  %i.dy = icmp eq ptr %i.dk, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.r

end_hunk_3
begin_hunk_4_@_ZN5folly18initializeLoggerDBERNS_8LoggerDBE:bb.a
bb.r:                                             ; preds = %bb.q, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEC2EOSG_.exit.i
  %i.ea = phi ptr [ %i.dw, %bb.q ], [ %i.dk, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEC2EOSG_.exit.i ]
  %.not.i.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
end_hunk_4
begin_hunk_5_@_ZN5folly18initializeLoggerDBERNS_8LoggerDBE:bb.a
  %i.ed = urem i64 %i.ec, %i.dn
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  store ptr %i.do, ptr %i.ee, align 8, !tbaa !2910
  br label %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit

_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit: ; preds = %bb.r, %bb.s
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 0, ptr %22, align 8, !tbaa !2911
  store i64 1, ptr %i.dm, align 8, !tbaa !2914
  store ptr null, ptr %i.dx, align 8, !tbaa !2917
  store ptr %i.dx, ptr %17, align 8, !tbaa !2912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef null)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i unwind label %23

23:                                               ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #32
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %26 = load ptr, ptr %17, align 8, !tbaa !2912
  %27 = load i64, ptr %i.dm, align 8, !tbaa !2914
  %28 = shl i64 %27, 3
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  %29 = load ptr, ptr %17, align 8, !tbaa !2912   ; 2 uses
  %30 = icmp eq ptr %29, %i.dx
  br i1 %30, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %31

31:                                               ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %32 = load i64, ptr %i.dm, align 8, !tbaa !2914
  %33 = shl i64 %32, 3
  call void @_ZdlPvm(ptr noundef %29, i64 noundef %33) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
end_hunk_5
begin_hunk_6_@_ZNK5folly8LoggerDB13getConfigImplEb:bb.a
  %16 = alloca %"class.folly::LogCategoryConfig", align 8 ; 12 uses
  %17 = alloca %"class.std::vector", align 8      ; 9 uses
  %18 = alloca %"class.std::unordered_map.76", align 8 ; 9 uses
  %19 = alloca %"class.std::unordered_map.90", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNK5folly8LoggerDB13getConfigImplEb:bb.a
  store ptr null, ptr %i.s, align 8, !tbaa !2907
  store ptr %i.s, ptr %6, align 8, !tbaa !2899
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ge = load ptr, ptr %10, align 8, !tbaa !2912 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.gg = load i64, ptr %i.ao, align 8, !tbaa !2914 ; 4 uses
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !2914
  %i.gh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.gi = load ptr, ptr %i.ap, align 8, !tbaa !2915 ; 3 uses
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !2881
  %i.gj = getelementptr inbounds nuw i8, ptr %19, i64 24
end_hunk_7
begin_hunk_8_@_ZNK5folly8LoggerDB13getConfigImplEb:bb.a
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !2916
  %i.gm = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !2904
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 9 uses
  store ptr null, ptr %i.gn, align 8, !tbaa !2917
  %i.go = icmp eq ptr %i.ge, %i.an
  br i1 %i.go, label %bb.ao, label %bb.ap
end_hunk_8
begin_hunk_9_@_ZNK5folly8LoggerDB13getConfigImplEb:bb.a
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 0, ptr %i.hx, align 8, !tbaa !2911
  store i64 1, ptr %i.gf, align 8, !tbaa !2914
  store ptr null, ptr %i.gn, align 8, !tbaa !2917
  store ptr %i.gn, ptr %19, align 8, !tbaa !2912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef null)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i unwind label %20

20:                                               ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #32
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZN5folly9LogConfigC2ESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16LogHandlerConfigESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEES1_IS7_NS_17LogCategoryConfigESA_SC_SaISD_ISE_SI_EEE.exit
  %23 = load ptr, ptr %19, align 8, !tbaa !2912
  %24 = load i64, ptr %i.gf, align 8, !tbaa !2914
  %25 = shl i64 %24, 3
  call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %19, align 8, !tbaa !2912   ; 2 uses
  %27 = icmp eq ptr %26, %i.gn
  br i1 %27, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %28

28:                                               ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %29 = load i64, ptr %i.gf, align 8, !tbaa !2914
  %30 = shl i64 %29, 3
  call void @_ZdlPvm(ptr noundef %26, i64 noundef %30) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %28
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %18) #17
  %31 = load ptr, ptr %i.ap, align 8, !tbaa !2915
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %31)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i87 unwind label %bb.ax

bb.ax:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #32
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i87: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.ia = load ptr, ptr %10, align 8, !tbaa !2912
  %i.ib = load i64, ptr %i.ao, align 8, !tbaa !2914
  %i.ic = shl i64 %i.ib, 3
end_hunk_9
