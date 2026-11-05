Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_multi_file?download=true
inline.NumInlined: 8566
inline.NumDeleted: 3991
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1449 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #32
  %i.b = load ptr, ptr %0, align 8, !tbaa !292    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1450 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !411 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !292  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #34
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !657
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !658
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.m) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16MultiFileOptions26AutoDetectHivePartitioningERNS_13MultiFileListERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !1451 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !296
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !518, !range !390, !noundef !391
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !554
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !401, !range !390, !noundef !391
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !554
  %i.q = icmp eq i64 %i.p, 0
  %or.cond.not = or i1 %i.q, %i.n
  br i1 %or.cond.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.p unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !292    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.u) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.r) #32
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %.pn20, %bb.h ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn19

bb.j:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !401, !range !390, !noundef !391
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.x, align 1, !tbaa !401
  store i8 0, ptr %i.f, align 2, !tbaa !518
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !401, !range !390
  %i.aa = trunc nuw i8 %.pre to i1
  br i1 %i.aa, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.j, %.thread
  %i.ab = tail call noundef zeroext i1 @_ZN6duckdb16MultiFileOptions34AutoDetectHivePartitioningInternalERNS_13MultiFileListERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull align 8 poison) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !401
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !519, !range !390, !noundef !391
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6duckdb16MultiFileOptions27AutoDetectHiveTypesInternalERNS_13MultiFileListERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(512) %2)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.l, %bb.m, %bb.n, %bb.a
  ret void

bb.p:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb16MultiFileOptions6AnySetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #11 align 2 !guid !1452 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !402, !range !390, !noundef !391
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !390
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %5, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %3 = load i8, ptr %2, align 1, !tbaa !550, !range !390, !noundef !391
  %4 = trunc nuw i8 %3 to i1
  br label %5

5:                                                ; preds = %1, %bb.a
  %6 = phi i1 [ %4, %1 ], [ true, %bb.a ]
  ret i1 %6
}

declare void @_ZN6duckdb16HivePartitioning8GetValueERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb21MultiFileColumnMapperC2ERNS_13ClientContextERNS_15MultiFileReaderERNS_19MultiFileReaderDataERKNS_6vectorINS_25MultiFileColumnDefinitionELb1ESaIS8_EEERKNS7_INS_11ColumnIndexELb1ESaISD_EEENS_12optional_ptrINS_14TableFilterSetELb1EEERNS_13MultiFileListERKSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSO_EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(56) %8) unnamed_addr #0 align 2 !guid !1453 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr
  store ptr %1, ptr %0, align 8, !tbaa !471
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !491
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %i.c, align 8, !tbaa !440
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !1454
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.e, align 8, !tbaa !1455
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.f, align 8, !tbaa !1456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !591
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %8, ptr %i.h, align 8, !tbaa !1457
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK6duckdb21MultiFileColumnMapper24ThrowColumnNotFoundErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !1460 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !590, !nonnull !391, !align !407
  %i.d = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !294
  store i8 0, ptr %i.f, align 8, !tbaa !293
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !650  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !650  ; 2 uses
  %.not48 = icmp eq ptr %i.h, %i.j
  br i1 %.not48, label %.noexc.i, label %.lr.ph

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.l = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 244, ptr %i.a, align 8, !tbaa !290
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %3, align 8, !tbaa !292
  %i.o = load i64, ptr %i.a, align 8, !tbaa !290  ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(244) %i.n, ptr noundef nonnull align 1 dereferenceable(244) @.str.36, i64 244, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !294
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1461, !nonnull !391, !align !407 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !296, !noalias !1462
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1462
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %_ZNK6duckdb13MultiFileList12GetFirstFileEv.exit unwind label %_ZN6duckdb12OpenFileInfoD2Ev.exit.thread, !inline_history !552

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.sroa.031.049 = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ %i.h, %bb.a ] ; 3 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !294  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = and i64 %i.w, -2
  %i.z = icmp eq i64 %i.y, 4611686018427387902
  br i1 %i.z, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre = load i64, ptr %i.g, align 8, !tbaa !294
  %i.ab = sub i64 4611686018427387903, %.pre
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.invoke
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %.lr.ph
  %i.ac = phi i64 [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ 4611686018427387903, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.049, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !294 ; 2 uses
  %i.af = icmp ult i64 %i.ac, %i.ae
  br i1 %i.af, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ag = load ptr, ptr %.sroa.031.049, align 8, !tbaa !292
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ag, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.031.049, i64 152 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.j
  br i1 %.not, label %.noexc.i, label %.lr.ph

_ZNK6duckdb13MultiFileList12GetFirstFileEv.exit:  ; preds = %.noexc
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S7_S9_RS7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb13MultiFileList12GetFirstFileEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.l unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.d:                                             ; preds = %bb.c, %_ZNK6duckdb13MultiFileList12GetFirstFileEv.exit
  %.0 = phi i1 [ false, %bb.c ], [ true, %_ZNK6duckdb13MultiFileList12GetFirstFileEv.exit ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !454 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.an, align 8, !tbaa !457
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !458
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !296
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !11
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !11
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !293
  %.not.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !105
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.j, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !380

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %bb.d
  %i.bc = load ptr, ptr %4, align 8, !tbaa !292   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
