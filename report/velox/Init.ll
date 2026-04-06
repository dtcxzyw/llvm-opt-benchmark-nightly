begin_hunk_0
inline.NumInlined: 215
inline.NumDeleted: 153
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 96
end_hunk_1
begin_hunk_2_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSEOSG_.exit.i: ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !30
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef %i.bb)
          to label %.noexc.i.i.i unwind label %bb.t
end_hunk_2
begin_hunk_3_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !31
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.r

end_hunk_3
begin_hunk_4_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
bb.r:                                             ; preds = %bb.q, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.bl = phi ptr [ %i.af, %bb.q ], [ %i.bh, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.bl, ptr %i.ae, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !29 ; 2 uses
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30 ; 3 uses
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
end_hunk_4
begin_hunk_5_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 0, ptr %i.bz, align 8, !tbaa !39
  store i64 1, ptr %i.bm, align 8, !tbaa !29
  store ptr null, ptr %i.bi, align 8, !tbaa !34
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef null)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i unwind label %7

7:                                                ; preds = %_ZN5folly9LogConfigaSEOS0_.exit
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #19
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZN5folly9LogConfigaSEOS0_.exit
  %10 = load ptr, ptr %i.ba, align 8, !tbaa !27
  %11 = load i64, ptr %i.bm, align 8, !tbaa !29
  %12 = shl i64 %11, 3
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %i.ba, align 8, !tbaa !27   ; 2 uses
  %14 = icmp eq ptr %13, %i.bi
  br i1 %14, label %_ZN5folly9LogConfigD2Ev.exit, label %15

15:                                               ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %16 = load i64, ptr %i.bm, align 8, !tbaa !29
  %17 = shl i64 %16, 3
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %17) #20
  br label %_ZN5folly9LogConfigD2Ev.exit

_ZN5folly9LogConfigD2Ev.exit:                     ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %15
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not3579 = icmp eq i64 %1, 0
  br i1 %.not3579, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %_ZN5folly9LogConfigD2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSEOSG_.exit.i42: ; preds = %bb.ai
  %i.cw = load ptr, ptr %i.ah, align 8, !tbaa !30
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef %i.cw)
          to label %.noexc.i.i.i43 unwind label %18

.noexc.i.i.i43:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSEOSG_.exit.i42
  %i.cx = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  %i.dh = load i64, ptr %i.at, align 8, !tbaa !35
  store i64 %i.dh, ptr %i.au, align 8, !tbaa !35
  %.not.i.i.i.i.i45 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i45, label %_ZN5folly9LogConfigaSEOS0_.exit46, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
end_hunk_7
begin_hunk_8_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  %i.dk = urem i64 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dk
  store ptr %i.ah, ptr %i.dl, align 8, !tbaa !38
  br label %_ZN5folly9LogConfigaSEOS0_.exit46

18:                                               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly16LogHandlerConfigESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEaSEOSG_.exit.i42
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #19
  unreachable

_ZN5folly9LogConfigaSEOS0_.exit46:                ; preds = %bb.am, %bb.an
  store i64 0, ptr %i.av, align 8, !tbaa !39
  store i64 1, ptr %i.ar, align 8, !tbaa !29
  store ptr null, ptr %i.aq, align 8, !tbaa !34
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly17LogCategoryConfigEELb1EEEEE19_M_deallocate_nodesEPSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef null)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i47 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN5folly9LogConfigaSEOS0_.exit46
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #19
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i47: ; preds = %_ZN5folly9LogConfigaSEOS0_.exit46
  %21 = load ptr, ptr %i.ao, align 8, !tbaa !27
  %22 = load i64, ptr %i.ar, align 8, !tbaa !29
  %23 = shl i64 %22, 3
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %23, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %i.ao, align 8, !tbaa !27   ; 2 uses
  %25 = icmp eq ptr %24, %i.aq
  br i1 %25, label %_ZN5folly9LogConfigD2Ev.exit48, label %26

26:                                               ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i47
  %27 = load i64, ptr %i.ar, align 8, !tbaa !29
  %28 = shl i64 %27, 3
  call void @_ZdlPvm(ptr noundef %24, i64 noundef %28) #20
  br label %_ZN5folly9LogConfigD2Ev.exit48

_ZN5folly9LogConfigD2Ev.exit48:                   ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly17LogCategoryConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i47, %26
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly16LogHandlerConfigEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ay
end_hunk_8
begin_hunk_9_@_ZN5folly11initLoggingESt16initializer_listINS_5RangeIPKcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bf

bb.ay:                                            ; preds = %_ZN5folly9LogConfigD2Ev.exit48, %_ZN5folly9LogConfigD2Ev.exit50, %bb.af
  %.129 = phi i1 [ %.02878, %bb.af ], [ false, %_ZN5folly9LogConfigD2Ev.exit48 ], [ false, %_ZN5folly9LogConfigD2Ev.exit50 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.03077, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.b
  br i1 %.not, label %.loopexit, label %bb.af

.loopexit:                                        ; preds = %bb.ay, %bb.ae, %.preheader, %_ZN5folly9LogConfigD2Ev.exit
  %i.ec = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalIZNS_8LoggerDB3getEvE9SingletonvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %bb.az, label %_ZN5folly8LoggerDB3getEv.exit, !prof !40
end_hunk_9
