Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/surf_matcher?download=true
inline.NumInlined: 722
inline.NumDeleted: 293
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !152
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN2cv9BFMatcherC1Eib(ptr noundef nonnull align 8 dereferenceable(61), i32 noundef, i1 noundef zeroext) unnamed_addr #2

declare noundef i64 @_ZN2cv12getTickCountEv() local_unnamed_addr #2

declare noundef double @_ZN2cv16getTickFrequencyEv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv11drawMatchesERKNS_11_InputArrayERKSt6vectorINS_8KeyPointESaIS4_EES2_S8_RKS3_INS_6DMatchESaIS9_EERKNS_17_InputOutputArrayERKNS_7Scalar_IdEESK_RKS3_IcSaIcEENS_16DrawMatchesFlagsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv14findHomographyERKNS_11_InputArrayES2_idRKNS_12_OutputArrayEid(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i, !prof !34

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #18
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !28
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 4
  store i64 %i.af, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 8
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !35

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 4
  store i64 %i.ai, ptr %i.i, align 4
  br label %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = load ptr, ptr %1, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !29
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.ar = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.ar, ptr %.011.i.i.i.i, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !153

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN2cv6Point_IfEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IfEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %4 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %5 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %6 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %7 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %8 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %9 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i18 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i18, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.j = icmp eq i64 %i.ci, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i21.lcssa = phi i64 [ %.fr.i18, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i21.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i21.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.au, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.v = load <2 x i64>, ptr %i.u, align 4
  %i.w = icmp slt i64 %.09.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !21
  %i.ag = fcmp olt float %i.ad, %i.af
  %spec.select.i.i.i = select i1 %i.ag, i64 %i.aa, i64 %i.y ; 4 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ai = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !24
  %i.aj = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !155

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e
  %.sroa.2.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.4.0.copyload.i.i, 32
  %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.am = bitcast i32 %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i11
  %.021.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i11 ], [ %.0922.i.i.i.i, %bb.g ] ; 3 uses
  %.0922.in.i.i.i.i = add nsw i64 %.021.i.i.i.i, -1
  %.0922.i.i.i.i = sdiv i64 %.0922.in.i.i.i.i, 2  ; 4 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0922.i.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !21
  %i.aq = fcmp olt float %i.ap, %i.am
  br i1 %i.aq, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.021.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !24
  %i.as = icmp sgt i64 %.0922.i.i.i.i, %.09.i.i
  br i1 %i.as, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, !llvm.loop !156

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0922.i.i.i.i, %bb.g ], [ %.021.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10
  store <2 x i64> %i.v, ptr %i.at, align 4
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.au = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.c, !llvm.loop !157

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i
  %10 = icmp sgt i64 %.fr.i21.lcssa, 16
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.av, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %i.aw = load <2 x i64>, ptr %i.av, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = icmp sgt i64 %i.az, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bd = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !21
  %i.bm = fcmp olt float %i.bj, %i.bl
  %spec.select.i.i.i.i = select i1 %i.bm, i64 %i.bg, i64 %i.be ; 4 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !24
  %i.bp = icmp slt i64 %spec.select.i.i.i.i, %i.bb
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !155

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bq = and i64 %i.ay, 16
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = add nsw i64 %i.az, -2
  %i.bt = ashr exact i64 %i.bs, 1
  %i.bu = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bt
  br i1 %i.bu, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bv = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bw = or disjoint i64 %i.bv, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !24
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.bw, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.2.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.4.0.copyload.i.i.i, 32
  %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.bz = bitcast i32 %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i.i to float
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0922.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0922.in.i.i.i.i.i = add nsw i64 %.021.i.i.i.i.i, -1
  %.0922.i.i910.i.i.i = lshr i64 %.0922.in.i.i.i.i.i, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0922.i.i910.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !21
  %i.cd = fcmp olt float %i.cc, %i.bz
  br i1 %i.cd, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds [16 x i8], ptr %0, i64 %.021.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !24
  %.not11.i.i.i = icmp eq i64 %.0922.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i, label %bb.j, !llvm.loop !156

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.021.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.cf = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.aw, ptr %i.cf, align 4
  %i.cg = icmp sgt i64 %i.ay, 16
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !158

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1941 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02040 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.ch = phi i64 [ %i.dh, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ci = add nsw i64 %.02040, -1                 ; 3 uses
  %i.cj = lshr i64 %i.ch, 1
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %storemerge1941, i64 -16 ; 4 uses
  %i.cm = load float, ptr %i.g, align 4, !tbaa !21 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !21 ; 3 uses
  %i.cp = fcmp olt float %i.cm, %i.co
  %i.cq = getelementptr inbounds i8, ptr %storemerge1941, i64 -4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21 ; 4 uses
  br i1 %i.cp, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph42
  %i.cs = fcmp olt float %i.co, %i.cr
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.ct = fcmp olt float %i.cm, %i.cr
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph42
  %i.cu = fcmp olt float %i.cm, %i.cr
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cv = fcmp olt float %i.co, %i.cr
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.da, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge1941, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.cw = load float, ptr %i.h, align 4, !tbaa !21 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i ], [ %i.da, %bb.v ] ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !21
  %i.cz = fcmp olt float %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.cz, label %bb.v, label %.preheader.i.i, !llvm.loop !159

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !21
  %i.dd = fcmp olt float %i.cw, %i.dc
  br i1 %i.dd, label %.preheader.i.i, label %bb.w, !llvm.loop !160

bb.w:                                             ; preds = %.preheader.i.i
  %i.de = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.de, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !161

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1941, i64 noundef %i.ci)
  %i.df = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dg = sub i64 %i.df, %i.a
  %.fr.i = freeze i64 %i.dg                       ; 2 uses
  %i.dh = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 16
  br i1 %i.di, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !154

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %3 = alloca %"class.cv::DMatch", align 4        ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 28
  %i.g = load float, ptr %i.f, align 4, !tbaa !21 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !21
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.018.i.ptr, i64 16, i1 false), !tbaa.struct !24
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 16
  br i1 %i.j, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.018.i.ptr, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !21
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !24
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20
  %i.p = load float, ptr %i.o, align 4, !tbaa !21
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !162

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store <3 x i32> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i, align 4
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 12
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !163

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 6 uses
  %.sroa.03.i.i6.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.05.i, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 12
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !23 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !21
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i7, %.lr.ph.i.i12
  %.sroa.06.09.i.i13 = phi ptr [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ], [ %.sroa.0.05.i, %.lr.ph.i7 ] ; 3 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i13, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.09.i.i13, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i.i14, i64 16, i1 false), !tbaa.struct !24
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i13, i64 -20
  %i.w = load float, ptr %i.v, align 4, !tbaa !21
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !162

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i12, %.lr.ph.i7
  %.sroa.06.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i7 ], [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ] ; 2 uses
  store <3 x i32> %.sroa.03.i.i6.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i9, align 4
  %.sroa.4.0..sroa_idx4.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i9, i64 12
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i10, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i11 = icmp eq ptr %i.y, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i7, !llvm.loop !164

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.h
  %.sroa.0.015.i17 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not16.i18 = icmp eq ptr %.sroa.0.015.i17, %1
  br i1 %.not16.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %.sroa.0.018.i20 = phi ptr [ %.sroa.0.015.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i25, %bb.o ] ; 7 uses
  %.pn17.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.018.i20, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.018.i20, i64 16, i1 false), !tbaa.struct !24
  %i.af = ptrtoint ptr %.sroa.0.018.i20 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 4                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !35

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 32
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.al, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 16
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.i.i15.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.018.i20, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !21
  %i.aq = fcmp olt float %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22

.lr.ph.i.i27:                                     ; preds = %bb.n, %.lr.ph.i.i27
  %.sroa.06.09.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.0.018.i20, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i28, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.09.i.i28, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i.i29, i64 16, i1 false), !tbaa.struct !24
  %i.ar = getelementptr inbounds i8, ptr %.sroa.06.09.i.i28, i64 -20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !21
  %i.at = fcmp olt float %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, !llvm.loop !162

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22: ; preds = %.lr.ph.i.i27, %bb.n
  %.sroa.06.0.lcssa.i.i23 = phi ptr [ %.sroa.0.018.i20, %bb.n ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ] ; 2 uses
  store <3 x i32> %.sroa.03.i.i15.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i23, align 4
  %.sroa.4.0..sroa_idx4.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i23, i64 12
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i24, align 4, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30
  %.sroa.0.0.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i20, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.0.0.i25, %1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.i, !llvm.loop !163

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i16, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv6DMatchESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

end_hunk_0
