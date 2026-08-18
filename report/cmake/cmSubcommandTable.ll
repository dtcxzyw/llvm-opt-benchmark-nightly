inline.NumInlined: 256
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_T1_":bb.a
  %.val1.i13.i.i = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.ch = tail call i32 @memcmp(ptr noundef readonly %.val1.i13.i.i, ptr noundef readonly %.val3.i12.i.i, i64 noundef %.sroa.speculated.i.i.i.i10.i.i) #17 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i15.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit19.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i15.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i, %.preheader.i.i
  %i.cj = sub i64 %.val2.i.i13.i, %.val2.i9.i.i
  %spec.select7.i.i.i.i.i16.i.i = tail call i64 @llvm.smax.i64(i64 %i.cj, i64 -2147483648)
  %.08.i.i.i.i.i17.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i16.i.i, i64 2147483647)
  %.0.i4.i.i.i.i18.i.i = trunc nsw i64 %.08.i.i.i.i.i17.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit19.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit19.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i15.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i
  %.0.i.i.i.i14.i.i = phi i32 [ %.0.i4.i.i.i.i18.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i15.i.i ], [ %i.ch, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i ]
  %i.ck = icmp slt i32 %.0.i.i.i.i14.i.i, 0
  br i1 %i.ck, label %.preheader.i.i, label %bb.o, !llvm.loop !53

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit19.i.i"
  %i.cl = icmp ult ptr %.sroa.022.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cl, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEET_SZ_SZ_T0_.exit"

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.1.i.i, i64 16, i1 false), !tbaa.struct !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !28
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !28
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !28
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_SZ_SZ_T0_.exit.i", !llvm.loop !54

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEET_SZ_SZ_T0_.exit": ; preds = %bb.o
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_T1_"(ptr nonnull %.sroa.022.1.i.i, ptr %storemerge2447, i64 noundef %i.y)
  %i.cq = ptrtoint ptr %.sroa.022.1.i.i to i64
  %i.cr = sub i64 %i.cq, %i.a                     ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, 384
  br i1 %i.cs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_SZ_T0_.exit", !llvm.loop !49

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_SZ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEET_SZ_SZ_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElSK_NS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_S10_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.std::pair") align 8 captures(none) %3) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"
  %.040 = phi i64 [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.040, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val.i) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.l = tail call i32 @memcmp(ptr noundef readonly %.val1.i, ptr noundef readonly %.val3.i, i64 noundef %.sroa.speculated.i.i.i.i) #17 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.n = sub i64 %.val.i, %.val2.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select = select i1 %i.o, i64 %i.g, i64 %i.e ; 4 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.040 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 16, i1 false), !tbaa.struct !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !24
  %i.u = icmp slt i64 %spec.select, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit" ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 16, i1 false), !tbaa.struct !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.039.0.copyload = load i64, ptr %3, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ai = icmp sgt i64 %.1, %1
  br i1 %i.ai, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_S10_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0911.i ; 4 uses
  %.val.i.i = load i64, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.039.0.copyload, i64 %.val.i.i) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val2.i.i = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.am = tail call i32 @memcmp(ptr noundef readonly %.val2.i.i, ptr noundef readonly %.sroa.2.0.copyload, i64 noundef %.sroa.speculated.i.i.i.i.i) #17 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i
  %i.ao = sub i64 %.val.i.i, %.sroa.039.0.copyload
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ], [ %i.am, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_S10_T1_RT2_.exit"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i"
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 16, i1 false), !tbaa.struct !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = icmp sgt i64 %.0911.i, %1
  br i1 %i.au, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_S10_T1_RT2_.exit", !llvm.loop !56

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElSK_NS0_5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_S10_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i", %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESU_EEbT_RT0_.exit.i" ], [ %.0911.i, %bb.e ]
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store i64 %.sroa.039.0.copyload, ptr %i.av, align 8, !tbaa !16
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x ptr> %i.ah, ptr %.sroa.5.0..sroa_idx37, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.017 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.08.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.g ] ; 3 uses
  %.sroa.08.020 = phi ptr [ %.sroa.08.017, %.lr.ph ], [ %.sroa.08.0, %bb.g ] ; 9 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.020, %bb.g ] ; 6 uses
  %.val.i = load i64, ptr %.sroa.08.020, align 8, !tbaa !16 ; 5 uses
  %.val2.i = load i64, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val.i) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %.val3.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = getelementptr i8, ptr %.pn19, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.g = tail call i32 @memcmp(ptr noundef readonly %.val1.i, ptr noundef readonly %.val3.i, i64 noundef %.sroa.speculated.i.i.i.i) #17 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.i = sub i64 %.val.i, %.val2.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.j = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn19, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020, i64 16, i1 false)
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = ptrtoint ptr %.sroa.08.020 to i64
  %i.l = sub i64 %i.k, %i.c                       ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEESO_ET0_T_SQ_SP_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %.pn19, i64 48
  %3 = udiv exact i64 %i.l, 24                    ; 2 uses
  %4 = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.preheader.i.i.i.i.i.a, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.preheader.i.i.i.i.i.a:                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %.sroa.08.020, i64 -24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.pn19, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 16, i1 false), !tbaa.struct !15
  %7 = getelementptr inbounds i8, ptr %.sroa.08.020, i64 -8
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19, i64 40
  store ptr %8, ptr %i.n, align 8, !tbaa !24
  %9 = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.preheader.i.i.i.i.i.a, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i.i ], [ %9, %.lr.ph.preheader.i.i.i.i.i.a ]
  %.069.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i.i ], [ %6, %.lr.ph.preheader.i.i.i.i.i.a ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020, %.lr.ph.preheader.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i.a ]
  %10 = icmp eq i64 %indvar, 0
  br i1 %10, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEESO_ET0_T_SQ_SP_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %11 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %12 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 16, i1 false), !tbaa.struct !15
  %13 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store ptr %14, ptr %15, align 8, !tbaa !24
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false), !tbaa.struct !15
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !24
  %i.t = add nsw i64 %.010.i.i.i.i.i, -2
  %16 = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %16, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEESO_ET0_T_SQ_SP_.exit, !llvm.loop !57

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEESO_ET0_T_SQ_SP_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !15
  store ptr %.sroa.4.0.copyload, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.g

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclINS_17__normal_iteratorIPS4_ISt17basic_string_viewIcSB_ESL_ES7_ISU_SaISU_EEEESY_EEbT_T0_.exit"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn19, i64 32 ; 2 uses
  %i.u = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.08.0.i = phi ptr [ %.sroa.08.020, %bb.d ], [ %.sroa.0.0.i, %bb.f ] ; 7 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -24 ; 3 uses
  %.val3.i.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %.val.i) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.w = getelementptr i8, ptr %.sroa.08.0.i, i64 -16
  %.val4.i.i = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.x = tail call i32 @memcmp(ptr noundef readonly %.sroa.5.0.copyload.i, ptr noundef readonly %.val4.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #17 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.z = sub i64 %.val.i, %.val3.i.i
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ], [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.f, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !15
  %i.ac = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !24
  br label %bb.e, !llvm.loop !29

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i"
  store i64 %.val.i, ptr %.sroa.08.0.i, align 8, !tbaa !16
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store <2 x ptr> %i.u, ptr %.sroa.5.0..sroa_idx6.i, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEESO_ET0_T_SQ_SP_.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit"
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !58

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

declare void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS3_SaIcEEESaIS9_EER17cmExecutionStatusEESaISI_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaIS8_EER17cmExecutionStatusEE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 0}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !18}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!21, !12, i64 16}
!21 = !{!"_ZTSSt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusEE", !22, i64 0, !12, i64 16}
!22 = !{!"_ZTSN2cm18static_string_viewE", !23, i64 0}
!23 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !17, i64 0, !19, i64 8}
!24 = !{!25, !12, i64 16}
!25 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaIS8_EER17cmExecutionStatusEE", !23, i64 0, !12, i64 16}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!12, !12, i64 0}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = !{!11, !11, i64 0}
!32 = distinct !{!32, !27}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_Z8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_: argument 0"}
!35 = distinct !{!35, !"_Z8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZZ8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESL_: argument 0"}
!38 = distinct !{!38, !"_ZZ8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESL_"}
!39 = !{!40, !41, i64 16}
!40 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEEE", !23, i64 0, !41, i64 16}
!41 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZZ8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESL_: argument 0"}
!44 = distinct !{!44, !"_ZZ8cmStrCatIRA32_KcRSt17basic_string_viewIcSt11char_traitsIcEEJEENSt7__cxx1112basic_stringIcS5_SaIcEEEOT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESL_"}
!45 = !{!46, !19, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !17, i64 8, !7, i64 16}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!48 = !{!7, !7, i64 0}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
end_hunk_0
