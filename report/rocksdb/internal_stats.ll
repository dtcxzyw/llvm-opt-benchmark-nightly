Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/internal_stats?download=true
inline.NumInlined: 3253
inline.NumDeleted: 1381
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb13InternalStats15HandleBlobStatsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5SliceE:bb.a
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats23HandleTotalBlobFileSizeEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = tail call noundef i64 @_ZNK7rocksdb16ColumnFamilyData20GetTotalBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.b)
  store i64 %i.c, ptr %1, align 8, !tbaa !275
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats22HandleLiveBlobFileSizeEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2840
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !729, !noalias !925 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !729, !noalias !925 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01421.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.016.019.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !732, !noalias !925
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !735, !noalias !925
  %i.l = tail call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k), !noalias !925
  %i.m = add i64 %i.l, %.01421.i                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i ]
  store i64 %.014.lcssa.i, ptr %1, align 8, !tbaa !275
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats29HandleLiveBlobFileGarbageSizeEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2840
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !729, !noalias !928 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !729, !noalias !928 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01520.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.016.019.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !732, !noalias !928
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !735, !noalias !928
  %i.l = tail call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k), !noalias !928 ; 0 uses
  %i.m = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !732, !noalias !928
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !738, !noalias !928
  %i.p = add i64 %i.o, %.01520.i                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.015.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph.i ]
  store i64 %.015.lcssa.i, ptr %1, align 8, !tbaa !275
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats23HandleBlobCacheCapacityEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !751  ; 3 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  store i64 %i.h, ptr %1, align 8, !tbaa !275
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats20HandleBlobCacheUsageEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !751  ; 3 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  store i64 %i.h, ptr %1, align 8, !tbaa !275
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb13InternalStats26HandleBlobCachePinnedUsageEPmPNS_6DBImplEPNS_7VersionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1912
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !751  ; 3 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  store i64 %i.h, ptr %1, align 8, !tbaa !275
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !753  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !725 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 120) #36
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14DBPropertyInfoEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !754
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !755
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !754    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !755
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #36
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14DBPropertyInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13InternalStatsC2EiPNS_11SystemClockEPNS_16ColumnFamilyDataE(ptr noundef nonnull align 8 dereferenceable(2016) initializes((0, 312)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.c = sext i32 %1 to i64                       ; 5 uses
  %i.d = icmp slt i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.338) #41
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = mul nuw nsw i64 %i.c, 224                ; 3 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #40
          to label %.noexc27 unwind label %bb.j   ; 4 uses

.noexc27:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.f, ptr %i.b, align 8, !tbaa !756
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %i.f, i64 %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc27
  %.sink.i = phi ptr [ %i.g, %.noexc27 ], [ null, %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc27 ], [ null, %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr %.sink.i, ptr %i.i, align 8, !tbaa !930
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.h, align 8, !tbaa !757
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = invoke noalias noundef nonnull dereferenceable(896) ptr @_Znwm(i64 noundef 896) #40
          to label %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i unwind label %bb.k ; 3 uses

_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  store ptr %i.k, ptr %i.j, align 8, !tbaa !756
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 896 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.k, i8 0, i64 896, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !930
  store ptr %i.l, ptr %i.m, align 8, !tbaa !757
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.o, i8 0, i64 248, i1 false)
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit.i, label %_ZNSt15__new_allocatorIN7rocksdb13HistogramImplEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN7rocksdb13HistogramImplEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.q = mul nuw nsw i64 %i.c, 968
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #40
          to label %_ZNSt12_Vector_baseIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.l

_ZNSt12_Vector_baseIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13HistogramImplEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.s = phi ptr [ null, %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.r, %_ZNSt15__new_allocatorIN7rocksdb13HistogramImplEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !355
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.s, ptr %i.t, align 8, !tbaa !758
  %i.u = getelementptr inbounds nuw [968 x i8], ptr %i.s, i64 %i.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !759
  invoke void @_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.c)
          to label %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !759
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #36
  br label %.body

_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7rocksdb13HistogramImplE, i64 16), ptr %i.ac, align 8, !tbaa !357
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920) %i.ad)
          to label %.noexc38 unwind label %bb.m

.noexc38:                                         ; preds = %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !357
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(968) %i.ac)
          to label %bb.f unwind label %bb.m, !inline_history !929

bb.f:                                             ; preds = %.noexc38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store i8 1, ptr %i.ai, align 8, !tbaa !351
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1580
  store i32 0, ptr %i.aj, align 4, !tbaa !358
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1584
  store i64 -1, ptr %i.ak, align 8, !tbaa !354
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.al, i8 0, i64 392, i1 false)
  store i32 %1, ptr %i.am, align 8, !tbaa !276
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  store ptr %2, ptr %i.an, align 8, !tbaa !760
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 2 uses
  store ptr %3, ptr %i.ao, align 8, !tbaa !79
  %i.ap = load ptr, ptr %2, align 8, !tbaa !357
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2008
  store i64 %i.as, ptr %i.at, align 8, !tbaa !761
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2064
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !726 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ax, ptr noundef nonnull align 1 dereferenceable(10) @.str.341, i64 10, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.az, align 2, !tbaa !29
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !357
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7rocksdb12Configurable10GetOptionsINS_5CacheEEEPT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.h, !inline_history !3 ; 2 uses

_ZN7rocksdb12Configurable10GetOptionsINS_5CacheEEEPT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.g
  %i.be = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb12Configurable10GetOptionsINS_5CacheEEEPT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.h
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN7rocksdb12Configurable10GetOptionsINS_5CacheEEEPT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !760
  invoke void @_ZN7rocksdb24CacheEntryStatsCollectorINS_13InternalStats19CacheEntryRoleStatsEE9GetSharedEPNS_5CacheEPNS_11SystemClockEPSt10shared_ptrIS3_E(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull %i.bd, ptr noundef %i.bn, ptr noundef nonnull %i.a)
          to label %bb.p unwind label %bb.o

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EED2Ev.exit47

bb.k:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb13InternalStats15CompactionStatsESaIS2_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIN7rocksdb13HistogramImplEE8allocateEmPKv.exit.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.noexc38, %_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EEC2EmRKS2_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.n:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.o:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body40

bb.p:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !398 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i42, label %_ZN7rocksdb6StatusD2Ev.exit44, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43: ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #36
  br label %_ZN7rocksdb6StatusD2Ev.exit44

_ZN7rocksdb6StatusD2Ev.exit44:                    ; preds = %bb.p, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  ret void

.body40:                                          ; preds = %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.m ], [ %i.bs, %bb.n ], [ %i.bt, %bb.o ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @_ZNSt6vectorIN7rocksdb13HistogramImplESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #37
end_hunk_0
