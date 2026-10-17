Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/DeterministicSchedule?download=true
inline.NumInlined: 2146
inline.NumDeleted: 1190
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5folly4test21DeterministicSchedule7tryWaitEPNS0_9SemaphoreE:bb.a
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !113
  %i.bt = icmp eq ptr %0, %i.bs
  br i1 %i.bt, label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit24, label %.lr.ph.i.i.i.i15

bb.s:                                             ; preds = %bb.t
  %i.bu = icmp eq ptr %0, %i.bx
  br i1 %i.bu, label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit24, label %.lr.ph.i.i.i.i15, !llvm.loop !17

.lr.ph.i.i.i.i15:                                 ; preds = %bb.r, %bb.s
  %.020.i.i.i.i16 = phi ptr [ %i.bv, %bb.s ], [ %i.bq, %bb.r ]
  %i.bv = load ptr, ptr %.020.i.i.i.i16, align 8, !tbaa !41 ; 4 uses
  %.not18.i.i.i.i17 = icmp eq ptr %i.bv, null
  br i1 %.not18.i.i.i.i17, label %.loopexit.i.i20, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = urem i64 %i.by, %i.bl
  %.not19.i.i.i.i18 = icmp eq i64 %i.bz, %i.bm
  br i1 %.not19.i.i.i.i18, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i19, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i19:                 ; preds = %bb.t
  br label %.loopexit.i.i20, !llvm.loop !17

.loopexit.i.i20:                                  ; preds = %.lr.ph.i.i.i.i15, %..loopexit_crit_edge21.i.i.i.i19, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr @_ZN5folly4testL10semSyncVarE, ptr %2, align 8, !tbaa !312
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 5 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %0, ptr %i.cc, align 8, !tbaa !320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cd, align 8, !tbaa !321
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !322
  %i.ce = invoke ptr @_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) @_ZN5folly4testL10semSyncVarE, i64 noundef %i.bm, i64 noundef %i.bk, ptr noundef nonnull %i.cb, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i21 unwind label %bb.u

_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i21: ; preds = %.loopexit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit24

bb.u:                                             ; preds = %.loopexit.i.i20
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit24: ; preds = %bb.s, %bb.r, %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i21
  %.pn.i.i22 = phi ptr [ %i.ce, %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i21 ], [ %i.bq, %bb.r ], [ %i.bv, %bb.s ]
  %.1.i.i23 = getelementptr inbounds nuw i8, ptr %.pn.i.i22, i64 16
  %i.cg = load ptr, ptr %.1.i.i23, align 8, !tbaa !305
  tail call void @_ZN5folly4test13ThreadSyncVar7acq_relEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
  br label %bb.aa

bb.v:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.ch = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bf) #17 ; 0 uses
  %i.ci = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly4testL10semSyncVarE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.ck = urem i64 %i.ci, %i.cj                   ; 3 uses
  %i.cl = load ptr, ptr @_ZN5folly4testL10semSyncVarE, align 8, !tbaa !306
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !296 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i25, label %.loopexit.i.i31, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !113
  %i.cr = icmp eq ptr %0, %i.cq
  br i1 %i.cr, label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit35, label %.lr.ph.i.i.i.i26

bb.x:                                             ; preds = %bb.y
  %i.cs = icmp eq ptr %0, %i.cv
  br i1 %i.cs, label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit35, label %.lr.ph.i.i.i.i26, !llvm.loop !17

.lr.ph.i.i.i.i26:                                 ; preds = %bb.w, %bb.x
  %.020.i.i.i.i27 = phi ptr [ %i.ct, %bb.x ], [ %i.co, %bb.w ]
  %i.ct = load ptr, ptr %.020.i.i.i.i27, align 8, !tbaa !41 ; 4 uses
  %.not18.i.i.i.i28 = icmp eq ptr %i.ct, null
  br i1 %.not18.i.i.i.i28, label %.loopexit.i.i31, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = urem i64 %i.cw, %i.cj
  %.not19.i.i.i.i29 = icmp eq i64 %i.cx, %i.ck
  br i1 %.not19.i.i.i.i29, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i30, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i30:                 ; preds = %bb.y
  br label %.loopexit.i.i31, !llvm.loop !17

.loopexit.i.i31:                                  ; preds = %.lr.ph.i.i.i.i26, %..loopexit_crit_edge21.i.i.i.i30, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZN5folly4testL10semSyncVarE, ptr %1, align 8, !tbaa !312
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 5 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %0, ptr %i.da, align 8, !tbaa !320
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr null, ptr %i.db, align 8, !tbaa !321
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !322
  %i.dc = invoke ptr @_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) @_ZN5folly4testL10semSyncVarE, i64 noundef %i.ck, i64 noundef %i.ci, ptr noundef nonnull %i.cz, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i32 unwind label %bb.z

_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i32: ; preds = %.loopexit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit35

bb.z:                                             ; preds = %.loopexit.i.i31
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %common.resume

_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit35: ; preds = %bb.x, %bb.w, %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i32
  %.pn.i.i33 = phi ptr [ %i.dc, %_ZNSt10_HashtableIPN5folly4test9SemaphoreESt4pairIKS3_St10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i32 ], [ %i.co, %bb.w ], [ %i.ct, %bb.x ]
  %.1.i.i34 = getelementptr inbounds nuw i8, ptr %.pn.i.i33, i64 16
  %i.de = load ptr, ptr %.1.i.i34, align 8, !tbaa !305
  tail call void @_ZN5folly4test13ThreadSyncVar7acquireEv(ptr noundef nonnull align 8 dereferenceable(24) %i.de)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit35, %_ZNSt13unordered_mapIPN5folly4test9SemaphoreESt10unique_ptrINS1_13ThreadSyncVarESt14default_deleteIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S8_EEEixERSE_.exit24
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.df, null
  br i1 %.not.i.i36, label %bb.ab, label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i37, !prof !60

bb.ab:                                            ; preds = %bb.aa
  %i.dg = tail call fastcc noundef nonnull align 8 dereferenceable(168) ptr @_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE7getSlowERNS4_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i37

_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i37: ; preds = %bb.ab, %bb.aa
  %i.dh = phi ptr [ %i.dg, %bb.ab ], [ %i.df, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !68 ; 6 uses
  %.not.i38 = icmp eq ptr %i.dj, null
  br i1 %.not.i38, label %_ZN5folly4test21DeterministicSchedule17afterSharedAccessEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i37
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !111
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !114
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dr, ptr %i.a, align 8, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %bb.ad, label %_ZNKSt8functionIFmmEEclEm.exit.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFmmEEclEm.exit.i:                 ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !76
  %i.dw = call noundef i64 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !114
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !113
  call void @_ZN5folly4test9Semaphore4postIZNS1_4postEvEUlvE_EEvT_(ptr noundef nonnull align 8 dereferenceable(112) %i.dz)
  br label %_ZN5folly4test21DeterministicSchedule17afterSharedAccessEv.exit

_ZN5folly4test21DeterministicSchedule17afterSharedAccessEv.exit: ; preds = %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i37, %_ZNKSt8functionIFmmEEclEm.exit.i
  ret i1 %.not.i13
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4test21DeterministicSchedule4waitEPNS0_9SemaphoreE(ptr noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN5folly4test21DeterministicSchedule7tryWaitEPNS0_9SemaphoreE(ptr noundef %0)
  br i1 %i.a, label %bb.c, label %bb.b, !llvm.loop !7685

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !51     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = load ptr, ptr %0, align 8, !tbaa !51     ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE11_M_allocateEm.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 4 uses
  %3 = icmp eq ptr %i.c, %i.b
  br i1 %3, label %_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false), !tbaa !52
  br label %_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %4 = load ptr, ptr %0, align 8, !tbaa !51       ; 3 uses
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %4 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.v) #36
  br label %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5folly4test15DSchedTimestampESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !57
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !124

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !124

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !51
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !50 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !51  ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !50
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !52
  br label %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.aa, %bb.m ], [ 8, %bb.n ]
  %i.ah = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %i.ai = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %.pre25, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  %i.ak = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.am = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !52
  store i64 %i.am, ptr %.011.i.i.i.i, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7686

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ap = phi ptr [ %2, %_ZNSt12_Vector_baseIN5folly4test15DSchedTimestampESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.ai, %_ZSt4copyIPN5folly4test15DSchedTimestampES3_ET0_T_S5_S4_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5folly4test15DSchedTimestampESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly4test13futexWaitImplEPKNS0_23DeterministicAtomicImplIjNS0_21DeterministicScheduleESt6atomicEEjPKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS8_INS9_12steady_clockESE_EEj(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly4test26deterministicFutexWaitImplINS0_19DeterministicAtomicEEENS_6detail11FutexResultEPKT_IjERSt5mutexRSt13unordered_mapIS8_NSt7__cxx114listISt4pairIjPbESaISG_EEESt4hashIS8_ESt8equal_toIS8_ESaISE_IKS8_SI_EEEjPKNSt6chrono10time_pointINSS_3_V212system_clockENSS_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNST_INSU_12steady_clockESZ_EEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) @_ZN5folly4testL9futexLockE, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5folly4testL11futexQueuesB5cxx11E, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly4test26deterministicFutexWaitImplINS0_19DeterministicAtomicEEENS_6detail11FutexResultEPKT_IjERSt5mutexRSt13unordered_mapIS8_NSt7__cxx114listISt4pairIjPbESaISG_EEESt4hashIS8_ESt8equal_toIS8_ESaISE_IKS8_SI_EEEjPKNSt6chrono10time_pointINSS_3_V212system_clockENSS_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNST_INSU_12steady_clockESZ_EEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.folly::ThreadLocalPRNG", align 1 ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.folly::ThreadLocalPRNG", align 1 ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"struct.std::_Hashtable<const folly::test::DeterministicAtomicImpl<unsigned int> *, std::pair<const folly::test::DeterministicAtomicImpl<unsigned int> *const, std::__cxx11::list<std::pair<unsigned int, bool *>>>, std::allocator<std::pair<const folly::test::DeterministicAtomicImpl<unsigned int> *const, std::__cxx11::list<std::pair<unsigned int, bool *>>>>, std::__detail::_Select1st, std::equal_to<const folly::test::DeterministicAtomicImpl<unsigned int> *>, std::hash<const folly::test::DeterministicAtomicImpl<unsigned int> *>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !324
  %i.g = icmp eq ptr %4, null
  %i.h = icmp eq ptr %5, null
  %.not19 = and i1 %i.g, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i8 0, ptr %i.f, align 1, !tbaa !291
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 16 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc noundef nonnull align 8 dereferenceable(168) ptr @_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE7getSlowERNS4_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i

_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5folly4test21DeterministicSchedule18beforeSharedAccessEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i
  tail call void @_ZN5folly4test9Semaphore4waitIZNS1_4waitEvEUlvE_ZNS1_4waitEvEUlvE0_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  br label %_ZN5folly4test21DeterministicSchedule18beforeSharedAccessEv.exit

_ZN5folly4test21DeterministicSchedule18beforeSharedAccessEv.exit: ; preds = %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit.i, %bb.c
  %i.n = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #17 ; 2 uses
  %.not.i20 = icmp eq i32 %i.n, 0
  br i1 %.not.i20, label %_ZNSt5mutex4lockEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly4test21DeterministicSchedule18beforeSharedAccessEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #37
  unreachable

_ZNSt5mutex4lockEv.exit:                          ; preds = %_ZN5folly4test21DeterministicSchedule18beforeSharedAccessEv.exit
  %i.o = load atomic i32, ptr %0 monotonic, align 4
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNSt5mutex4lockEv.exit
  %i.q = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = urem i64 %i.q, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !296  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !324
  %i.aa = icmp eq ptr %0, %i.z
  br i1 %i.aa, label %_ZNSt13unordered_mapIPKN5folly4test23DeterministicAtomicImplIjNS1_21DeterministicScheduleESt6atomicEENSt7__cxx114listISt4pairIjPbESaISC_EEESt4hashIS7_ESt8equal_toIS7_ESaISA_IKS7_SE_EEEixERSJ_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ab = icmp eq ptr %0, %i.ae
  br i1 %i.ab, label %_ZNSt13unordered_mapIPKN5folly4test23DeterministicAtomicImplIjNS1_21DeterministicScheduleESt6atomicEENSt7__cxx114listISt4pairIjPbESaISC_EEESt4hashIS7_ESt8equal_toIS7_ESaISA_IKS7_SE_EEEixERSJ_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !18

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.x, %bb.f ]
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !41 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !324 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = urem i64 %i.af, %i.s
  %.not19.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !18

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !18

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %2, ptr %9, align 8, !tbaa !328
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 7 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %0, ptr %i.aj, align 8, !tbaa !334
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !335
  store ptr %i.ak, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 0, ptr %i.am, align 8, !tbaa !336
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !337
  %i.an = invoke ptr @_ZNSt10_HashtableIPKN5folly4test23DeterministicAtomicImplIjNS1_21DeterministicScheduleESt6atomicEESt4pairIKS7_NSt7__cxx114listIS8_IjPbESaISD_EEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS7_ESt4hashIS7_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.t, i64 noundef %i.q, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %_ZNSt10_HashtableIPKN5folly4test23DeterministicAtomicImplIjNS1_21DeterministicScheduleESt6atomicEESt4pairIKS7_NSt7__cxx114listIS8_IjPbESaISD_EEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS7_ESt4hashIS7_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.i
end_hunk_0
