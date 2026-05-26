inline.NumInlined: 962
inline.NumDeleted: 597
begin_hunk_0
@_ZN5folly13AsyncFdSocketC1EPNS_9EventBaseENS_13NetworkSocketEPKNS_13SocketAddressE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN5folly13AsyncFdSocketC2EPNS_9EventBaseENS_13NetworkSocketEPKNS_13SocketAddressE
@_ZN5folly13AsyncFdSocketC1ENS0_24DoesNotMoveFdSocketStateEPNS_11AsyncSocketE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly13AsyncFdSocketC2ENS0_24DoesNotMoveFdSocketStateEPNS_11AsyncSocketE
@_ZN5folly13AsyncFdSocketC1ENS0_24DoesNotMoveFdSocketStateESt10unique_ptrINS_11AsyncSocketENS_18DelayedDestruction10DestructorEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly13AsyncFdSocketC2ENS0_24DoesNotMoveFdSocketStateESt10unique_ptrINS_11AsyncSocketENS_18DelayedDestruction10DestructorEE

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly13AsyncFdSocket23FdSendMsgParamsCallbackE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS3_4FileEESaISB_EEELb1EEEEE18_M_deallocate_nodeEPSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.b

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapIN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS0_4FileEESaIS7_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !27
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZNSt13unordered_mapIN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS0_4FileEESaIS7_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S9_EEED2Ev.exit

_ZNSt13unordered_mapIN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS0_4FileEESaIS7_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S9_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly13AsyncFdSocket23FdSendMsgParamsCallbackE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.noexc.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.noexc.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly11AsyncSocket15WriteRequestTagESt6vectorISt10shared_ptrIKNS3_4FileEESaISB_EEELb1EEEEE18_M_deallocate_nodeEPSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %.06.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.b, !inline_history !28

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !28
  unreachable

_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallbackD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !27
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26, !inline_history !28
  br label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallbackD2Ev.exit

_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallbackD2Ev.exit: ; preds = %_ZNSt10_HashtableIN5folly11AsyncSocket15WriteRequestTagESt4pairIKS2_St6vectorISt10shared_ptrIKNS0_4FileEESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback16getAncillaryDataENS_10WriteFlagsEPvRKNS_11AsyncSocket15WriteRequestTagEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i1 zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"struct.google::CheckOpString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.google::LogMessageFatal", align 8 ; 4 uses
  %10 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = load ptr, ptr %3, align 8                ; 4 uses
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !23 ; 4 uses
  %i.g = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.g, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp eq ptr %i.e, %i.i
  br i1 %i.j, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit, label %bb.c, !llvm.loop !33

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i64 %i.v, %i.l
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = icmp eq ptr %i.e, %i.x
  %i.z = select i1 %i.w, i1 %i.y, i1 false
  br i1 %i.z, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ab = icmp eq i64 %i.ah, %i.l
  %i.ac = load ptr, ptr %i.aa, align 8
  %i.ad = icmp eq ptr %i.e, %i.ac
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.s, %bb.f ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !23 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i.i.i.i, label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread, !llvm.loop !37

_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 0, ptr %i.b, align 8, !tbaa !38
  br label %bb.i

_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.s, %bb.f ], [ %i.af, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.fr = freeze i64 %i.ap
  %i.aq = ashr i64 %.fr, 2
  %i.ar = add nsw i64 %i.aq, 4                    ; 2 uses
  %i.as = and i64 %i.ar, -8
  %i.at = add nsw i64 %i.as, 16                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.at, ptr %i.b, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.i, label %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !43

_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.au = icmp ult i64 %i.ar, -16
  br i1 %i.au, label %bb.j, label %.thread

bb.i:                                             ; preds = %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit.thread, %_ZN5folly13AsyncFdSocket23FdSendMsgParamsCallback17getCmsgSizeAndFdsERKNS_11AsyncSocket15WriteRequestTagE.exit
  %i.av = invoke noundef ptr @_ZN6google17MakeCheckOpStringIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.14)
          to label %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.x ; 2 uses

_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.i
  store ptr %i.av, ptr %8, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %bb.k

bb.j:                                             ; preds = %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ax = icmp eq ptr %2, null
  br i1 %i.ax, label %bb.k, label %bb.q

bb.k:                                             ; preds = %.thread, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ay = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc22 unwind label %bb.x   ; 3 uses

.noexc22:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc22
  store ptr %i.ay, ptr %6, align 8, !tbaa !44
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.5, i32 noundef 209, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc23 unwind label %bb.x

.noexc23:                                         ; preds = %bb.l
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #25
  unreachable

bb.m:                                             ; preds = %.noexc22
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body

bb.n:                                             ; preds = %_ZN6google12Check_NEImplIimEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.5, i32 noundef 196, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.p unwind label %bb.x       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %9) #25
  unreachable

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 7 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, 16
  store i64 %i.bi, ptr %2, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.bj, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.bk, align 4, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not54 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bm = ashr exact i64 %i.bg, 4                 ; 3 uses
  %xtraiter = and i64 %i.bm, 3                    ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 4
  br i1 %i.bn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bm, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02053.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02053.epil = phi i64 [ %i.bs, %.lr.ph.epil ], [ %.02053.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.02053.epil
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !52
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.02053.epil
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !7
  %i.bs = add nuw i64 %.02053.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.q
  %i.bt = load ptr, ptr @_ZZN5folly13AsyncFdSocket23FdSendMsgParamsCallback16getAncillaryDataENS_10WriteFlagsEPvRKNS_11AsyncSocket15WriteRequestTagEbE8vlocal__, align 8, !tbaa !57 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.r, label %bb.s

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02053 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.co, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.02053
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !52
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.02053
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = or disjoint i64 %.02053, 1              ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !52
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bz
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !7
  %i.ce = or disjoint i64 %.02053, 2              ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !52
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ce
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !7
  %i.cj = or disjoint i64 %.02053, 3              ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !52
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cj
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  %i.co = add nuw i64 %.02053, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !62

bb.r:                                             ; preds = %._crit_edge
  %i.cp = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly13AsyncFdSocket23FdSendMsgParamsCallback16getAncillaryDataENS_10WriteFlagsEPvRKNS_11AsyncSocket15WriteRequestTagEbE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.5, i32 noundef 4)
          to label %bb.t unwind label %bb.x

bb.s:                                             ; preds = %._crit_edge
  %i.cq = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.cr = icmp sgt i32 %i.cq, 3
  br i1 %i.cr, label %bb.u, label %.critedge21

bb.t:                                             ; preds = %bb.r
  br i1 %i.cp, label %bb.u, label %.critedge21

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.5, i32 noundef 220)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.16, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.x ; 2 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.17, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.x ; 0 uses
end_hunk_0
begin_hunk_1_@_ZNSt11_Deque_baseIN5folly9SocketFdsESaIS1_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIN5folly9SocketFdsESaIS1_EE15_M_allocate_mapEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !3050
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !3051
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !3052
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #25
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly11AsyncSocket25ReadAncillaryDataCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13AsyncFdSocket27FdReadAncillaryDataCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(1048) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1048) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13AsyncFdSocket27FdReadAncillaryDataCallback13ancillaryDataER6msghdr(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3042
  tail call void @_ZN5folly13AsyncFdSocket27enqueueFdsFromAncillaryDataER6msghdr(ptr noundef nonnull align 8 dereferenceable(2392) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !3053
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZN5folly13AsyncFdSocket27FdReadAncillaryDataCallback26getAncillaryDataCtrlBufferEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.b, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly13AsyncFdSocket27enqueueFdsFromAncillaryDataER6msghdr(ptr noundef nonnull align 8 dereferenceable(2392) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %5 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.folly::AsyncSocketException", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector", align 16     ; 14 uses
  %12 = alloca %"class.folly::AsyncSocketException", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.folly::SocketFds", align 8 ; 8 uses
  %15 = alloca %"class.std::vector", align 16     ; 6 uses
  %16 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3056
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !2381
  %i.g = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %.noexc12 unwind label %bb.av  ; 3 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.g, ptr %10, align 8, !tbaa !2626
  store i64 63, ptr %i.f, align 8, !tbaa !2385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.g, ptr noundef nonnull align 1 dereferenceable(63) @.str.24, i64 63, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 63, ptr %i.h, align 8, !tbaa !2383
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  store i8 0, ptr %i.i, align 1, !tbaa !2385
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0)
          to label %.noexc13 unwind label %bb.av

.noexc13:                                         ; preds = %.noexc12
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc13
  %i.j = load ptr, ptr %8, align 8, !tbaa !2626   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !2385
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.c:                                             ; preds = %.noexc13
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = load ptr, ptr %8, align 8, !tbaa !2626   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !2385
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %9, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 8, ptr %i.u, align 8, !tbaa !2627
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !2633
  %i.w = load ptr, ptr %10, align 8, !tbaa !2626  ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = load i64, ptr %i.f, align 8, !tbaa !2385
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.aa = invoke noundef i32 @_ZN5folly11AsyncSocket8failReadEPKcRKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef nonnull @__func__._ZN5folly13AsyncFdSocket27enqueueFdsFromAncillaryDataER6msghdr, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.d unwind label %bb.av      ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !3059
  %.fr.i = freeze i64 %i.ac
  %i.ad = icmp ult i64 %.fr.i, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %.not3942.i = icmp eq ptr %i.af, null
  %.not39.i = select i1 %i.ad, i1 true, i1 %.not3942.i
  br i1 %.not39.i, label %_ZN5folly12_GLOBAL__N_110receiveFdsER6msghdrPSt6vectorINS_4FileESaIS4_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7
  %.not13.i83 = icmp eq i32 %i.aj, 1
  br i1 %.not13.i83, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %__cmsg_nxthdr.exit.i, %.lr.ph.i
  %.040.i.lcssa82 = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ch, %__cmsg_nxthdr.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.040.i.lcssa82, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.5, i32 noundef 313, i32 noundef 2)
          to label %bb.f unwind label %bb.z

bb.f:                                             ; preds = %._crit_edge
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.g unwind label %bb.z       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.29, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.g
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !7
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 noundef %i.an)
          to label %bb.h unwind label %bb.z       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15

.lr.ph:                                           ; preds = %.lr.ph.i, %__cmsg_nxthdr.exit.i
  %.040.i84 = phi ptr [ %i.ch, %__cmsg_nxthdr.exit.i ], [ %i.af, %.lr.ph.i ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.040.i84, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.aq, 1
  br i1 %.not14.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.040.i84, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.5, i32 noundef 316, i32 noundef 2)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.k unwind label %bb.z       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.30, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i: ; preds = %bb.k
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef %i.au)
          to label %bb.l unwind label %bb.z       ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15

bb.m:                                             ; preds = %.lr.ph
  %i.aw = load i64, ptr %.040.i84, align 8, !tbaa !38 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 20
  br i1 %i.ax, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.5, i32 noundef 276, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.i.i

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.p unwind label %.loopexit.split-lp.i.i ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.31, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.loopexit.split-lp.i.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.p
  %i.ba = load i64, ptr %.040.i84, align 8, !tbaa !38
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.ba)
          to label %_ZNSolsEm.exit.i.i unwind label %.loopexit.split-lp.i.i ; 0 uses

_ZNSolsEm.exit.i.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15

bb.q:                                             ; preds = %bb.m
  %i.bc = add i64 %i.aw, -16                      ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = and i64 %i.aw, 3
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.5, i32 noundef 283, i32 noundef 2)
          to label %bb.s unwind label %.loopexit.split-lp.i.i

bb.s:                                             ; preds = %bb.r
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.t unwind label %.loopexit.split-lp.i.i ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.32, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i.i unwind label %.loopexit.split-lp.i.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i.i: ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %i.bc)
          to label %_ZNSolsEm.exit16.i.i unwind label %.loopexit.split-lp.i.i ; 0 uses

_ZNSolsEm.exit16.i.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.040.i84, i64 16
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bp, %_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.018.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 1, ptr %i.b, align 1, !tbaa !3060
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !3061 ; 3 uses
  %i.bm = load ptr, ptr %i.ah, align 16, !tbaa !3063
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5folly4FileC1Eib(ptr noundef nonnull align 4 dereferenceable(5) %i.bl, i32 noundef %i.bk, i1 noundef zeroext true) #27
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !3061
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.ag, align 8, !tbaa !3061
  br label %_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i

bb.w:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIN5folly4FileESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i unwind label %.loopexit17.i.i

_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bp = add nuw nsw i64 %.018.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %i.bd
  br i1 %exitcond.not.i.i, label %_ZN5folly12_GLOBAL__N_118receiveFdsFromCMSGERK7cmsghdrPSt6vectorINS_4FileESaIS5_EE.exit.i, label %bb.u, !llvm.loop !3064

.loopexit17.i.i:                                  ; preds = %bb.w
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.loopexit.split-lp.i.i:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.i.i, %bb.t, %bb.s, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.p, %bb.o, %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit17.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit17.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.bq = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bq) #25
  unreachable

_ZN5folly12_GLOBAL__N_118receiveFdsFromCMSGERK7cmsghdrPSt6vectorINS_4FileESaIS5_EE.exit.i: ; preds = %_ZNSt6vectorIN5folly4FileESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit.i.i
  %i.br = load i64, ptr %.040.i84, align 8, !tbaa !38 ; 4 uses
  %i.bs = icmp ult i64 %i.br, 16
  br i1 %i.bs, label %_ZN5folly12_GLOBAL__N_110receiveFdsER6msghdrPSt6vectorINS_4FileESaIS4_EE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5folly12_GLOBAL__N_118receiveFdsFromCMSGERK7cmsghdrPSt6vectorINS_4FileESaIS5_EE.exit.i
  %i.bt = sub i64 0, %i.br
  %i.bu = and i64 %i.bt, 7
  %i.bv = or disjoint i64 %i.bu, 16               ; 2 uses
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !3065
  %i.bx = load i64, ptr %i.ab, align 8, !tbaa !3059
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %.040.i84 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bv
  %i.cd = sub nuw i64 %i.cb, %i.bv
  %i.ce = icmp ult i64 %i.cd, %i.br
  %or.cond.i.i = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond.i.i, label %_ZN5folly12_GLOBAL__N_110receiveFdsER6msghdrPSt6vectorINS_4FileESaIS4_EE.exit, label %__cmsg_nxthdr.exit.i

__cmsg_nxthdr.exit.i:                             ; preds = %bb.y
end_hunk_1
