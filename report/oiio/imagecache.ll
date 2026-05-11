inline.NumInlined: 13631
inline.NumDeleted: 4655
begin_hunk_0_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>, std::hash<OIIO::ustring>, std::equal_to<OpenImageIO::v3_1::ustring>, 64, tsl::robin_map<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>>>::iterator") align 8 %0, ptr noundef nonnull align 64 dereferenceable(8256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i:
  store ptr %1, ptr %0, align 8, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !537
  store i32 0, ptr %i.a, align 8, !tbaa !536
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !537
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !536 ; 2 uses
  %2 = sext i32 %.pre.i to i64                    ; 2 uses
  %3 = load ptr, ptr %0, align 8, !tbaa !532      ; 2 uses
  %4 = getelementptr [128 x i8], ptr %3, i64 %2   ; 2 uses
  %i.l = getelementptr i8, ptr %4, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !550  ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %4, i64 104
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !544 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i, !llvm.loop !705

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i ], [ %.04.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i, i64 %.0.lcssa.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !551
  %5 = getelementptr [128 x i8], ptr %1, i64 %2   ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 104
  %7 = load ptr, ptr %6, align 8, !tbaa !544
  %8 = getelementptr i8, ptr %5, i64 112
  %9 = load i64, ptr %8, align 16, !tbaa !550
  %10 = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %9
  %i.u = icmp eq ptr %i.s, %10
  br i1 %i.u, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a
  %11 = phi ptr [ %20, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a ], [ %3, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 3 uses
  %12 = phi i32 [ %21, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a ], [ %.pre.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 4 uses
  %i.v = icmp eq i32 %12, 63
  br i1 %i.v, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit, label %13

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit: ; preds = %.lr.ph.a
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8128
  %i.x = atomicrmw sub ptr %i.w, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !537
  store i32 -1, ptr %i.a, align 8, !tbaa !536
  br label %.loopexit

13:                                               ; preds = %.lr.ph.a
  %14 = add nsw i32 %12, 1                        ; 4 uses
  %15 = icmp sgt i32 %12, -1
  br i1 %15, label %bb.d, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3: ; preds = %13
  store i32 %14, ptr %i.a, align 8, !tbaa !536
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4

bb.d:                                             ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %17 = zext nneg i32 %12 to i64
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %16, i64 %17
  %i.z = atomicrmw sub ptr %i.y, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !537
  %.pre32.pre = load ptr, ptr %0, align 8, !tbaa !532
  store i32 %14, ptr %i.a, align 8, !tbaa !536
  %18 = getelementptr inbounds nuw i8, ptr %.pre32.pre, i64 64
  %19 = zext nneg i32 %14 to i64
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %18, i64 %19 ; 2 uses
  %i.ab = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12: ; preds = %bb.d, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16
  %.sroa.0.0.i.i.i.i.i13 = phi i32 [ %.sroa.0.1.i.i.i.i.i17, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16 ], [ 1, %bb.d ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %.sroa.0.1.i.i.i.i.i17 = phi i32 [ %.sroa.0.0.i.i.i.i.i13, %bb.f ], [ %i.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i15 ]
  %i.ah = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16, %bb.d
  store i8 1, ptr %i.b, align 8, !tbaa !537
  %.pre.i19 = load i32, ptr %i.a, align 8, !tbaa !536
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !532
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4: ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18
  %20 = phi ptr [ %11, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3 ], [ %.pre31, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18 ] ; 2 uses
  %21 = phi i32 [ %14, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3 ], [ %.pre.i19, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18 ] ; 2 uses
  %22 = sext i32 %21 to i64                       ; 2 uses
  %i.aj = getelementptr [128 x i8], ptr %20, i64 %22 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !550 ; 3 uses
  %.not.i.i.i5 = icmp eq i64 %i.al, 0
  %.phi.trans.insert.i.i.i6 = getelementptr i8, ptr %i.aj, i64 104
  %.pre.i.i.i7 = load ptr, ptr %.phi.trans.insert.i.i.i6, align 8, !tbaa !544 ; 2 uses
  br i1 %.not.i.i.i5, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, %bb.g
  %.04.i.i.i9 = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !545
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

bb.g:                                             ; preds = %.lr.ph.i.i.i8
  %i.aq = add nuw i64 %.04.i.i.i9, 1              ; 2 uses
  %exitcond.not.i.i.i11 = icmp eq i64 %i.aq, %i.al
  br i1 %exitcond.not.i.i.i11, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, label %.lr.ph.i.i.i8, !llvm.loop !705

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a: ; preds = %.lr.ph.i.i.i8, %bb.g, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ], [ %.04.i.i.i9, %.lr.ph.i.i.i8 ], [ %i.al, %bb.g ]
  %23 = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10 ; 2 uses
  store ptr %23, ptr %i.t, align 8, !tbaa !551
  %24 = getelementptr [128 x i8], ptr %1, i64 %22 ; 2 uses
  %25 = getelementptr i8, ptr %24, i64 104
  %26 = load ptr, ptr %25, align 8, !tbaa !544
  %27 = getelementptr i8, ptr %24, i64 112
  %28 = load i64, ptr %27, align 16, !tbaa !550
  %29 = getelementptr inbounds nuw [24 x i8], ptr %26, i64 %28
  %30 = icmp eq ptr %23, %29
  br i1 %30, label %.lr.ph.a, label %.loopexit

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher, std::equal_to<OpenImageIO::v3_1::TileID>, 128, tsl::robin_map<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher>>::iterator") align 8 %0, ptr noundef nonnull align 64 dereferenceable(16448) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i:
  store ptr %1, ptr %0, align 8, !tbaa !621
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !998
  store i32 0, ptr %i.a, align 8, !tbaa !997
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !998
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !997 ; 2 uses
  %2 = sext i32 %.pre.i to i64                    ; 2 uses
  %3 = load ptr, ptr %0, align 8, !tbaa !621      ; 2 uses
  %4 = getelementptr [128 x i8], ptr %3, i64 %2   ; 2 uses
  %i.l = getelementptr i8, ptr %4, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %4, i64 104
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !732 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw i64 %.04.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, label %.lr.ph.i.i.i, !llvm.loop !1005

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i ], [ %.04.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ]
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %.pre.i.i.i, i64 %.0.lcssa.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !999
  %5 = getelementptr [128 x i8], ptr %1, i64 %2   ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 104
  %7 = load ptr, ptr %6, align 8, !tbaa !732
  %8 = getelementptr i8, ptr %5, i64 112
  %9 = load i64, ptr %8, align 16, !tbaa !996
  %10 = getelementptr inbounds nuw [56 x i8], ptr %7, i64 %9
  %i.u = icmp eq ptr %i.s, %10
  br i1 %i.u, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a
  %11 = phi ptr [ %20, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a ], [ %3, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 3 uses
  %12 = phi i32 [ %21, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a ], [ %.pre.i, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit ] ; 4 uses
  %i.v = icmp eq i32 %12, 127
  br i1 %i.v, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit, label %13

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit: ; preds = %.lr.ph.a
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16320
  %i.x = atomicrmw sub ptr %i.w, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !998
  store i32 -1, ptr %i.a, align 8, !tbaa !997
  br label %.loopexit

13:                                               ; preds = %.lr.ph.a
  %14 = add nsw i32 %12, 1                        ; 4 uses
  %15 = icmp sgt i32 %12, -1
  br i1 %15, label %bb.d, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3: ; preds = %13
  store i32 %14, ptr %i.a, align 8, !tbaa !997
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4

bb.d:                                             ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %17 = zext nneg i32 %12 to i64
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %16, i64 %17
  %i.z = atomicrmw sub ptr %i.y, i32 1073741824 release, align 4 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !998
  %.pre32.pre = load ptr, ptr %0, align 8, !tbaa !621
  store i32 %14, ptr %i.a, align 8, !tbaa !997
  %18 = getelementptr inbounds nuw i8, ptr %.pre32.pre, i64 64
  %19 = zext nneg i32 %14 to i64
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %18, i64 %19 ; 2 uses
  %i.ab = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12: ; preds = %bb.d, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16
  %.sroa.0.0.i.i.i.i.i13 = phi i32 [ %.sroa.0.1.i.i.i.i.i17, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16 ], [ 1, %bb.d ] ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %.sroa.0.1.i.i.i.i.i17 = phi i32 [ %.sroa.0.0.i.i.i.i.i13, %bb.f ], [ %i.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i15 ]
  %i.ah = cmpxchg weak ptr %i.aa, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i12, !llvm.loop !542

_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i16, %bb.d
  store i8 1, ptr %i.b, align 8, !tbaa !998
  %.pre.i19 = load i32, ptr %i.a, align 8, !tbaa !997
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !621
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4: ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18
  %20 = phi ptr [ %11, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3 ], [ %.pre31, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18 ] ; 2 uses
  %21 = phi i32 [ %14, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i3 ], [ %.pre.i19, %_ZNK11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE3Bin4lockEv.exit.i.i18 ] ; 2 uses
  %22 = sext i32 %21 to i64                       ; 2 uses
  %i.aj = getelementptr [128 x i8], ptr %20, i64 %22 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !996 ; 3 uses
  %.not.i.i.i5 = icmp eq i64 %i.al, 0
  %.phi.trans.insert.i.i.i6 = getelementptr i8, ptr %i.aj, i64 104
  %.pre.i.i.i7 = load ptr, ptr %.phi.trans.insert.i.i.i6, align 8, !tbaa !732 ; 2 uses
  br i1 %.not.i.i.i5, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4, %bb.g
  %.04.i.i.i9 = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv:_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !729
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a

bb.g:                                             ; preds = %.lr.ph.i.i.i8
  %i.aq = add nuw i64 %.04.i.i.i9, 1              ; 2 uses
  %exitcond.not.i.i.i11 = icmp eq i64 %i.aq, %i.al
  br i1 %exitcond.not.i.i.i11, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, label %.lr.ph.i.i.i8, !llvm.loop !1005

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a: ; preds = %.lr.ph.i.i.i8, %bb.g, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator4lockEv.exit.i4 ], [ %.04.i.i.i9, %.lr.ph.i.i.i8 ], [ %i.al, %bb.g ]
  %23 = getelementptr inbounds nuw [56 x i8], ptr %.pre.i.i.i7, i64 %.0.lcssa.i.i.i10 ; 2 uses
  store ptr %23, ptr %i.t, align 8, !tbaa !999
  %24 = getelementptr [128 x i8], ptr %1, i64 %22 ; 2 uses
  %25 = getelementptr i8, ptr %24, i64 104
  %26 = load ptr, ptr %25, align 8, !tbaa !732
  %27 = getelementptr i8, ptr %24, i64 112
  %28 = load i64, ptr %27, align 16, !tbaa !996
  %29 = getelementptr inbounds nuw [56 x i8], ptr %26, i64 %28
  %30 = icmp eq ptr %23, %29
  br i1 %30, label %.lr.ph.a, label %.loopexit

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit24.a, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5rebinEi.exit, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE8iterator5unbinEv.exit
  ret void
}

end_hunk_9
