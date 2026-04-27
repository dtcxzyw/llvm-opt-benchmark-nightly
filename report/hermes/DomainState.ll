inline.NumInlined: 601
inline.NumDeleted: 374
begin_hunk_0_@_ZN8facebook6hermes3cdp11DomainState7getCopyESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a

.lr.ph.split.i:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, %bb.g
  %.01941.i = phi ptr [ %.120.ph.i, %bb.g ], [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ]
  %.sroa.033.040.i = phi ptr [ %i.ak, %bb.g ], [ %i.ac, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.040.i) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01941.i, i64 8 ; 2 uses
  %i.ae = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.i)
          to label %.noexc11 unwind label %.loopexit
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb:bb.a

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.01941.us = phi ptr [ %.120.ph.us, %bb.d ], [ %i.b, %.lr.ph ]
  %.sroa.033.040.us = phi ptr [ %i.z, %bb.d ], [ %i.c, %.lr.ph ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.040.us) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.01941.us, i64 8 ; 3 uses
  %i.g = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040.us)
  %i.h = icmp eq ptr %i.g, null
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes3cdp11DomainState7getDictERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb:bb.a

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %.01941 = phi ptr [ %.120.ph, %bb.f ], [ %i.b, %.lr.ph ]
  %.sroa.033.040 = phi ptr [ %i.al, %bb.f ], [ %i.c, %.lr.ph ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.040) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.01941, i64 8 ; 2 uses
  %i.af = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook6hermes3cdp10StateValueESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.040)
  %i.ag = icmp eq ptr %i.af, null
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes3cdp11DomainState17commitTransactionERNS2_11TransactionE:bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.053.092 = phi ptr [ %i.e, %.lr.ph ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.053.092) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.053.092, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.053.092, i64 8 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes3cdp11DomainState17commitTransactionERNS2_11TransactionE:bb.a

.lr.ph.split.i:                                   ; preds = %bb.g, %bb.ad
  %.01941.i = phi ptr [ %.120.ph.i, %bb.ad ], [ %i.aj, %bb.g ] ; 5 uses
  %.sroa.033.040.i = phi ptr [ %i.ez, %bb.ad ], [ %i.ak, %bb.g ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.040.i) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.01941.i, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01941.i, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !71
end_hunk_4
begin_hunk_5_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.013) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !55
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !58 ; 2 uses
end_hunk_5
begin_hunk_6_@bcmp
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_6
