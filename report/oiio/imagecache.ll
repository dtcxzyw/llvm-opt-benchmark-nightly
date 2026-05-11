inline.NumInlined: 13631
inline.NumDeleted: 4655
begin_hunk_0_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>, std::hash<OIIO::ustring>, std::equal_to<OpenImageIO::v3_1::ustring>, 64, tsl::robin_map<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>>>::iterator") align 8 %0, ptr noundef nonnull align 64 dereferenceable(8256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i:
  store ptr %1, ptr %0, align 8, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !537
  store i32 0, ptr %i.a, align 8, !tbaa !536
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i64, ptr %i.l, align 16, !tbaa !550 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !544 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !705

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread: ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit: ; preds = %.lr.ph.i.i.i, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i, i64 %.0.lcssa.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp samesign eq i64 %.0.lcssa.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit
  %3 = phi ptr [ %2, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread ], [ %i.t, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 2 uses
  br label %bb.d

.lr.ph.a:                                         ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24
  %i.v = icmp eq i64 %indvars.iv.next, 63
  br i1 %i.v, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit, label %bb.d

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit: ; preds = %.lr.ph.a
  %4 = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10
  store ptr %4, ptr %3, align 8, !tbaa !551
  store i32 63, ptr %i.a, align 8
  store i8 1, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8128
  %i.x = atomicrmw sub ptr %i.w, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !537
  store i32 -1, ptr %i.a, align 8, !tbaa !536
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %.lr.ph.a
  %indvars.iv56 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv56, 1 ; 5 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv56
  %i.z = atomicrmw sub ptr %i.y, i32 1073741824 release, align 4 ; 0 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.ab = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12: ; preds = %bb.d, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16
  %.sroa.0.0.i.i.i.i.i13 = phi i32 [ %.sroa.0.1.i.i.i.i.i17, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16 ], [ 1, %bb.d ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %.sroa.0.1.i.i.i.i.i17 = phi i32 [ %.sroa.0.0.i.i.i.i.i13, %bb.f ], [ %i.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i15 ]
  %i.ah = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12, !llvm.loop !542

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16, %bb.d
  %i.aj = getelementptr [128 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !550 ; 4 uses
  %.not.i.i.i5 = icmp eq i64 %i.al, 0
  %.phi.trans.insert.i.i.i6 = getelementptr i8, ptr %i.aj, i64 104
  %.pre.i.i.i7 = load ptr, ptr %.phi.trans.insert.i.i.i6, align 8, !tbaa !544 ; 3 uses
  br i1 %.not.i.i.i5, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, %bb.g
  %.04.i.i.i9 = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !545
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24

bb.g:                                             ; preds = %.lr.ph.i.i.i8
  %i.aq = add nuw i64 %.04.i.i.i9, 1              ; 2 uses
  %exitcond.not.i.i.i11 = icmp eq i64 %i.aq, %i.al
  br i1 %exitcond.not.i.i.i11, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24, label %.lr.ph.i.i.i8, !llvm.loop !705

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24: ; preds = %.lr.ph.i.i.i8, %bb.g, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ], [ %.04.i.i.i9, %.lr.ph.i.i.i8 ], [ %i.al, %bb.g ] ; 3 uses
  %5 = icmp samesign eq i64 %.0.lcssa.i.i.i10, %i.al
  br i1 %5, label %.lr.ph.a, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24
  %6 = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10
  %7 = trunc nsw i64 %indvars.iv.next to i32
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a: ; preds = %.loopexit.loopexit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit
  %8 = phi ptr [ %i.t, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %3, %.loopexit.loopexit ]
  %.lcssa = phi i32 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %7, %.loopexit.loopexit ]
  %storemerge.lcssa = phi ptr [ %i.s, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %6, %.loopexit.loopexit ]
  store ptr %storemerge.lcssa, ptr %8, align 8, !tbaa !551
  store i32 %.lcssa, ptr %i.a, align 8
  store i8 1, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher, std::equal_to<OpenImageIO::v3_1::TileID>, 128, tsl::robin_map<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher>>::iterator") align 8 %0, ptr noundef nonnull align 64 dereferenceable(16448) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i:
  store ptr %1, ptr %0, align 8, !tbaa !621
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !998
  store i32 0, ptr %i.a, align 8, !tbaa !997
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i64, ptr %i.l, align 16, !tbaa !996 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !732 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !1005

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread: ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit: ; preds = %.lr.ph.i.i.i, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %.pre.i.i.i, i64 %.0.lcssa.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp samesign eq i64 %.0.lcssa.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit
  %3 = phi ptr [ %2, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit.thread ], [ %i.t, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 2 uses
  br label %bb.d

.lr.ph.a:                                         ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24
  %i.v = icmp eq i64 %indvars.iv.next, 127
  br i1 %i.v, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit, label %bb.d

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit: ; preds = %.lr.ph.a
  %4 = getelementptr inbounds nuw [56 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10
  store ptr %4, ptr %3, align 8, !tbaa !999
  store i32 127, ptr %i.a, align 8
  store i8 1, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16320
  %i.x = atomicrmw sub ptr %i.w, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !998
  store i32 -1, ptr %i.a, align 8, !tbaa !997
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %.lr.ph.a
  %indvars.iv56 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv56, 1 ; 5 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv56
  %i.z = atomicrmw sub ptr %i.y, i32 1073741824 release, align 4 ; 0 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.ab = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12: ; preds = %bb.d, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16
  %.sroa.0.0.i.i.i.i.i13 = phi i32 [ %.sroa.0.1.i.i.i.i.i17, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16 ], [ 1, %bb.d ] ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %.sroa.0.1.i.i.i.i.i17 = phi i32 [ %.sroa.0.0.i.i.i.i.i13, %bb.f ], [ %i.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i15 ]
  %i.ah = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12, !llvm.loop !542

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16, %bb.d
  %i.aj = getelementptr [128 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !996 ; 4 uses
  %.not.i.i.i5 = icmp eq i64 %i.al, 0
  %.phi.trans.insert.i.i.i6 = getelementptr i8, ptr %i.aj, i64 104
  %.pre.i.i.i7 = load ptr, ptr %.phi.trans.insert.i.i.i6, align 8, !tbaa !732 ; 3 uses
  br i1 %.not.i.i.i5, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, %bb.g
  %.04.i.i.i9 = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !729
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24

bb.g:                                             ; preds = %.lr.ph.i.i.i8
  %i.aq = add nuw i64 %.04.i.i.i9, 1              ; 2 uses
  %exitcond.not.i.i.i11 = icmp eq i64 %i.aq, %i.al
  br i1 %exitcond.not.i.i.i11, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24, label %.lr.ph.i.i.i8, !llvm.loop !1005

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24: ; preds = %.lr.ph.i.i.i8, %bb.g, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ], [ %.04.i.i.i9, %.lr.ph.i.i.i8 ], [ %i.al, %bb.g ] ; 3 uses
  %5 = icmp samesign eq i64 %.0.lcssa.i.i.i10, %i.al
  br i1 %5, label %.lr.ph.a, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24
  %6 = getelementptr inbounds nuw [56 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10
  %7 = trunc nsw i64 %indvars.iv.next to i32
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a: ; preds = %.loopexit.loopexit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit
  %8 = phi ptr [ %i.t, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %3, %.loopexit.loopexit ]
  %.lcssa = phi i32 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %7, %.loopexit.loopexit ]
  %storemerge.lcssa = phi ptr [ %i.s, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ], [ %6, %.loopexit.loopexit ]
  store ptr %storemerge.lcssa, ptr %8, align 8, !tbaa !999
  store i32 %.lcssa, ptr %i.a, align 8
  store i8 1, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit
  ret void
}

end_hunk_9
