inline.NumInlined: 4259
inline.NumDeleted: 2180
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb10UndoBuffer7CleanupEm:bb.a

.loopexit.i.i.i.i:                                ; preds = %scalar.ph28, %scalar.ph, %middle.block39, %middle.block, %.noexc11, %.preheader.i.i.i.i
  %.2.i.i.i.i = phi i64 [ %i.be, %middle.block ], [ 0, %.preheader.i.i.i.i ], [ 0, %.noexc11 ], [ %i.bq, %middle.block39 ], [ %i.be, %scalar.ph ], [ %i.bq, %scalar.ph28 ]
  invoke void @_ZN6duckdb16IndexDataRemover5FlushERNS_9DataTableEPlm(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(124) %i.ay, ptr noundef nonnull %i.a, i64 noundef %.2.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN6duckdb12CleanupState12CleanupEntryENS_9UndoFlagsEPh.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !675
  invoke void @_ZN6duckdb13UpdateSegment13CleanupUpdateERNS_10UpdateInfoE(ptr noundef nonnull align 8 dereferenceable(352) %i.ci, ptr noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %_ZN6duckdb12CleanupState12CleanupEntryENS_9UndoFlagsEPh.exit.i unwind label %.loopexit

_ZN6duckdb12CleanupState12CleanupEntryENS_9UndoFlagsEPh.exit.i: ; preds = %bb.p, %bb.k, %_ZNK6duckdb12optional_ptrINS_10CatalogSetELb1EE10CheckValidEv.exit.i, %.noexc12, %.noexc10, %bb.l, %.lr.ph.i
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !578
  %i.ck = zext i32 %.0.copyload.i23.i to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck ; 3 uses
  store ptr %i.cl, ptr %i.l, align 8, !tbaa !578
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !579
  %i.cn = icmp ult ptr %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !679

._crit_edge.i:                                    ; preds = %_ZN6duckdb12CleanupState12CleanupEntryENS_9UndoFlagsEPh.exit.i, %.noexc7
  invoke void @_ZNK6duckdb12optional_ptrINS_15UndoBufferEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %._crit_edge.i
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !380
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !198 ; 2 uses
  store i64 %i.cq, ptr %i.e, align 8, !tbaa !198
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %"_ZN6duckdb10UndoBuffer14IterateEntriesIZNS0_7CleanupEmE3$_0EEvRNS0_13IteratorStateEOT_.exit", label %bb.c, !llvm.loop !680

"_ZN6duckdb10UndoBuffer14IterateEntriesIZNS0_7CleanupEmE3$_0EEvRNS0_13IteratorStateEOT_.exit": ; preds = %.noexc14, %bb.b
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !626 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN6duckdb10UndoBuffer14IterateEntriesIZNS0_7CleanupEmE3$_0EEvRNS0_13IteratorStateEOT_.exit", %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.cu, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i ], [ %i.ct, %"_ZN6duckdb10UndoBuffer14IterateEntriesIZNS0_7CleanupEmE3$_0EEvRNS0_13IteratorStateEOT_.exit" ] ; 3 uses
  %i.cu = load ptr, ptr %.06.i.i.i, align 8, !tbaa !344 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !483 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cx, align 8, !tbaa !485
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !487
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #31, !inline_history !628
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #31, !inline_history !628
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !175
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.da, %bb.t ], [ %i.dk, %bb.u ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dl, label %bb.v, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, !prof !78

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #33
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !629

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIN6duckdb9DataTableEENS4_10shared_ptrINS4_13DataTableInfoELb1EEEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, %"_ZN6duckdb10UndoBuffer14IterateEntriesIZNS0_7CleanupEmE3$_0EEvRNS0_13IteratorStateEOT_.exit"
  %i.dm = load ptr, ptr %i.cr, align 8, !tbaa !630
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !631
  %i.dp = shl i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dm, i8 0, i64 %i.dp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.cr, align 8, !tbaa !630 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  call void @_ZdlPv(ptr noundef %i.dq) #33
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.dt) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.x:                                             ; preds = %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit:                                        ; preds = %_ZNK6duckdb12optional_ptrINS_10CatalogSetELb1EE10CheckValidEv.exit.i, %bb.k, %bb.m, %bb.o, %.loopexit.i.i.i.i, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c, %.noexc, %.noexc5, %.noexc6, %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %6) #31
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.du, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb9DataTableEESt4pairIKS3_NS1_10shared_ptrINS1_13DataTableInfoELb1EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.dv) #31
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.dw) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15DuckTransaction16SetModificationsENS_24DatabaseModificationTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(480) %0, i64 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.20", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.20", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284
  %.not = icmp ne ptr %i.b, null
  %i.c = and i64 %1, 252
  %or.cond40.not = icmp eq i64 %i.c, 0
  %or.cond = select i1 %.not, i1 true, i1 %or.cond40.not
  br i1 %or.cond, label %bb.b, label %.critedge13

.critedge13:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288, !nonnull !69, !align !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  call void @_ZN6duckdb11StorageLock13GetSharedLockEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.20") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !284
  store ptr null, ptr %2, align 8, !tbaa !284
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !284  ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !284
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %.critedge13
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.h) #31
  call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  %.pr = load ptr, ptr %2, align 8, !tbaa !284    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.pr) #31
  call void @_ZdlPv(ptr noundef nonnull %.pr) #33
  br label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit: ; preds = %.critedge13, %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !284
  %.not43 = icmp ne ptr %i.j, null
  %4 = and i64 %1, 3
  %or.cond42.not = icmp eq i64 %4, 0
  %or.cond44 = select i1 %.not43, i1 true, i1 %or.cond42.not
  br i1 %or.cond44, label %bb.c, label %.critedge15

.critedge15:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !288, !nonnull !69, !align !164
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  call void @_ZN6duckdb11StorageLock13GetSharedLockEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = load ptr, ptr %3, align 8, !tbaa !284
  store ptr null, ptr %3, align 8, !tbaa !284
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !284  ; 3 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !284
  %.not.i.i.i.i.i16 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit21, label %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit18

_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit18: ; preds = %.critedge15
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.o) #31
  call void @_ZdlPv(ptr noundef nonnull %i.o) #33
  %.pr30 = load ptr, ptr %3, align 8, !tbaa !284  ; 3 uses
  %.not.i19 = icmp eq ptr %.pr30, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i20

_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i20: ; preds = %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit18
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.pr30) #31
  call void @_ZdlPv(ptr noundef nonnull %.pr30) #33
  br label %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit21: ; preds = %.critedge15, %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEaSEOS4_.exit18, %_ZNKSt14default_deleteIN6duckdb14StorageLockKeyEEclEPS1_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StorageLockKeyESt14default_deleteIS1_EED2Ev.exit21, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(20) ptr @_ZNK6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.74", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15DuckTransaction15SharedLockTableERNS_13DataTableInfoE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.656") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(256) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr.689", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.20", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.e = load i64, ptr %i.d, align 8, !tbaa !681
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !344 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !682
  %i.i = icmp eq ptr %2, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb13DataTableInfoEENS1_10unique_ptrINS1_15DuckTransaction15ActiveTableLockESt14default_deleteIS6_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %bb.d, !llvm.loop !685

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.l = load i64, ptr %i.k, align 8, !tbaa !499  ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !498
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !344  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !533
  %i.u = icmp eq i64 %i.t, %i.j
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %2, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb13DataTableInfoEENS1_10unique_ptrINS1_15DuckTransaction15ActiveTableLockESt14default_deleteIS6_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.z = icmp eq i64 %i.af, %i.j
  %i.aa = load ptr, ptr %i.y, align 8
  %i.ab = icmp eq ptr %2, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb13DataTableInfoEENS1_10unique_ptrINS1_15DuckTransaction15ActiveTableLockESt14default_deleteIS6_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !686

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.q, %bb.g ]
  %i.ad = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !344 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !533 ; 2 uses
  %i.ag = urem i64 %i.af, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.ag, %i.m
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !686

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !686

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ah = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #34
          to label %bb.j unwind label %bb.v       ; 2 uses

bb.j:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i8 0, i64 56, i1 false), !noalias !687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  store ptr %2, ptr %3, align 8, !tbaa !693, !alias.scope !690
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.cast = ptrtoint ptr %i.ah to i64
  store i64 %.cast, ptr %i.ai, align 8, !tbaa !505, !alias.scope !690
  store ptr null, ptr %4, align 8, !tbaa !505, !noalias !690
  %i.aj = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb13DataTableInfoEESt4pairIKS3_NS1_10unique_ptrINS1_15DuckTransaction15ActiveTableLockESt14default_deleteIS8_ELb1EEEESaISC_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS4_IRS2_SB_EEEES4_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_0
