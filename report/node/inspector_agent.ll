inline.NumInlined: 4348
inline.NumDeleted: 2349
begin_hunk_0_@_ZN4node9inspector19NodeInspectorClient17resourceNameToUrlERKN12v8_inspector10StringViewE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN12v8_inspector17V8InspectorClient16generateUniqueIdEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12v8_inspector17V8InspectorClient13dispatchErrorEN2v85LocalINS1_7ContextEEENS2_INS1_7MessageEEENS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare void @_ZN4node15TimerWrapHandle5CloseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare ptr @_ZNK4node14PrincipalRealm37inspector_console_extension_installerEv(ptr noundef nonnull align 8 dereferenceable(864)) unnamed_addr #6

declare void @_ZN4node15TimerWrapHandle6UpdateEmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRKSt21piecewise_construct_tSt5tupleIJS0_EESN_IJPNS3_11EnvironmentEZNS3_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS0_ES0_EUlvE_EEEEES1_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 10 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = tail call noundef ptr @_ZSt12construct_atISt4pairIKPvN4node15TimerWrapHandleEEJRKSt21piecewise_construct_tSt5tupleIJS1_EES9_IJPNS3_11EnvironmentEZNS3_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS1_ES1_EUlvE_EEEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_(ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = urem i64 %i.g, %i.i                      ; 5 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.critedge19, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.026.0.in = phi ptr [ %i.n, %bb.b ], [ %.sroa.026.0, %bb.d ]
  %.sroa.026.0 = load ptr, ptr %.sroa.026.0.in, align 8 ; 4 uses
  %i.o = icmp eq ptr %.sroa.026.0, null
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 8
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %bb.c, !llvm.loop !443

.critedge:                                        ; preds = %bb.c
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = urem i64 %i.u, %i.w
  br label %.critedge19

bb.e:                                             ; preds = %.critedge.thread
  %i.y = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq ptr %i.f, %i.af
  br i1 %i.ac, label %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %.lr.ph.i.i, !llvm.loop !444

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load ptr, ptr %.020.i.i, align 8        ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i, label %.critedge19, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.i
  %.not19.i.i = icmp eq i64 %i.ah, %i.j
  br i1 %.not19.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i, !llvm.loop !444

..loopexit_crit_edge21.i.i:                       ; preds = %bb.g
  br label %.critedge19, !llvm.loop !444

.critedge19:                                      ; preds = %.lr.ph.i.i, %.critedge, %..loopexit_crit_edge21.i.i, %.critedge.thread
  %i.ai = phi i64 [ %i.x, %.critedge ], [ %i.j, %.critedge.thread ], [ %i.j, %..loopexit_crit_edge21.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.aj = phi i64 [ %i.w, %.critedge ], [ %i.i, %.critedge.thread ], [ %i.i, %..loopexit_crit_edge21.i.i ], [ %i.i, %.lr.ph.i.i ]
  %i.ak = phi ptr [ %i.v, %.critedge ], [ %i.h, %.critedge.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %i.al = phi i64 [ %i.u, %.critedge ], [ %i.g, %.critedge.thread ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef %i.aj, i64 noundef %i.e, i64 noundef 1) #29 ; 2 uses
  %i.ao = extractvalue { i8, i64 } %i.an, 0
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge19
  %i.aq = extractvalue { i8, i64 } %i.an, 1
  tail call void @_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aq)
  %i.ar = load i64, ptr %i.ak, align 8
  %i.as = urem i64 %i.al, %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge19
  %.0.i20 = phi i64 [ %i.as, %bb.h ], [ %i.ai, %.critedge19 ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.0.i20 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.av, null
  br i1 %.not.i.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8
  store ptr %i.aw, ptr %i.a, align 8
  %i.ax = load ptr, ptr %i.au, align 8
  store ptr %i.a, ptr %i.ax, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  store ptr %i.az, ptr %i.a, align 8
  store ptr %i.a, ptr %i.ay, align 8
  %.not11.i.i = icmp eq ptr %i.az, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ak, align 8
  %i.bc = load ptr, ptr %i.ba, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = urem i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.be
  store ptr %i.a, ptr %i.bf, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre, %bb.l ], [ %i.at, %bb.k ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.0.i20
  store ptr %i.ay, ptr %i.bh, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bi = load i64, ptr %i.d, align 8
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.d, align 8
  br label %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.033.0.ph = phi ptr [ %.sroa.026.0, %bb.d ], [ %i.y, %bb.e ], [ %i.ad, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4node15TimerWrapHandleE, i64 16), ptr %i.bk, align 8
  tail call void @_ZN4node15TimerWrapHandle5CloseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #32
  br label %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit
  %.sroa.4.044 = phi i8 [ 1, %bb.n ], [ 0, %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit ]
  %.sroa.033.042 = phi ptr [ %i.a, %bb.n ], [ %.sroa.033.0.ph, %_ZNKSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.033.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12construct_atISt4pairIKPvN4node15TimerWrapHandleEEJRKSt21piecewise_construct_tSt5tupleIJS1_EES9_IJPNS3_11EnvironmentEZNS3_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS1_ES1_EUlvE_EEEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %.sroa.0 = alloca %class.anon.1199, align 8     ; 2 uses
  %i.d = load i64, ptr %2, align 8
  %i.e = inttoptr i64 %i.d to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  store ptr %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4node15TimerWrapHandleE, i64 16), ptr %i.i, align 8
  %i.j = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4node9TimerWrapE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.n, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4656
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.t = tail call i32 @uv_timer_init(ptr noundef %i.r, ptr noundef nonnull %i.s) #29 ; 0 uses
  store ptr %i.j, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_ZN4node15TimerWrapHandle11CleanupHookEPv, ptr %i.a, align 8
  store ptr %i.i, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 2904 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  store i64 %i.x, ptr %i.c, align 8
  %i.z = call { ptr, i8 } @_ZNSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRPFvPvERSF_mEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.aa = trunc i8 %.fca.1.extract.i.i.i.i.i to i1
  br i1 %i.aa, label %_ZNSt4pairIKPvN4node15TimerWrapHandleEEC2IJS0_EJPNS2_11EnvironmentEZNS2_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS0_ES0_EUlvE_EEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12CleanupQueue3AddEPFvPvES1_E20error_and_abort_args) #29
  call void @abort() #30
  unreachable

_ZNSt4pairIKPvN4node15TimerWrapHandleEEC2IJS0_EJPNS2_11EnvironmentEZNS2_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS0_ES0_EUlvE_EEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

declare void @_ZN4node15TimerWrapHandle11CleanupHookEPv(ptr noundef) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK4node14MemoryRetainer13WrappedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4node14MemoryRetainer10IsRootNodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4node14MemoryRetainer14IsCppgcWrapperEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK4node14MemoryRetainer15GetDetachednessEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 0
}

declare i32 @uv_timer_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node9TimerWrapD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #29, !inline_history !445 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node9TimerWrapD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4node9TimerWrapD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #29, !inline_history !446 ; 0 uses
  br label %_ZN4node9TimerWrapD2Ev.exit

_ZN4node9TimerWrapD2Ev.exit:                      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4node9TimerWrap10MemoryInfoEPNS_13MemoryTrackerE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4node9TimerWrap14MemoryInfoNameEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.164
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4node9TimerWrap8SelfSizeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 200
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.a(ptr noundef %i.c) #29, !inline_history !447
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPvN4node15TimerWrapHandleEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPvN4node15TimerWrapHandleEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #31 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPvN4node15TimerWrapHandleEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPvN4node15TimerWrapHandleEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPvSt4pairIKS0_N4node15TimerWrapHandleEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
end_hunk_0
