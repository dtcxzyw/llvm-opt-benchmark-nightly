begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !344
  store ptr %.0.i, ptr %0, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph87

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEET_SL_SL_T0_.exit"
  %i.k = icmp eq i64 %i.ci, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph87, !llvm.loop !394

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa83 = phi i64 [ %i.e, %.lr.ph ], [ %i.dz, %bb.b ] ; 2 uses
  %.lcssa81 = phi i64 [ %i.d, %.lr.ph ], [ %i.dy, %bb.b ]
  %storemerge29.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.l = add nsw i64 %.lcssa83, -2
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.r = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  store i64 0, ptr %i.v, align 8, !tbaa !48
  store i8 0, ptr %i.t, align 8, !tbaa !13
  store ptr %i.p, ptr %6, align 8, !tbaa !44
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  store i64 %i.z, ptr %i.n, align 8, !tbaa !13
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48
  store i8 0, ptr %i.t, align 8, !tbaa !13
  store ptr %i.p, ptr %6, align 8, !tbaa !44
  %i.aa = icmp eq ptr %i.s, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.ab = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.s, ptr %6, align 8, !tbaa !7
  store i64 %i.z, ptr %i.p, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.ad = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !48
  store ptr %i.n, ptr %5, align 8, !tbaa !7
  store i64 0, ptr %i.o, align 8, !tbaa !48
  store i8 0, ptr %i.n, align 8, !tbaa !13
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa83, ptr noundef %6)
  %i.ae = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !13
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ai = add nsw i64 %.010.i.i.i, -1
  %i.aj = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.n
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.al = load i64, ptr %i.n, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !395

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_RT0_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.an = icmp sgt i64 %.lcssa81, 32
  br i1 %i.an, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_RT0_.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_RT0_.exit" ], [ %storemerge29.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  store ptr %i.ao, ptr %3, align 8, !tbaa !44
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7  ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i9.i
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.au, ptr %3, align 8, !tbaa !7
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !13
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.bc = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ay, %bb.e ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bc, ptr %i.ap, align 8, !tbaa !48
  store ptr %i.av, ptr %i.at, align 8, !tbaa !7
  store i64 0, ptr %i.bd, align 8, !tbaa !48
  store i8 0, ptr %i.av, align 8, !tbaa !13
  %i.be = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !48  ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %.not21.i.i = icmp eq ptr %0, %i.at
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  switch i64 %i.bg, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !13
  store i8 %i.bi, ptr %i.av, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !13
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.be, ptr %i.at, align 8, !tbaa !7
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !48
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !48
  %i.bm = load i64, ptr %i.aq, align 8, !tbaa !13
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !13
  store ptr %i.aq, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f
  %i.bn = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.be, %bb.f ], [ %i.aq, %bb.j ]
  store i64 0, ptr %i.i, align 8, !tbaa !48
  store i8 0, ptr %i.bn, align 1, !tbaa !13
  %i.bo = ptrtoint ptr %i.at to i64
  %i.bp = sub i64 %i.bo, %i.b                     ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 5
  store ptr %i.ar, ptr %4, align 8, !tbaa !44
  %i.br = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ao
  br i1 %i.bs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !48 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.br, ptr %4, align 8, !tbaa !7
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !13
  store i64 %i.bw, ptr %i.ar, align 8, !tbaa !13
  %.pre5.i = load i64, ptr %i.ap, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.k
  %i.bx = phi i64 [ %i.bt, %bb.k ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.bx, ptr %i.as, align 8, !tbaa !48
  store ptr %i.ao, ptr %3, align 8, !tbaa !7
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  store i8 0, ptr %i.ao, align 8, !tbaa !13
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bq, ptr noundef %4)
  %i.by = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cc = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ao
  br i1 %i.cd, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #29
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cg = icmp sgt i64 %i.bp, 32
  br i1 %i.cg, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !396

.lr.ph87:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2986 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.03085 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.ch = phi i64 [ %i.dz, %bb.b ], [ %i.e, %.lr.ph ]
  %i.ci = add nsw i64 %.03085, -1                 ; 3 uses
  %i.cj = lshr i64 %i.ch, 1
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %storemerge2986, i64 -32 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !48 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.val1.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !48 ; 3 uses
  %i.cn = icmp ult i64 %.val1.i.i.i, %.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2986, i64 -24
  %.val1.i27.i.i = load i64, ptr %i.co, align 8, !tbaa !48 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph87
  %i.cp = icmp ult i64 %.val1.i27.i.i, %.val1.i.i.i
  br i1 %i.cp, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp ult i64 %.val1.i27.i.i, %.val.i.i.i
  %..i.i = select i1 %i.cq, ptr %i.cl, ptr %i.g
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

bb.n:                                             ; preds = %.lr.ph87
  %i.cr = icmp ult i64 %.val1.i27.i.i, %.val.i.i.i
  br i1 %i.cr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = icmp ult i64 %.val1.i27.i.i, %.val1.i.i.i
  %.34.i.i = select i1 %i.cs, ptr %i.cl, ptr %i.ck
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sink.i.i = phi ptr [ %i.ck, %bb.l ], [ %i.g, %bb.n ], [ %.34.i.i, %bb.o ], [ %..i.i, %bb.m ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.014.0.i.i = phi ptr [ %i.g, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2986, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.val1.i.i13.i = load i64, ptr %i.i, align 8, !tbaa !48 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.cv, %bb.p ] ; 14 uses
  %i.ct = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.ct, align 8, !tbaa !48 ; 6 uses
  %i.cu = icmp ult i64 %.val1.i.i13.i, %.val.i.i14.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.p, label %.preheader.i.i.preheader, !llvm.loop !397

.preheader.i.i.preheader:                         ; preds = %bb.p
  %i.cw = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8 ; 5 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 9 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val1.i11.i.i = load i64, ptr %i.cx, align 8, !tbaa !48 ; 7 uses
  %i.cy = icmp ult i64 %.val1.i11.i.i, %.val1.i.i13.i
  br i1 %i.cy, label %.preheader.i.i, label %bb.q, !llvm.loop !398

bb.q:                                             ; preds = %.preheader.i.i
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEET_SL_SL_T0_.exit"

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 11 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dd = icmp ult i64 %.val.i.i14.i, 16
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !7 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 8 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.t, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp ult i64 %.val1.i11.i.i, 16
  tail call void @llvm.assume(i1 %i.dh)
  %.not.i = icmp eq i64 %.val.i.i14.i, 0
  %.not38.i = icmp eq i64 %.val1.i11.i.i, 0       ; 2 uses
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.di = add nuw nsw i64 %.val1.i11.i.i, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.di, i1 false)
  %i.dj = add nuw nsw i64 %.val.i.i14.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.dj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.di, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not38.i, label %bb.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.v
  %i.dk = add nuw nsw i64 %.val1.i11.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !7
  %.pre51.i = load i64, ptr %i.cz, align 8, !tbaa !48
  store i64 %.pre51.i, ptr %i.cw, align 8, !tbaa !48
  store i64 0, ptr %i.cz, align 8, !tbaa !48
  store i8 0, ptr %.pre52.i, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge
end_hunk_0
begin_hunk_1_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_0EEEvT_T0_":bb.a
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph87

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEET_SL_SL_T0_.exit"
  %i.k = icmp eq i64 %i.ci, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph87, !llvm.loop !405

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa83 = phi i64 [ %i.e, %.lr.ph ], [ %i.dz, %bb.b ] ; 2 uses
  %.lcssa81 = phi i64 [ %i.d, %.lr.ph ], [ %i.dy, %bb.b ]
  %storemerge29.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.l = add nsw i64 %.lcssa83, -2
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.r = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  store i64 0, ptr %i.v, align 8, !tbaa !48
  store i8 0, ptr %i.t, align 8, !tbaa !13
  store ptr %i.p, ptr %6, align 8, !tbaa !44
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  store i64 %i.z, ptr %i.n, align 8, !tbaa !13
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48
  store i8 0, ptr %i.t, align 8, !tbaa !13
  store ptr %i.p, ptr %6, align 8, !tbaa !44
  %i.aa = icmp eq ptr %i.s, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.ab = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.s, ptr %6, align 8, !tbaa !7
  store i64 %i.z, ptr %i.p, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.ad = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !48
  store ptr %i.n, ptr %5, align 8, !tbaa !7
  store i64 0, ptr %i.o, align 8, !tbaa !48
  store i8 0, ptr %i.n, align 8, !tbaa !13
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa83, ptr noundef %6)
  %i.ae = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !13
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ai = add nsw i64 %.010.i.i.i, -1
  %i.aj = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.n
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.al = load i64, ptr %i.n, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !406

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_RT0_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.an = icmp sgt i64 %.lcssa81, 32
  br i1 %i.an, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_RT0_.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_RT0_.exit" ], [ %storemerge29.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  store ptr %i.ao, ptr %3, align 8, !tbaa !44
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7  ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i9.i
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.au, ptr %3, align 8, !tbaa !7
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !13
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.bc = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ay, %bb.e ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bc, ptr %i.ap, align 8, !tbaa !48
  store ptr %i.av, ptr %i.at, align 8, !tbaa !7
  store i64 0, ptr %i.bd, align 8, !tbaa !48
  store i8 0, ptr %i.av, align 8, !tbaa !13
  %i.be = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !48  ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %.not21.i.i = icmp eq ptr %0, %i.at
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  switch i64 %i.bg, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !13
  store i8 %i.bi, ptr %i.av, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !13
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.be, ptr %i.at, align 8, !tbaa !7
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !48
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !48
  %i.bm = load i64, ptr %i.aq, align 8, !tbaa !13
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !13
  store ptr %i.aq, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f
  %i.bn = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.be, %bb.f ], [ %i.aq, %bb.j ]
  store i64 0, ptr %i.i, align 8, !tbaa !48
  store i8 0, ptr %i.bn, align 1, !tbaa !13
  %i.bo = ptrtoint ptr %i.at to i64
  %i.bp = sub i64 %i.bo, %i.b                     ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 5
  store ptr %i.ar, ptr %4, align 8, !tbaa !44
  %i.br = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ao
  br i1 %i.bs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !48 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.br, ptr %4, align 8, !tbaa !7
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !13
  store i64 %i.bw, ptr %i.ar, align 8, !tbaa !13
  %.pre5.i = load i64, ptr %i.ap, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.k
  %i.bx = phi i64 [ %i.bt, %bb.k ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.bx, ptr %i.as, align 8, !tbaa !48
  store ptr %i.ao, ptr %3, align 8, !tbaa !7
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  store i8 0, ptr %i.ao, align 8, !tbaa !13
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_T0_SM_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bq, ptr noundef %4)
  %i.by = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cc = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ao
  br i1 %i.cd, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #29
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cg = icmp sgt i64 %i.bp, 32
  br i1 %i.cg, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_T0_.exit", !llvm.loop !407

.lr.ph87:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2986 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.03085 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.ch = phi i64 [ %i.dz, %bb.b ], [ %i.e, %.lr.ph ]
  %i.ci = add nsw i64 %.03085, -1                 ; 3 uses
  %i.cj = lshr i64 %i.ch, 1
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %storemerge2986, i64 -32 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !48 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.val1.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !48 ; 3 uses
  %i.cn = icmp ult i64 %.val1.i.i.i, %.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2986, i64 -24
  %.val1.i27.i.i = load i64, ptr %i.co, align 8, !tbaa !48 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph87
  %i.cp = icmp ult i64 %.val1.i27.i.i, %.val1.i.i.i
  br i1 %i.cp, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp ult i64 %.val1.i27.i.i, %.val.i.i.i
  %..i.i = select i1 %i.cq, ptr %i.cl, ptr %i.g
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i"

bb.n:                                             ; preds = %.lr.ph87
  %i.cr = icmp ult i64 %.val1.i27.i.i, %.val.i.i.i
  br i1 %i.cr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = icmp ult i64 %.val1.i27.i.i, %.val1.i.i.i
  %.34.i.i = select i1 %i.cs, ptr %i.cl, ptr %i.ck
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sink.i.i = phi ptr [ %i.ck, %bb.l ], [ %i.g, %bb.n ], [ %.34.i.i, %bb.o ], [ %..i.i, %bb.m ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #2
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.014.0.i.i = phi ptr [ %i.g, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2986, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEEvT_SL_SL_SL_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.val1.i.i13.i = load i64, ptr %i.i, align 8, !tbaa !48 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.cv, %bb.p ] ; 14 uses
  %i.ct = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.ct, align 8, !tbaa !48 ; 6 uses
  %i.cu = icmp ult i64 %.val1.i.i13.i, %.val.i.i14.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.p, label %.preheader.i.i.preheader, !llvm.loop !408

.preheader.i.i.preheader:                         ; preds = %bb.p
  %i.cw = getelementptr i8, ptr %.sroa.014.1.i.i, i64 8 ; 5 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 9 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val1.i11.i.i = load i64, ptr %i.cx, align 8, !tbaa !48 ; 7 uses
  %i.cy = icmp ult i64 %.val1.i11.i.i, %.val1.i.i13.i
  br i1 %i.cy, label %.preheader.i.i, label %bb.q, !llvm.loop !409

bb.q:                                             ; preds = %.preheader.i.i
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions12_GLOBAL__N_123getTimeZoneNameMappingsEvE3$_1EEET_SL_SL_T0_.exit"

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 11 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dd = icmp ult i64 %.val.i.i14.i, 16
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !7 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 8 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.t, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp ult i64 %.val1.i11.i.i, 16
  tail call void @llvm.assume(i1 %i.dh)
  %.not.i = icmp eq i64 %.val.i.i14.i, 0
  %.not38.i = icmp eq i64 %.val1.i11.i.i, 0       ; 2 uses
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.di = add nuw nsw i64 %.val1.i11.i.i, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.di, i1 false)
  %i.dj = add nuw nsw i64 %.val.i.i14.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.dj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.di, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not38.i, label %bb.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.v
  %i.dk = add nuw nsw i64 %.val1.i11.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !7
  %.pre51.i = load i64, ptr %i.cz, align 8, !tbaa !48
  store i64 %.pre51.i, ptr %i.cw, align 8, !tbaa !48
  store i64 0, ptr %i.cz, align 8, !tbaa !48
  store i8 0, ptr %.pre52.i, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge
end_hunk_1
