inline.NumInlined: 1512
inline.NumDeleted: 827
begin_hunk_0_@_ZN8facebook5velox9connector9Connector17unregisterTrackerEPNS0_5cache11ScanTrackerE:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9connector9Connector10getTrackerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.43") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::allocator.121", align 1 ; 3 uses
  %4 = alloca %"class.std::allocator.121", align 1 ; 3 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::shared_ptr.43", align 16 ; 10 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.43", align 16 ; 10 uses
  %9 = alloca %"class.std::shared_ptr.43", align 16 ; 8 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %12 = alloca %"class.folly::LockedPtr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.c, align 4, !tbaa !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17, !noalias !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector9trackers_E, i64 56), ptr %12, align 8, !tbaa !84, !alias.scope !93, !noalias !90
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !88, !alias.scope !93, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !96
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector9trackers_E, i64 56) acquire, align 8, !noalias !96 ; 4 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3, !noalias !96
  %i.f = and i32 %i.e, -1312
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 128
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector9trackers_E, i64 56), i32 %i.e, i32 %i.h seq_cst seq_cst, align 4, !noalias !96 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !89

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  store i32 %i.k, ptr %i.b, align 4, !noalias !96
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox9connector9Connector9trackers_E, i64 56), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !96 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17, !noalias !96
  store i8 1, ptr %i.d, align 8, !tbaa !88, !alias.scope !93, !noalias !90
  %i.m = load ptr, ptr %12, align 8, !tbaa !84, !noalias !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -56
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !100
  %i.o = load ptr, ptr %1, align 8, !tbaa !11, !noalias !100
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15, !noalias !100
  store i64 %i.q, ptr %5, align 8, !noalias !100
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.o, ptr %i.r, align 8, !noalias !100
  %i.s = invoke ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8weak_ptrIN8facebook5velox5cache11ScanTrackerEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc.i unwind label %bb.as, !noalias !90 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !100
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !104
  store ptr null, ptr %6, align 16, !tbaa !105, !alias.scope !101, !noalias !100
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN8facebook5velox5cache11ScanTrackerESaIvEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERFvPS7_ERiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN8facebook5velox9connector9Connector17unregisterTrackerEPNS0_5cache11ScanTrackerE, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc3.i unwind label %bb.as, !noalias !90

.noexc3.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !100
  %i.v = load ptr, ptr %6, align 16, !tbaa !105, !noalias !100 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11, !noalias !100
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15, !noalias !100
  store i64 %i.y, ptr %7, align 8, !noalias !100
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.w, ptr %i.z, align 8, !noalias !100
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_St8weak_ptrIN8facebook5velox5cache11ScanTrackerEEESaISD_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit.i.i unwind label %bb.l, !noalias !100 ; 2 uses

_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit.i.i: ; preds = %.noexc3.i
  %i.ab = load ptr, ptr %6, align 16, !tbaa !105, !noalias !100
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !108, !noalias !100
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !55, !noalias !100 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !100
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3, !noalias !100
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !100 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit.i.i
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !74, !noalias !100 ; 4 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i7.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i7.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !100 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.ao, %bb.j ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.k, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !59, !noalias !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !100
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #17, !noalias !100, !inline_history !110
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !74, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !100
  %i.at = load <2 x ptr>, ptr %6, align 16, !tbaa !70, !noalias !100
  store <2 x ptr> %i.at, ptr %0, align 8, !tbaa !70, !alias.scope !100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !100
  br label %"_ZZN8facebook5velox9connector9Connector10getTrackerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENK3$_0clISt13unordered_mapISt17basic_string_viewIcS6_ESt8weak_ptrINS0_5cache11ScanTrackerEESt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_SJ_EEEEEDaRT_.exit.i"

bb.l:                                             ; preds = %.noexc3.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !100
  call void @_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !100
  br label %.body.i

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !74, !noalias !114 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !55, !alias.scope !111, !noalias !100
  %.not.i.i.i.i12.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i12.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 8, !noalias !114
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.n ], [ %i.be, %bb.p ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.bc = cmpxchg weak ptr %i.az, i32 %.06.i.i.i.i.i.i.i, i32 %i.bb acq_rel monotonic, align 8, !noalias !114 ; 2 uses
  %i.bd = extractvalue { i32, i1 } %i.bc, 1
  %i.be = extractvalue { i32, i1 } %i.bc, 0
  br i1 %i.bd, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.o, !llvm.loop !115

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  store ptr null, ptr %i.aw, align 8, !tbaa !55, !alias.scope !111, !noalias !100
  br label %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.thread.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.bf = load atomic i32, ptr %i.az monotonic, align 8, !noalias !114
  %.not.i.i.i13.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i13.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.thread.i.i, label %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.thread.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, %bb.m
  store ptr null, ptr %8, align 16, !tbaa !105, !alias.scope !111, !noalias !100
  br label %bb.q

_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !108, !noalias !114 ; 3 uses
  store ptr %i.bg, ptr %8, align 16, !tbaa !105, !alias.scope !111, !noalias !100
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.q, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35.i.i

bb.q:                                             ; preds = %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.i.i, %_ZNKSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEE4lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !119
  store ptr null, ptr %9, align 16, !tbaa !105, !alias.scope !116, !noalias !100
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN8facebook5velox5cache11ScanTrackerESaIvEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERFvPS7_ERiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN8facebook5velox9connector9Connector17unregisterTrackerEPNS0_5cache11ScanTrackerE, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.r unwind label %bb.al, !noalias !100

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !119
  %i.bi = load <2 x ptr>, ptr %9, align 16, !tbaa !70, !noalias !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !100
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !55, !noalias !100 ; 8 uses
  store <2 x ptr> %i.bi, ptr %8, align 16, !tbaa !70, !noalias !100
  %.not.i.i.i.i14.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i14.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !100 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bk, align 8, !tbaa !56, !noalias !100
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !58, !noalias !100
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !59, !noalias !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !100
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #17, !noalias !100, !inline_history !120
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !59, !noalias !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !100
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #17, !noalias !100, !inline_history !120
  br label %_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.v ], [ %i.bx, %bb.w ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.x, label %_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i, !prof !54

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #17, !noalias !100
  br label %_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i.i = load ptr, ptr %i.bh, align 8, !tbaa !55, !noalias !100 ; 8 uses
  %.not.i.i15.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i15.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !100 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bz, align 8, !tbaa !56, !noalias !100
  %i.cd = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !58, !noalias !100
  %i.ce = load ptr, ptr %.pr.i.i, align 8, !tbaa !59, !noalias !100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !100
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !noalias !100, !inline_history !121
  %i.ch = load ptr, ptr %.pr.i.i, align 8, !tbaa !59, !noalias !100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !100
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !noalias !100, !inline_history !121
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i.i.i16.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i16.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i18.i.i = phi i32 [ %i.cc, %bb.ab ], [ %i.cm, %bb.ac ]
  %i.cn = icmp eq i32 %.0.i.i.i.i18.i.i, 1
  br i1 %i.cn, label %bb.ad, label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i, !prof !54

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !noalias !100
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i

_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i, %bb.z, %_ZNSt10shared_ptrIN8facebook5velox5cache11ScanTrackerEEaSEOS4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17, !noalias !100
  %i.co = load ptr, ptr %8, align 16, !tbaa !105, !noalias !100 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11, !noalias !100
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15, !noalias !100
  store i64 %i.cr, ptr %10, align 8, !noalias !100
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !noalias !100
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_St8weak_ptrIN8facebook5velox5cache11ScanTrackerEEESaISD_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit22.i.i unwind label %bb.am, !noalias !100 ; 2 uses

_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit22.i.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i
  store ptr %i.co, ptr %i.ct, align 8, !tbaa !108, !noalias !100
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.aw, align 8, !tbaa !55, !noalias !100 ; 3 uses
  %.not.i.i.i23.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i23.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit22.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 3 uses
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i.i.i.i24.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i24.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !100
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !3, !noalias !100
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4, !noalias !100 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i: ; preds = %bb.ag, %bb.af, %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8weak_ptrIN8facebook5velox5cache11ScanTrackerEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEEixEOS3_.exit22.i.i
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !74, !noalias !100 ; 4 uses
  %.not6.i.i.i26.i.i = icmp eq ptr %i.db, null
  br i1 %.not6.i.i.i26.i.i, label %_ZNSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit30.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 3 uses
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !100
  %.not.i7.i.i.i27.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i7.i.i.i27.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !100 ; 2 uses
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4, !noalias !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i29.i.i = phi i32 [ %i.de, %bb.ai ], [ %i.dg, %bb.aj ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i29.i.i, 1
  br i1 %i.dh, label %bb.ak, label %_ZNSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit30.i.i

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28.i.i
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !59, !noalias !100
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !100
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #17, !noalias !100, !inline_history !110
  br label %_ZNSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit30.i.i

_ZNSt8weak_ptrIN8facebook5velox5cache11ScanTrackerEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit30.i.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i25.i.i
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !74, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !noalias !100
  %.pre.i.i = load ptr, ptr %8, align 16, !tbaa !105, !noalias !100
  br label %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35.i.i

bb.al:                                            ; preds = %bb.q
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !100
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox5cache11ScanTrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit19.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !noalias !100
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a

bb.w:                                             ; preds = %.loopexit111
  br i1 %.not, label %bb.x, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %.0102, i64 noundef %4) #33
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  resume { ptr, i32 } %i.ew

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !153
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !137 ; 2 uses
  %.not.i64 = icmp eq i64 %i.ex, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !252 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.y

bb.y:                                             ; preds = %.noexc.i
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !137
  %i.fa = sub i64 0, %i.ez
  %i.fb = and i64 %i.fa, -8
  %i.fc = mul i64 %i.ex, 24
  %i.fd = sub i64 %i.fc, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #17
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.y, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #26

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #26

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !285, !nonnull !123
  %i.d = load i8, ptr %i.c, align 1, !tbaa !153, !range !122, !noundef !123
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286, !nonnull !123, !align !287
  %i.h = load i64, ptr %i.g, align 8, !tbaa !137  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !288, !nonnull !123, !align !287
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !289, !nonnull !123, !align !287
  %i.n = load i64, ptr %i.m, align 8, !tbaa !137
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !290, !nonnull !123, !align !287
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !138  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !291, !nonnull !123, !align !287
  %i.t = load i64, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !288, !nonnull !123, !align !287
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !126
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !292, !nonnull !123, !align !287
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !137 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !125
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !125
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #17
  %.pre = load ptr, ptr %0, align 8, !tbaa !285
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !153, !range !122
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !286
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !137
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !293, !nonnull !123, !align !287
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !294, !nonnull !123, !align !287
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !137
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !295, !nonnull !123, !align !287
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !253
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_SA_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #17
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SA_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.163") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !126
  %.pre84 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.0.i76 = phi i64 [ %2, %bb.b ], [ %i.ai, %bb.f ] ; 2 uses
  %.022.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ah, %bb.f ]
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i76, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.041.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not67 = icmp eq i32 %.sroa.041.0, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.0, i1 true)
  %i.x = add nsw i32 %.sroa.041.0, -1
  %i.y = and i32 %i.x, %.sroa.041.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %7 = load ptr, ptr %1, align 8, !tbaa !231
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ac
  %8 = load i32, ptr %4, align 4, !tbaa !130
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !130
  %i.af = icmp eq i32 %8, %i.ae
  br i1 %i.af, label %bb.g, label %.critedge.i, !prof !62, !llvm.loop !132

bb.e:                                             ; preds = %.critedge.i
  %i.ag = icmp eq i8 %i.v, 0
  br i1 %i.ag, label %.thread65, label %bb.f, !prof !62

bb.f:                                             ; preds = %bb.e
  %i.ah = add i64 %.022.i75, -1                   ; 2 uses
  %i.ai = add i64 %i.e, %.0.i76
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %.thread65, label %bb.c, !llvm.loop !133

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread65:                                        ; preds = %bb.f, %bb.e, %..thread65_crit_edge
  %.pre-phi85 = phi i64 [ %.pre84, %..thread65_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.ak = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.0.copyload.i.i = load i16, ptr %i.al, align 1
  %i.am = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.an = add i64 %.pre-phi85, -1
  %i.ao = lshr i64 %i.an, 12
  %i.ap = add nuw nsw i64 %i.ao, 1
  %i.aq = mul i64 %i.ap, %i.am                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi85, i64 noundef %i.am, i64 noundef %i.aq)
  %.pre81 = load ptr, ptr %i.ar, align 8, !tbaa !126
  %.pre82 = load i64, ptr %i.a, align 8, !tbaa !125
  %.pre86 = and i64 %.pre82, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi87 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre86, %bb.h ] ; 2 uses
  %i.as = phi ptr [ %i.ak, %.thread65 ], [ %.pre81, %bb.h ] ; 3 uses
  %i.at = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !tbaa !14
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.ay, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.az = shl i64 %3, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bb = phi i64 [ %i.at, %bb.i ], [ %i.bh, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 15 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !275 ; 2 uses
  %.not.i32 = icmp eq i8 %i.be, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !275
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bg = add i64 %i.ba, %.029                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bg, i64 range(i64 0, 256) %.pre-phi87) ; 2 uses
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.bh ; 3 uses
  %i.bj = load <16 x i8>, ptr %i.bi, align 16     ; 2 uses
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bm, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !296

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bn = extractelement <16 x i8> %i.bj, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %i.bp = add i8 %i.bn, 16
  store i8 %i.bp, ptr %i.bo, align 2, !tbaa !281
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ay, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bm, %bb.l ]
  %.1 = phi ptr [ %i.au, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9connector14CommitStrategyESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bi, %bb.l ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.br = zext nneg i16 %i.bq to i64              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.27) #38
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bv = trunc i64 %3 to i8
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.br ; 2 uses
  %i.by = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !125
  %i.ca = lshr i64 %i.bz, 8                       ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !3
  %i.cc = load ptr, ptr %1, align 8, !tbaa !231, !nonnull !123, !noundef !123
  %i.cd = and i64 %i.ca, 4294967295
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %5, align 4, !tbaa !130
  store i32 %i.cf, ptr %i.ce, align 8, !tbaa !297
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !224
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.ci = and i64 %i.ch, -256
  %i.cj = add i64 %i.ci, 256
  %i.ck = and i64 %i.ch, 255
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !125
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.aj, %bb.g ], [ %i.bx, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !299
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !137
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cm, align 8, !tbaa !301
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox9connector14CommitStrategyEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.163") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139
  %.pre106 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %4, align 8
  %.fr91 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr91, 0
  br i1 %i.q, label %.split.us, label %.split, !llvm.loop !143

.split.us:                                        ; preds = %bb.b, %bb.c
  %.0.i86.us = phi i64 [ %i.aa, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %.022.i85.us = phi i64 [ %i.z, %bb.c ], [ %i.j, %bb.b ]
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i86.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split.us
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread67, label %bb.c, !prof !62

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.z = add i64 %.022.i85.us, -1                 ; 2 uses
  %i.aa = add i64 %i.e, %.0.i86.us
  %.not.i.us = icmp eq i64 %i.z, 0
  br i1 %.not.i.us, label %.thread67, label %.split.us, !llvm.loop !144

.lr.ph.us:                                        ; preds = %.split.us
  %i.ab = zext nneg i16 %i.w to i32
  %i.ac = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.041.078.us.us = phi i32 [ %i.ab, %.lr.ph.us ], [ %i.am, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ae = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.078.us.us, i1 true)
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !145
  %.not.i.i.i.us.us = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox9connector14CommitStrategyEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !89

.critedge.i.backedge.us.us:                       ; preds = %bb.d
  %i.al = add nsw i32 %.sroa.041.078.us.us, -1
end_hunk_1
